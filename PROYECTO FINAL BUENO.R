 # DETECTOR INFORMATIVO DE ENFERMEDADES
detector_enfermedades <- function() {
  cat("DETECTOR INFORMATIVO DE ENFERMEDADES\n")
  
  cat("Holaaa. Te hare algunas preguntas sobre tus sintomas\n")
  cat("RECUERDA: Esto es solo informativo. Siempre consulta a un medico\n\n")
  
  while(TRUE) {
    sintomas_usuario <- capturar_sintomas()
    resultados <- analizar_sintomas(sintomas_usuario)
    mostrar_resultados(resultados)
    
    cat("\n")
    continuar <- tolower(readline("Analizar otro caso? (si/no): "))
    if(continuar != "si") {
      cat("Cuida tu salud! Recuerda siempre visitar a tu medico.\n")
      break
    }
  }
}

capturar_sintomas <- function() {
  cat("\nPOR FAVOR RESPONDE LAS SIGUIENTES PREGUNTAS:\n")

  sintomas <- list()
  
  cat("\nSINTOMAS GENERALES:\n")
  sintomas$fiebre <- tolower(readline("Tienes fiebre (>38C)? (si/no): "))
  sintomas$fiebre_alta <- tolower(readline("Fiebre muy alta (>39C)? (si/no): "))
  sintomas$escalofrios <- tolower(readline("Escalofrios intensos? (si/no): "))
  sintomas$debilidad <- tolower(readline("Cansancio extremo? (si/no): "))
  sintomas$dolor_cabeza <- tolower(readline("Dolor de cabeza severo? (si/no): "))
  sintomas$dolor_muscular <- tolower(readline("Dolores musculares intensos? (si/no): "))
  sintomas$dolor_articulaciones <- tolower(readline("Dolor en articulaciones? (si/no): "))
  sintomas$ganglios <- tolower(readline("Ganglios inflamados? (si/no): "))
  
  cat("\nSINTOMAS RESPIRATORIOS:\n")
  sintomas$tos <- tolower(readline("Tos seca? (si/no): "))
  sintomas$tos_productiva <- tolower(readline("Tos con flemas? (si/no): "))
  sintomas$dolor_garganta <- tolower(readline("Dolor de garganta intenso? (si/no): "))
  sintomas$congestion <- tolower(readline("Congestion nasal? (si/no): "))
  sintomas$secrecion_nasal <- tolower(readline("Secrecion nasal? (si/no): "))
  sintomas$dificultad_respirar <- tolower(readline("Dificultad para respirar? (si/no): "))
  sintomas$dolor_pecho <- tolower(readline("Dolor en el pecho? (si/no): "))
  
  cat("\nSINTOMAS GASTROINTESTINALES:\n")
  sintomas$nausea <- tolower(readline("Nauseas? (si/no): "))
  sintomas$vomito <- tolower(readline("Vomito? (si/no): "))
  sintomas$diarrea <- tolower(readline("Diarrea acuosa? (si/no): "))
  sintomas$diarrea_sangre <- tolower(readline("Diarrea con sangre? (si/no): "))
  sintomas$dolor_abdominal <- tolower(readline("Dolor abdominal? (si/no): "))
  sintomas$perdida_apetito <- tolower(readline("Perdida de apetito? (si/no): "))
  sintomas$ictericia <- tolower(readline("Color amarillo en piel/ojos? (si/no): "))
  
  cat("\nSINTOMAS EN LA PIEL:\n")
  sintomas$sarpullido <- tolower(readline("Sarpullido? (si/no): "))
  sintomas$sarpullido_manos_pies <- tolower(readline("Sarpullido en manos/pies? (si/no): "))
  sintomas$vesiculas <- tolower(readline("Ampollas o vesiculas? (si/no): "))
  sintomas$picazon <- tolower(readline("Picazon intensa? (si/no): "))
  sintomas$lesiones <- tolower(readline("Lesiones en la piel? (si/no): "))
  sintomas$ulceras <- tolower(readline("Ulceras o llagas? (si/no): "))
  
  cat("\nSINTOMAS NEUROLOGICOS:\n")
  sintomas$confusion <- tolower(readline("Confusion o desorientacion? (si/no): "))
  sintomas$rigidez_cuello <- tolower(readline("Rigidez en el cuello? (si/no): "))
  sintomas$fotosensibilidad <- tolower(readline("Molestia con la luz? (si/no): "))
  sintomas$convulsiones <- tolower(readline("Convulsiones? (si/no): "))
  
  cat("\nFACTORES DE RIESGO RECIENTES:\n")
  sintomas$viaje <- tolower(readline("Viajaste a zona tropical? (si/no): "))
  sintomas$contacto_enfermo <- tolower(readline("Contacto con personas enfermas? (si/no): "))
  sintomas$agua_contaminada <- tolower(readline("Consumiste agua no tratada? (si/no): "))
  sintomas$alimentos_riesgo <- tolower(readline("Comiste alimentos crudos? (si/no): "))
  sintomas$animales <- tolower(readline("Contacto con animales? (si/no): "))
  sintomas$picadura_mosquito <- tolower(readline("Picadura de mosquito? (si/no): "))
  
  return(sintomas)
}



#####################hihedukuhljsl
###################ljidoeño
