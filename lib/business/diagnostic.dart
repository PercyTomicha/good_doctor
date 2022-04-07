import 'package:good_doctor/business/diseases.dart';

enum Symptoms{
  NINGUNO,
  DOLOR_DE_PECHO_O_DIFICULTAD_DE_RESPIRAR,
  TOS,
  FIEBRE,
  FATIGA,
  TRANSPIRACION,
  ESCALOFRIOS,
  DIARREA,
  SARPULLIDO,
  INSUFICIENCIA_RENAL,
  INSUFICIENCIA_HEPATICA,
  FRECUENCIA_CARDIACA_ERRATICA,
  BULTOS_O_MANCHAS_BUCALES,
  SENSACION_GENERAL_DE_MALESTAR,
  DOLOR_ABDOMINAL,
  FALTA_DE_APETITO,
  DOLOR_MUSCULAR_O_ARTICULAR,
  DOLOR_DE_CABEZA,
  SANGRADO,
  PERDIDA_DE_PESO,
  HINCHAZON_O_RETENCION_DE_LIQUIDOS,
  DOLOR_DETRAS_DE_LOS_OJOS,
  NAUSEA_VOMITO,
  MUCOSIDAD_O_FLUJO_NASAL,
  MAREO,
  GLANDULAS_INFLAMADAS_INFLAMACION_DE_GARGANTA,
  SANGRE_EN_LA_ORINA,
  TOS_CON_MUCOSIDAD,
  AFTAS_CAPA_BLANCA_EN_LA_LENGUA_O_BOCA,
  CONJUNTIVITIS_OJOS_ENROJECIDOS,
  PICAZON_,
  PERDIDA_DEL_SENTIDO_DEL_GUSTO,
  PERDIDA_DEL_SENTIDO_DEL_OLFATO,
  SENSIBILIDAD_A_LA_LUZ,
  INFECCION_POR_HONGOS,
  INCREMENTO_DE_SED_Y_GANAS_DE_ORINAS,
  AUMENTO_DE_APETITO,
  FALTA_DE_VISION,
  HORMIGUEO,
  ULCERAS,
  DIFICULTAD_DE_MOVER_EXTRAMIDADES,
  OJOS_CARA_O_LENGUA_AMARILLO,
  FLUJO_DE_COLOR_ROJO,
  ICTERICIA_PIEL_Y_OJOS_AMARILLENTOS,
  ESTORNUDO,
  DELIRIO,
  INFECCION_DEL_OIDO,
  DESMAYOS,
  DISFUNCIONES_DEL_SISTEMA_NERVIOSO,
  ESTRENHIMIENTO,
  CONVULSIONES,
  ENFEMEDAD_PELVICA_INFLAMATORIA_CRONICA,
  HIPERACTIVIDAD,
  HIDROFOBIA,
  ANGUSTIA,
  SUDOR_EN_EXCESO,
  INFLAMACION_DE_AXILAS,
  SENSIBILIDAD_A_LOS_SONIDOS,
  INFLAMACION_DE_INGLE,
  DOLOR_EN_ZONA_AFECTADA,
  PARALISIS_MUSCULAR_EN_LA_ZONA_DE_LA_HERIDA,
  DIFICULTAD_PARA_TRAGAR,
  MORETONES,
  ENCELOPATIA_HEPTICA_CONFUSION_SOMNOLENCIA_DIFICULTAD_DEL_HABLA,
  ANGIOMAS_DE_ARANHA_VASOS_SANGUINEOS_EN_FORMA_DE_ARANHA_EN_LA_PIEL,
}

class Diagnostic{
  List<Disease> diseases = [];
  List<int> percentages = [];

  Diagnostic();

  loadDiseases(){
    // 1- INFLUENZA	
    percentages.add(0);
    Disease influenza = Disease(1, 'INFLUENZA', '');
    influenza.insert(Symptoms.DOLOR_DE_PECHO_O_DIFICULTAD_DE_RESPIRAR.index, 5);
    influenza.insert(Symptoms.TOS.index, 50);
    influenza.insert(Symptoms.FIEBRE.index, 10);
    influenza.insert(Symptoms.FATIGA.index, 10);
    influenza.insert(Symptoms.ESCALOFRIOS.index, 10);
    influenza.insert(Symptoms.DIARREA.index, 1);
    influenza.insert(Symptoms.DOLOR_MUSCULAR_O_ARTICULAR.index, 10);
    influenza.insert(Symptoms.DOLOR_DE_CABEZA.index, 4);
    diseases.add(influenza);

    // 2- RESFRIO	
    percentages.add(0);
    Disease resfrio = Disease(2, 'RESFRIO', '');
    resfrio.insert(Symptoms.DOLOR_DE_PECHO_O_DIFICULTAD_DE_RESPIRAR.index, 5);
    resfrio.insert(Symptoms.TOS.index, 10);
    resfrio.insert(Symptoms.FIEBRE.index, 20);
    resfrio.insert(Symptoms.DOLOR_MUSCULAR_O_ARTICULAR.index, 20);
    resfrio.insert(Symptoms.DOLOR_DE_CABEZA.index, 10);
    resfrio.insert(Symptoms.MUCOSIDAD_O_FLUJO_NASAL.index, 20);
    resfrio.insert(Symptoms.GLANDULAS_INFLAMADAS_INFLAMACION_DE_GARGANTA.index, 20);
    resfrio.insert(Symptoms.ESTORNUDO.index, 20);
    resfrio.insert(Symptoms.INFECCION_DEL_OIDO.index, 10);
    diseases.add(resfrio);

    // 3- DIABETES	
    percentages.add(0);
    Disease diabetes = Disease(3, 'DIABETES', 'REQUIERE EXAMEN DE SANGRE PARA CONFIRMAR');
    diabetes.insert(Symptoms.FATIGA.index, 20);
    diabetes.insert(Symptoms.FRECUENCIA_CARDIACA_ERRATICA.index, 20);
    diabetes.insert(Symptoms.PERDIDA_DE_PESO.index, 20);
    diabetes.insert(Symptoms.INCREMENTO_DE_SED_Y_GANAS_DE_ORINAS.index, 10);
    diabetes.insert(Symptoms.AUMENTO_DE_APETITO.index, 2);
    diabetes.insert(Symptoms.FALTA_DE_VISION.index, 5);
    diabetes.insert(Symptoms.HORMIGUEO.index, 2);
    diabetes.insert(Symptoms.ULCERAS.index, 3);
    diseases.add(diabetes);

    // 4- MALARIA	
    percentages.add(0);
    Disease malaria = Disease(4, 'MALARIA', 'REQUIERE EXAMEN DE SANGRE PARA CONFIRMAR');
    malaria.insert(Symptoms.TOS.index, 5);
    malaria.insert(Symptoms.FIEBRE.index, 15);
    malaria.insert(Symptoms.FATIGA.index, 10);
    malaria.insert(Symptoms.ESCALOFRIOS.index, 5);
    malaria.insert(Symptoms.DIARREA.index, 20);
    malaria.insert(Symptoms.FRECUENCIA_CARDIACA_ERRATICA.index, 10);
    malaria.insert(Symptoms.SENSACION_GENERAL_DE_MALESTAR.index, 10);
    malaria.insert(Symptoms.DOLOR_ABDOMINAL.index, 5);
    malaria.insert(Symptoms.DOLOR_MUSCULAR_O_ARTICULAR.index, 15);
    diseases.add(malaria);

    // 5- DENGUE	
    percentages.add(0);
    Disease dengue = Disease(5, 'DENGUE', 'REQUIERE EXAMEN DE SANGRE PARA CONFIRMAR');
    dengue.insert(Symptoms.DOLOR_DE_PECHO_O_DIFICULTAD_DE_RESPIRAR.index, 10);
    dengue.insert(Symptoms.FATIGA.index, 10);
    dengue.insert(Symptoms.DIARREA.index, 5);
    dengue.insert(Symptoms.SARPULLIDO.index, 20);
    dengue.insert(Symptoms.DOLOR_MUSCULAR_O_ARTICULAR.index, 10);
    dengue.insert(Symptoms.DOLOR_DE_CABEZA.index, 5);
    dengue.insert(Symptoms.DOLOR_DETRAS_DE_LOS_OJOS.index, 25);
    diseases.add(dengue);
  
    // 6- CHIKUNGUNHA	
    percentages.add(0);
    Disease chikungunha = Disease(6, 'CHIKUNGUNHA', 'REQUIERE EXAMEN DE SANGRE PARA CONFIRMAR');
    chikungunha.insert(Symptoms.FIEBRE.index, 20);
    chikungunha.insert(Symptoms.ESCALOFRIOS.index, 10);
    chikungunha.insert(Symptoms.DIARREA.index, 15);
    chikungunha.insert(Symptoms.SARPULLIDO.index, 20);
    chikungunha.insert(Symptoms.DOLOR_MUSCULAR_O_ARTICULAR.index, 20);
    chikungunha.insert(Symptoms.DOLOR_DE_CABEZA.index, 10);
    diseases.add(chikungunha);
    
    // 7- FIEBRES HEMORRÁGICA VIRALES	
    percentages.add(0);
    Disease fiebresHemorragicaVirales = Disease(7, 'FIEBRES HEMORRÁGICA VIRALES', 'REQUIERE EXAMEN DE SANGRE PARA CONFIRMAR');
    fiebresHemorragicaVirales.insert(Symptoms.DOLOR_DE_PECHO_O_DIFICULTAD_DE_RESPIRAR.index, 15);
    fiebresHemorragicaVirales.insert(Symptoms.FIEBRE.index, 15);
    fiebresHemorragicaVirales.insert(Symptoms.FATIGA.index, 10);
    fiebresHemorragicaVirales.insert(Symptoms.DIARREA.index, 15);
    fiebresHemorragicaVirales.insert(Symptoms.INSUFICIENCIA_RENAL.index, 10);
    fiebresHemorragicaVirales.insert(Symptoms.INSUFICIENCIA_HEPATICA.index, 10);
    fiebresHemorragicaVirales.insert(Symptoms.DOLOR_MUSCULAR_O_ARTICULAR.index, 10);
    fiebresHemorragicaVirales.insert(Symptoms.SANGRADO.index, 5);
    fiebresHemorragicaVirales.insert(Symptoms.NAUSEA_VOMITO.index, 2);
    fiebresHemorragicaVirales.insert(Symptoms.MAREO.index, 1);
    fiebresHemorragicaVirales.insert(Symptoms.DELIRIO.index, 1);
    fiebresHemorragicaVirales.insert(Symptoms.DISFUNCIONES_DEL_SISTEMA_NERVIOSO.index, 5);
    diseases.add(fiebresHemorragicaVirales);

    // 8- HANTAVIRUS	
    percentages.add(0);
    Disease hantavirus = Disease(8, 'HANTAVIRUS', 'REQUIERE EXAMEN DE SANGRE PARA CONFIRMAR');
    hantavirus.insert(Symptoms.DOLOR_DE_PECHO_O_DIFICULTAD_DE_RESPIRAR.index, 5);
    hantavirus.insert(Symptoms.FIEBRE.index, 10);
    hantavirus.insert(Symptoms.ESCALOFRIOS.index, 5);
    hantavirus.insert(Symptoms.DIARREA.index, 20);
    hantavirus.insert(Symptoms.FRECUENCIA_CARDIACA_ERRATICA.index, 10);
    hantavirus.insert(Symptoms.DOLOR_ABDOMINAL.index, 10);
    hantavirus.insert(Symptoms.DOLOR_MUSCULAR_O_ARTICULAR.index, 5);
    hantavirus.insert(Symptoms.DOLOR_DE_CABEZA.index, 10);
    hantavirus.insert(Symptoms.HINCHAZON_O_RETENCION_DE_LIQUIDOS.index, 10);
    hantavirus.insert(Symptoms.NAUSEA_VOMITO.index, 5);
    hantavirus.insert(Symptoms.TOS_CON_MUCOSIDAD.index, 2);
    diseases.add(hantavirus);
  
    // 9- LEPTOSPIROSIS	
    percentages.add(0);
    Disease leptospirosis = Disease(9, 'LEPTOSPIROSIS', 'REQUIERE EXAMEN DE SANGRE PARA CONFIRMAR');
    leptospirosis.insert(Symptoms.FIEBRE.index, 20);
    leptospirosis.insert(Symptoms.ESCALOFRIOS.index, 5);
    leptospirosis.insert(Symptoms.DIARREA.index, 10);
    leptospirosis.insert(Symptoms.SARPULLIDO.index, 5);
    leptospirosis.insert(Symptoms.DOLOR_ABDOMINAL.index, 5);
    leptospirosis.insert(Symptoms.DOLOR_MUSCULAR_O_ARTICULAR.index, 10);
    leptospirosis.insert(Symptoms.DOLOR_DE_CABEZA.index, 15);
    leptospirosis.insert(Symptoms.NAUSEA_VOMITO.index, 10);
    leptospirosis.insert(Symptoms.CONJUNTIVITIS_OJOS_ENROJECIDOS.index, 2);
    leptospirosis.insert(Symptoms.ICTERICIA_PIEL_Y_OJOS_AMARILLENTOS.index, 2);
    diseases.add(leptospirosis);
    
    // 10- ZIKA	
    percentages.add(0);
    Disease zika = Disease(10, 'ZIKA', 'REQUIERE EXAMEN DE SANGRE PARA CONFIRMAR');
    zika.insert(Symptoms.FIEBRE.index, 10);
    zika.insert(Symptoms.SARPULLIDO.index, 10);
    zika.insert(Symptoms.DOLOR_MUSCULAR_O_ARTICULAR.index, 15);
    zika.insert(Symptoms.DOLOR_DE_CABEZA.index, 5);
    zika.insert(Symptoms.CONJUNTIVITIS_OJOS_ENROJECIDOS.index, 10);
    diseases.add(zika);
      
    // 11- FIEBRE AMARRILLA	
    percentages.add(0);
    Disease fiebreAmarrilla = Disease(11, 'FIEBRE AMARRILLA', 'REQUIERE EXAMEN DE SANGRE PARA CONFIRMAR');
    fiebreAmarrilla.insert(Symptoms.FIEBRE.index, 10);
    fiebreAmarrilla.insert(Symptoms.FALTA_DE_APETITO.index, 10);
    fiebreAmarrilla.insert(Symptoms.DOLOR_MUSCULAR_O_ARTICULAR.index, 10);
    fiebreAmarrilla.insert(Symptoms.DOLOR_DE_CABEZA.index, 10);
    fiebreAmarrilla.insert(Symptoms.NAUSEA_VOMITO.index, 10);
    fiebreAmarrilla.insert(Symptoms.MAREO.index, 5);
    fiebreAmarrilla.insert(Symptoms.SENSIBILIDAD_A_LA_LUZ.index, 5);
    fiebreAmarrilla.insert(Symptoms.OJOS_CARA_O_LENGUA_AMARILLO.index, 10);
    diseases.add(fiebreAmarrilla);

    // 12- CHAGAS	
    percentages.add(0);
    Disease chagas = Disease(12, 'CHAGAS', 'REQUIERE EXAMEN DE SANGRE PARA CONFIRMAR');
    chagas.insert(Symptoms.DOLOR_DE_PECHO_O_DIFICULTAD_DE_RESPIRAR.index, 5);
    chagas.insert(Symptoms.FATIGA.index, 10);
    chagas.insert(Symptoms.FRECUENCIA_CARDIACA_ERRATICA.index, 10);
    chagas.insert(Symptoms.MAREO.index, 2);
    chagas.insert(Symptoms.DESMAYOS.index, 10);
    chagas.insert(Symptoms.ESTRENHIMIENTO.index, 2);
    chagas.insert(Symptoms.DIFICULTAD_PARA_TRAGAR.index, 5);
    diseases.add(chagas);
  
    // 13- VIH	
    percentages.add(0);
    Disease vih = Disease(13, 'VIH', 'REQUIERE EXAMEN DE SANGRE PARA CONFIRMAR');
    vih.insert(Symptoms.DOLOR_DE_PECHO_O_DIFICULTAD_DE_RESPIRAR.index, 10);
    vih.insert(Symptoms.TOS.index, 10);
    vih.insert(Symptoms.FIEBRE.index, 15);
    vih.insert(Symptoms.FATIGA.index, 15);
    vih.insert(Symptoms.DIARREA.index, 5);
    vih.insert(Symptoms.SARPULLIDO.index, 5);
    vih.insert(Symptoms.BULTOS_O_MANCHAS_BUCALES.index, 10);
    vih.insert(Symptoms.SENSACION_GENERAL_DE_MALESTAR.index, 10);
    vih.insert(Symptoms.DOLOR_ABDOMINAL.index, 2);
    vih.insert(Symptoms.SANGRADO.index, 2);
    vih.insert(Symptoms.MAREO.index, 1);
    vih.insert(Symptoms.GLANDULAS_INFLAMADAS_INFLAMACION_DE_GARGANTA.index, 2);
    vih.insert(Symptoms.AFTAS_CAPA_BLANCA_EN_LA_LENGUA_O_BOCA.index, 2);
    vih.insert(Symptoms.INFECCION_POR_HONGOS.index, 1);
    vih.insert(Symptoms.HORMIGUEO.index, 1);
    vih.insert(Symptoms.DIFICULTAD_DE_MOVER_EXTRAMIDADES.index, 2);
    vih.insert(Symptoms.FLUJO_DE_COLOR_ROJO.index, 1);
    vih.insert(Symptoms.DISFUNCIONES_DEL_SISTEMA_NERVIOSO.index, 2);
    vih.insert(Symptoms.ENFEMEDAD_PELVICA_INFLAMATORIA_CRONICA.index, 3);
    vih.insert(Symptoms.SUDOR_EN_EXCESO.index, 5);
    vih.insert(Symptoms.INFLAMACION_DE_AXILAS.index, 2);
    vih.insert(Symptoms.INFLAMACION_DE_INGLE.index, 2);
    diseases.add(vih);

    // 14- HEPATITIS A	
    percentages.add(0);
    Disease hepatitisA = Disease(14, 'HEPATITIS A', 'REQUIERE EXAMEN DE SANGRE PARA CONFIRMAR');
    hepatitisA.insert(Symptoms.FIEBRE.index, 5);
    hepatitisA.insert(Symptoms.FATIGA.index, 10);
    hepatitisA.insert(Symptoms.SENSACION_GENERAL_DE_MALESTAR.index, 10);
    hepatitisA.insert(Symptoms.DOLOR_MUSCULAR_O_ARTICULAR.index, 10);
    hepatitisA.insert(Symptoms.PICAZON_.index, 5);
    hepatitisA.insert(Symptoms.ICTERICIA_PIEL_Y_OJOS_AMARILLENTOS.index, 5);
    diseases.add(hepatitisA);

    // 15- HEPATITIS B	
    percentages.add(0);
    Disease hepatitisB = Disease(15, 'HEPATITIS B', 'REQUIERE EXAMEN DE SANGRE Y ORINA PARA CONFIRMAR');
    hepatitisB.insert(Symptoms.FIEBRE.index, 10);
    hepatitisB.insert(Symptoms.DOLOR_ABDOMINAL.index, 10);
    hepatitisB.insert(Symptoms.FALTA_DE_APETITO.index, 10);
    hepatitisB.insert(Symptoms.DOLOR_MUSCULAR_O_ARTICULAR.index, 10);
    hepatitisB.insert(Symptoms.HINCHAZON_O_RETENCION_DE_LIQUIDOS.index, 5);
    hepatitisB.insert(Symptoms.NAUSEA_VOMITO.index, 10);
    hepatitisB.insert(Symptoms.ICTERICIA_PIEL_Y_OJOS_AMARILLENTOS.index, 10);
    diseases.add(hepatitisB);

    // 16- HEPATITIS C	
    percentages.add(0);
    Disease hepatitisC = Disease(16, 'HEPATITIS C', 'REQUIERE EXAMEN DE SANGRE Y ORINA PARA CONFIRMAR');
    hepatitisC.insert(Symptoms.FATIGA.index, 10);
    hepatitisC.insert(Symptoms.FALTA_DE_APETITO.index, 10);
    hepatitisC.insert(Symptoms.PERDIDA_DE_PESO.index, 5);
    hepatitisC.insert(Symptoms.HINCHAZON_O_RETENCION_DE_LIQUIDOS.index, 5);
    hepatitisC.insert(Symptoms.ICTERICIA_PIEL_Y_OJOS_AMARILLENTOS.index, 20);
    hepatitisC.insert(Symptoms.MORETONES.index, 10);
    hepatitisC.insert(Symptoms.ENCELOPATIA_HEPTICA_CONFUSION_SOMNOLENCIA_DIFICULTAD_DEL_HABLA.index, 10);
    hepatitisC.insert(Symptoms.ANGIOMAS_DE_ARANHA_VASOS_SANGUINEOS_EN_FORMA_DE_ARANHA_EN_LA_PIEL.index, 10);
    diseases.add(hepatitisC);

    // 17- COVID-19	
    percentages.add(0);
    Disease covid19 = Disease(17, 'COVID-19', 'REQUIERE EXAMEN DE SANGRE,ISOPADO,ORINA,RAYOS-X  PARA CONFIRMAR');
    covid19.insert(Symptoms.DOLOR_DE_PECHO_O_DIFICULTAD_DE_RESPIRAR.index, 10);
    covid19.insert(Symptoms.TOS.index, 15);
    covid19.insert(Symptoms.FIEBRE.index, 10);
    covid19.insert(Symptoms.FATIGA.index, 15);
    covid19.insert(Symptoms.DIARREA.index, 5);
    covid19.insert(Symptoms.CONJUNTIVITIS_OJOS_ENROJECIDOS.index, 5);
    covid19.insert(Symptoms.PERDIDA_DEL_SENTIDO_DEL_GUSTO.index, 20);
    covid19.insert(Symptoms.PERDIDA_DEL_SENTIDO_DEL_OLFATO.index, 20);
    diseases.add(covid19);

    // 18- TUBERCULOSIS	
    percentages.add(0);
    Disease tuberculosis = Disease(18, 'TUBERCULOSIS', 'EXAMEN DE RAYOS-X, SANGRE PARA CONFIRMAR');
    tuberculosis.insert(Symptoms.DOLOR_DE_PECHO_O_DIFICULTAD_DE_RESPIRAR.index, 5);
    tuberculosis.insert(Symptoms.TOS.index, 20);
    tuberculosis.insert(Symptoms.FIEBRE.index, 5);
    tuberculosis.insert(Symptoms.FATIGA.index, 10);
    tuberculosis.insert(Symptoms.TRANSPIRACION.index, 20);
    tuberculosis.insert(Symptoms.ESCALOFRIOS.index, 20);
    tuberculosis.insert(Symptoms.FALTA_DE_APETITO.index, 5);
    tuberculosis.insert(Symptoms.PERDIDA_DE_PESO.index, 5);
    tuberculosis.insert(Symptoms.FLUJO_DE_COLOR_ROJO.index, 2);
    diseases.add(tuberculosis);

    // 19- RABIA	
    percentages.add(0);
    Disease rabia = Disease(19, 'RABIA', 'REQUIERE EXAMEN DE SANGRE PARA CONFIRMAR');
    rabia.insert(Symptoms.FIEBRE.index, 10);
    rabia.insert(Symptoms.FATIGA.index, 10);
    rabia.insert(Symptoms.DOLOR_DE_CABEZA.index, 10);
    rabia.insert(Symptoms.PICAZON_.index, 3);
    rabia.insert(Symptoms.SENSIBILIDAD_A_LA_LUZ.index, 20);
    rabia.insert(Symptoms.HORMIGUEO.index, 10);
    rabia.insert(Symptoms.CONVULSIONES.index, 20);
    rabia.insert(Symptoms.HIPERACTIVIDAD.index, 10);
    rabia.insert(Symptoms.HIDROFOBIA.index, 20);
    rabia.insert(Symptoms.ANGUSTIA.index, 2);
    rabia.insert(Symptoms.SENSIBILIDAD_A_LOS_SONIDOS.index, 5);
    rabia.insert(Symptoms.DOLOR_EN_ZONA_AFECTADA.index, 5);
    rabia.insert(Symptoms.PARALISIS_MUSCULAR_EN_LA_ZONA_DE_LA_HERIDA.index, 10);
    diseases.add(rabia);

    // 20- NEUMONIA	
    percentages.add(0);
    Disease neumonia = Disease(20, 'NEUMONIA', 'EXAMEN DE RAYOS-X,ECOGRAFIA, SANGRE PARA CONFIRMAR');
    neumonia.insert(Symptoms.DOLOR_DE_PECHO_O_DIFICULTAD_DE_RESPIRAR.index, 5);
    neumonia.insert(Symptoms.TOS.index, 20);
    neumonia.insert(Symptoms.FIEBRE.index, 5);
    neumonia.insert(Symptoms.FATIGA.index, 10);
    neumonia.insert(Symptoms.TRANSPIRACION.index, 20);
    neumonia.insert(Symptoms.ESCALOFRIOS.index, 20);
    neumonia.insert(Symptoms.INSUFICIENCIA_HEPATICA.index, 5);
    neumonia.insert(Symptoms.FRECUENCIA_CARDIACA_ERRATICA.index, 5);
    neumonia.insert(Symptoms.BULTOS_O_MANCHAS_BUCALES.index, 10);
    neumonia.insert(Symptoms.SENSACION_GENERAL_DE_MALESTAR.index, 10);
    neumonia.insert(Symptoms.FALTA_DE_APETITO.index, 5);
    neumonia.insert(Symptoms.DOLOR_DE_CABEZA.index, 5);
    neumonia.insert(Symptoms.PERDIDA_DE_PESO.index, 5);
    neumonia.insert(Symptoms.HINCHAZON_O_RETENCION_DE_LIQUIDOS.index, 1);
    neumonia.insert(Symptoms.NAUSEA_VOMITO.index, 2);
    neumonia.insert(Symptoms.MAREO.index, 2);
    neumonia.insert(Symptoms.GLANDULAS_INFLAMADAS_INFLAMACION_DE_GARGANTA.index, 2);
    neumonia.insert(Symptoms.TOS_CON_MUCOSIDAD.index, 2);
    neumonia.insert(Symptoms.FLUJO_DE_COLOR_ROJO.index, 2);
    neumonia.insert(Symptoms.ESTORNUDO.index, 2);
    neumonia.insert(Symptoms.DELIRIO.index, 2);
    neumonia.insert(Symptoms.SUDOR_EN_EXCESO.index, 2);
    neumonia.insert(Symptoms.DOLOR_EN_ZONA_AFECTADA.index, 2);
    diseases.add(neumonia);

    // 21- APENDICITTIS	
    percentages.add(0);
    Disease apendicittis = Disease(21, 'APENDICITTIS', 'EXAMEN DE RAYOS-X,ECOGRAFIA, SANGRE PARA CONFIRMAR');
    apendicittis.insert(Symptoms.TRANSPIRACION.index, 2);
    apendicittis.insert(Symptoms.INSUFICIENCIA_RENAL.index, 5);
    apendicittis.insert(Symptoms.INSUFICIENCIA_HEPATICA.index, 10);
    apendicittis.insert(Symptoms.SENSACION_GENERAL_DE_MALESTAR.index, 10);
    apendicittis.insert(Symptoms.DOLOR_ABDOMINAL.index, 15);
    apendicittis.insert(Symptoms.HINCHAZON_O_RETENCION_DE_LIQUIDOS.index, 5);
    apendicittis.insert(Symptoms.NAUSEA_VOMITO.index, 10);
    apendicittis.insert(Symptoms.MAREO.index, 2);
    apendicittis.insert(Symptoms.SANGRE_EN_LA_ORINA.index, 2);
    apendicittis.insert(Symptoms.DIFICULTAD_DE_MOVER_EXTRAMIDADES.index, 5);
    apendicittis.insert(Symptoms.DELIRIO.index, 5);
    apendicittis.insert(Symptoms.DOLOR_EN_ZONA_AFECTADA.index, 5);
    diseases.add(apendicittis);
  }

  List<String> results(int quantity, List<int> symptomIds){
    int index = 0;
    for (var disease in diseases) {
      int probabilityTotal = disease.probabilityTotal(symptomIds);
      percentages[index] = probabilityTotal;
      index++;
    }
    List<String> result = [];
    sort();
    int it = 0;
    while(it < percentages.length){
      if(percentages[it] > 50){
        result.add('${diseases[it].name}&${diseases[it].diagnostic}&${percentages[it]}');
      }
      it++;
    }
    return result;
  }

  interchange(List<dynamic> list, int i, int j){
    dynamic aux = list[i];
    list[i] = list[j];
    list[j] = aux;
  }

  sort(){
    for(int i = 0; i < percentages.length - 1; i++){
      for(int j = i + 1; j < percentages.length; j++){
        if(percentages[i] < percentages[j]){
          interchange(percentages, i, j);
          interchange(diseases, i, j);
        }
      }
    }
  }
}