
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: es
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Eliminar texto sensible en PDF con C#"
head_description: "Protege la información privada en tus archivos PDF utilizando GroupDocs.Redaction for .NET. Busca y redacta datos sensibles rápidamente."

############################# Header ############################
title: "Eliminar texto sensible de documentos PDF usando .NET" 
description: "Utiliza C# y GroupDocs.Redaction for .NET para tener control total sobre el contenido de tus archivos PDF. Redacta datos personales, legales o confidenciales de forma efectiva."
subtitle: "Lo que puedes hacer con GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "¿Qué es GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET proporciona a los desarrolladores de C# todo lo que necesitan para redactar contenido PDF. Limpia texto, imágenes, anotaciones, comentarios y metadatos en formatos de archivo populares.

############################# Steps ############################
steps:
    enable: true
    title: "Cómo redactar contenido en archivos Pdf"
    content: |
      Protege tus documentos en cualquier aplicación .NET utilizando GroupDocs.Redaction for .NET. Redacta texto sensible de manera rápida y precisa.
      
      1. Inicializa un Redactor y carga tu archivo Pdf.
      2. Configura las opciones de redacción que necesitas.
      3. Especifica el texto a buscar y el texto de reemplazo.
      4. Ejecuta la redacción y guarda el archivo.
   
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
        // Cómo redactar texto en un archivo PDF

        // Carga tu archivo usando el constructor Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Configura tus preferencias de redacción
            // Elige qué buscar y con qué reemplazarlo
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Aplica las redacciones y guarda el nuevo archivo PDF
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Más formas de redactar documentos"
  description: "GroupDocs.Redaction for .NET ayuda a eliminar o ocultar contenido sensible en múltiples formatos de archivo. Mantén los documentos limpios y seguros para compartir."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Herramientas y opciones de redacción"
  features:
    # feature loop
    - title: "Reemplazar texto confidencial"
      content: "Busca y reemplaza texto coincidente en cualquier parte de tu archivo. Soporta opciones de regex y búsqueda inteligente."

    # feature loop
    - title: "Ocultar imágenes sensibles"
      content: "Cubre imágenes o áreas específicas con superposiciones. Ajusta configuraciones de página, colores, y más."

    # feature loop
    - title: "Eliminar metadatos ocultos"
      content: "Elimina datos ocultos como autoría, marcas de tiempo o comentarios para proteger la privacidad."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redactar texto con Regex"
      content: |
        Utiliza expresiones regulares para buscar y redactar patrones de texto sensibles como correos electrónicos o ID.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abre el documento que deseas limpiar
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Define un patrón de expresiones regulares para EMAIL y el texto que usarás como reemplazo
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Aplica las reglas de redacción
              redactor.Apply(redaction);

              // Guarda el archivo final redactado
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
    title: "Redactar contenido en PDF usando .NET"
    exclude: "PDF"
    description: "Protege datos oficiales y personales redactando texto en archivos PDF con herramientas de .NET. Mantén los documentos seguros y privados."
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