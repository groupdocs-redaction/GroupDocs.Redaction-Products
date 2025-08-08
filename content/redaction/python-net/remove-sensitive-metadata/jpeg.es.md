
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: es
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Editar metadatos en JPEG usando Python"
head_description: "GroupDocs.Redaction for Python via .NET te ayuda a limpiar o actualizar metadatos en documentos JPEG. Elimina campos ocultos que pueden revelar detalles privados."

############################# Header ############################
title: "Limpiar metadatos en JPEG mediante Python" 
description: "Asegura tus archivos JPEG eliminando metadatos ocultos con herramientas sencillas diseñadas para Python."
subtitle: "Características principales de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Conoce GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction brinda a los desarrolladores Python herramientas simples para eliminar texto, imágenes y metadatos de documentos JPEG.

############################# Steps ############################
steps:
    enable: true
    title: "Pasos para limpiar metadatos de Jpeg"
    content: |
      GroupDocs.Redaction hace que la eliminación de metadatos sea rápida y sencilla para tus aplicaciones Python via .NET.
      
      1. Configura un Redactor y abre tu documento Jpeg.
      2. Selecciona las opciones para eliminar campos de metadatos.
      3. Ejecuta la redacción para limpiar el archivo.
      4. Guarda la nueva versión sin datos ocultos.
   
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

        # Limpia los metadatos en JPEG

        # Selecciona campos de metadatos a limpiar
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Abre el archivo usando Redactor
        with gr.Redactor("input.jpg") as redactor:

            # Aplica la redacción y guarda el archivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Proteger la privacidad en cada archivo"
  description: "GroupDocs.Redaction for Python via .NET te brinda control sobre datos sensibles en documentos. Elimina contenido oculto en texto, imágenes y metadatos."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Características de Redacción de Metadatos"
  features:
    # feature loop
    - title: "Encontrar y eliminar texto"
      content: "Escanea palabras clave o información privada y elimínalas del documento."

    # feature loop
    - title: "Ocultar detalles de imagen"
      content: "Cubre áreas de imágenes que no deberían ser vistas por otros."

    # feature loop
    - title: "Editar metadatos del archivo"
      content: "Cambia o elimina campos de metadatos para proteger la información del documento."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Editar campos de metadatos"
      content: |
        Este ejemplo explica cómo eliminar o modificar campos como Autor y Título en un documento JPEG.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Apunta al campo de Autor
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Apunta al campo de Título
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Abre el archivo JPEG
          with gr.Redactor("source.jpg") as redactor:

              # Ejecuta el proceso de limpieza
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Guarda la nueva versión
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
    title: "Limpiar metadatos de JPEG con Python"
    exclude: "JPEG"
    description: "Utiliza Python para eliminar datos ocultos y privados de tus documentos JPEG de manera rápida y sencilla."
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