
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: es
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Ocultar Áreas de Imágenes en Archivos XLSX con Superposiciones Usando Python"
head_description: "Proteja regiones de imágenes sensibles en archivos XLSX aplicando superposiciones con GroupDocs.Redaction for Python via .NET. Mantenga la estructura de su documento intacta mientras asegura visuales privadas."

############################# Header ############################
title: "Ocultar Imágenes Sensibles en Documentos XLSX Usando Python" 
description: "Proteja fácilmente imágenes confidenciales en archivos XLSX con Python. Nuestras herramientas garantizan una redacción de imágenes rápida y efectiva."
subtitle: "Características Principales de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "¿Qué es GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ofrece a los desarrolladores de Python herramientas para ocultar o borrar datos sensibles de documentos XLSX. Redacte texto, imágenes y metadatos en diferentes formatos.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Datos Sensibles en Archivos Xlsx"
    content: |
      GroupDocs.Redaction for Python via .NET facilita a sus aplicaciones Python via .NET asegurar documentos.
      
      1. Inicialice Redactor y cargue el documento Xlsx.
      2. Configure los parámetros de redacción para que coincidan con su tarea.
      3. Defina qué parte de la imagen cubrir y elija un color.
      4. Aplique la redacción y guarde el archivo final.
   
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

        # Ocultar secciones confidenciales de imágenes en XLSX

        # Seleccione el tamaño y color de la superposición
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Marque el área de redacción
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Cargue el documento con Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Aplique los cambios y guarde el archivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redactar Contenido en Documentos"
  description: "Con GroupDocs.Redaction for Python via .NET, puede ocultar o eliminar datos sensibles en muchos formatos de documentos. Mantenga los documentos seguros y con aspecto profesional."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Herramientas Eficientes de Redacción"
  features:
    # feature loop
    - title: "Buscar y Reemplazar Texto"
      content: "Ubique texto privado y reemplácelo o oculte."

    # feature loop
    - title: "Cubrir Imágenes con Superposiciones"
      content: "Oculte imágenes completas o secciones específicas para proteger visuales sensibles."

    # feature loop
    - title: "Eliminar Metadatos Ocultos"
      content: "Limpie metadatos de archivos para evitar compartir información privada."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Enmascarar Contenido de Imagen con Superposiciones"
      content: |
        Esta guía muestra cómo ocultar áreas sensibles de imagen en documentos utilizando superposiciones.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Defina tamaño, posición y color de la superposición
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Seleccione la sección específica de la imagen
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Abra el archivo para redacción
          with gr.Redactor("source.xslx") as redactor:

              # Aplique la superposición para ocultar el área
              result = redactor.apply(redaction)

              # Guarde el documento modificado
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
    title: "Ocultar Contenido en Archivos XLSX con Python"
    exclude: "XLSX"
    description: "Utilice Python para redactar o eliminar datos sensibles de archivos XLSX. Ideal para empresas e individuos que buscan proteger sus documentos."
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