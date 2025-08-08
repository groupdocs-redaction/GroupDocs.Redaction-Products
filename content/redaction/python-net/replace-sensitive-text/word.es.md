
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: es
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Eliminar texto privado de WORD usando Python"
head_description: "Protege datos privados en tus archivos WORD con GroupDocs.Redaction for Python via .NET y Python. Eliminación rápida de texto."

############################# Header ############################
title: "Editar u ocultar texto privado en archivos WORD con Python" 
description: "Limpia contenido sensible en tus archivos WORD usando GroupDocs.Redaction for Python via .NET y Python. Mantén documentos personales o laborales seguros."
subtitle: "Lo que puedes hacer con GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Conoce GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ayuda a los desarrolladores Python a limpiar archivos WORD con facilidad. Elimina texto, imágenes, notas y metadatos con unos pocos pasos.

############################# Steps ############################
steps:
    enable: true
    title: "Pasos para redactar texto en archivos Word"
    content: |
      Usa GroupDocs.Redaction for Python via .NET en tus aplicaciones Python via .NET para eliminar u ocultar rápidamente información sensible.
      
      1. Inicia un Redactor y carga el archivo Word.
      2. Selecciona las configuraciones de redacción que desees.
      3. Ingresa qué texto buscar y con qué reemplazar.
      4. Ejecuta la redacción y guarda tu documento.
   
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

        # Cómo redactar texto en un archivo WORD

        # Establece las opciones para la redacción
        # Selecciona el texto a reemplazar y el nuevo valor
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Carga el archivo usando el constructor Redactor
        with gr.Redactor("input.docx") as redactor:

            # Aplica y guarda tu archivo WORD redactado
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Más herramientas para redacción"
  description: "GroupDocs.Redaction for Python via .NET te proporciona las herramientas para limpiar contenido sensible en muchos formatos de archivo. Mantén tus documentos seguros para compartir."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Resumen de opciones de redacción"
  features:
    # feature loop
    - title: "Reemplazar texto sensible"
      content: "Busca texto o patrones y sustitúyelos por otros. También se admite regex."

    # feature loop
    - title: "Cubrir imágenes privadas"
      content: "Oculta o superpone partes de imágenes. Ajusta la apariencia y tamaño según sea necesario."

    # feature loop
    - title: "Limpiar metadatos ocultos"
      content: "Borra detalles ocultos como nombres de autores, fechas de creación y comentarios."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redactar patrones con Regex"
      content: |
        Usa expresiones regulares para encontrar y limpiar patrones de texto como correos electrónicos, nombres o identificaciones.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Configura una regla regex de EMAIL y el texto de reemplazo
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Abre tu documento
          with gr.Redactor("source.docx") as redactor:

              # Aplica las configuraciones de redacción
              result = redactor.apply(redaction)

              # Guarda la versión final
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Redactar contenido en WORD usando Python"
    exclude: "WORD"
    description: "Usa herramientas Python para limpiar y proteger documentos WORD redactando texto sensible y detalles."
    items: 
        # format loop 1
        - name: "Redactar PDF"
          format: "PDF"
          link: "/redaction/python-net/replace-sensitive-text//pdf/"
          description: "Formato de Documento Portátil de Adobe"

        # format loop 2
        - name: "Redactar Word"
          format: "WORD"
          link: "/redaction/python-net/replace-sensitive-text//word/"
          description: "Documentos de MS Word y Open Office"
          
        # format loop 3
        - name: "Redactar Excel"
          format: "EXCEL"
          link: "/redaction/python-net/replace-sensitive-text//excel/"
          description: "Hojas de cálculo de MS Excel y Open Office"

        # format loop 4
        - name: "Redactar PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/replace-sensitive-text//powerpoint/"
          description: "Presentaciones de MS PowerPoint y Open Office"

        # format loop 5
        - name: "Redactar DOCX"
          format: "DOCX"
          link: "/redaction/python-net/replace-sensitive-text//docx/"
          description: "Documento XML Abierto de Microsoft Word"
          
        # format loop 6
        - name: "Redactar XLSX"
          format: "XLSX"
          link: "/redaction/python-net/replace-sensitive-text//xlsx/"
          description: "Hoja de cálculo XML Abierta de Microsoft Excel"
          
        # format loop 7
        - name: "Redactar PPTX"
          format: "PPTX"
          link: "/redaction/python-net/replace-sensitive-text//pptx/"
          description: "Presentación XML Abierta de PowerPoint"


---