
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: es
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Eliminar metadatos en POWERPOINT usando Python"
head_description: "Asegura tus documentos POWERPOINT con GroupDocs.Redaction for Python via .NET eliminando metadatos ocultos que pueden contener información privada."

############################# Header ############################
title: "Limpiar metadatos de POWERPOINT con Python" 
description: "Obtén un mejor control sobre tus archivos utilizando herramientas de Python que eliminan rápidamente metadatos ocultos."
subtitle: "Principales características de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Conoce GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction está diseñado para desarrolladores de Python que ayudan a redactar texto, imágenes y metadatos en archivos POWERPOINT.

############################# Steps ############################
steps:
    enable: true
    title: "Pasos para eliminar metadatos en Powerpoint"
    content: |
      GroupDocs.Redaction permite que tus aplicaciones Python via .NET limpien los metadatos de documentos en pocos clics.
      
      1. Crea una instancia de Redactor y abre tu documento.
      2. Selecciona qué campos de metadatos eliminar.
      3. Configura y aplica los ajustes de redacción.
      4. Guarda la versión final sin los datos ocultos.
   
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

        # Eliminar metadatos de POWERPOINT

        # Elige metadatos a eliminar
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Carga el archivo en el redactor
        with gr.Redactor("input.pptx") as redactor:

            # Limpia y guarda el documento
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redacción avanzada para POWERPOINT"
  description: "GroupDocs.Redaction for Python via .NET ayuda a limpiar archivos eliminando contenido sensible. Funciona con múltiples formatos de archivos y tipos de datos."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Opciones principales de Redacción"
  features:
    # feature loop
    - title: "Eliminar texto privado"
      content: "Busca y elimina palabras o frases que no deberían compartirse."

    # feature loop
    - title: "Cubrir secciones de imagen"
      content: "Oculta partes de imágenes que contienen visuales privadas o sensibles."

    # feature loop
    - title: "Eliminar metadatos"
      content: "Borra campos de metadatos como Autor, Título y Comentarios de tus archivos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cómo eliminar metadatos ocultos"
      content: |
        Este ejemplo muestra cómo eliminar metadatos incrustados como Autor y Título de tu documento POWERPOINT.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Borra el campo de Autor
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Borra el campo de Título
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Abre el archivo en el redactor
          with gr.Redactor("source.pptx") as redactor:

              # Realiza la redacción
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
    title: "Limpieza de metadatos para POWERPOINT usando Python"
    exclude: "POWERPOINT"
    description: "Usa Python para limpiar datos privados de documentos POWERPOINT. Ideal para uso legal, empresarial y personal."
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