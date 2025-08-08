
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: es
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Eliminar texto privado de PPTX usando C#"
head_description: "Oculta rápidamente contenido privado en tus presentaciones PPTX con GroupDocs.Redaction for .NET y C#. Redacción rápida y configuración simple."

############################# Header ############################
title: "Editar u ocultar texto sensible en documentos PPTX con .NET" 
description: "Mantén tus presentaciones limpias y privadas. Utiliza GroupDocs.Redaction for .NET y C# para eliminar cualquier cosa que no desees compartir."
subtitle: "Lo que puedes hacer con GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "¿Qué es GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET proporciona a los desarrolladores de C# las herramientas necesarias para eliminar contenido sensible de archivos PPTX. Maneja texto, visuales, comentarios y metadatos.

############################# Steps ############################
steps:
    enable: true
    title: "Pasos para limpiar presentaciones Pptx"
    content: |
      Utiliza GroupDocs.Redaction for .NET en tu aplicación .NET para eliminar o cubrir contenido sensible en solo unos pocos pasos.
      
      1. Inicia un nuevo Redactor y carga tu archivo Pptx.
      2. Elige las reglas de redacción que deseas aplicar.
      3. Establece el texto a buscar y con qué reemplazarlo.
      4. Ejecuta la redacción y guarda tu archivo.
   
    code:
      platform: "net"
      copy_title: "Copiar"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redacciones de muestra"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "haz clic para copiar"
        copy_done: "copiado"
      links:
        #  loop
        - title: "Más ejemplos"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "Documentación"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // Redactando una presentación PPTX

        // Abre el archivo con Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Elige las configuraciones de redacción
            // Selecciona el texto a buscar y reemplazar
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Aplica los cambios y guarda el archivo actualizado
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Funciones de redacción que puedes usar"
  description: "GroupDocs.Redaction for .NET te ayuda a encontrar y ocultar texto sensible, imágenes y datos ocultos a través de múltiples tipos de archivos. Perfecto para compartir archivos de manera segura."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Opciones de redacción disponibles"
  features:
    # feature loop
    - title: "Reemplazar texto oculto"
      content: "Busca y reemplaza palabras o frases privadas en cualquier parte del archivo. También se soporta regex."

    # feature loop
    - title: "Cubrir imágenes"
      content: "Usa bloques para ocultar imágenes o áreas que deseas enmascarar. Controla forma, tamaño y color."

    # feature loop
    - title: "Eliminar detalles ocultos"
      content: "Limpia metadatos como nombres de autor, fechas de última edición o comentarios para que tu archivo quede limpio."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redactar usando patrones Regex"
      content: |
        Encuentra y limpia datos como direcciones de correo electrónico o IDs utilizando regex. Ideal para redacciones repetibles.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abre tu archivo
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Escribe un patrón regex para EMAIL y establece el reemplazo
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Aplica tus configuraciones de redacción
              redactor.Apply(redaction);

              // Guarda la versión redactada
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
          }
          ```
        platform: "net"
        copy_title: "Copiar"
        install:
          command: "dotnet add package GroupDocs.Redaction"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "Documentación"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "¿Listo para empezar?"
  description: "Prueba las características de GroupDocs.Redaction gratis o solicita una licencia"
  items:
    #  loop
    - title: "Descarga de Nuget"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "Licenciamiento"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Cómo limpiar archivos PPTX con .NET"
    exclude: "PPTX"
    description: "Utiliza .NET para limpiar archivos PPTX. Mantén tu contenido privado y a salvo de filtraciones."
    items: 
        # format loop 1
        - name: "Redactar PDF"
          format: "PDF"
          link: "/redaction/net/replace-sensitive-text//pdf/"
          description: "Formato de Documento Portátil de Adobe"

        # format loop 2
        - name: "Redactar Word"
          format: "WORD"
          link: "/redaction/net/replace-sensitive-text//word/"
          description: "Documentos de MS Word y Open Office"
          
        # format loop 3
        - name: "Redactar Excel"
          format: "EXCEL"
          link: "/redaction/net/replace-sensitive-text//excel/"
          description: "Hojas de cálculo de MS Excel y Open Office"

        # format loop 4
        - name: "Redactar PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/replace-sensitive-text//powerpoint/"
          description: "Presentaciones de MS PowerPoint y Open Office"

        # format loop 5
        - name: "Redactar DOCX"
          format: "DOCX"
          link: "/redaction/net/replace-sensitive-text//docx/"
          description: "Documento XML Abierto de Microsoft Word"
          
        # format loop 6
        - name: "Redactar XLSX"
          format: "XLSX"
          link: "/redaction/net/replace-sensitive-text//xlsx/"
          description: "Hoja de cálculo XML Abierta de Microsoft Excel"
          
        # format loop 7
        - name: "Redactar PPTX"
          format: "PPTX"
          link: "/redaction/net/replace-sensitive-text//pptx/"
          description: "Presentación XML Abierta de PowerPoint"


---