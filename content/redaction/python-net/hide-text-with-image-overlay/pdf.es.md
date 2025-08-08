
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: es
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Cubrir Texto Sensible en Archivos PDF Usando Superposiciones de Python"
head_description: "Con GroupDocs.Redaction for Python via .NET, puedes ocultar texto sensible en archivos PDF agregando superposiciones de color. Protege datos privados sin cambiar la apariencia de tu archivo."

############################# Header ############################
title: "Cubrir Texto Sensible en PDF Usando Python" 
description: "Asegura tus archivos PDF con Python. Usa superposiciones para bloquear información legal, personal o confidencial."
subtitle: "Aspectos Destacados de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ofrece a los desarrolladores de Python una forma sencilla de ocultar o eliminar contenido en archivos PDF. Cubre texto sensible, imágenes o metadatos en muchos formatos.

############################# Steps ############################
steps:
    enable: true
    title: "Mantener Información Sensible Segura en Archivos Pdf"
    content: |
      Usa GroupDocs.Redaction for Python via .NET con tus aplicaciones Python via .NET para ocultar contenido privado rápidamente.
      
      1. Configura un Redactor y carga tu archivo Pdf.
      2. Elige cómo debe funcionar la redacción.
      3. Elige el texto a ocultar y selecciona un color para la superposición.
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
        import groupdocs.pydrawing as grd

        # Oculta texto sensible en PDF usando superposiciones de color

        # Configura las opciones de redacción
        # Define qué ocultar y elige un color
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Carga el archivo pasando su ruta a Redactor
        with gr.Redactor("input.pdf") as redactor:

            # Redacta y guarda tu archivo PDF
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ocultar o Eliminar Información de Documentos"
  description: "Con GroupDocs.Redaction for Python via .NET, puedes ocultar texto, imágenes y otros datos en muchos formatos. Protege lo que importa mientras mantienes tus documentos fáciles de leer y compartir."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Características de Redacción Flexibles"
  features:
    # feature loop
    - title: "Editar Cualquier Texto"
      content: "Encuentra y reemplaza texto sensible para mantener tus documentos seguros."

    # feature loop
    - title: "Cubrir Imágenes"
      content: "Usa superposiciones para bloquear imágenes completas o áreas específicas."

    # feature loop
    - title: "Eliminar Metadatos"
      content: "Elimina datos ocultos para detener filtraciones de información no intencionadas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Usa Regex para Buscar y Ocultar Texto"
      content: |
        Este ejemplo muestra cómo buscar y ocultar texto usando patrones regex.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Establece el patrón de texto y el color de la superposición
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Carga tu documento
          with gr.Redactor("source.pdf") as redactor:

              # Redacta el contenido seleccionado
              result = redactor.apply(redaction)

              # Guarda el archivo actualizado
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
    title: "Protege Archivos PDF con Herramientas de Python"
    exclude: "PDF"
    description: "Usa Python para ocultar o eliminar contenido en archivos PDF. Un método confiable para mantener a salvo información privada."
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