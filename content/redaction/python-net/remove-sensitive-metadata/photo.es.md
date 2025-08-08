
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: es
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Eliminar metadatos en PHOTO con Python"
head_description: "Con GroupDocs.Redaction for Python via .NET, puedes borrar datos ocultos de archivos PHOTO y evitar la filtración de información privada."

############################# Header ############################
title: "Limpiar metadatos de PHOTO usando Python" 
description: "Protege tus documentos PHOTO eliminando información oculta con herramientas de Python fáciles de usar."
subtitle: "Características clave de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction brinda a los usuarios de Python una forma de limpiar archivos eliminando contenido oculto de texto, imágenes y metadatos en PHOTO.

############################# Steps ############################
steps:
    enable: true
    title: "Pasos para eliminar metadatos de Photo"
    content: |
      Usa GroupDocs.Redaction en tu proyecto Python via .NET para limpiar los metadatos de documentos en solo unos pocos pasos.
      
      1. Configura un Redactor y abre tu archivo Photo.
      2. Selecciona qué campos de metadatos eliminar.
      3. Aplica la redacción para limpiar el archivo.
      4. Guarda la versión final.
   
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

        # Eliminar metadatos en documentos PHOTO

        # Elige qué metadatos redactar
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Utiliza Redactor para abrir tu archivo
        with gr.Redactor("input.jpeg") as redactor:

            # Ejecuta y guarda
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Limpiar archivos antes de compartir"
  description: "GroupDocs.Redaction for Python via .NET ayuda a eliminar datos que no deberían ser visibles. Elimina texto, imágenes y detalles ocultos en solo unos clics."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Características útiles de Redacción"
  features:
    # feature loop
    - title: "Eliminación de texto"
      content: "Encuentra y elimina palabras, números o patrones sensibles."

    # feature loop
    - title: "Enmascarar imágenes"
      content: "Cubre partes de imágenes que contienen datos privados."

    # feature loop
    - title: "Limpieza de metadatos"
      content: "Elimina detalles de archivos como Autor, Título o Comentarios."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Eliminar metadatos específicos"
      content: |
        Sigue este ejemplo para eliminar campos de Autor y Título en un documento PHOTO.
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

          # Carga el archivo en el redactor
          with gr.Redactor("source.jpeg") as redactor:

              # Redacta los metadatos seleccionados
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
    title: "Redactar metadatos de PHOTO con Python"
    exclude: "PHOTO"
    description: "Utiliza Python para limpiar metadatos ocultos de archivos PHOTO. Mantén documentos limpios y seguros."
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