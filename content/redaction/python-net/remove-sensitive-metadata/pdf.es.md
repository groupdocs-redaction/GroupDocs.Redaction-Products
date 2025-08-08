
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: es
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Eliminar metadatos de PDF usando Python"
head_description: "GroupDocs.Redaction for Python via .NET te ayuda a limpiar datos ocultos de archivos PDF. Evita compartir información privada editando o eliminando metadatos."

############################# Header ############################
title: "Eliminar metadatos en archivos PDF con Python" 
description: "Utiliza Python y GroupDocs.Redaction for Python via .NET para limpiar información sensible de tus documentos PDF. Mantén el control de tus datos con herramientas de redacción efectivas."
subtitle: "Lo que GroupDocs.Redaction for Python via .NET puede hacer" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ayuda a los desarrolladores de Python a limpiar documentos PDF eliminando contenido de texto, imágenes y metadatos.

############################# Steps ############################
steps:
    enable: true
    title: "Eliminar metadatos en documentos Pdf"
    content: |
      Comienza a proteger tus archivos usando GroupDocs.Redaction en aplicaciones Python via .NET.
      
      1. Crea un Redactor y carga tu archivo Pdf.
      2. Añade reglas para eliminar metadatos ocultos.
      3. Ejecuta la redacción para eliminar entradas de metadatos.
      4. Guarda el archivo sin los datos ocultos.
   
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

        # Eliminar metadatos de documentos PDF

        # Selecciona los campos de metadatos a eliminar
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Abre el archivo usando Redactor
        with gr.Redactor("input.pdf") as redactor:

            # Redacta y guarda tu documento
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Limpiar contenido oculto en documentos"
  description: "Con GroupDocs.Redaction for Python via .NET, puedes eliminar de forma segura texto, imágenes y metadatos. Mantén tus archivos privados y seguros antes de compartir."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Opciones de Redacción"
  features:
    # feature loop
    - title: "Eliminación de texto"
      content: "Busca y borra texto sensible en documentos."

    # feature loop
    - title: "Enmascaramiento de imágenes"
      content: "Oculta partes específicas de imágenes con superposiciones sencillas."

    # feature loop
    - title: "Limpieza de metadatos"
      content: "Deshazte de los metadatos no deseados que podrían exponer datos privados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Editar y eliminar campos de metadatos"
      content: |
        Este ejemplo explica cómo limpiar metadatos ocultos en un archivo PDF.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Eliminar metadatos de autor
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Eliminar metadatos de título
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Abre el archivo en Redactor
          with gr.Redactor("source.pdf") as redactor:

              # Ejecuta el proceso de redacción
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Guarda el archivo actualizado
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
    title: "Limpiar metadatos de PDF con Python"
    exclude: "PDF"
    description: "Elimina campos de datos ocultos en PDF usando Python. Una forma inteligente de proteger la privacidad y mantener tus archivos limpios."
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