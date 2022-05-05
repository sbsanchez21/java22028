var a=3
var b=5

function restar() {
    console.log(`a-b=${a-b}`)
}

restar()
a=8
restar()

//funciones con parámetros
function suma(a,b) {
    console.log(`a+b=${a+b}`)
}
suma(4,5)
suma(55,34)

let sueldo=100000
let aument=5000
suma(sueldo, aument);

let pi=3.14
let radio=333
suma(pi, radio);

function sumar($a,$b) {
    a=6

    return a+b;
}
console.log(pi)
let resultSuma=sumar(pi, radio);
console.log(pi)


function hacerEjercicio(a, mensaje) {
    console.log(`Hacer ${a} veces ${mensaje}`);
}
hacerEjercicio(3, "flexiones de brazo");
hacerEjercicio(5, "sentadillas");


// funcions que devuelven un valor
function raizCuadrada(x) {
    return Math.sqrt(x)
}


let raiz = raizCuadrada(16)
console.log(`La raíz cuadrada de 16 es ${raiz}`)
raiz *= 2;
console.log(`${raiz}`)

// funcion flecha, manera abreviada de escribir una función
function sumar(a,b) {
    return a+b;
}

// funcion flecha
// (a,b) son los parámetros
// => indica lo que va a hacer
// a+b insturcciones de la func
var sumaFlecha = (a,b) => a+b
sumaFlecha(6,3)

let aumentarxPorcentaje = (valor, porcAumento) => {
    let aumento = porcAumento * valor/100
    return valor + aumento
}

let aumentImpuesto = aumentarxPorcentaje(1000, 10)
let aumentPatente = aumentarxPorcentaje(2500, 10)


// arrays o vectores
var car1="Renault"
var car2="Volvo"
var car3="Fiat"

let alumnos=[
    ["Pedro","Suarez",22555665,],
    ["Romina","Jimenez",22555665,],
    ["Pedro","Perez",33344444,],
    ["Juan","Apellido",2254445,],
    ["Pedro","Apellido",22555665,]
]

document.write("<ul>")
for (let i = 0; i < alumnos.length; i++) {
    document.write("<li>")
    document.write(`Alumno: ${alumnos[i][0]} ${alumnos[i][1]}`)
    document.write(` <input type="text" name="nota" id="nota${i}">`);
    document.write("</li>")
    
}
document.write("</ul>")

function guardarNotas() {
    for (let i = 0; i < alumnos.length; i++) {
        alumnos[i][3]=document.getElementById(`nota${i}`).value
    }

    // guardar en DB

}


var patCars=["PKJ232","EJJ123","EE123","EE123","EDE123","WEE123","WEE123"]
var cars=["Renault","Volvo","Fiat","Mercedes", "Peugeot"]
console.log(cars[3]) //como acceder a un elemento
cars[3]="Mercedes Benz" //modificar un valor
console.log(cars[3]) //como acceder a un elemento



console.log(cars)
cars.sort()
console.log(cars)
cars.pop()
console.log(cars)
cars.push("BMW")
console.log(cars)
cars.reverse()
console.log(cars)


var sueldos  = [70000, 50000, 60000, 45000]
// sueldos.sort()
console.log(sueldos)

// aumentar el sueldo en $5000
const aumento = 5000
for (let i = 0; i < sueldos.length; i++) {
    sueldos[i]+=aumento
    console.log(sueldos[i])
}

// matrices, arrays bidimensionales, existen arrays multidimensionales
var butacasID = [
    ["F1A1", "F1A2", "F1A3"], 
    ["F2A1", "F2A2", "F2A3"], 
    ["F3A1", "F3A2", "F3A3"], 
    ["F4A1", "F4A2", "F4A3"], 
    ]

var butacasLibres = [
    [true, true, true], 
    [true, false, true], 
    [false, true, true], 
    [true, true, false], 
    ]    

console.log(butacasID)    
console.log(butacasID[2][1])

console.log(`La butaca ${butacasID[1][1]} está libre? ${butacasLibres[1][1]}`)


for (let i = 0; i < butacasID.length; i++) {
    for (let j = 0; j < butacasID[0].length; j++) {
        console.log(`La butaca ${butacasID[i][j]} está libre? ${butacasLibres[i][j]}`)
    }
}


// foreach: llama a una función por cada elemento del array
sueldos  = [70000, 50000, 60000, 45000]
sueldos.forEach(aumentarSueldo) //callback

function aumentarSueldo(elemento, i) {
    elemento+=3000
    console.log(`Se aumento a $${elemento} al empleado ${i}`)
}

// every determina si todos los elementos satisfacen una condición
var edades = [23, 44, 16, 13, 55]

function esMayorEdad(elemento) {
    return elemento >= 18;
}

// console.log(edades.forEach(esMayorEdad))
// true && true && false && flase && true
console.log(edades.every(esMayorEdad)) //verifica que todos los elementos del array cumplan con la condición esMayorEdad
// true || true || false || flase || true
console.log(edades.some(esMayorEdad)) //da verdadero si algun elemento cumple con esMayorEdad

console.log(edades.filter(esMayorEdad))
console.log(edades.map(Math.sqrt))

console.log(edades.map(duplicar))
function duplicar(elemento) {
    return elemento*=2
}
