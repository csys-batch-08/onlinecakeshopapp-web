/**
 * 
 */
var today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1; 
var yyyy = today.getFullYear();
if(dd<10){
  dd='0'+dd
} 
if(mm<10){
  mm='0'+mm
} 
today = yyyy+'-'+mm+'-'+dd;
document.getElementById("datefield").setAttribute("min", today);

var today1 = new Date();
var dd1 = today1.getDate()+15;
var mm1 = today1.getMonth()+1; 
var yyyy1 = today1.getFullYear();
if(dd1<10){
  dd1='0'+dd1
} 
if(mm1<10){
  mm1='0'+mm1
} 
today1 = yyyy1+'-'+mm1+'-'+dd1;
document.getElementById("datefield").setAttribute("max", today1);

