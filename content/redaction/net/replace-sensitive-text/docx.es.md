
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: es
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Eliminar texto privado de DOCX usando C#"
head_description: "Protege rápidamente el contenido privado en tus archivos DOCX con GroupDocs.Redaction for .NET y C#. Resultados rápidos y efectivos."

############################# Header ############################
title: "Encontrar y ocultar texto sensible en documentos DOCX con .NET" 
description: "Ya sea para uso personal o empresarial, GroupDocs.Redaction for .NET y C# ayudan a mantener la información privada fuera de la vista."
subtitle: "Cómo GroupDocs.Redaction for .NET te ayuda" 

############################# About ############################
about:
    enable: true
    title: "¿Qué es GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET ofrece a los desarrolladores de C# las herramientas para encontrar y limpiar contenido sensible en archivos DOCX. Funciona con texto, imágenes, notas y más.

############################# Steps ############################
steps:
    enable: true
    title: "Cómo redactar contenido en archivos Docx"
    content: |
      Sigue estos pasos sencillos en tu proyecto .NET para limpiar texto privado con GroupDocs.Redaction for .NET.
      
      1. Inicia un nuevo Redactor y carga el archivo Docx.
      2. Elige las configuraciones de redacción que desees.
      3. Ingresa el texto a buscar y con qué deseas reemplazarlo.
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
        // Redactando texto en un archivo DOCX

        // Carga tu archivo usando Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Selecciona las opciones de redacción que se adapten a tus necesidades
            // Establece lo que quieres buscar y con qué reemplazarlo
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Ejecuta la herramienta y guarda tu archivo redactado
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Más funciones de redacción"
  description: "Con GroupDocs.Redaction for .NET, es sencillo eliminar contenido oculto o visible de diferentes tipos de archivos. Perfecto para compartir de manera segura."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Descripción general de las herramientas de redacción"
  features:
    # feature loop
    - title: "Reemplazar texto privado"
      content: "Busca texto específico en cualquier parte del archivo y reemplázalo. Funciona con texto plano o patrones."

    # feature loop
    - title: "Cubrir imágenes sensibles"
      content: "Enmascara partes de una imagen o páginas completas con superposiciones. Tú controlas colores, tamaños y posiciones."

    # feature loop
    - title: "Eliminar datos ocultos"
      content: "Elimina metadatos como nombres, comentarios o marcas de tiempo para asegurarte de que no quede nada atrás."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Encontrar y redactar patrones con Regex"
      content: |
        Utiliza regex para buscar tipos de datos específicos como direcciones de correo electrónico o números de identificación y limpiarlos automáticamente.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abre el archivo que necesitas limpiar
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Crea una regla de regex para EMAIL y una cadena de reemplazo
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Ejecuta la redacción utilizando tus configuraciones
              redactor.Apply(redaction);

              // Guarda el archivo actualizado
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
    title: "Redactar datos en DOCX usando .NET"
    exclude: "DOCX"
    description: "Protege información personal u oficial ocultándola en documentos DOCX utilizando .NET. Es simple y eficaz."
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