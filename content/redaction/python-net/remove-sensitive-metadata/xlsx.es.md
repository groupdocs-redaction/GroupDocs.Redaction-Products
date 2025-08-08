
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: es
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Eliminar metadatos de XLSX usando Python"
head_description: "Elimina metadatos ocultos en tus documentos XLSX utilizando GroupDocs.Redaction for Python via .NET. Una forma limpia de proteger tu privacidad."

############################# Header ############################
title: "Eliminar metadatos en archivos XLSX con Python" 
description: "Con Python, puedes eliminar de forma segura detalles privados de tus archivos XLSX. Perfecto para uso personal y profesional."
subtitle: "Funciones clave de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "¿Qué es GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction proporciona a los desarrolladores de Python herramientas para borrar o esconder cualquier contenido sensible en archivos XLSX — desde texto hasta imágenes y metadatos.

############################# Steps ############################
steps:
    enable: true
    title: "Eliminar metadatos de archivos Xlsx"
    content: |
      GroupDocs.Redaction permite que tus proyectos Python via .NET eliminen rápidamente datos no deseados del archivo.
      
      1. Crea una instancia de Redactor y carga tu archivo Xlsx.
      2. Elige las entradas de metadatos que deseas eliminar.
      3. Ejecuta la redacción para limpiar esas entradas.
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

        # Eliminar metadatos ocultos en tu documento XLSX

        # Define qué campos de metadatos deben ser eliminados
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Abre el archivo utilizando Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Aplica cambios y guarda el archivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ocultar contenido sensible en cualquier parte del archivo"
  description: "GroupDocs.Redaction for Python via .NET te permite limpiar información privada en múltiples formatos de archivo. Mantén tu contenido listo para compartir."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Redacción de Metadatos y Contenido"
  features:
    # feature loop
    - title: "Eliminar texto sensible"
      content: "Encuentra y elimina nombres, correos electrónicos u otros detalles privados de los documentos."

    # feature loop
    - title: "Cubrir áreas de imagen"
      content: "Coloca superposiciones para ocultar áreas en imágenes que no deben ser visibles."

    # feature loop
    - title: "Limpiador de metadatos"
      content: "Elimina campos ocultos como Autor, Título o fecha de creación."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Eliminar metadatos de un documento"
      content: |
        Así es como eliminar metadatos de tu archivo XLSX utilizando unas pocas líneas de código.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Marca el campo de Autor para su eliminación
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Marca el campo de Título para su eliminación
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Abre el documento
          with gr.Redactor("source.xslx") as redactor:

              # Ejecuta las reglas de redacción
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
    title: "Eliminar metadatos en XLSX con Python"
    exclude: "XLSX"
    description: "Utiliza Python para limpiar metadatos privados en tus archivos XLSX. Una buena forma de preparar archivos para compartir o publicar."
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