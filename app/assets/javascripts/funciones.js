function temporizador1(){
  minutos = parseInt(document.getElementById('minutos1').value);
  segundos = parseInt(document.getElementById('segundos1').value);
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
    document.getElementById('progress1').innerHTML = loader;
    document.getElementById('min1').innerHTML = variable;
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
        removerDeOradores();
    }
  }, 1000);
}
function detener1(){
    contMinutos = minutos;
    contSegundos = segundos;
  clearTimeout(time);
  $('#detener1').attr("onclick", "continuar()");
  $('#detener1').text("Continuar");
}
function continuar1(){
    $('#detener1').attr("onclick", "detener()");
    $('#detener1').text("Detener");
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
      document.getElementById('progress1').innerHTML = loader;
      document.getElementById('min1').innerHTML = variable;
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
        removerDeOradores();
      }
    }, 1000);
}
function reset1(){
  clearTimeout(time);
  removerDeOradores();
  document.getElementById('min1').innerHTML = "00:00";
}
