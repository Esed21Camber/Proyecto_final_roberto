 # DETECTOR INFORMATIVO DE ENFERMEDADES INFECCIOSAS
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

# ENFERMEDADES VIRALES
list(
  nombre = "Influenza (Gripe)",
  microorganismo = "Virus de la Influenza",
  tipo = "Viral",
  sintomas_clave = c("fiebre_alta", "tos", "dolor_muscular", "debilidad", "dolor_cabeza"),
  sintomas_especificos = "Fiebre alta, dolores musculares intensos",
  descripcion = "Infeccion viral respiratoria aguda estacional",
  transmision = "Salvia, contacto directo",
  prevencion = "Vacunacion anual, lavado de manos, evitar multitudes",
  tratamiento = "Reposo, hidratacion, antivirales si se detecta temprano"
),

list(
  nombre = "COVID-19",
  microorganismo = "SARS-CoV-2",
  tipo = "Viral",
  sintomas_clave = c("fiebre", "tos", "dificultad_respirar", "debilidad", "perdida_apetito"),
  sintomas_especificos = "Perdida del olfato/gusto, dificultad respiratoria progresiva",
  descripcion = "Enfermedad respiratoria causada por coronavirus",
  transmision = "Saliva, aerosoles, contacto con superficies",
  prevencion = "Vacunacion, mascarillas, ventilacion, distanciamiento",
  tratamiento = "Aislamiento, tratamiento sintomatico, antivirales especificos"
),

list(
  nombre = "Dengue",
  microorganismo = "Virus Dengue",
  tipo = "Viral",
  sintomas_clave = c("fiebre_alta", "dolor_muscular", "dolor_articulaciones", "dolor_cabeza", "sarpullido"),
  sintomas_especificos = "Dolor detras de los ojos, dolor articular intenso, sarpullido caracteristico",
  descripcion = "Enfermedad viral transmitida por mosquitos Aedes",
  transmision = "Picadura de mosquito Aedes aegypti infectado",
  prevencion = "Control de mosquitos, repelentes, mosquiteros, eliminar criaderos",
  tratamiento = "Hidratacion, control de fiebre, NO usar aspirina"
),

list(
  nombre = "Varicela",
  microorganismo = "Virus Varicela-Zoster",
  tipo = "Viral",
  sintomas_clave = c("fiebre", "vesiculas", "picazon", "debilidad", "sarpullido"),
  sintomas_especificos = "Ampollas que se vuelven costras, lesiones en diferentes etapas",
  descripcion = "Infeccion viral altamente contagiosa con erupcion cutanea caracteristica",
  transmision = "Saliva, contacto directo con lesiones vesiculares",
  prevencion = "Vacunacion, evitar contacto con enfermos",
  tratamiento = "Antivirales, antihistaminicos para picazon, cuidado de lesiones"
),

# ENFERMEDADES BACTERIANAS
list(
  nombre = "Fiebre Tifoidea",
  microorganismo = "Salmonella Typhi",
  tipo = "Bacteriana",
  sintomas_clave = c("fiebre_alta", "dolor_abdominal", "dolor_cabeza", "debilidad", "diarrea"),
  sintomas_especificos = "Fiebre que aumenta progresivamente, dolor abdominal, manchas rosadas en tronco",
  descripcion = "Infeccion bacteriana sistemica por Salmonella Typhi",
  transmision = "Agua o alimentos contaminados con heces humanas",
  prevencion = "Agua potable, higiene alimentaria, vacunacion para viajeros",
  tratamiento = "Antibioticos especificos, hidratacion"
),

list(
  nombre = "Tuberculosis",
  microorganismo = "Mycobacterium tuberculosis",
  tipo = "Bacteriana",
  sintomas_clave = c("tos_productiva", "fiebre", "debilidad", "escalofrios", "perdida_apetito"),
  sintomas_especificos = "Tos con flemas por mas de 2 semanas, sudores nocturnos, perdida de peso",
  descripcion = "Infeccion bacteriana que afecta principalmente los pulmones",
  transmision = "Gotitas respiratorias en el aire al toser o estornudar",
  prevencion = "Vacuna BCG, ventilacion adecuada, identificacion y tratamiento temprano",
  tratamiento = "Combinacion de antibioticos por 6-9 meses"
),

list(
  nombre = "Colera",
  microorganismo = "Vibrio cholerae",
  tipo = "Bacteriana",
  sintomas_clave = c("diarrea", "vomito", "dolor_abdominal"),
  sintomas_especificos = "Diarrea acuosa, deshidratacion rapida",
  descripcion = "Infeccion intestinal aguda causada por Vibrio cholerae",
  transmision = "Agua o alimentos contaminados con heces humanas",
  prevencion = "Agua potable, saneamiento adecuado, higiene de alimentos",
  tratamiento = "Rehidratacion inmediata, antibioticos en casos severos"
),

list(
  nombre = "Faringitis Estreptococica",
  microorganismo = "Streptococcus pyogenes",
  tipo = "Bacteriana",
  sintomas_clave = c("dolor_garganta", "fiebre", "dolor_cabeza", "debilidad"),
  sintomas_especificos = "Dolor de garganta intenso, amigdalas inflamadas con pus, fiebre alta",
  descripcion = "Infeccion bacteriana de la garganta",
  transmision = "Gotitas respiratorias, contacto directo",
  prevencion = "Lavado de manos, no compartir utensilios",
  tratamiento = "Antibioticos para prevenir complicaciones"
),

# ENFERMEDADES PARASITARIAS
list(
  nombre = "Malaria (Paludismo)",
  microorganismo = "Plasmodium spp.",
  tipo = "Parasitaria",
  sintomas_clave = c("fiebre_alta", "escalofrios", "dolor_muscular",
                     "debilidad", "dolor_cabeza"),
  sintomas_especificos = "Ciclos de fiebre alta con escalofríos
intensos y sudoración",
  descripcion = "Enfermedad parasitaria transmitida por mosquitos
Anopheles",
  transmision = "Picadura de mosquito Anopheles hembra infectado",
  prevencion = "Mosquiteros impregnados, repelentes, quimioprofilaxis
en zonas endémicas",
  tratamiento = "Antimaláricos específicos según tipo de Plasmodium"
),

list(
  nombre = "Amebiasis",
  microorganismo = "Entamoeba histolytica",
  tipo = "Parasitaria",
  sintomas_clave = c("diarrea_sangre", "dolor_abdominal", "debilidad",
                     "fiebre"),
  sintomas_especificos = "Diarrea con moco y sangre, dolor abdominal
tipo cólico",
  descripcion = "Infección parasitaria del intestino grueso que puede
formar abscesos hepáticos",
  transmision = "Agua o alimentos contaminados con quistes de
Entamoeba",
  prevencion = "Agua potable, higiene alimentaria, lavado de manos",
  tratamiento = "Metronidazol u otros antiparasitarios específicos"
),

# ENFERMEDADES FUNGICAS
list(
  nombre = "Candidiasis",
  microorganismo = "Candida albicans",
  tipo = "Fungica",
  sintomas_clave = c("lesiones", "picazon", "sarpullido", "debilidad"),
  sintomas_especificos = "Placas blancas en mucosa oral o genital, picazon intensa",
  descripcion = "Infeccion por hongo levaduriforme",
  transmision = "Contacto directo, proliferacion por factores de riesgo",
  prevencion = "Higiene personal, ropa adecuada, control de diabetes",
  tratamiento = "Antifungicos topicos u orales segun localizacion"
)
)

analizar_sintomas <- function(sintomas_usuario) {
  cat("\nAnalizando sintomas con base de datos...\n")
  Sys.sleep(1)
  
  enfermedades_puntaje <- list()
  
  for(i in 1:length(base_datos_enfermedades)) {
    enfermedad <- base_datos_enfermedades[[i]]
    puntaje <- 0
    sintomas_coincidentes <- c()
    
    for(sintoma_clave in enfermedad$sintomas_clave) {
      if(!is.null(sintomas_usuario[[sintoma_clave]]) && 
         sintomas_usuario[[sintoma_clave]] == "si") {
        puntaje <- puntaje + 2
        sintomas_coincidentes <- c(sintomas_coincidentes, sintoma_clave)
      }
    }
    
    if(enfermedad$nombre == "Dengue" && sintomas_usuario$picadura_mosquito == "si") {
      puntaje <- puntaje + 3
    }
    if(enfermedad$nombre == "Fiebre Tifoidea" && sintomas_usuario$agua_contaminada == "si") {
      puntaje <- puntaje + 3
    }
    if(enfermedad$nombre == "Malaria (Paludismo)" && sintomas_usuario$viaje == "si") {
      puntaje <- puntaje + 4
    }
    
    if(puntaje > 0) {
      enfermedades_puntaje[[length(enfermedades_puntaje) + 1]] <- list(
        enfermedad = enfermedad,
        puntaje = puntaje,
        sintomas_coincidentes = sintomas_coincidentes
      )
    }
  }
  
  if(length(enfermedades_puntaje) > 0) {
    puntajes <- sapply(enfermedades_puntaje, function(x) x$puntaje)
    orden <- order(puntajes, decreasing = TRUE)
    enfermedades_ordenadas <- enfermedades_puntaje[orden]
    return(enfermedades_ordenadas[1:min(3, length(enfermedades_ordenadas))])
  } else {
    return(list())
  }
}

mostrar_resultados <- function(resultados) {
  cat("\n")
  cat("RESULTADOS DEL ANALISIS:\n")
  
  cat("IMPORTANTE: Esto es solo informativo. No es un diagnostico medico.\n")
  cat("Siempre consulta a un profesional de la salud.\n\n")
  
  if(length(resultados) == 0) {
    cat("No se encontraron coincidencias significativas en la base de datos.\n")
    cat("Tus sintomas podrian ser leves o requerir evaluacion medica especializada.\n")
    cat("Recomendacion: Consulta a tu medico para una evaluacion adecuada.\n")
    return()
  }
  
  for(i in 1:length(resultados)) {
    enf <- resultados[[i]]$enfermedad
    cat("POSIBILIDAD", i, "(Puntaje:", resultados[[i]]$puntaje, "):\n")
    cat("Enfermedad:", enf$nombre, "\n")
    cat("Microorganismo:", enf$microorganismo, "(", enf$tipo, ")\n")
    cat("Sintomas caracteristicos:", enf$sintomas_especificos, "\n")
    cat("Descripcion:", enf$descripcion, "\n")
    cat("Transmision:", enf$transmision, "\n")
    cat("Prevencion:", enf$prevencion, "\n")
    cat("Tratamiento general:", enf$tratamiento, "\n")
    
    if(length(resultados[[i]]$sintomas_coincidentes) > 0) {
      cat("Sintomas coincidentes reportados:\n")
      for(sintoma in resultados[[i]]$sintomas_coincidentes) {
        cat("-", sintoma, "\n")
      }
    }
    cat("\n")
  }
  
  cat("RECOMENDACION:\n")
  cat("- Busca atencion medica\n")
  
  cat("El diagnostico definitivo debe ser realizado por un profesional de la salud.\n")
}

cat("¡Detector de Enfermedades!\n")
detector_enfermedades()
