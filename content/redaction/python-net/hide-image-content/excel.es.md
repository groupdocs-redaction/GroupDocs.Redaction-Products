
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: es
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Cubrir Imágenes en EXCEL Usando Superposiciones en Python"
head_description: "Proteja áreas de imagen sensibles en archivos EXCEL con GroupDocs.Redaction for Python via .NET. Añada superposiciones para ocultar visuales privadas sin cambiar el aspecto del documento."

############################# Header ############################
title: "Proteger Imágenes Sensibles en Archivos EXCEL con Superposiciones Usando Python" 
description: "Asegure sus imágenes personales y comerciales en archivos EXCEL con Python. Obtenga protección confiable con nuestras herramientas fáciles de usar."
subtitle: "Características Clave de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET proporciona a los desarrolladores de Python herramientas simples para ocultar o eliminar contenido en archivos EXCEL. Cubra imágenes, texto y metadatos para proteger sus documentos.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Datos en Archivos Excel"
    content: |
      GroupDocs.Redaction for Python via .NET ayuda a las aplicaciones Python via .NET a ocultar información privada en documentos de manera rápida.
      
      1. Cree una instancia de Redactor y cargue el archivo Excel.
      2. Configure las opciones de redacción según sea necesario.
      3. Seleccione el área de la imagen y elija un color de superposición.
      4. Aplique la redacción y guarde el archivo editado.
   
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

        # Cubrir áreas de imagen en EXCEL

        # Ajuste el tamaño y color de la superposición
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Elija el área a cubrir
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Abra el documento con Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Aplique la superposición y guarde el archivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ocultar o Eliminar Contenido Sensible"
  description: "GroupDocs.Redaction for Python via .NET le permite proteger documentos ocultando o eliminando datos sensibles en varios formatos. Mantenga los archivos seguros y claros para compartir."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Herramientas de Redacción Ricas en Funcionalidades"
  features:
    # feature loop
    - title: "Editar Texto de Forma Segura"
      content: "Busque texto sensible en documentos y reemplácelo para proteger la privacidad."

    # feature loop
    - title: "Ocultar Partes de Imagen"
      content: "Cubra áreas seleccionadas de imagen o visuales completas con superposiciones."

    # feature loop
    - title: "Eliminar Metadatos Ocultos"
      content: "Borre campos de metadatos invisibles para prevenir fugas de datos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Utilizar Superposiciones para Ocultar Datos de Imagen"
      content: |
        Este ejemplo muestra cómo aplicar superposiciones para cubrir imágenes sensibles en documentos.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Establezca color, tamaño y posición de la superposición
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Seleccione una sección específica de imagen en la página uno
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Cargue el documento para editar
          with gr.Redactor("source.xslx") as redactor:

              # Aplique la superposición para ocultar
              result = redactor.apply(redaction)

              # Guarde el archivo actualizado
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
    title: "Ocultar Contenido en EXCEL con Python"
    exclude: "EXCEL"
    description: "Con Python, puede ocultar o eliminar información sensible en archivos EXCEL. Una manera efectiva de asegurar la seguridad de los documentos."
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