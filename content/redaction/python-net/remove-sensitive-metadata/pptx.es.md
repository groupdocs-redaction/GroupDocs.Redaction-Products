
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: es
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Eliminar metadatos de archivos PPTX usando Python"
head_description: "GroupDocs.Redaction for Python via .NET ayuda a limpiar datos ocultos en archivos PPTX. Elimina detalles que podrían revelar información sensible."

############################# Header ############################
title: "Eliminar metadatos en PPTX con Python" 
description: "Borra metadatos privados almacenados en archivos PPTX usando Python. Una forma inteligente de proteger tu información."
subtitle: "Principales herramientas en GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Más sobre GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction está diseñado para desarrolladores Python que desean mantener documentos limpios. Úsalo para eliminar texto, cubrir imágenes o eliminar metadatos de archivos PPTX.

############################# Steps ############################
steps:
    enable: true
    title: "Limpia los metadatos en archivos Pptx"
    content: |
      Usa GroupDocs.Redaction para eliminar rápidamente metadatos de tu aplicación Python via .NET.
      
      1. Crea un Redactor y abre el documento Pptx.
      2. Elige qué metadatos quieres borrar.
      3. Aplica la redacción para eliminar datos ocultos.
      4. Guarda el archivo actualizado.
   
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

        # Borra metadatos en PPTX

        # Elige qué campos redactar
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Abre tu archivo con Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Ejecuta y guarda los cambios
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Otras formas de ocultar información sensible"
  description: "GroupDocs.Redaction for Python via .NET soporta redacción en muchos formatos. Una forma rápida de eliminar contenido personal de documentos."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Herramientas de Redacción de Archivos"
  features:
    # feature loop
    - title: "Buscar y eliminar texto"
      content: "Elimina rápidamente palabras o frases que contengan datos personales o sensibles."

    # feature loop
    - title: "Agregar superposiciones a imágenes"
      content: "Cubre secciones de imagen que no deben ser compartidas."

    # feature loop
    - title: "Eliminar metadatos ocultos"
      content: "Deshazte de nombres de autor, títulos y otras etiquetas ocultas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ejemplo: Eliminar campos de metadatos"
      content: |
        Sigue este ejemplo para eliminar campos de metadatos comunes de un archivo PPTX antes de compartir.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Marca el campo de Autor para redacción
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Marca el campo de Título para redacción
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Carga el archivo
          with gr.Redactor("source.pptx") as redactor:

              # Aplica la redacción
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Exporta el archivo limpio
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "Usa Python para limpiar metadatos de PPTX"
    exclude: "PPTX"
    description: "Elimina datos de fondo de PPTX con Python. Ideal para privacidad y cumplimiento."
    items: 
        # format loop 1
        - name: "Redactar PDF"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "Formato de Documento Portátil de Adobe"

        # format loop 2
        - name: "Redactar Word"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "Documentos de MS Word y Open Office"
          
        # format loop 3
        - name: "Redactar Excel"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "Hojas de cálculo de MS Excel y Open Office"

        # format loop 4
        - name: "Redactar PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "Presentaciones de MS PowerPoint y Open Office"

        # format loop 5
        - name: "Redactar Imagen"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "Formatos de imagen populares"

        # format loop 6
        - name: "Redactar Foto"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "Formatos de foto"

        # format loop 7
        - name: "Redactar DOCX"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "Documento XML Abierto de Microsoft Word"
          
        # format loop 8
        - name: "Redactar XLSX"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "Hoja de cálculo XML Abierta de Microsoft Excel"
          
        # format loop 9
        - name: "Redactar PPTX"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "Presentación XML Abierta de PowerPoint"

        # format loop 10
        - name: "Redactar JPEG"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "Imagen JPEG"


---