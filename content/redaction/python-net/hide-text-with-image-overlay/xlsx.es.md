
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: es
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Ocultar Texto en XLSX Usando Python y Superposiciones"
head_description: "GroupDocs.Redaction for Python via .NET te ayuda a ocultar texto en archivos XLSX añadiendo superposiciones de color. Mantén tus datos privados sin cambiar el diseño del archivo."

############################# Header ############################
title: "Ocultar Texto en Archivos XLSX Usando Superposiciones de Python" 
description: "Protege texto sensible en tus archivos XLSX con GroupDocs.Redaction for Python via .NET y Python colocando superposiciones simples."
subtitle: "Lo Que Obtienes con GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Lo Que GroupDocs.Redaction for Python via .NET Puede Hacer"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET brinda a los desarrolladores de Python las herramientas para ocultar o eliminar texto, imágenes y más en archivos XLSX.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Datos en Archivos Xlsx"
    content: |
      GroupDocs.Redaction for Python via .NET permite a los desarrolladores Python via .NET ocultar información privada con solo unas pocas líneas de código.
      
      1. Comienza creando un Redactor y carga tu archivo Xlsx.
      2. Establece las opciones de redacción que funcionen para tu caso.
      3. Agrega el patrón de texto que deseas ocultar y elige un color.
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

        # Oculta contenido privado en XLSX con superposiciones

        # Configura tus preferencias de redacción
        # Elige el texto a cubrir y el color de la superposición
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Usa Redactor para cargar tu archivo
        with gr.Redactor("input.xslx") as redactor:

            # Redacta y guarda el archivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Herramientas Útiles de Redacción"
  description: "GroupDocs.Redaction for Python via .NET te permite ocultar o eliminar contenido de muchos tipos de archivos. Mantén información personal o empresarial protegida."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Opciones de redacción fáciles de usar"
  features:
    # feature loop
    - title: "Encontrar y Editar Texto"
      content: "Busca texto específico y reemplace o oculte."

    # feature loop
    - title: "Cubrir Contenido de Imágenes"
      content: "Dibuja superposiciones sobre imágenes para bloquear áreas privadas."

    # feature loop
    - title: "Eliminar Metadatos"
      content: "Limpia información oculta antes de compartir tus archivos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ocultar Texto Usando Patrones Regex"
      content: |
        Este ejemplo muestra cómo encontrar y ocultar contenido usando expresiones regulares.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Configura tu patrón de texto y el color de la superposición
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Abre el archivo que deseas editar
          with gr.Redactor("source.xslx") as redactor:

              # Aplica las reglas de redacción
              result = redactor.apply(redaction)

              # Guarda la versión redactada
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
    title: "Ocultar Datos en XLSX con Python"
    exclude: "XLSX"
    description: "Usa herramientas de Python para ocultar o eliminar partes sensibles de tus archivos XLSX rápida y fácilmente."
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