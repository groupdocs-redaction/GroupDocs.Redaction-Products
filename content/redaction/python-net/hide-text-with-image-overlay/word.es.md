
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: es
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Ocultar Texto en WORD Usando Superposiciones de Python"
head_description: "Con GroupDocs.Redaction for Python via .NET, es fácil ocultar texto privado en documentos WORD usando bloques de color. Tu diseño permanece intacto."

############################# Header ############################
title: "Usa Superposiciones para Ocultar Texto en WORD con Python" 
description: "Protege información clave en documentos WORD colocando bloques de superposición usando Python y GroupDocs.Redaction for Python via .NET."
subtitle: "Lo Que Puedes Hacer con GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Conoce GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       Con GroupDocs.Redaction for Python via .NET, los desarrolladores de Python pueden ocultar o eliminar contenido en documentos WORD—como nombres, números y más.

############################# Steps ############################
steps:
    enable: true
    title: "Redactar Contenido Privado en Word"
    content: |
      GroupDocs.Redaction for Python via .NET facilita a los desarrolladores de Python via .NET ocultar datos sensibles rápidamente.
      
      1. Crea un Redactor y carga tu archivo Word.
      2. Configura las opciones de redacción.
      3. Elige el texto a ocultar y el color de la superposición.
      4. Ejecuta la redacción y guarda tu archivo.
   
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
        import groupdocs.pydrawing as grd

        # Cubrir texto en WORD usando superposiciones

        # Elige qué redactar
        # Ingresa el texto y establece el color
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Carga el archivo usando Redactor
        with gr.Redactor("input.docx") as redactor:

            # Redacta y guarda
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Más Formas de Ocultar Información"
  description: "Usa GroupDocs.Redaction for Python via .NET para limpiar tus archivos ocultando contenido visible y oculto sin cambiar su apariencia."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Características enfocadas en la privacidad"
  features:
    # feature loop
    - title: "Ocultar o Reemplazar Texto"
      content: "Protege información importante eliminando o sustituyendo palabras."

    # feature loop
    - title: "Cubrir Imágenes"
      content: "Bloquea imágenes sensibles con formas sólidas."

    # feature loop
    - title: "Eliminar Datos Ocultos"
      content: "Elimina metadatos que pueden revelar información de sistema o del usuario."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Encontrar y Ocultar Texto con Regex"
      content: |
        Este ejemplo muestra cómo usar expresiones regulares para coincidir y ocultar contenido.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Establece el patrón y el color de la superposición
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Abre el archivo para editar
          with gr.Redactor("source.docx") as redactor:

              # Aplica la redacción
              result = redactor.apply(redaction)

              # Guarda tu copia actualizada
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Protege Contenido WORD con Python"
    exclude: "WORD"
    description: "Usa Python para ocultar o eliminar información sensible en archivos WORD sin afectar la estructura o el diseño."
    items: 
        # format loop 1
        - name: "Redactar PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-text-with-image-overlay//pdf/"
          description: "Formato de Documento Portátil de Adobe"

        # format loop 2
        - name: "Redactar Word"
          format: "WORD"
          link: "/redaction/python-net/hide-text-with-image-overlay//word/"
          description: "Documentos de MS Word y Open Office"
          
        # format loop 3
        - name: "Redactar Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-text-with-image-overlay//excel/"
          description: "Hojas de cálculo de MS Excel y Open Office"

        # format loop 4
        - name: "Redactar PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-text-with-image-overlay//powerpoint/"
          description: "Presentaciones de MS PowerPoint y Open Office"

        # format loop 5
        - name: "Redactar DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-text-with-image-overlay//docx/"
          description: "Documento XML Abierto de Microsoft Word"
          
        # format loop 6
        - name: "Redactar XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-text-with-image-overlay//xlsx/"
          description: "Hoja de cálculo XML Abierta de Microsoft Excel"
          
        # format loop 7
        - name: "Redactar PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-text-with-image-overlay//pptx/"
          description: "Presentación XML Abierta de PowerPoint"


---