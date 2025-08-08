
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: es
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Ocultar Texto Sensible en POWERPOINT Usando Superposiciones de Python"
head_description: "GroupDocs.Redaction for Python via .NET te ayuda a cubrir contenido privado en archivos POWERPOINT con superposiciones de color. Mantén todo en su lugar mientras ocultas lo importante."

############################# Header ############################
title: "Ocultar Texto en Presentaciones POWERPOINT con Python" 
description: "Usa Python y GroupDocs.Redaction for Python via .NET para agregar superposiciones y ocultar texto sensible en tus diapositivas POWERPOINT."
subtitle: "Lo Que Puedes Hacer con GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Aprende Más Sobre GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ayuda a los desarrolladores de Python a limpiar presentaciones POWERPOINT cubriendo o eliminando texto, imágenes e información oculta.

############################# Steps ############################
steps:
    enable: true
    title: "Redactar Información en Archivos Powerpoint"
    content: |
      Con GroupDocs.Redaction for Python via .NET, puedes preparar archivos Powerpoint para compartir usando pasos simples de redacción.
      
      1. Crea un nuevo Redactor y carga tu archivo.
      2. Elige qué ocultar y cómo aplicarlo.
      3. Agrega el patrón de búsqueda y establece un color de superposición.
      4. Aplica la redacción y guarda tu documento actualizado.
   
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

        # Cubre texto sensible en POWERPOINT usando superposiciones

        # Configura cómo funcionará la redacción
        # Elige el texto y el color para ocultarlo
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Usa Redactor para cargar tu presentación
        with gr.Redactor("input.pptx") as redactor:

            # Redacta y guarda tu archivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Fáciles Formas de Ocultar Información"
  description: "GroupDocs.Redaction for Python via .NET facilita ocultar o eliminar partes sensibles de los documentos, perfecto para uso legal, personal o empresarial."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Herramientas útiles para la privacidad"
  features:
    # feature loop
    - title: "Encontrar y Reemplazar Texto"
      content: "Busca palabras o números y oculta o cambia."

    # feature loop
    - title: "Cubrir Partes de Imágenes"
      content: "Dibuja superposiciones para ocultar imágenes completas o áreas seleccionadas."

    # feature loop
    - title: "Eliminar Información Oculta"
      content: "Elimina metadatos como nombres o marcas de tiempo que los usuarios no ven."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redactar Usando Búsqueda Regex"
      content: |
        Ve cómo las expresiones regulares te ayudan a encontrar y ocultar texto en tus diapositivas.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Define el patrón y el color de la superposición
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Abre tu archivo POWERPOINT
          with gr.Redactor("source.pptx") as redactor:

              # Ejecuta la redacción
              result = redactor.apply(redaction)

              # Guarda la versión final
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
    title: "Ocultar Texto en POWERPOINT con Python"
    exclude: "POWERPOINT"
    description: "Usa Python para agregar superposiciones o eliminar contenido de tus diapositivas POWERPOINT para mantener segura la información privada."
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