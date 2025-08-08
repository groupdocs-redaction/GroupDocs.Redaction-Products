
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: es
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Eliminar texto privado de EXCEL usando Python"
head_description: "Limpia rápidamente información sensible de tus archivos EXCEL con GroupDocs.Redaction for Python via .NET y Python."

############################# Header ############################
title: "Buscar y eliminar texto privado en archivos EXCEL con Python" 
description: "Utiliza Python y GroupDocs.Redaction for Python via .NET para eliminar detalles sensibles de tus documentos EXCEL. Ya sea para trabajo o uso personal, tu contenido se mantiene seguro."
subtitle: "Lo que puedes hacer con GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Conoce GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET otorga a los desarrolladores Python todo lo necesario para limpiar archivos EXCEL. Elimina texto, imágenes, comentarios y metadatos con un código simple.

############################# Steps ############################
steps:
    enable: true
    title: "Cómo redactar texto en archivos Excel"
    content: |
      Con GroupDocs.Redaction for Python via .NET en tus proyectos Python via .NET, puedes eliminar o ocultar contenido privado de manera sencilla.
      
      1. Crea un Redactor y abre tu archivo Excel.
      2. Selecciona tus configuraciones de redacción.
      3. Ingresa el texto que deseas buscar y con qué reemplazarlo.
      4. Ejecuta la redacción y guarda tu archivo actualizado.
   
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

        # Cómo redactar texto en un archivo EXCEL

        # Configura tus opciones de redacción
        # Elige el texto a buscar y con qué reemplazarlo
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Abre tu archivo con el constructor Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Aplica las redacciones y guarda tu nuevo archivo EXCEL
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Más características de redacción"
  description: "GroupDocs.Redaction for Python via .NET te ayuda a limpiar contenido sensible en muchos formatos de archivo. Mantén tus documentos seguros y compartibles."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Herramientas de redacción en acción"
  features:
    # feature loop
    - title: "Reemplazar texto privado"
      content: "Busca y reemplaza cualquier texto coincidente. Funciona con búsqueda inteligente y patrones regex."

    # feature loop
    - title: "Cubrir contenido de imagen"
      content: "Oculta partes de imágenes con superposiciones. Personaliza cómo se ve en la página."

    # feature loop
    - title: "Eliminar detalles ocultos"
      content: "Borra metadatos como información de autor, comentarios y marcas de tiempo."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redactar patrones con Regex"
      content: |
        Utiliza regex para encontrar text patrones como correos electrónicos, números de teléfono o detalles de cuentas.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Define tu patrón regex de EMAIL y el texto de reemplazo
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Abre el archivo que necesitas limpiar
          with gr.Redactor("source.xslx") as redactor:

              # Aplica las reglas de redacción
              result = redactor.apply(redaction)

              # Guarda la versión final del archivo
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
    title: "Redactar contenido en EXCEL usando Python"
    exclude: "EXCEL"
    description: "Usa Python para eliminar texto privado de archivos EXCEL. Asegúrate de que tu contenido esté seguro para almacenar o compartir."
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