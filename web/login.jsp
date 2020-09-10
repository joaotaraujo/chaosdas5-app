<!DOCTYPE HTML>
<html>
    <head>
        <title>O Chaos das 5</title>
        <meta accept-charset=utf-8  />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <link rel="shortcut icon" href="images/logoAlice.png">
    </head>
    <body>
        <!-- Header -->
        <header id="header">
            <div class="inner">
                <a href="index.jsp" class="logo"><strong>Espetáculo</strong> O Chaos das 5</a>
            </div>
        </header>

        <!-- Banner -->
        <section id="banner">
            <div class="inner">
                <div class="image round">
                    <center><img src="images/alice.jpeg" style="width:80%;" alt="Pic 02"/></center>
                </div>
                <header>
                    <h1>Qual seu nome?</h1>
                </header>
                
                <div class="flex ">
                    <p>Seu nome pode vir a aparecer nos créditos!</p>
                    <form method="post" action="ServletSalvaNome">
                        <input type="text" name="nome" value="" />
                        </br>        
                        <button style="width:80%;" type="submit" name="Submit" value="Entrar no site">Entrar!</button>
                    </form>
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