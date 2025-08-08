
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: es
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Eliminar texto privado de XLSX usando Python"
head_description: "Protege tus archivos XLSX ocultando o eliminando datos sensibles con GroupDocs.Redaction for Python via .NET y Python."

############################# Header ############################
title: "Ocultar o eliminar texto privado en archivos XLSX usando Python" 
description: "Con GroupDocs.Redaction for Python via .NET y Python, puedes eliminar texto privado de documentos XLSX de manera rápida y fiable."
subtitle: "Lo que puedes hacer con GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Conoce GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET proporciona a los desarrolladores Python todo lo que necesitan para eliminar u ocultar datos privados en archivos XLSX: texto, imágenes, notas y más.

############################# Steps ############################
steps:
    enable: true
    title: "Cómo eliminar contenido en archivos Xlsx"
    content: |
      Usa GroupDocs.Redaction for Python via .NET en tu aplicación Python via .NET para eliminar o ocultar contenido sensible rápidamente.
      
      1. Inicia un Redactor y carga el archivo Xlsx.
      2. Selecciona las configuraciones de redacción que necesites.
      3. Establece el texto de búsqueda y lo que debe reemplazarlo.
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

        # Cómo redactar texto en un archivo XLSX

        # Elige tus preferencias de redacción
        # Establece los valores de búsqueda y reemplazo
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Usa el constructor Redactor para cargar tu archivo
        with gr.Redactor("input.xslx") as redactor:

            # Aplica cambios y guarda el XLSX actualizado
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Características adicionales de redacción"
  description: "GroupDocs.Redaction for Python via .NET facilita ocultar o eliminar información privada en diferentes formatos de archivo. Comparte solo lo que debe ser visto."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Características para redactar texto, imágenes y metadatos"
  features:
    # feature loop
    - title: "Reemplazar texto privado"
      content: "Busca y cambia palabras o patrones coincidentes. Se admite regex y búsqueda por palabras clave."

    # feature loop
    - title: "Ocultar imágenes sensibles"
      content: "Cubre partes de tu archivo con superposiciones. Personaliza su aspecto y lo que oculta."

    # feature loop
    - title: "Borrar metadatos"
      content: "Elimina información oculta como el historial de documentos, nombres de autores o etiquetas internas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redactar utilizando patrones regex"
      content: |
        Encuentra patrones de texto como números de teléfono, identificaciones o correos electrónicos con regex y elimínalos rápidamente.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Configura tu patrón regex de EMAIL y el texto de reemplazo
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Abre el documento que deseas limpiar
          with gr.Redactor("source.xslx") as redactor:

              # Aplica reglas de redacción
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
    title: "Redactar contenido en XLSX usando Python"
    exclude: "XLSX"
    description: "Mantén los datos sensibles privados eliminándolos de archivos XLSX utilizando herramientas de Python."
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