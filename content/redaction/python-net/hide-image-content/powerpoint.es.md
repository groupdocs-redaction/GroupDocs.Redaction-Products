
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: es
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Enmascarar Imágenes Sensibles en POWERPOINT Usando Superposiciones con Python"
head_description: "Con GroupDocs.Redaction for Python via .NET, puede ocultar áreas de imagen privadas en archivos POWERPOINT utilizando superposiciones. Proteja la información sin alterar el diseño del documento."

############################# Header ############################
title: "Cubrir Imágenes Privadas en Documentos POWERPOINT Usando Superposiciones de Python" 
description: "Mantenga seguras las imágenes sensibles en archivos POWERPOINT con Python. Herramientas sencillas diseñadas para una fuerte protección de datos."
subtitle: "Explora las Características de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "¿Qué es GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET dota a los desarrolladores de Python con herramientas para ocultar o eliminar contenido sensible en archivos POWERPOINT. Proteja sus documentos cubriendo texto privado, imágenes y metadatos.

############################# Steps ############################
steps:
    enable: true
    title: "Mantenga Sus Documentos Powerpoint Seguros"
    content: |
      GroupDocs.Redaction for Python via .NET facilita a las aplicaciones Python via .NET proteger contenido sensible en documentos.
      
      1. Cree un objeto Redactor y cargue el archivo Powerpoint.
      2. Ajuste las opciones de redacción según sus requisitos.
      3. Seleccione el área de la imagen y elija un color de superposición.
      4. Aplique la redacción y guarde su documento.
   
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

        # Enmascarar contenido de imagen en archivos POWERPOINT

        # Establezca el tamaño y color de la superposición
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Elija el área a ocultar
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Cargue el archivo con Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Aplique la superposición y guarde el archivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Proteger Datos Privados en Documentos"
  description: "GroupDocs.Redaction for Python via .NET le permite ocultar o eliminar contenido sensible en diferentes formatos de archivo. Mantenga sus archivos seguros y listos para compartir."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Características de Redacción Todo en Uno"
  features:
    # feature loop
    - title: "Buscar y Editar Texto"
      content: "Encuentre texto privado en documentos y reemplácelo para garantizar la privacidad."

    # feature loop
    - title: "Enmascarar Áreas de Imágenes"
      content: "Cubra imágenes completas o partes seleccionadas con superposiciones para mantenerlas privadas."

    # feature loop
    - title: "Borrar Metadatos Ocultos"
      content: "Elimine metadatos para prevenir compartir accidentalmente información."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Utilizar Superposiciones para Ocultar Datos de Imagen"
      content: |
        Este ejemplo muestra cómo proteger imágenes sensibles en documentos utilizando superposiciones.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Establezca dimensiones, posición y color de la superposición
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Marque el área de imagen en la primera página
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Abra el documento para la redacción
          with gr.Redactor("source.pptx") as redactor:

              # Aplique la superposición para enmascarar datos
              result = redactor.apply(redaction)

              # Guarde el documento final
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
    title: "Mantenga Seguros los Archivos POWERPOINT con Python"
    exclude: "POWERPOINT"
    description: "Con Python, puede ocultar o eliminar datos sensibles en archivos POWERPOINT. Una solución confiable para proteger documentos importantes."
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