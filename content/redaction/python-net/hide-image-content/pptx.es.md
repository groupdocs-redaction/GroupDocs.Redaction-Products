
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: es
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Enmascarar Imágenes en Archivos PPTX con Superposiciones Usando Python"
head_description: "Utilice GroupDocs.Redaction for Python via .NET para enmascarar imágenes sensibles en archivos PPTX con superposiciones de colores. Proteja datos importantes mientras mantiene el formato del documento intacto."

############################# Header ############################
title: "Enmascarar Imágenes Privadas en Documentos PPTX con Python" 
description: "Proteja visuales sensibles en archivos PPTX utilizando Python. Nuestras herramientas hacen que redactar imágenes sea simple y rápido."
subtitle: "Características de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET proporciona a los desarrolladores de Python herramientas simples para ocultar o borrar contenido en archivos PPTX. Redacte texto, imágenes y metadatos en varios formatos.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Datos Sensibles en Archivos Pptx"
    content: |
      GroupDocs.Redaction for Python via .NET ayuda a las aplicaciones Python via .NET a proteger documentos cubriendo contenido sensible.
      
      1. Cree una instancia de Redactor y cargue el archivo Pptx.
      2. Establezca las opciones de redacción según su tarea.
      3. Seleccione el área de la imagen y asigne un color de superposición.
      4. Aplique la superposición y guarde el archivo.
   
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

        # Enmascarar regiones de imagen privadas en PPTX

        # Defina el color y el tamaño de la superposición
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Marque el área para redactar
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Abra el documento con Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Aplique la superposición y guarde el archivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Funciones para Redacción de Documentos"
  description: "GroupDocs.Redaction for Python via .NET le permite ocultar o eliminar datos confidenciales en muchos tipos de documentos. Mantenga sus archivos limpios y protegidos."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Completa gama de herramientas de redacción"
  features:
    # feature loop
    - title: "Buscar y Reemplazar Texto"
      content: "Encuentre texto sensible y redactelo para proteger su información."

    # feature loop
    - title: "Cubrir Áreas de Imágenes"
      content: "Cubra imágenes completas o secciones específicas con superposiciones para ocultar información privada."

    # feature loop
    - title: "Limpiar Metadatos"
      content: "Elimine o cambie metadatos ocultos para evitar exponer datos privados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cubrir Contenido de Imagen con Superposiciones de Color"
      content: |
        Vea cómo enmascarar partes sensibles de imagen en documentos utilizando superposiciones.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Defina las propiedades de la superposición: tamaño, ubicación, color
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

          # Cargue el documento
          with gr.Redactor("source.pptx") as redactor:

              # Superponga el área seleccionada
              result = redactor.apply(redaction)

              # Guarde el documento protegido
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
    title: "Ocultar Contenido en Archivos PPTX con Python"
    exclude: "PPTX"
    description: "Utilice Python para ocultar o eliminar contenido privado en archivos PPTX. Una herramienta confiable para la seguridad de documentos."
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