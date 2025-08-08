
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: es
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Limpiar metadatos ocultos en IMAGE usando Python"
head_description: "GroupDocs.Redaction for Python via .NET te ayuda a eliminar metadatos privados de documentos IMAGE. Mantén los archivos limpios y seguros."

############################# Header ############################
title: "Eliminar metadatos en archivos IMAGE con Python" 
description: "Utiliza herramientas de Python para proteger documentos IMAGE. Elimina información oculta antes de compartir o publicar."
subtitle: "Funciones clave de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction brinda a los desarrolladores Python las herramientas para eliminar datos sensibles de archivos IMAGE, incluyendo texto, imágenes y metadatos.

############################# Steps ############################
steps:
    enable: true
    title: "Cómo eliminar metadatos de archivos Image"
    content: |
      GroupDocs.Redaction ayuda a los desarrolladores Python via .NET a limpiar los metadatos de documentos en solo unos pocos pasos.
      
      1. Configura un Redactor y carga tu archivo Image.
      2. Selecciona los metadatos que deseas borrar.
      3. Ejecuta el proceso de redacción.
      4. Guarda tu archivo actualizado.
   
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

        # Limpia los campos ocultos en los archivos IMAGE

        # Selecciona campos de metadatos a redactar
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Usa Redactor para abrir el archivo
        with gr.Redactor("input.png") as redactor:

            # Procesa y exporta
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Limpiar datos sensibles de cualquier archivo"
  description: "GroupDocs.Redaction for Python via .NET elimina texto, imágenes y metadatos que no deberían compartirse. Funciona con muchos formatos."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Principales herramientas de Redacción"
  features:
    # feature loop
    - title: "Eliminar texto"
      content: "Elimina palabras o patrones de tus archivos para proteger información sensible."

    # feature loop
    - title: "Enmascarar imágenes"
      content: "Cubre partes de imágenes que deben permanecer privadas."

    # feature loop
    - title: "Eliminar metadatos"
      content: "Borra datos ocultos de propiedades de archivos como Autor o Título."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Eliminar campos de metadatos"
      content: |
        Este ejemplo muestra cómo eliminar metadatos como Autor y Título en archivos IMAGE.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Selecciona el campo de Autor
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Selecciona el campo de Título
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Abre el archivo en el redactor
          with gr.Redactor("source.png") as redactor:

              # Realiza la redacción
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Guarda el documento final
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
    title: "Usa Python para eliminar metadatos de IMAGE"
    exclude: "IMAGE"
    description: "Limpia metadatos de archivos IMAGE rápidamente usando Python. Mantén tus documentos seguros y privados."
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