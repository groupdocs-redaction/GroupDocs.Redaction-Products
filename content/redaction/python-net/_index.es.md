---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: es
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Drop-down ############################
supported_platforms:
  items:
    # supported_platforms loop
    - title: ".NET"
      tag: "net"
    # supported_platforms loop
    - title: "Java"
      tag: "java"
    # supported_platforms loop
    - title: "Python"
      tag: "python-net"

############################# Head ############################
head_title: "Elimina información confidencial de documentos con Python"
head_description: "Mantén tus archivos seguros usando GroupDocs.Redaction for Python via .NET. Rápidamente redacta, oculta o elimina contenido sensible en PDFs, Word, Excel, PowerPoint y archivos de imagen."

############################# Header ############################
title: "Mantén Tus Documentos Seguros con GroupDocs.Redaction"
description: "Elimina fácilmente datos privados, redacta texto y limpia metadatos ocultos de PDFs, archivos de Office e imágenes utilizando el avanzado kit de herramientas Python."
words:
  for: "para"

actions:
  main: "Descarga PyPi"
  main_link: "https://pypi.org/project/groupdocs-redaction-net/"
  alt: "Licencias"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
  title: "¿Listo para Comenzar?"
  description: "Prueba las funciones de GroupDocs.Redaction gratis o solicita una licencia."

release:
  title: "Versión {0} Lanzada"
  notes: "Consulta qué hay de nuevo"
  downloads: "Descargas"

code:
  title: "Redactando Contenido de Documentos"
  more: "Más ejemplos"
  more_link: ""
  install: "pip install groupdocs-redaction-net"
  content: |
    ```python {style=abap}
    import groupdocs.redaction as gr
    import groupdocs.redaction.redactions as grr

    def run():

        # Ajusta los parámetros de redacción
        repl_opt = grr.ReplacementOptions("[redacted]")
        red = grr.ExactPhraseRedaction("Data", repl_opt)

        # Carga tu archivo en la instancia de Redactor
        with gr.Redactor("sample.pdf") as redactor:

            # Inicia el proceso de redacción
            result = redactor.apply(red)
        
            # Exporta el archivo limpio
            result_path = redactor.save()
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction de un Vistazo"
  description: "Integra potentes capacidades de redacción en tus proyectos Python"
  features:
    # feature loop
    - title: "Redactar Texto Sensible"
      content: "Con GroupDocs.Redaction for Python via .NET, puedes encontrar automáticamente y cubrir palabras o frases sensibles. Reemplaza o enmascara texto con cuadros de colores para una protección mejorada a través de PDFs, documentos de Word y otros formatos."

    # feature loop
    - title: "Enmascarar Imágenes"
      content: "Nuestra tecnología puede detectar imágenes y difuminarlas, ocultarlas o bloquearlas según tus criterios elegidos. Define regiones específicas o permite la detección automatizada para un control total."

    # feature loop
    - title: "Eliminar Metadatos Ocultos"
      content: "Elimina detalles personales o de seguimiento ocultos en metadatos, como autoría o información del dispositivo. GroupDocs.Redaction for Python via .NET asegura que tus documentos estén completamente limpios y seguros para compartir."

    # feature loop
    - title: "Redactar Elementos Especiales"
      content: "Ve más allá del texto redactando elementos incrustados como comentarios, anotaciones y otros elementos específicos del archivo para lograr la confidencialidad total."

############################# Platforms ############################
platforms:
  enable: true
  title: "Independencia de Plataforma"
  description: "GroupDocs.Redaction for Python via .NET funciona en todos los principales sistemas operativos, soporta marcos populares e integra administradores de paquetes comunes."
  items:
    # platform loop
    - title: "Amazon"
      image: "amazon"
    # platform loop
    - title: "Docker"
      image: "docker"
    # platform loop
    - title: "Azure"
      image: "azure"
    # platform loop
    - title: "VS Code"
      image: "vs_code"
    # platform loop
    - title: "ReSharper"
      image: "resharper"
    # platform loop
    - title: "macOS"
      image: "finder"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "NuGet"
      image: "nuget"

############################# File formats ############################
formats:
  enable: true
  title: "Formatos de Archivo Soportados"
  description: |
    GroupDocs.Redaction for Python via .NET soporta los siguientes [formatos de archivo](https://docs.groupdocs.com/redaction/python-net/supported-document-formats/).
  groups:
    # group loop
    - color: "green"
      content: |
        ### Formatos de MS Office
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### Otros Formatos de Office
        * **Portable:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **Formatos de Texto:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### Otros Formatos
        * **Web:** HTM, HTML, MD
        * **Imágenes:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **eBooks:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "Características Clave de GroupDocs.Redaction for Python via .NET"
  description: "Escanea, localiza y redacta contenido sensible en PDFs, imágenes y archivos de Office sin esfuerzo."

  items:
    # feature loop
    - icon: "search"
      title: "Búsqueda Personalizable"
      content: "Utiliza modos de búsqueda flexibles para encontrar coincidencias precisas o palabras clave para eliminación."

    # feature loop
    - icon: "text"
      title: "Buscar, Reemplazar o Eliminar Texto"
      content: "Ubica datos sensibles y sustitúyelos con texto seguro o elimínalos por completo."

    # feature loop
    - icon: "image"
      title: "Enmascaramiento Visual"
      content: "Superpone formas o patrones coloreados para cubrir visualmente secciones redactadas."

    # feature loop
    - icon: "search"
      title: "Detección Potenciada por Regex"
      content: "Aprovecha las expresiones regulares para una precisión exacta en búsquedas de texto avanzadas."

    # feature loop
    - icon: "table"
      title: "Redacción Dirigida"
      content: "Aplica redacción solo a ciertas páginas o regiones definidas para ahorrar tiempo y enfocarte en las áreas clave."

    # feature loop
    - icon: "template"
      title: "Sanitización de Metadatos"
      content: "Elimina fácilmente los campos de metadatos como creador, empresa o marcas de tiempo de tus archivos."

    # feature loop
    - icon: "pdf"
      title: "Opciones de Exportación"
      content: "Guarda documentos procesados en PDF u otros formatos compatibles sin perder fidelidad de diseño."

    # feature loop
    - icon: "template"
      title: "Borrado Completo de Metadatos"
      content: "Elimina todos los metadatos incrustados con un solo clic para máxima protección de datos."

    # feature loop
    - icon: "hyperlink"
      title: "Políticas XML Reutilizables"
      content: "Guarda tus configuraciones de redacción personalizadas como plantillas XML para automatizar tareas futuras."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Muestras de Código"
  description: "Explora cómo GroupDocs.Redaction for Python via .NET simplifica tareas de redacción"
  items:
    # code sample loop
    - title: "Redacción Basada en Regex"
      content: |
        Los desarrolladores que utilizan Python pueden aplicar [reglas basadas en regex](https://docs.groupdocs.com/redaction/python-net/text-redactions/#use-regular-expression) para encontrar y cubrir texto sensible con máscaras de imagen:
        {{< landing/code title="Redactar Documentos de Word Usando Expresiones Regulares">}}
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        def run():

            # Define reglas de redacción usando una expresión regular
            color = grd.Color.from_argb(255, 220, 20, 60)
            repl_opt = grr.ReplacementOptions(color)
            reg_red = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

            # Crea una instancia de la clase Redactor
            with gr.Redactor("source.docx") as redactor:

                # Enmascara todo el texto coincidente con superposiciones de cuadros azules
                result = redactor.apply(reg_red)
        
                # Guarda el documento de Word redactado
                redactor.save()
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Eliminar Metadatos"
      content: |
        Usa la API para [eliminar metadatos](https://docs.groupdocs.com/redaction/python-net/metadata-redactions/#clean-metadata) a través de múltiples tipos de archivos en solo unos pocos pasos:
        {{< landing/code title="Eliminar Todo Metadato de Presentaciones">}}
        ```python {style=abap}   
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # Configura las opciones de redacción
        red = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Proporciona la ruta de la presentación a Redactor
        with gr.Redactor("source.pptx") as redactor:

            # Borra todos los metadatos de la presentación
            result = redactor.apply(red)
        
            # Guarda el archivo de presentación limpio
            redactor.save()
        ```
        {{< /landing/code >}}

---
