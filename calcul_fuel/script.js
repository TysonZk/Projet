litre = "L"
money = "€"
let diesel = 1.770;
let essence95 = 1.150;
let essence98 = 1.254;


total1 = diesel + "€"
total2 = essence95 + "€"
total3 = essence98 + "€"


let saisie = document.getElementById("saisie");
let btn1 = document.getElementById("btn1");
let resultat = document.getElementById("resultat");

let saisie2 = document.getElementById("saisie2");
let btn2 = document.getElementById("btn2");
let resultat2 = document.getElementById("resultat2");


btn1.addEventListener('click', calcule);
btn2.addEventListener('click', calculee);




function calcule() {

  let saisieValue = parseFloat(saisie.value);
  if (isNaN(saisieValue)) {
    alert("Veuillez entrer un nombre valide");
    return;
  }
  if (demande.options[demande.selectedIndex].value === "diesel") {
    let calcul = parseFloat(saisie.value) * diesel;
    resultat.value = DeuxDecimales(calcul) + money;
  } 
  else if (demande.options[demande.selectedIndex].value === "essence95") {
    let calcul = parseFloat(saisie.value) * essence95;
    resultat.value = DeuxDecimales(calcul) + money;
  }   
  else if (demande.options[demande.selectedIndex].value === "essence98") {
    let calcul = parseFloat(saisie.value) * essence98;
    resultat.value = DeuxDecimales(calcul) + money;
  } 
}


function calculee() {
let saisie2Value = parseFloat(saisie2.value);
if (isNaN(saisie2Value)) {
alert("Veuillez entrer un nombre");
return;
}
if (demande2.options[demande2.selectedIndex].value === "diesel2") {
let calcull = parseFloat(saisie2.value) / diesel;
resultat2.value = DeuxDecimales(calcull) + litre;
} 
else if (demande2.options[demande2.selectedIndex].value === "essence952") {
let calcull = parseFloat(saisie2.value) / essence95;
resultat2.value = DeuxDecimales(calcull) + litre;
}   
else if (demande2.options[demande2.selectedIndex].value === "essence982") {
let calcull = parseFloat(saisie2.value) / essence98;
resultat2.value = DeuxDecimales(calcull) + litre;
} 
}

function DeuxDecimales(nombre) {
  return Math.floor(nombre * 100) / 100; 

}

document.getElementById("fuel").innerHTML = "Diesel = " + total1 + "<br>" + "Essence 95 = " + total2 + "<br>" + "Essence 98 = " + total3;