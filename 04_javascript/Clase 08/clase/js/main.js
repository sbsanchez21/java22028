document.addEventListener("keypress", ocultarInputs)

function ocultarInputs(e) {
    // console.log(e)
    let inputs=document.getElementsByTagName("input")
    // console.log(inputs)
    if (e.key == "Enter") {
        for (let i = 0; i < inputs.length; i++) {
            inputs[i].style.display="none"
        }
    }
}

function habilitarInput(id) {
    document.getElementById(id).style.display="block"
    document.getElementById(id).focus()
}

function updTexto(id,texto) {
    document.getElementById(id).innerHTML=texto
}

function habilitarAll(fila) {
    document.querySelector(`input#nom${fila}`).style.display="block"
    document.querySelector(`input#ape${fila}`).style.display="block"
    document.querySelector(`input#dni${fila}`).style.display="block"    
}

function delFila(id) {
    document.getElementById(id).style.display="none"
}