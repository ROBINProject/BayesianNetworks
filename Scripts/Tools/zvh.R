zvh.lbl <- "NA
Desierto alvar [Templado - Lluvioso]
Desierto alvar [Templado - Muy Lluvioso]
Desierto alvar [C�lido - Muy Lluvioso]
Desierto Templado C�lido [Templado - Seco]
Desierto Subtropical [C�lido - Seco]
Tundra H�meda subalpina [Templado - Lluvioso]
Tundra H�meda alpina [Templado - Subh�medo]
Estepa Espinosa prermontana [Templado - Seco]
Estepa montana [Templado - Seco]
Matorral Des�rtico [C�lido - Seco]
Matorral Des�rtico premontano [C�lido - Seco]
Matorral Des�rtico montano bajo [Templado - Seco]
Bosque Espinoso [C�lido - Seco]
Bosque Muy Seco [C�lido - Subh�medo]
Bosque Seco premontano [C�lido - Subh�medo]
Bosque Seco montano bajo [Templado - Subh�medo]
Bosque Subh�medo [C�lido - Lluvioso]
Bosque Subh�medo premontano [C�lido - Lluvioso]
Bosque Subh�medo montano [Templado - Subh�medo]
Bosque Subh�medo subalpino [Templado - Seco]
Bosque Subh�medo subalpino [Templado - Subh�medo]
Bosque H�medo premontano [C�lido - Lluvioso]
Bosque H�medo montano bajo [Templado - Lluvioso]
Bosque H�medo montano [Templado - Lluvioso]
Bosque H�medo subalpino [Templado - Lluvioso]
Bosque Lluvioso [C�lido - Muy Lluvioso]
Bosque Lluvioso premontano [C�lido - Muy Lluvioso]
Bosque Lluvioso montano bajo [C�lido - Muy Lluvioso]
Bosque Lluvioso montano bajo [Templado - Muy Lluvioso]
Bosque Lluvioso montano [C�lido - Muy Lluvioso]
Bosque Lluvioso montano [Templado - Muy Lluvioso]"

# Read zvh legend for QGis
zvh.dir <- "C:/Users/Miguel/Documents/1 Nube/Dropbox/Datos Redes Bayesianas/TIFs/zvh.txt"
zvh.txt <- read.table(zvh.dir, sep=",", skip = 2, 
                      col.names = c("val", "r", "g", "b", "a", "label"))

# zvh labels
zvh.lbl <- unlist(strsplit(zvh.lbl, "\\n"))

zvh.txt$label <- zvh.lbl 
encabezado <- "# Archivo de exportaci�n de mapa de colores generado por QGIS
INTERPOLATION:DISCRETE"
write(encabezado, zvh.dir)
write.table(zvh.txt, zvh.dir, sep=",", col.names = F, row.names = F,
            quote = F, append = T)
