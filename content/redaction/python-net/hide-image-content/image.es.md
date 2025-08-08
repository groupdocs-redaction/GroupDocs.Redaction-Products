
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: es
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Enmascarar Imágenes en IMAGE con Superposiciones Usando Python"
head_description: "Oculte contenido de imagen sensible en archivos IMAGE utilizando superposiciones de colores con GroupDocs.Redaction for Python via .NET. Mantenga el diseño original de su archivo intacto mientras asegura visuales importantes."

############################# Header ############################
title: "Cubrir Imágenes Sensibles en Archivos IMAGE Usando Superposiciones de Python" 
description: "Proteja datos de imágenes personales y comerciales en archivos IMAGE usando Python. Herramientas simples para una protección rápida y efectiva."
subtitle: "Características de GroupDocs.Redaction for Python via .NET que Necesitarás" 

############################# About ############################
about:
    enable: true
    title: "Aprenda Acerca de GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET proporciona a los desarrolladores de Python herramientas para ocultar o eliminar contenido en archivos IMAGE. Asegure sus documentos cubriendo texto, imágenes y metadatos.

############################# Steps ############################
steps:
    enable: true
    title: "Cubrir Contenido Privado en Archivos Image"
    content: |
      GroupDocs.Redaction for Python via .NET facilita ocultar datos sensibles en sus aplicaciones Python via .NET.
      
      1. Inicialice un Redactor y apúntelo a su archivo Image.
      2. Configure las configuraciones de redacción según sea necesario.
      3. Elija las secciones de la imagen y defina los colores de superposición.
      4. Procese el archivo y guarde la versión redactada.
   
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

        # Cubrir contenido de imagen en IMAGE

        # Especifique el tamaño y los colores de la superposición
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Seleccione el área a ocultar
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Cargue el archivo usando Redactor
        with gr.Redactor("input.png") as redactor:

            # Aplique la superposición y guarde el archivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Proteger Datos a Través de Tipos de Documentos"
  description: "GroupDocs.Redaction for Python via .NET le permite ocultar o eliminar contenido sensible en diferentes formatos de archivo. Mantenga sus documentos limpios, seguros y fáciles de compartir."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Herramientas para Controlar Cada Redacción"
  features:
    # feature loop
    - title: "Buscar y Reemplazar Texto Sensible"
      content: "Explora sus documentos para reemplazar texto privado y mantener los datos seguros."

    # feature loop
    - title: "Enmascarar Imágenes con Superposiciones"
      content: "Agregue superposiciones de colores para ocultar imágenes o partes específicas de las mismas."

    # feature loop
    - title: "Eliminar Metadatos"
      content: "Elimine o edite metadatos ocultos para asegurar que no se filtren datos privados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ocultar Contenido de Imagen con Superposiciones"
      content: |
        Este ejemplo muestra cómo aplicar superposiciones para proteger datos de imagen sensibles en un documento.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Establezca dimensiones, color y posición de la superposición
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

          # Abra el archivo para redactar
          with gr.Redactor("source.png") as redactor:

              # Aplique la superposición para enmascarar contenido de la imagen
              result = redactor.apply(redaction)

              # Guarde el archivo después de la redacción
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
    title: "Proteger Contenido en Archivos IMAGE con Python"
    exclude: "IMAGE"
    description: "Con Python, puede ocultar o eliminar información sensible en archivos IMAGE. Una forma confiable de mantener los documentos seguros y profesionales."
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