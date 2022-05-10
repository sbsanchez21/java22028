const valorTicket=200

function calcularTotal() {
    let cant=document.getElementById("cant").value 

    let categoria=document.getElementById("categoria").value 

    let desc;
    if (categoria==1) { //estudiante
        desc=80
    } else if(categoria==2) { //trainee
        desc=50
    } else { //junior
        desc=15
    }

    let total=cant*valorTicket
    
    total -= total*desc/100

    document.getElementById("total").innerHTML=total
}

function editarAcercaDe() {
    document.getElementById("acercaDe").style.display="block"
}

function updTxtAcercaDe(texto) {
    document.getElementById("txtAcercaDe").innerHTML=texto
    
}