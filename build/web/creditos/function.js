var cont = 1;

function addNomeFoto(nome){
    // Cria o conjunto de imagem e nome.
    // var set = document.createElement("div");
    // set.id = "set"+cont;
    // set.className = "set";
    var elementContainer = document.getElementById("container");
    // elementContainer.appendChild(set);
    //
    // // Busca o conjunto dentro do container.
    // var element = document.getElementById("set"+cont);

    // Cria o nome.
    // var divNome = document.createElement("div");
    // divNome.id = "divnome"+cont;
    // divNome.className = "nome";
    var p = document.createElement("p");
    var node = document.createTextNode(nome);
    p.className = "autor";
    p.appendChild(node);
    // divNome.appendChild(p);
    elementContainer.appendChild(p);

    // Cria a imagem.
    // var divFoto = document.createElement("div");
    // divFoto.id = "divfoto"+cont;
    // divFoto.className = "foto";
    // var img = document.createElement("img");
    // var url = "images/publico/"+nome+'.jpg';
    // img.src = url;
    // img.width = 150;
    // img.height = 150;
    // divFoto.appendChild(img);
    // element.appendChild(divFoto);

    cont++;
}
