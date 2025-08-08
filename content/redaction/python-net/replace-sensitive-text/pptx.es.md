
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: es
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Eliminar texto privado de PPTX usando Python"
head_description: "Mantén seguros tus archivos PPTX con GroupDocs.Redaction for Python via .NET y Python. Encuentra y elimina rápidamente contenido privado."

############################# Header ############################
title: "Edita o elimina texto privado en archivos PPTX con Python" 
description: "Utiliza GroupDocs.Redaction for Python via .NET y Python para encontrar y limpiar datos sensibles en tus documentos PPTX. Mantén tus archivos personales o laborales privados."
subtitle: "Lo que puedes hacer con GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Conoce GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET brinda a los desarrolladores Python un control total sobre el contenido PPTX. Limpia texto, imágenes, notas y metadatos de forma eficiente.

############################# Steps ############################
steps:
    enable: true
    title: "Cómo redactar texto en documentos Pptx"
    content: |
      Usa GroupDocs.Redaction for Python via .NET en tu entorno Python via .NET para ocultar o eliminar datos sensibles rápidamente.
      
      1. Crea un Redactor y carga tu archivo Pptx.
      2. Selecciona tus configuraciones de redacción.
      3. Ingresa el texto a buscar y con qué reemplazarlo.
      4. Aplica la redacción y guarda tu archivo actualizado.
   
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

        # Cómo redactar texto en un archivo PPTX

        # Establece tus opciones de redacción
        # Elige el texto a buscar y con qué reemplazarlo
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Utiliza el constructor Redactor para cargar tu archivo
        with gr.Redactor("input.pptx") as redactor:

            # Ejecuta las redacciones y guarda el PPTX final
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Más características de redacción"
  description: "GroupDocs.Redaction for Python via .NET te ayuda a eliminar o esconder datos sensibles en diferentes formatos. Comparte documentos de manera segura."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Resumen de características de redacción"
  features:
    # feature loop
    - title: "Reemplazar texto privado"
      content: "Busca y sustituye palabras o frases específicas. Funciona con regex y filtros inteligentes."

    # feature loop
    - title: "Cubrir imágenes privadas"
      content: "Superpone u oculta áreas específicas en imágenes. Personaliza configuraciones como colores y diseño."

    # feature loop
    - title: "Eliminar información oculta"
      content: "Limpia metadatos como nombres de autores, marcas de tiempo o notas internas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redactar por patrón con Regex"
      content: |
        Utiliza expresiones regulares para buscar y limpiar texto como direcciones de correo electrónico, números de teléfono u otros detalles privados.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Establece un patrón regex de EMAIL y el texto de reemplazo
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Abre el archivo que deseas editar
          with gr.Redactor("source.pptx") as redactor:

              # Ejecuta el proceso de redacción
              result = redactor.apply(redaction)

              # Guarda el archivo limpio
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
    title: "Redactar contenido en PPTX usando Python"
    exclude: "PPTX"
    description: "Con Python, puedes eliminar texto sensible de documentos PPTX y mantener tus datos seguros."
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