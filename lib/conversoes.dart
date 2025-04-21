import 'package:desafioDart/class.dart';


// Soma todos as temperaturas e divide pelo tamanho da lista
double calcularMediaTemperatura(List<MedidaClimatica>? medidas){
  if(medidas == null || medidas.isEmpty){
    return 0.0;
  } else{
    double temperatura = 0;
    int div = 0;
    for(final medida in medidas){
      temperatura = temperatura + medida.tempC;
      div++;
    }
    final media = temperatura / div;
    return media;
  }
}


// Retorna a maior temperatura
double calcularMaxTemperatura(List<MedidaClimatica>? medidas){
  double max = 0;
  if(medidas == null || medidas.isEmpty){
    return 0.0;
  } else{
    for(final medida in medidas){
      if(medida.tempC > max){
        max = medida.tempC;
      }
    }
  return max;
  }
}


// Retorna a menor temperatura
double calcularMinTemperatura(List<MedidaClimatica>? medidas){
  double min = 30;
  if(medidas == null || medidas.isEmpty){
    return 0.0;
  } else{
    for(final medida in medidas){
      if(medida.tempC < min){
        min = medida.tempC;
      }
    }
    return min;
  }
}


// Funções de conversão de Temperatura
double paraFahrenheit(double temperatura){
  return (temperatura * 9/5)+32;
}

double paraKelvin(double temperatura){
  return temperatura + 273.15;
}



