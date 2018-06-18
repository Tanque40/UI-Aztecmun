function temporizador(){
  minutos = parseInt(document.getElementById('minutos').value);
  segundos = parseInt(document.getElementById('segundos').value);
  tiempo = (minutos*60+segundos)*1000;
  console.log(tiempo);
  cambio = true
  time = setInterval(function(){
      if(minutos<10 && cambio){
          minutos = "0" + minutos;
          cambio = false;
      }
      if (segundos < 10) {
          segundos = "0" + segundos;
      }
    variable = minutos+":"+segundos;
    nuevotot = (minutos*60+segundos)*1000;
    tot = (100*nuevotot)/tiempo;
    entero = tot.toFixed();
    console.log(entero);
    loader = "<div class='determinate' style='width:"+entero+"%'></div>";
    document.getElementById('progress').innerHTML = loader;
    document.getElementById('min').innerHTML = variable;
    //clearTimeout(time); Detener tiempo
    if (segundos> 0 && segundos < 60) {
      segundos = segundos-1;
    }else{
      segundos = 59;
      minutos = minutos -1;
      cambio = true;
    }

    if (segundos == 59 && minutos == -1) {
        swal(
            'Aztecmun 2018',
            'El tiempo se ha terminado',
            'success'
        );
        clearTimeout(time);
    }
  }, 1000);
}
function detener(){
    contMinutos = minutos;
    contSegundos = segundos;
  clearTimeout(time);
  $('#detener').attr("onclick", "continuar()");
  $('#detener').text("Continuar");
}
function continuar(){
    $('#detener').attr("onclick", "detener()");
    $('#detener').text("Detener");
    minutos = contMinutos;
    segundos = contSegundos;
    tiempo = (minutos*60+segundos)*1000;
    console.log(tiempo);
    cambio = true;
    if (minutos < 10) {
        cambio = false;
    }
    time = setInterval(function(){
        if(minutos<10 && cambio){
            minutos = "0" + minutos;
            cambio = false;
        }
        if (segundos < 10) {
            segundos = "0" + segundos;
        }
      variable = minutos+":"+segundos;
      nuevotot = (minutos*60+segundos)*1000;
      tot = (100*nuevotot)/tiempo;
      entero = tot.toFixed();
      console.log(entero);
      loader = "<div class='determinate' style='width:"+entero+"%'></div>";
      document.getElementById('progress').innerHTML = loader;
      document.getElementById('min').innerHTML = variable;
      //clearTimeout(time); Detener tiempo
      if (segundos> 0 && segundos < 60) {
        segundos = segundos-1;
      }else{
        segundos = 59;
        minutos = minutos -1;
        cambio = true;
      }

      if (segundos == 59 && minutos == -1) {
        swal(
          'Aztecmun 2018',
          'El tiempo se ha terminado',
          'success'
        )
        clearTimeout(time);
      }
    }, 1000);
}
function reset(){
  clearTimeout(time);
  document.getElementById('min').innerHTML = "00:00";
}
