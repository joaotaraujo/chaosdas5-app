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
                <a href="index.jsp" class="logo"><strong>Espet�culo</strong> Orchidea</a>
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
                            <img src="images/movere.jpeg" alt="Pic 02" />
                        </div>
                    </div>
                    
                    <header>
                        <h1>M�vere</h1>
                    </header>
                    <p>O Mov�re � um dos subgrupos do Grupo Transdisciplinar de Pesquisa em Artes Culturas e Sustentabilidade. Tem como principal objetivo desenvolver um processo eco-po�tico de treinamento do ator dan�arino e da constru��o da cena espetacular. Como parte desse grupo, o Mov�re pauta sua atua��o com base na linha de pesquisa em Artes c�nicas, Performance Comunit�ria e Sustentabilidade do mesmo e � integrado por estudantes do curso de Teatro, os quais, sob a orienta��o de um pesquisador, desenvolvem a��es de pesquisa (Inicia��o Cient�fica), Extens�o (O projeto Arte e Sustentabilidade para toda parte) e ensino (promo��o de cursos, viv�ncias e oficinas ministrados por seus membros e por profissionais afins ao trabalho do grupo).

Dedica-se prioritariamente ao estudo e � pesquisa do corpo em situa��o de  representa��o, � corporeidade, �s t�cnicas do ator, � cena e � Performance com o objetivo de desenvolver novas po�ticas c�nicas, t�cnicas e dramaturgias corporais baseadas numa cultura de sustentabilidade, de modo a criar uma nova eco-po�tica para o trabalho do ator-dan�arino.</p>
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