
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: es
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Ocultar Contenido de Imagen en DOCX con Superposiciones Usando Python"
head_description: "Proteja imágenes sensibles en archivos DOCX agregando superposiciones con GroupDocs.Redaction for Python via .NET. Mantenga la formateo del documento intacto mientras asegura visuales privadas."

############################# Header ############################
title: "Proteger Imágenes en Documentos DOCX Usando Superposiciones con Python" 
description: "Mantenga seguras las visuales personales y comerciales en archivos DOCX utilizando Python. Nuestras herramientas de redacción facilitan la seguridad de documentos."
subtitle: "Aspectos Destacados de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET otorga a los desarrolladores de Python la capacidad de ocultar o eliminar contenido en archivos DOCX. Proteja texto, imágenes y metadatos en múltiples formatos de documentos.

############################# Steps ############################
steps:
    enable: true
    title: "Mantenga los Datos Seguros en Archivos Docx"
    content: |
      GroupDocs.Redaction for Python via .NET facilita que las aplicaciones Python via .NET protejan documentos. Redacte datos sensibles en solo unos pocos pasos.
      
      1. Cree una instancia de Redactor y especifique la ruta al archivo Docx.
      2. Configure las preferencias de redacción según su tarea.
      3. Elija la parte de la imagen que desea cubrir y defina el color de la superposición.
      4. Ejecute el proceso y guarde el archivo redactado.
   
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

        # Ocultar partes sensibles de imágenes en DOCX

        # Defina el tamaño y color de la superposición
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Especifique el área para la redacción
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Cargue el archivo utilizando Redactor
        with gr.Redactor("input.docx") as redactor:

            # Aplique la superposición y guarde su documento
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ocultar Contenido en Documentos"
  description: "Con GroupDocs.Redaction for Python via .NET, puede ocultar o eliminar información sensible de varios tipos de documentos. Mantenga los archivos seguros y compartibles."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Características de Redacción Efectivas"
  features:
    # feature loop
    - title: "Buscar y Editar Texto"
      content: "Localice palabras sensibles y cámbielas para proteger sus datos."

    # feature loop
    - title: "Cubrir Imágenes"
      content: "Aplique superposiciones a imágenes completas o partes seleccionadas para proteger datos visuales."

    # feature loop
    - title: "Limpiar Metadatos Ocultos"
      content: "Elimine o actualice metadatos para prevenir compartir accidentalmente datos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ocultar Datos de Imagen Usando Superposiciones"
      content: |
        Este ejemplo muestra cómo proteger áreas de imagen sensibles en documentos con superposiciones.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Establezca la configuración de la superposición: color, tamaño, posición
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Elija un área para redactar en la página uno
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Cargue el archivo que desea redactar
          with gr.Redactor("source.docx") as redactor:

              # Aplique la superposición para cubrir la imagen
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
    title: "Ocultar Datos Sensibles en Archivos DOCX con Python"
    exclude: "DOCX"
    description: "Utilice Python para cubrir o borrar datos privados en archivos DOCX. La herramienta adecuada para mantener documentos confidenciales seguros."
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