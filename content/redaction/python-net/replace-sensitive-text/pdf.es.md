
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: es
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Redactar texto sensible en PDF con Python"
head_description: "Mantén la información privada segura en tus documentos PDF con GroupDocs.Redaction for Python via .NET. Encuentra y oculta información sensible rápidamente."

############################# Header ############################
title: "Eliminar texto sensible de archivos PDF usando Python" 
description: "Utiliza Python y GroupDocs.Redaction for Python via .NET para buscar y eliminar datos privados, legales o personales de tus archivos PDF."
subtitle: "Lo que puedes hacer con GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "¿Qué es GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET brinda a los desarrolladores Python todas las herramientas necesarias para redactar contenido en archivos PDF: texto, imágenes, comentarios y más.

############################# Steps ############################
steps:
    enable: true
    title: "Cómo redactar contenido en archivos Pdf"
    content: |
      Mantén tu contenido seguro en cualquier aplicación Python via .NET utilizando GroupDocs.Redaction for Python via .NET.
      
      1. Crea un Redactor y carga tu archivo Pdf.
      2. Elige las configuraciones de redacción que deseas.
      3. Ingresa el texto a buscar y con qué reemplazarlo.
      4. Aplica la redacción y guarda tu archivo.
   
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

        # 

        # 
        # 
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 
        with gr.Redactor("input.pdf") as redactor:

            # 
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Más características de redacción"
  description: "GroupDocs.Redaction for Python via .NET te permite ocultar contenido privado en muchos tipos de archivos. Mantén tus datos seguros y listos para compartir."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Herramientas para redacción de texto, imágenes y metadatos"
  features:
    # feature loop
    - title: "Encontrar y reemplazar texto privado"
      content: "Busca y sustituye texto coincidente. Funciona con regex y búsqueda por palabras clave."

    # feature loop
    - title: "Cubrir imágenes privadas"
      content: "Enmascara imágenes completas o partes de ellas utilizando superposiciones. Personaliza la configuración de apariencia."

    # feature loop
    - title: "Eliminar metadatos ocultos"
      content: "Elimina información oculta como nombres de autores, marcas de tiempo y notas de revisión."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redacta con Regex"
      content: |
        Utiliza regex para encontrar y eliminar patrones como correos electrónicos, identificaciones o números.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Configura un patrón regex y el texto de reemplazo
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Abre el archivo que deseas limpiar
          with gr.Redactor("source.pdf") as redactor:

              # Aplica tus reglas de redacción
              result = redactor.apply(redaction)

              # Guarda tu archivo redactado
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
    title: "Redactar contenido en PDF usando Python"
    exclude: "PDF"
    description: "Mantén los datos personales o comerciales a salvo redactando texto en archivos PDF con herramientas de Python."
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