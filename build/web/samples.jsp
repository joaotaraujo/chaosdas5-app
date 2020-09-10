<!DOCTYPE HTML>
<html>
    <head>
        <title>O Chaos das 5</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <link rel="shortcut icon" href="images/logoAlice.png">
    </head>
    <script>
        var audios = [];
        var sources = ['sounds/bell.mp3', 'sounds/carAccelerate.mp3', 'sounds/carBrake.mp3', 'sounds/carSpinningOut.mp3', 'sounds/cityAmbience.mp3', 'sounds/motorCycle.mp3', 'sounds/phoneDiallog.mp3', 'sounds/policeSiren2.mp3', 'sounds/publicTransitBus.mp3', 'sounds/shakeSpray.mp3', 'sounds/spray.mp3', 'sounds/urbanTraffic.mp3'];

        var AudioContext = window.AudioContext || window.webkitAudioContext;
        var context = new AudioContext();
        var analyser = context.createAnalyser();


        window.addEventListener('load', function(e) {
          // Our <audio> element will be the audio source.
        for (var i = 0 ; i < sources.length; i++){
           audios[i] = new Audio();
           audios[i].src = sources[i];
           audios[i].controls = false;
           audios[i].autoplay = false;
           document.body.appendChild(audios[i]);
           var source = context.createMediaElementSource(audios[i]);
           source.connect(analyser);
           analyser.connect(context.destination);
          }

        }, false);

           function loadme(){
                    var ac;
          var osc = [], filt = [], vca = [];
          var freq1 = Math.random() * 500 + 50, freq2 = Math.random() * 600 + 50;
          var t3 = Math.random()*20+10;
          var t2 = t3 * 0.7, t1 = t3/100;
          var vol = 0.2;
          var tipo = Math.floor(Math.random()*4);
          if (tipo == 2 || tipo == 3) {var t0 = t3*(0.08*tipo); var t4 = t3*0.99;} else {var t0 = 0; var t4 = t3*(1-(0.1*(tipo+1)));};

           console.log(tipo);
          try { ac = new (window.AudioContext || window.webkitAudioContext)();
          } catch (error) { window.alert(`Seu navegador nï¿½o suporta Web Audio API!`);}

          if (ac !== undefined) {

         for (var i=0;i<24;i++) {
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
           vca[i].gain.linearRampToValueAtTime(0.6*vol, ac.currentTime + t1 +(i/100));
           vca[i].gain.linearRampToValueAtTime(0.5*vol, ac.currentTime + t1 * 2);
           vca[i].gain.linearRampToValueAtTime(0.25*vol, ac.currentTime + t2);
           vca[i].gain.linearRampToValueAtTime(0.3*vol, ac.currentTime + t3 * 0.9);
           vca[i].gain.linearRampToValueAtTime(0, ac.currentTime + t3);

            var fd1 = freq1+(freq1/5)*i;
            var fd2 = freq1+(freq2/200)*i;
            var fd3 = freq2-(freq2/5)*i;
            if (fd3 < 20) { fd3 = (20 - fd3) + 20;};
            if (tipo == 1) { fd3 = freq2; fd2 = fd1 } else
            if (tipo == 2 || tipo == 3) { fd1 = freq1; } else { fd2 = fd1; };
                 osc[i] = ac.createOscillator();
                 osc[i].connect(vca[i]);
                 osc[i].type = "sawtooth";
                 osc[i].frequency.setValueAtTime(fd1, ac.currentTime);
                 osc[i].frequency.exponentialRampToValueAtTime(fd2, ac.currentTime + t0);
                 osc[i].frequency.exponentialRampToValueAtTime(fd3, ac.currentTime + t4);
                 osc[i].start(ac.currentTime);
                 osc[i].stop(ac.currentTime + t3 + 1);
         };




         //console.log(osc);




          };
        }
    </script>
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
                    <h1>Samples</h1>
                </header>
</br>
                <div class="flex ">
                    <!--<div>
                        <h3><button onClick='loadme();'>Sirene</button></h3>
                    </div></br>-->
                    <div>
                        <span class="icon fa-music"></span>
                        <h3><button onClick='audios[0].play()'>Sinos</button></h3>
                    </div></br>
                    <div>
                        <span class="icon fa-music"></span>
                        <h3><button onClick='audios[9].play()'>Shake spray</button></h3>
                    </div></br>
                    <div>
                        <span class="icon fa-music"></span>
                        <h3><button onClick='audios[10].play()'>Spray</button></h3>
                    </div></br>
                    <div>
                        <span class="icon fa-music"></span>
                        <h3><button onClick='audios[6].play()'>Telefone</button></h3>
                    </div></br>
                    <div>
                        <span class="icon fa-music"></span>
                        <h3><button onclick='audios[1].play()'>Carro acelerando</button></h3>
                    </div></br>
                    <div>
                        <span class="icon fa-music"></span>
                        <h3><button onClick='audios[2].play()'>Batida de carro</button></h3>
                    </div></br>
                    <div>
                        <span class="icon fa-music"></span>
                        <h3><button onClick='audios[3].play()'>Carro arrancando</button></h3>
                    </div></br>
                    <div>
                        <span class="icon fa-music"></span>
                        <h3><button onclick='audios[5].play()'>Moto</button></h3>
                    </div></br>
                    <div>
                        <span class="icon fa-music"></span>
                        <h3><button onClick='audios[4].play()'>Ambulância</button></h3>
                    </div></br>
                    <div>
                        <span class="icon fa-music"></span>
                        <h3><button onClick='audios[7].play()'>Sirene de polícia</button></h3>
                    </div></br>
                    <div>
                        <span class="icon fa-music"></span>
                        <h3><button onclick='audios[8].play()'>Transito</button></h3>
                    </div></br>
                    <div>
                        <span class="icon fa-music"></span>
                        <h3><button onClick='audios[11].play()'>Tráfego urbano</button></h3>
                    </div>
                    </br></br></br>
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
