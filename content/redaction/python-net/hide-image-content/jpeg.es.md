
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: es
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Ocultar Imágenes Privadas en JPEG con Superposiciones Usando Python"
head_description: "Asegure sus archivos JPEG agregando superposiciones a las imágenes con GroupDocs.Redaction for Python via .NET. Proteja visuales sensibles mientras mantiene el diseño del documento sin cambios."

############################# Header ############################
title: "Proteger Imágenes Sensibles en Archivos JPEG con Superposiciones Usando Python" 
description: "Mantenga sus imágenes seguras en archivos JPEG utilizando Python. Herramientas fáciles para ayudarle a proteger contenido privado en solo unos pasos."
subtitle: "Características Principales de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET brinda a los desarrolladores de Python herramientas simples para ocultar o borrar contenido en archivos JPEG. Proteja texto sensible, imágenes y metadatos con facilidad.

############################# Steps ############################
steps:
    enable: true
    title: "Mantenga Seguros los Archivos Jpeg"
    content: |
      GroupDocs.Redaction for Python via .NET permite que sus aplicaciones Python via .NET cubran datos sensibles de manera rápida y efectiva.
      
      1. Cree un objeto Redactor y especifique la ruta del archivo Jpeg.
      2. Defina la configuración de redacción según sea necesario.
      3. Marque el área de la imagen y seleccione el color de superposición.
      4. Ejecute la redacción y guarde el archivo protegido.
   
    code:
      platform: "python-net"
      copy_title: "Copiar"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redacciones de muestra"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "haz clic para copiar"
        copy_done: "copiado"
      links:
        #  loop
        - title: "Más ejemplos"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "Documentación"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        # Ocultar áreas de imagen en archivos JPEG

        # Defina el tamaño y color de la superposición
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Seleccione el área a enmascarar
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Cargue el archivo a través de Redactor
        with gr.Redactor("input.jpg") as redactor:

            # Aplique la superposición y guarde el documento
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redactar Contenido en Varios Documentos"
  description: "GroupDocs.Redaction for Python via .NET le ayuda a ocultar o eliminar contenido sensible en múltiples formatos de archivo. Mantenga sus archivos seguros y listos para compartir."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Herramientas de Redacción Ricas en Funciones"
  features:
    # feature loop
    - title: "Buscar y Reemplazar Texto"
      content: "Busque texto privado en documentos y reemplácelo para asegurar sus datos."

    # feature loop
    - title: "Cubrir Áreas de Imagen"
      content: "Aplique superposiciones para ocultar imágenes o secciones seleccionadas y proteger visuales sensibles."

    # feature loop
    - title: "Limpiar Metadatos"
      content: "Elimine metadatos ocultos para evitar filtraciones de datos involuntarias."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Proteger Áreas de Imagen con Superposiciones"
      content: |
        Este ejemplo le guía sobre cómo cubrir partes sensibles de imagen en un documento.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Establezca el tamaño, color y posición de la superposición
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Elija un área de imagen en la página uno
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Cargue el archivo para editar
          with gr.Redactor("source.jpg") as redactor:

              # Aplique la superposición para ocultar el área
              result = redactor.apply(redaction)

              # Guarde el archivo redactado
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
          ```
        platform: "python-net"
        copy_title: "Copiar"
        install:
          command: "pip install groupdocs-redaction-net"
          copy_tip: "haz clic para copiar"
          copy_done: "copiado"
        top_links:
          #  loop
          - title: "Descargar resultado"
            icon: "download"
            link: "/examples/redaction/formats/hide-image-content.pdf"
        links:
          #  loop
          - title: "Más ejemplos"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "Documentación"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "¿Listo para empezar?"
  description: "Prueba las características de GroupDocs.Redaction gratis o solicita una licencia"
  items:
    #  loop
    - title: "Descarga de PyPi"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "Licenciamiento"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Proteger Archivos JPEG con Herramientas de Redacción de Python"
    exclude: "JPEG"
    description: "Con Python, puede ocultar o eliminar datos privados en archivos JPEG. Una solución confiable para mantener los documentos profesionales y seguros."
    items: 
        # format loop 1
        - name: "Redactar PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "Formato de Documento Portátil de Adobe"

        # format loop 2
        - name: "Redactar Word"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "Documentos de MS Word y Open Office"
          
        # format loop 3
        - name: "Redactar Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "Hojas de cálculo de MS Excel y Open Office"

        # format loop 4
        - name: "Redactar PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "Presentaciones de MS PowerPoint y Open Office"

        # format loop 5
        - name: "Redactar Imagen"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "Formatos de imagen populares"

        # format loop 6
        - name: "Redactar Foto"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "Formatos de foto"

        # format loop 7
        - name: "Redactar DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "Documento XML Abierto de Microsoft Word"
          
        # format loop 8
        - name: "Redactar XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "Hoja de cálculo XML Abierta de Microsoft Excel"
          
        # format loop 9
        - name: "Redactar PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "Presentación XML Abierta de PowerPoint"

        # format loop 10
        - name: "Redactar JPEG"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "Imagen JPEG"


---