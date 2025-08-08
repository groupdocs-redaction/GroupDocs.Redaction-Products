
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: es
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Cubrir Imágenes Sensibles en PDF con Superposiciones Usando Python"
head_description: "Con GroupDocs.Redaction for Python via .NET, puede ocultar imágenes sensibles en archivos PDF agregando superposiciones. Proteja datos privados sin alterar el diseño del documento."

############################# Header ############################
title: "Ocultar Imágenes en Archivos PDF con Superposiciones Usando Python" 
description: "Mantenga seguras las imágenes personales y comerciales en archivos PDF con Python. Nuestras herramientas hacen que la protección de datos sea confiable."
subtitle: "Características de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET proporciona a los desarrolladores de Python herramientas para ocultar o eliminar contenido en archivos PDF. Oculte texto, imágenes y metadatos para proteger documentos en diferentes formatos.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Datos Sensibles en Archivos Pdf"
    content: |
      GroupDocs.Redaction for Python via .NET brinda a sus aplicaciones Python via .NET la capacidad de proteger documentos. Oculte contenido privado con solo unos clics.
      
      1. Cree un objeto Redactor y apúntelo al archivo Pdf.
      2. Ajuste la configuración para adaptarse a sus necesidades de redacción.
      3. Seleccione qué área de la imagen cubrir y elija un color de superposición.
      4. Procese y guarde el archivo redactado.
   
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

        # Cubrir partes confidenciales de imágenes en PDF

        # Configure el color y tamaño de la superposición
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Elija el área a redactar
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Cargue el documento utilizando Redactor
        with gr.Redactor("input.pdf") as redactor:

            # Aplique la superposición y guarde el documento
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ocultar Contenido Sensible en Documentos"
  description: "Con GroupDocs.Redaction for Python via .NET, puede ocultar o borrar datos en diferentes formatos de archivo. Proteja información sensible mientras mantiene los documentos limpios y compartibles."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Funciones Clave de Redacción"
  features:
    # feature loop
    - title: "Buscar y Editar Texto"
      content: "Encuentre y cambie texto sensible en su documento para proteger información privada."

    # feature loop
    - title: "Cubrir Áreas de Imágenes"
      content: "Coloque superposiciones en imágenes o partes seleccionadas para ocultar visuales confidenciales."

    # feature loop
    - title: "Gestionar Metadatos"
      content: "Elimine o edite metadatos ocultos para prevenir filtraciones de datos no deseadas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ocultar Información de Imágenes con Superposiciones"
      content: |
        Este ejemplo muestra cómo cubrir datos de imagen sensibles en documentos usando superposiciones.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Ajuste la configuración de la superposición: tamaño, color y ubicación
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Elija el área de la imagen en la primera página
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Abra el archivo para redacción
          with gr.Redactor("source.pdf") as redactor:

              # Aplique la superposición para ocultar la imagen
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
    title: "Proteger Archivos PDF con Python"
    exclude: "PDF"
    description: "Utilice Python para ocultar o eliminar datos sensibles en archivos PDF. Una solución práctica para asegurar documentos comerciales y privados."
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