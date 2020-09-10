<!DOCTYPE HTML>
<html>
    <head>
        <title>Orchidea</title>
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
    </script>
    <body>
        <!-- Header -->
        <header id="header">
            <div class="inner">
                <a href="index.jsp" class="logo"><strong>Espetáculo</strong> Orchidea</a>
                <nav id="nav">
                    <h2>ORCHIDEA</h2>
                    <h3>Funcionalidades</h3>
                    <a href="samples.jsp">Samples</a>
                    <a href="cellPhoneCrazy.jsp">CellPhoneCrazy</a>
                    <a href="instrumento1.jsp">Instrumento 1</a>
                    <a href="instrumento2.jsp">Instrumento 2</a>
                    <!--<a href="uploadFoto.jsp">Tirar uma foto</a>
                    <a href="ServletCarregaGaleria">Galeria de fotos</a>-->
                    <a href=""></a>
                    <h3>Sobre</h3>
                    <a href="sobreAlice.jsp">Sobre Alice</a>
                    <a href="sobreOrchidea.jsp">Sobre Orchidea</a>
                    <a href="sobreMovere.jsp">Sobre Movere</a>
                    <a href=""></a>
                </nav>
                <a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
            </div>
        </header>

        <!-- Banner -->
        <section id="banner">
            <div class="inner">
                <div class="flex ">
                    <div>
                        <div class="image round">
                            <img src="images/logoOrchidea.png" alt="Pic 02" />
                        </div>
                    </div>
                    
                    <header>
                        <h1>Espetáculo Orchidea</h1>
                    </header>
                    <p>Obra com acolhida e três movimentos, com dançarino(a), arte sonora e artes visuais influenciando a experiência inteira do espetáculo. A parte musical será construída por um diálogo entre o público, que terá acesso à um instrumento digital disponibilizado por meio de um link, e a banda base, que serão os membros do grupo "ALICE" dispostos a participar, independente do instrumento. Teremos uma obra com caráter improvisativo e de paisagem sonora, onde a primeira figura a se imaginar será um universo sintético, seguido de uma experiência o mundo real e uma terceira parte que será composta de surrealidade. A ideia de montagem do espetáculo consiste em desenvolver um diálogo musical, visual e gestual/corporal por meio da tecnologia.</p>
                    <div>
                        <span class="icon fa-backward"></span>
                        <a href="index.jsp">
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