
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: es
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Proteger Imágenes en WORD con Superposiciones Usando Python"
head_description: "Cubra imágenes sensibles en archivos WORD con GroupDocs.Redaction for Python via .NET. Aplique superposiciones para proteger datos privados mientras preserva el diseño del documento."

############################# Header ############################
title: "Cubrir Imágenes Privadas en Archivos WORD Usando Python" 
description: "Mantenga las visuales personales y comerciales seguras en documentos WORD con Python. Herramientas de redacción simples y rápidas en las que puede confiar."
subtitle: "Características Clave de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET proporciona a los desarrolladores de Python herramientas simples para ocultar o borrar contenido de archivos WORD. Proteja texto, imágenes y metadatos sensibles en diferentes formatos de documentos.

############################# Steps ############################
steps:
    enable: true
    title: "Asegurar Información Sensible en Archivos Word"
    content: |
      GroupDocs.Redaction for Python via .NET ayuda a sus aplicaciones Python via .NET a proteger documentos cubriendo contenido privado con superposiciones.
      
      1. Cree un objeto Redactor y cargue el archivo Word.
      2. Ajuste la configuración de redacción según sea necesario.
      3. Seleccione el área de la imagen y configure el color de la superposición.
      4. Aplique la superposición y guarde el archivo redactado.
   
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

        # Cubrir partes sensibles de imagen en WORD

        # Especifique el color y tamaño de la superposición
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Elija el área de la imagen a ocultar
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Cargue el archivo utilizando Redactor
        with gr.Redactor("input.docx") as redactor:

            # Aplique y guarde el documento
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Funciones Avanzadas de Redacción"
  description: "GroupDocs.Redaction for Python via .NET le permite ocultar o eliminar contenido sensible en diferentes formatos de documentos. Mantenga los archivos limpios y seguros para compartir."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Kit de herramientas de redacción todo en uno"
  features:
    # feature loop
    - title: "Buscar y Reemplazar Texto"
      content: "Encuentre texto sensible en documentos y reemplácelo para garantizar la privacidad."

    # feature loop
    - title: "Superponer Imágenes"
      content: "Cubra áreas de imagen seleccionadas o completas para ocultar información privada."

    # feature loop
    - title: "Eliminar Metadatos"
      content: "Elimine metadatos ocultos para evitar compartir datos invisibles."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cubrir Contenido de Imagen con Superposiciones"
      content: |
        Este ejemplo muestra cómo ocultar imágenes sensibles en documentos utilizando superposiciones.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Establezca dimensiones de la superposición, color y ubicación
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Seleccione el área en la primera página para cubrir
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Abra el documento
          with gr.Redactor("source.docx") as redactor:

              # Aplique la redacción de la superposición
              result = redactor.apply(redaction)

              # Guarde el documento actualizado
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
    title: "Redactar Contenido en WORD Usando Python"
    exclude: "WORD"
    description: "Python le permite ocultar o eliminar contenido sensible en archivos WORD. Una solución confiable para la seguridad de los documentos."
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