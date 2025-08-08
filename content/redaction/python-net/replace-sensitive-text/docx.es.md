
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: es
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Eliminar texto privado de DOCX usando Python"
head_description: "Mantén tus archivos DOCX seguros eliminando contenido sensible con GroupDocs.Redaction for Python via .NET y Python. Redacción rápida y efectiva."

############################# Header ############################
title: "Edita u oculta texto privado en archivos DOCX con Python" 
description: "Toma el control de tu contenido DOCX utilizando GroupDocs.Redaction for Python via .NET y Python. Ideal para uso personal o empresarial."
subtitle: "Lo que puedes hacer con GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Conoce GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ofrece a los desarrolladores Python las herramientas para limpiar contenido en archivos DOCX. Redacta texto, imágenes, comentarios y metadatos de manera eficiente.

############################# Steps ############################
steps:
    enable: true
    title: "Cómo limpiar texto en archivos Docx"
    content: |
      Utiliza GroupDocs.Redaction for Python via .NET dentro de tus aplicaciones Python via .NET para eliminar o ocultar texto privado. Proceso de redacción rápido y eficiente.
      
      1. Crea un Redactor y abre tu archivo Docx.
      2. Establece las reglas de redacción deseadas.
      3. Elige el texto a buscar y con qué reemplazarlo.
      4. Ejecuta la redacción y guarda tu nuevo archivo.
   
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

        # Cómo redactar texto en un archivo DOCX

        # Selecciona tus configuraciones de redacción
        # Ingresa qué buscar y qué reemplazar
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Abre tu archivo con el constructor Redactor
        with gr.Redactor("input.docx") as redactor:

            # Aplica cambios y guarda el archivo DOCX actualizado
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Más herramientas de redacción"
  description: "GroupDocs.Redaction for Python via .NET te permite eliminar o enmascarar texto sensible en diferentes formatos. Comparte archivos limpios y seguros con confianza."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Herramientas para redacción de texto, imágenes y metadatos"
  features:
    # feature loop
    - title: "Encontrar y reemplazar texto privado"
      content: "Busca palabras o patrones específicos y cámbialos. Funciona con expresiones regulares y opciones de palabras clave."

    # feature loop
    - title: "Cubrir imágenes sensibles"
      content: "Superpón o oculta áreas de imagen. Cambia colores, opacidad y tamaño según sea necesario."

    # feature loop
    - title: "Eliminar metadatos"
      content: "Borra información oculta como nombres de autores, marcas de tiempo y notas internas para mantener tus archivos privados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Usa Regex para redactar patrones"
      content: |
        Busca correos electrónicos, identificaciones o patrones utilizando expresiones regulares y reemplázalos de forma efectiva.
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

          # Abre el archivo que deseas limpiar
          with gr.Redactor("source.docx") as redactor:

              # Aplica tu configuración de redacción
              result = redactor.apply(redaction)

              # Guarda el documento redactado
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
    title: "Redactar contenido en DOCX usando Python"
    exclude: "DOCX"
    description: "Usa Python para eliminar texto sensible de archivos DOCX. Mantén documentos personales y laborales protegidos."
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