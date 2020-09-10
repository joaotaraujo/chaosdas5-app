<!DOCTYPE HTML>
<html>
    <head>
        <title>Chaos das 5</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <link rel="shortcut icon" href="images/logoAlice.png">

            <script>

            const Http = new XMLHttpRequest();
            const url='home/joao/Desktop/flag.txt';

            function request(){
                Http.open("GET", url);
                Http.send();
                Http.onreadystatechange=(e)=>{
		    console.log(Http.responseText);
                    if (Http.responseText === "1"){
                        window.location = "./menu_instrumentos.jsp";
                    }
                };
            }

            function timer(){
                //alguma coisa
                request();
                setTimeout(timer, 3000);
            }

            setTimeout(timer, 3000);

            </script>

    </head>
    <body>
        <!-- Header -->
        <header id="header">
            <div class="inner">
                <a href="index.jsp" class="logo"><strong>Espetáculo</strong> Chaos das 5</a>
            </div>
        </header>

        <section id="banner">
            <div class="inner">
                <div class="image round">
                        <center><img src="images/step4.png" style="width:40%;" alt="Pic 02"/></center>
                </div>
                <header>
                    <h1>Bem vindo ao espetáculo Chaos das 5!</h1>
                </header>

                <div class="flex ">
                    <p style="color:white">Chave capturada!</p>
                    <p style="color:white">Mantenha-se conectado até o final da performance!</p>

                    <p style="color:white">Assim que o cronometro zerar, você será redirecionado aos instrumentos para tocá-los e participar do espetáculo!</p>
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
