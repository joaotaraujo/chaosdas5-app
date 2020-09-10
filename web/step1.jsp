<!DOCTYPE HTML>
<html>
    <head>
        <title>Chaos das 5</title>
        <meta accept-charset=utf-8 />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <link rel="shortcut icon" href="images/logoAlice.png">
    </head>
    <body>
        <!-- Header -->
        <header id="header">
            <div class="inner">
                <a href="index.jsp" class="logo"><strong>Espet�culo</strong> Chaos das 5</a>
            </div>
        </header>

        <section id="banner">
            <div class="inner">
                <div class="flex ">
                    <div class="image round">
                        <center><img src="images/step1.png" style="width:60%;" alt="Pic 02"/></center>
                    </div>
                    <p><h6 style="color:white">
			Voc� acaba de cair na toca do coelho e est� prestes a entrar em um mundo sint�tico, mas desse tamanho voc� � 				"impass�vel"!<br>
			Voc� est� grande demais, procure ter um tamanho adequado!<br>
			Procure o c�rculo no ch�o, ele possui o c�digo que ir� te diminuir!</h6>
                </div>

                <div>
                    <form>
                        C�digo: 
                        <input type="text" name="fieldname"><br>
                        <input type="button" name="diminuir" value="Diminuir" onclick="check(this.form);">
		    	<h6 style="color:white;">Insira o c�digo para avan�ar de etapa.</h6>
		    </form>
                </div>
                <script>
                    function check(oForm){
                        var guess = oForm.fieldname.value;
                        if (guess === "102030"){
                            window.location= "./step2.jsp";
                        }
                        else{
                            alert ("C�digo incorreto!");
                        }
                    }
                </script>
        </section>
  <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/skel.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>
