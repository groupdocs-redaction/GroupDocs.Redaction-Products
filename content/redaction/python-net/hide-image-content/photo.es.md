
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: es
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Cubrir Imágenes en Archivos PHOTO Usando Superposiciones con Python"
head_description: "Aplique superposiciones para ocultar datos de imagen sensibles en archivos PHOTO con GroupDocs.Redaction for Python via .NET. Mantenga el diseño de su documento intacto mientras protege información privada."

############################# Header ############################
title: "Ocultar Imágenes Sensibles en Archivos PHOTO con Superposiciones a través de Python" 
description: "Proteja el contenido de imagen en archivos PHOTO con Python. Herramientas sencillas para una protección de datos rápida y efectiva."
subtitle: "Características Clave de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "¿Qué es GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ofrece a los desarrolladores de Python herramientas poderosas para ocultar o borrar contenido en archivos PHOTO. Proteja datos importantes enmascarando texto, imágenes y metadatos de manera eficiente.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Áreas de Imagen en Archivos Photo"
    content: |
      Use GroupDocs.Redaction for Python via .NET para cubrir fácilmente áreas de imagen sensibles en sus aplicaciones Python via .NET.
      
      1. Cree un objeto Redactor y conéctelo a su archivo Photo.
      2. Configure las configuraciones de redacción para adaptarse a su tarea.
      3. Resalte secciones de imagen y establezca los colores de superposición.
      4. Aplique las redacciones y guarde el archivo protegido.
   
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

        # Utilice superposiciones para ocultar datos de imagen en PHOTO

        # Establezca dimensiones y color de la superposición
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Seleccione áreas de imagen para enmascarar
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Abra el archivo con Redactor
        with gr.Redactor("input.jpeg") as redactor:

            # Aplique la superposición y guarde el archivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redactar Datos Privados en Múltiples Formatos"
  description: "GroupDocs.Redaction for Python via .NET le permite cubrir o borrar contenido sensible en diferentes tipos de archivos. Mantenga los documentos limpios y seguros para compartir."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Funciones de Redacción Todo en Uno"
  features:
    # feature loop
    - title: "Buscar y Editar Texto"
      content: "Busque texto sensible y reemplácelo para proteger sus documentos."

    # feature loop
    - title: "Ocultar Imágenes con Superposiciones"
      content: "Agregue superposiciones para cubrir imágenes completas o secciones específicas."

    # feature loop
    - title: "Eliminar Metadatos"
      content: "Borre metadatos ocultos para evitar filtraciones de datos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cubrir Secciones de Imagen con Superposiciones"
      content: |
        Este ejemplo de código muestra cómo enmascarar áreas sensibles de imagen en un documento utilizando superposiciones.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Defina el tamaño, color y ubicación de la superposición
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Seleccione un área de imagen en la primera página
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Abra el archivo para la redacción
          with gr.Redactor("source.jpeg") as redactor:

              # Aplique la superposición para ocultar contenido
              result = redactor.apply(redaction)

              # Guarde el archivo asegurado
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
    title: "Redactar Contenido Sensible en PHOTO con Python"
    exclude: "PHOTO"
    description: "Oculte o elimine datos privados en archivos PHOTO usando Python. Una forma simple de asegurar documentos oficiales."
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