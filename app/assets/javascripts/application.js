// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require materialize
//= require materialize-sprockets
//= require sweetalert2
//= require sweet-alert2-rails
//= require activestorage
//= require turbolinks
//= require_tree .

//Inicializamos el select
$(document).ready(function(){
   $('select').material_select();
 });

//Para que funcione el Slider
//intervalo tiempo cambio img slide, 5 segundos, se llama a la función "avanzaSlide()"
setInterval('avanzaSlide()',5000);

//array con las clases para las diferentes imagenes
var arrayImagenes = new Array(".img1",".img2",".img3", ".img4");

//variable que nos permitirá saber qué imagen se está mostrando
var contador = 0;

//hace un efecto fadeIn para mostrar una imagen
function mostrar(img){
    $(img).ready(function(){
        $(arrayImagenes[contador]).fadeIn(1500);
    });
}

//hace un efecto fadeOut para ocultar una imagen
function ocultar(img){
    $(img).ready(function(){
        $(arrayImagenes[contador]).fadeOut(1500);
    });
}

//función principal
function avanzaSlide(){
        //se oculta la imagen actual
    ocultar(arrayImagenes[contador]);
        //aumentamos el contador en una unidad
    contador = (contador + 1) % 4;
        //mostramos la nueva imagen
    mostrar(arrayImagenes[contador]);
}
