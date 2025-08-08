
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: es
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Ocultar Texto en DOCX con Superposiciones Usando Python"
head_description: "Protege texto sensible en archivos DOCX con GroupDocs.Redaction for Python via .NET. Agrega simples superposiciones cuadradas sin cambiar tu diseño."

############################# Header ############################
title: "Ocultar Contenido en DOCX Usando Python" 
description: "Usa Python para cubrir contenido privado en archivos DOCX. Ideal para documentos legales, personales o de negocios."
subtitle: "Características Clave de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "¿Qué es GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ayuda a los desarrolladores de Python a ocultar o remover contenido privado en archivos DOCX. Puedes bloquear texto, imágenes e incluso metadatos ocultos.

############################# Steps ############################
steps:
    enable: true
    title: "Mantener Información Privada Oculta en Docx"
    content: |
      Con GroupDocs.Redaction for Python via .NET, los desarrolladores de Python via .NET pueden ocultar contenido en solo unas pocas líneas.
      
      1. Crea un Redactor y abre tu archivo.
      2. Elige tus configuraciones de redacción.
      3. Ingresa el texto a ocultar y elige un color.
      4. Aplica y guarda la versión redactada.
   
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

        # Oculta contenido en DOCX usando superposiciones

        # Configura tus opciones de redacción
        # Define el texto y el color de la superposición
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Configura el Redactor y carga tu archivo
        with gr.Redactor("input.docx") as redactor:

            # Redacta y guarda el archivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Herramientas de Redacción Adicionales"
  description: "GroupDocs.Redaction for Python via .NET admite diferentes tipos de archivos para que puedas proteger cualquier contenido sin dificultad."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Características de Redacción Integradas"
  features:
    # feature loop
    - title: "Encontrar y Editar Texto"
      content: "Busca palabras clave y oculta o reemplázalas rápidamente."

    # feature loop
    - title: "Cubrir Áreas de Imágenes"
      content: "Bloquea áreas sensibles en páginas escaneadas o fotos."

    # feature loop
    - title: "Eliminar Metadatos"
      content: "Elimina información oculta que podría exponer detalles."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Encontrar Texto con Regex y Redactar"
      content: |
        Aprende cómo usar expresiones regulares para encontrar y ocultar texto.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Establece el patrón y el color
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Abre el archivo para redactar
          with gr.Redactor("source.docx") as redactor:

              # Ejecuta el proceso de redacción
              result = redactor.apply(redaction)

              # Guarda tu documento limpio
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
    title: "Asegura Archivos DOCX con Python"
    exclude: "DOCX"
    description: "Cubre o elimina contenido sensible en documentos DOCX usando herramientas simples de Python."
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