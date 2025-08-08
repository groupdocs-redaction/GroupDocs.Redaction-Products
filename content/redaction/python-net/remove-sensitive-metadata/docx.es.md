
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: es
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Eliminar metadatos de DOCX usando Python"
head_description: "Utiliza GroupDocs.Redaction for Python via .NET para borrar detalles ocultos en archivos DOCX. Protege tus datos eliminando entradas de metadatos sensibles."

############################# Header ############################
title: "Eliminar metadatos ocultos de archivos DOCX con Python" 
description: "Con Python, puedes borrar metadatos ocultos de archivos DOCX usando GroupDocs.Redaction for Python via .NET. Mantén tus archivos limpios y privados."
subtitle: "Funciones principales en GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "¿Qué es GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ofrece a los desarrolladores de Python la capacidad de borrar datos ocultos en archivos DOCX. Limpia texto, visuales y metadatos de los documentos.

############################# Steps ############################
steps:
    enable: true
    title: "Eliminar metadatos de archivos Docx"
    content: |
      GroupDocs.Redaction proporciona a tus aplicaciones Python via .NET las herramientas para eliminar metadatos rápidamente.
      
      1. Inicia un Redactor y carga tu documento Docx.
      2. Configura los campos de metadatos para su eliminación.
      3. Aplica la redacción para limpiar el contenido oculto.
      4. Guarda la versión final del archivo.
   
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

        # Limpia los metadatos en archivos DOCX

        # Selecciona las entradas de metadatos a eliminar
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Utiliza Redactor para abrir el documento
        with gr.Redactor("input.docx") as redactor:

            # Aplica la redacción y guarda el archivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Asegura cada parte de un documento"
  description: "Con GroupDocs.Redaction for Python via .NET, puedes limpiar texto, imágenes y metadatos en múltiples formatos de archivo. Ideal para la privacidad y la seguridad."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Herramientas de Redacción de Documentos en Acción"
  features:
    # feature loop
    - title: "Limpiador de texto"
      content: "Encuentra y elimina nombres, términos o cualquier palabra privada."

    # feature loop
    - title: "Cubrir imágenes"
      content: "Oculta partes de una imagen colocando una superposición de color."

    # feature loop
    - title: "Eliminación de metadatos"
      content: "Deshazte de información oculta del documento, como detalles del autor o del software."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ejemplo: Eliminar metadatos ocultos"
      content: |
        Aquí se explica cómo puedes eliminar los campos de Autor y Título de un documento DOCX utilizando la redacción.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Elige eliminar el campo de Autor
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Elige eliminar el campo de Título
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Abre el archivo DOCX
          with gr.Redactor("source.docx") as redactor:

              # Ejecuta la redacción de metadatos
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Guarda el archivo limpio
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
    title: "Eliminar metadatos en DOCX con Python"
    exclude: "DOCX"
    description: "Elimina metadatos ocultos en archivos DOCX utilizando Python. Ideal para asegurar tus archivos antes de compartir o archivar."
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