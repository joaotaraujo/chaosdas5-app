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

        <section id="banner">
            <div class="inner">
                <div class="image round">
                        <center><img src="images/step3.png" style="width:60%;" alt="Pic 02"/></center>
                </div>
        	<div class="flex ">
			<p style="color:white">Ótimo!</p>
                        <div style="color:white">Agora pegue a chave para finalizar sua missão!</div>
        	</div>

	        <div>
                    <form>
                        Código: 
                        <input type="text" name="fieldname"><br>
                        <input type="button" name="diminuir" value="Diminuir" onclick="check(this.form);">
		    	<h6 style="color:white;">Insira o código para avançar de etapa.</h6>
		    </form>
                </div>
                <script>
                    function check(oForm){
                        var guess = oForm.fieldname.value;
                        if (guess === "321321"){
                            window.location= "./step4.jsp";
                        }
                        else{
                            alert ("Código incorreto!");
                        }
                    }
                </script>
            </div>
        </section>

        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/skel.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>
