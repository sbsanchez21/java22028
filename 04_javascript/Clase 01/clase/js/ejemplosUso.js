
function sumar() {
    var a = document.getElementById("a").value;
    var b = document.getElementById("b").value;

    var result = parseFloat(a) + parseFloat(b);

    document.getElementById("resultSuma").innerHTML = result;

}

function restar() {
    console.log("Ingresó a la función restar");
    var c = document.getElementById("c").value;
    var d = document.getElementById("d").value;
    var result = parseFloat(c) - parseFloat(d);
    console.log(c);
    console.error(d);
    console.warn(result);

    document.getElementById("resultResta").innerHTML = `<span style='color:red'>La resta de ${c} - ${d} = ${result}</span>`;
}

function resaltar() {
    document.getElementById("eventoOnMouse").style.backgroundColor="red";
    
}

function opacar() {
    document.getElementById("eventoOnMouse").style.backgroundColor="lightgray";
    
}

function imprimir() {
    window.print();
}