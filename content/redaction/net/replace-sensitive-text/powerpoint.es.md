
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: es
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Eliminar texto privado de POWERPOINT usando C#"
head_description: "Mantén tus archivos POWERPOINT privados con GroupDocs.Redaction for .NET y C#. Una forma rápida y eficaz de redactar texto."

############################# Header ############################
title: "Encontrar y eliminar texto sensible en archivos POWERPOINT con .NET" 
description: "Utiliza C# y GroupDocs.Redaction for .NET para proteger tus archivos personales o laborales. Tu información privada permanece oculta."
subtitle: "Características clave de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "¿Qué es GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET proporciona a los usuarios de C# las herramientas para limpiar documentos POWERPOINT. Redacta texto, imágenes, notas y datos de fondo.

############################# Steps ############################
steps:
    enable: true
    title: "Cómo redactar archivos Powerpoint"
    content: |
      Con GroupDocs.Redaction for .NET, es sencillo encontrar y reemplazar contenido privado en aplicaciones .NET.
      
      1. Crea un Redactor y abre tu archivo Powerpoint.
      2. Elige tus configuraciones de redacción.
      3. Indica qué buscar y qué texto usar como reemplazo.
      4. Inicia la redacción y guarda tu archivo actualizado.
   
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
        // Pasos para redactar contenido en un documento POWERPOINT

        // Abre el archivo con Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Ajusta tus configuraciones de redacción
            // Selecciona qué buscar y qué reemplazar
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Ejecuta la redacción y guarda tu nuevo archivo POWERPOINT
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Más herramientas de redacción"
  description: "GroupDocs.Redaction for .NET te ofrece poderosas maneras de ocultar o eliminar información privada en muchos tipos de archivos. Ideal para compartir de manera segura."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Herramientas y configuraciones de redacción disponibles"
  features:
    # feature loop
    - title: "Intercambiar texto privado"
      content: "Busca y reemplaza coincidencias exactas con opciones de texto inteligente, incluyendo soporte para regex."

    # feature loop
    - title: "Ocultar imágenes privadas"
      content: "Cubre imágenes enteras o solo partes de una página. Puedes ajustar el color y tamaño de la superposición."

    # feature loop
    - title: "Eliminar metadatos ocultos"
      content: "Elimina información como nombres de autor, historial de ediciones y comentarios para proteger tu identidad."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Usa Regex para redacciones más inteligentes"
      content: |
        Encuentra y elimina patrones de datos como correos electrónicos o IDs con expresiones regulares.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abre el archivo que deseas limpiar
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Establece un patrón regex para EMAIL y elige el texto de reemplazo
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Ejecuta el proceso de redacción
              redactor.Apply(redaction);

              // Guarda tu archivo final redactado
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
    title: "Cómo redactar POWERPOINT con .NET"
    exclude: "POWERPOINT"
    description: "Usa .NET para limpiar archivos POWERPOINT. Mantén tu contenido privado y seguro contra filtraciones."
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