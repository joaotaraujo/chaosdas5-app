<!DOCTYPE HTML>
<html>
    <head>
        <title>Chaos das 5</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <link rel="shortcut icon" href="images/logoAlice.png">
    </head>

    <body>
        <!-- Header -->
        <header id="header">
            <div class="inner">
                <a href="index.jsp" class="logo"><strong>Espetáculo</strong> Chaos das 5</a>
                
            </div>
        </header>

        <!-- Banner -->
        <section id="banner">
            <div class="inner">
                <header>
                    <h1>Toque Glissandos!</h1>
                </header>

                <div class="flex ">
                    <div class="slidecontainer">Volume
                        <input type="range" min="0" max="1000" value="50" class="slider" id="slider"><b id="slidervalue" style="font-size: 30px;color: white;">0.5</b>
                    </div>
                    <div class="slidecontainer">Densidade
                        <input type="range" min="1" max="20" value="3" class="slider" id="density"><b id="densityvalue" style="font-size: 30px;color: white;">3</b>
                    </div>

                    <div id="contagem" style="color: yellow;">0</div>
                    <div id="relogio" style="color: greenyellow; font-size: 40px;"></div>
<p>
                    <button type="BtGliss" onclick="glissando(2)">Glissando A</button><p>
                    <button type="BtGliss" onclick="glissando(1)">Glissando B</button><p>
                    <button type="BtGliss" onclick="glissando(0)">Glissando C</button>

                    </br></br>

                    <script type="text/javascript">
                        var vol = 1;
                        var slider = document.getElementById("slider");
                        var output = document.getElementById("slidervalue");
                        slider.value = 50;
                        output.innerHTML = slider.value; // Display the default slider value

                        // Update the current slider value (each time you drag the slider handle)
                        slider.oninput = function() {
                            output.innerHTML = this.value;
                            vol = parseInt(this.value)/50;
                        };

                        var dt = 3;
                        var densidade = document.getElementById("density");
                        var densout = document.getElementById("densityvalue");
                        densidade.value = 3;
                        densout.innerHTML = densidade.value; // Display the default slider value

                        // Update the current slider value (each time you drag the slider handle)
                        densidade.oninput = function() {
                            densout.innerHTML = this.value;
                            dt = parseInt(this.value);
                        };

                        function glissando(tipo) {
                          var freq1 = Math.floor(Math.random() * 900 + 300);
                          var freq2 = Math.floor(Math.random() * 900 + 300);
                          var t3 = Math.floor(Math.random() * 10 + 5);

                          var s = t3;   // --------------------------- visualizaï¿½ï¿½o da duraï¿½ï¿½o do glissando ----
                          if (s < 10) {document.getElementById("contagem").innerHTML = freq1+"Hz a "+freq2+"Hz em 0" + s + " s";}
                                       else {document.getElementById("contagem").innerHTML = freq1+"Hz a "+freq2+"Hz em " + s + " s";};

                          var cont = window.setInterval(function() {
                           s--;
                                if (s < 10) {document.getElementById("contagem").innerHTML = freq1+"Hz a "+freq2+"Hz em 0" + s + " s";}
                                       else {document.getElementById("contagem").innerHTML = freq1+"Hz a "+freq2+"Hz em " + s + " s";};

                           if (s <= 0) { window.clearInterval(cont); };
                          },1000);

                          var ac;  // ----------- synth -----
                          var osc = [], filt = [], vca = [];
                          var t2 = t3 * 0.7, t1 = t3/100;
                          var dtAt = vol * (1 / dt);

                          if (tipo == 2) {var t0 = t3*(0.08*tipo); var t4 = t3*0.99;} else {var t0 = 0; var t4 = t3*(1-(0.1*(tipo+1)));};

                          try { ac = new (window.AudioContext || window.webkitAudioContext)();
                          } catch (error) { window.alert(`Seu navegador nï¿½o suporta Web Audio API!`);}

                         if (ac !== undefined) {

                          for (var i=0;i<dt;i++) {
                           var co1 = (Math.random()*100)*(i+1);
                           var co2 = (Math.random()*100)*(i+1);
                           var co3 = (Math.random()*100)*(i+1);
                           var co4 = (Math.random()*100)*(i+1);
                           filt[i] = ac.createBiquadFilter();
                           filt[i].type = "lowpass";
                           filt[i].frequency.setValueAtTime(100, ac.currentTime);
                           filt[i].frequency.exponentialRampToValueAtTime(co1, ac.currentTime + t1);
                           filt[i].frequency.exponentialRampToValueAtTime(co2, ac.currentTime + (t2/4));
                           filt[i].frequency.exponentialRampToValueAtTime(co3, ac.currentTime + t2);
                           filt[i].frequency.exponentialRampToValueAtTime(co4, ac.currentTime + t3);
                           filt[i].gain.setValueAtTime(25, ac.currentTime);
                           filt[i].Q.setValueAtTime(3, ac.currentTime);
                           filt[i].connect(ac.destination);

                           vca[i] = ac.createGain();
                           vca[i].gain.value = 0;
                           vca[i].connect(filt[i]);
                           vca[i].gain.setValueAtTime(0, ac.currentTime);
                           vca[i].gain.linearRampToValueAtTime(1*dtAt, ac.currentTime + t1 +(i/100));
                           vca[i].gain.linearRampToValueAtTime(0.9*dtAt, ac.currentTime + t1 * 2);
                           vca[i].gain.linearRampToValueAtTime(0.8*dtAt, ac.currentTime + t2);
                           vca[i].gain.linearRampToValueAtTime(1*dtAt, ac.currentTime + t3 * 0.9);
                           vca[i].gain.linearRampToValueAtTime(0, ac.currentTime + t3);


                            if (tipo == 0) {
                              if (dt == 1) { var fd1 = freq1+(freq1/dt)*i; var fd3 = freq2-((freq2/2)/dt)*i; // cluster inicial e  cluster final
                                    } else { var fd1 = freq1+(freq1/(dt-1))*i; var fd3 = freq2-((freq2/2)/(dt-1))*i; };
                              var fd2 = fd1;                 // cluster intermediï¿½rio
                              } else
                            if (tipo == 1) {
                              if (freq1 > freq2) {
                                if (dt == 1) { var fd1 = freq1+(freq1/dt)*i; } else { var fd1 = freq1+(freq1/(dt-1))*i; };
                               } else {
                                if (dt == 1) { var fd1 = freq1-((freq1/2)/dt)*i; } else { var fd1 = freq1-((freq1/2)/(dt-1))*i; };
                                };
                              var fd2 = fd1;                 // cluster intermediï¿½rio
                              var fd3 = freq2; } else       // unï¿½ssono final
                            if (tipo == 2) {
                              var fd1 = freq1;               // unï¿½ssono inicial
                              if (freq1 > freq2) {
                                if (dt == 1) { var fd3 = freq2-((freq2/2)/dt)*i; var fd2 = fd1-(((freq2/2)/dt)/10)*i;
                                      } else { var fd3 = freq2-((freq2/2)/(dt-1))*i; var fd2 = fd1-(((freq2/2)/(dt-1))/10)*i; };
                               } else {
                                if (dt == 1) { var fd3 = freq2+(freq2/dt)*i; var fd2 = fd1+((freq2/dt)/10)*i;
                                      } else { var fd3 = freq2+(freq2/(dt-1))*i; var fd2 = fd1+((freq2/(dt-1))/10)*i; }; };
                             };


                                 osc[i] = ac.createOscillator();
                                 osc[i].connect(vca[i]);
                                 osc[i].type = "sawtooth";
                                 osc[i].frequency.setValueAtTime(fd1, ac.currentTime);
                                 osc[i].frequency.exponentialRampToValueAtTime(fd2, ac.currentTime + t0);
                                 osc[i].frequency.exponentialRampToValueAtTime(fd3, ac.currentTime + t4);
                                 osc[i].start(ac.currentTime);
                                 osc[i].stop(ac.currentTime + t3 + 0.001);
                          };

                         };

                        };
                    </script>
                    <div>
                        <span class="icon fa-backward"></span>
                        <a href="menu_instrumentos.jsp">
                            <h3>Voltar</h3>
                        </a>
                    </div>
                </div>
            </div>
        </section>

        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/skel.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>
