
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: es
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Eliminar texto privado de POWERPOINT usando Python"
head_description: "Protege rápidamente datos sensibles en tus archivos POWERPOINT utilizando GroupDocs.Redaction for Python via .NET y Python."

############################# Header ############################
title: "Encontrar y ocultar texto sensible en archivos POWERPOINT con Python" 
description: "Utiliza GroupDocs.Redaction for Python via .NET y Python para eliminar u ocultar contenido privado en tus archivos POWERPOINT. Mantén todo confidencial, ya sea personal o relacionado con el trabajo."
subtitle: "Lo que puedes hacer con GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Conoce GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET proporciona a los desarrolladores Python las herramientas para limpiar archivos POWERPOINT de arriba a abajo. Elimina contenido, imágenes, notas y metadatos con facilidad.

############################# Steps ############################
steps:
    enable: true
    title: "Cómo limpiar texto en archivos Powerpoint"
    content: |
      Utiliza GroupDocs.Redaction for Python via .NET dentro de tus aplicaciones Python via .NET para eliminar o reemplazar datos sensibles rápidamente.
      
      1. Inicia un Redactor y abre tu archivo Powerpoint.
      2. Selecciona las opciones de redacción que necesitas.
      3. Establece el texto que deseas buscar y con qué sustituirlo.
      4. Ejecuta la redacción y guarda el archivo final.
   
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

        # Cómo redactar texto en un archivo POWERPOINT

        # Selecciona las configuraciones de redacción que necesites
        # Ingresa el texto a buscar y con qué reemplazarlo
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Carga tu archivo utilizando el constructor Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Realiza las redacciones y guarda el archivo final POWERPOINT
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Más herramientas para eliminar datos privados"
  description: "GroupDocs.Redaction for Python via .NET te permite limpiar contenido privado en muchos formatos. Perfecto para compartir o archivar archivos de forma segura."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Opciones y herramientas de redacción"
  features:
    # feature loop
    - title: "Buscar y reemplazar texto"
      content: "Cambia rápidamente palabras o números sensibles. Funciona con regex y búsqueda por palabras clave."

    # feature loop
    - title: "Ocultar partes de imágenes"
      content: "Cubre áreas específicas con formas o superposiciones. Ajusta los elementos visuales para adaptarlos a tus necesidades."

    # feature loop
    - title: "Eliminar información oculta"
      content: "Borra metadatos que indican quién hizo el archivo, comentarios o el historial de cambios."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redacción por patrón utilizando Regex"
      content: |
        Utiliza expresiones regulares para buscar y redactar patrones como correos electrónicos, información de contacto u otros detalles privados.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Configura un patrón regex de EMAIL y un valor de reemplazo
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Abre la presentación que deseas limpiar
          with gr.Redactor("source.pptx") as redactor:

              # Aplica los pasos de redacción
              result = redactor.apply(redaction)

              # Guarda tu archivo redactado final
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
    title: "Redactar contenido en POWERPOINT usando Python"
    exclude: "POWERPOINT"
    description: "Con Python, puedes limpiar archivos POWERPOINT eliminando o ocultando texto privado. Mantén todo seguro."
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