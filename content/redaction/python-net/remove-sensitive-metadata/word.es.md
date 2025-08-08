
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: es
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Limpiar metadatos de archivos WORD con Python"
head_description: "Utiliza GroupDocs.Redaction for Python via .NET para eliminar metadatos ocultos en archivos WORD. Protege documentos de revelar información personal o interna."

############################# Header ############################
title: "Eliminar metadatos en WORD usando herramientas Python" 
description: "Mantén tus archivos seguros al eliminar metadatos no deseados con Python. Perfecto para empresas y usuarios individuales."
subtitle: "Funciones de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Conoce GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction está hecho para desarrolladores de Python que desean mantener los archivos WORD privados. Te permite eliminar texto, ocultar partes de imágenes y limpiar metadatos.

############################# Steps ############################
steps:
    enable: true
    title: "Eliminar metadatos ocultos en Word"
    content: |
      Con GroupDocs.Redaction, tu aplicación Python via .NET puede limpiar rápidamente los metadatos de documentos.
      
      1. Crea un objeto Redactor y abre el archivo Word.
      2. Configura las reglas de redacción para los campos de metadatos.
      3. Ejecuta la redacción para eliminar los datos seleccionados.
      4. Guarda la versión limpia del archivo.
   
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

        # Limpiar metadatos en WORD

        # Selecciona metadatos para eliminar
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Abre el documento usando Redactor
        with gr.Redactor("input.docx") as redactor:

            # Aplica la redacción y guarda el archivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Proteger más que solo metadatos"
  description: "Redacta texto, cubre imágenes y elimina metadatos usando GroupDocs.Redaction for Python via .NET. Mantén tus documentos limpios y privados."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Opciones de Protección de Documentos"
  features:
    # feature loop
    - title: "Buscar y reemplazar texto"
      content: "Elimina o reemplaza palabras y frases que contengan datos privados o sensibles."

    # feature loop
    - title: "Agregar cubiertas de imagen"
      content: "Coloca superposiciones para ocultar partes de imágenes en tus documentos."

    # feature loop
    - title: "Eliminar metadatos"
      content: "Limpia nombres de autor, títulos, comentarios y otra información oculta."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Eliminar metadatos de archivos WORD"
      content: |
        Este ejemplo muestra cómo eliminar campos como Autor y Título de un documento WORD.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Apunta a los metadatos del autor
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Apunta a los metadatos del título
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Importa tu documento
          with gr.Redactor("source.docx") as redactor:

              # Ejecuta la herramienta de redacción
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
    title: "Eliminar metadatos en WORD con Python"
    exclude: "WORD"
    description: "Usa Python para limpiar metadatos ocultos de WORD. Mantén tus archivos seguros antes de compartir o archivar."
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