
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: es
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Ocultar Contenido en EXCEL Usando Superposiciones de Python"
head_description: "Con GroupDocs.Redaction for Python via .NET, puedes cubrir texto en archivos EXCEL utilizando superposiciones de color sólido. Una forma sencilla de proteger contenido privado."

############################# Header ############################
title: "Ocultación de Texto para EXCEL en Python" 
description: "Escribe código en Python para ocultar texto y asegurar información en tus archivos EXCEL. Mantén tus documentos seguros y limpios."
subtitle: "Lo Que Obtienes con GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Por Qué Usar GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET está diseñado para desarrolladores Python que necesitan ocultar o eliminar contenido en archivos EXCEL. Trabaja con texto, imágenes y metadatos de manera sencilla.

############################# Steps ############################
steps:
    enable: true
    title: "Ocultar Datos Sensibles en Excel"
    content: |
      GroupDocs.Redaction for Python via .NET facilita a los desarrolladores de Python via .NET preparar documentos antes de compartir.
      
      1. Crea un Redactor y abre tu archivo Excel.
      2. Elige las configuraciones de redacción que se adapten a tu tarea.
      3. Ingresa el texto o frase a cubrir y elige un color.
      4. Aplica la redacción y guarda el archivo.
   
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

        # Usa superposiciones para ocultar texto en EXCEL

        # Elige tus configuraciones de redacción
        # Selecciona qué ocultar y un color para usar
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Comienza cargando tu archivo con Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Aplica cambios y guarda el archivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Herramientas Útiles para Redactar Datos"
  description: "GroupDocs.Redaction for Python via .NET te permite ocultar o eliminar datos en documentos manteniendo el diseño y contenido claros."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Construido para proteger tus archivos"
  features:
    # feature loop
    - title: "Ocultar o Cambiar Texto"
      content: "Encuentra y reemplaza cualquier parte del texto que necesita ser oculta."

    # feature loop
    - title: "Cubrir Imágenes y Visuales"
      content: "Agrega superposiciones para eliminar partes sensibles de fotos o gráficos."

    # feature loop
    - title: "Limpiar Metadatos Ocultos"
      content: "Elimina información de fondo como nombres de autores o marcas de tiempo."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redactar Usando Regex"
      content: |
        Aprende a usar patrones regex para encontrar y ocultar contenido.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Agrega el patrón regex y la configuración de color
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Abre el archivo que deseas limpiar
          with gr.Redactor("source.xslx") as redactor:

              # Aplica la redacción
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
    title: "Protege EXCEL con Redacciones de Python"
    exclude: "EXCEL"
    description: "Oculta contenido en EXCEL usando superposiciones cuadradas o elimínalo completamente con funciones de Python."
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