
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: es
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Eliminar metadatos de EXCEL usando Python"
head_description: "Utiliza GroupDocs.Redaction for Python via .NET para eliminar metadatos de documentos EXCEL. Elimina datos ocultos y protege información sensible."

############################# Header ############################
title: "Eliminar metadatos ocultos en EXCEL con Python" 
description: "Toma control de tus archivos EXCEL con Python. Deshazte de datos no deseados para mantener tus archivos privados."
subtitle: "Funciones clave de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Conoce GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction está diseñado para desarrolladores de Python que necesitan limpiar y proteger archivos EXCEL. Elimina metadatos no deseados, texto e imágenes fácilmente.

############################# Steps ############################
steps:
    enable: true
    title: "Pasos para limpiar metadatos en archivos Excel"
    content: |
      En tus aplicaciones Python via .NET, GroupDocs.Redaction ayuda a eliminar metadatos en solo unos pocos pasos.
      
      1. Inicia un Redactor y abre el archivo Excel.
      2. Elige los campos de metadatos a eliminar.
      3. Ejecuta el proceso de redacción.
      4. Exporta el archivo final.
   
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

        # Eliminar datos ocultos en EXCEL

        # Elige qué metadatos eliminar
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Abre tu archivo con el redactor
        with gr.Redactor("input.xslx") as redactor:

            # Procesa y guarda el archivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Limpiar todo tipo de datos sensibles"
  description: "GroupDocs.Redaction for Python via .NET te proporciona herramientas para borrar metadatos, texto e imágenes en muchos formatos. Perfecto para compartir documentos de forma segura."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Herramientas de Metadatos y Privacidad"
  features:
    # feature loop
    - title: "Eliminar texto privado"
      content: "Detecta y elimina información personal u oculta de tus documentos."

    # feature loop
    - title: "Enmascarar detalles de imagen"
      content: "Cubre partes de imágenes para bloquear visuales privadas."

    # feature loop
    - title: "Limpiar metadatos"
      content: "Borra campos de metadatos ocultos que podrían contener datos sensibles."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Eliminar metadatos del Autor y Título"
      content: |
        Ve cómo GroupDocs.Redaction for Python via .NET elimina campos de metadatos específicos de documentos EXCEL.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Elimina la información del autor
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Elimina el campo del título
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Abre el documento para redacción
          with gr.Redactor("source.xslx") as redactor:

              # Aplica los cambios
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Guarda el documento limpio
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
    title: "Limpiar metadatos en EXCEL con Python"
    exclude: "EXCEL"
    description: "Usa Python para eliminar metadatos sensibles de tus archivos EXCEL. Asegura el contenido antes de compartir."
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