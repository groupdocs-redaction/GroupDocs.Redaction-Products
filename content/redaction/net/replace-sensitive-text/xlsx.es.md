
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: es
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Eliminar texto privado de XLSX usando C#"
head_description: "Limpia rápidamente contenido privado de tus archivos XLSX usando GroupDocs.Redaction for .NET y C#. Redacción rápida y efectiva."

############################# Header ############################
title: "Editar u ocultar texto sensible en documentos XLSX con .NET" 
description: "Con GroupDocs.Redaction for .NET y C#, puedes eliminar información personal o empresarial de tus archivos XLSX y mantenerlos seguros para compartir."
subtitle: "Lo que puedes hacer con GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "¿Qué es GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET permite a los desarrolladores de C# buscar y eliminar información sensible de archivos XLSX. Funciona con texto, imágenes, notas y datos de archivos.

############################# Steps ############################
steps:
    enable: true
    title: "Cómo redactar texto en archivos Xlsx"
    content: |
      Utiliza GroupDocs.Redaction for .NET dentro de tu proyecto .NET para ocultar o eliminar información sensible en solo unos pocos pasos.
      
      1. Crea un Redactor y carga el archivo Xlsx.
      2. Selecciona los ajustes de redacción que se ajusten a tus necesidades.
      3. Ingresa el texto a buscar y con qué deseas reemplazarlo.
      4. Ejecuta el proceso de redacción y guarda tu archivo actualizado.
   
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
        // Redactando texto de un archivo XLSX

        // Usa Redactor para abrir el archivo
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Elige tus opciones de redacción
            // Establece el texto de búsqueda y el de reemplazo
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Aplica redacciones y guarda el archivo limpio
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Más herramientas para redactar"
  description: "GroupDocs.Redaction for .NET ayuda a limpiar diferentes tipos de contenido: texto, imágenes o metadatos, para que tus archivos estén listos para compartir de manera segura."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Opciones de redacción mostradas"
  features:
    # feature loop
    - title: "Reemplazar texto sensible"
      content: "Busca en el archivo y reemplaza cualquier cosa confidencial. Soporta texto simple y patrones."

    # feature loop
    - title: "Cubrir áreas de imágenes"
      content: "Usa superposiciones para ocultar datos visuales. Escoge el color, tamaño del área y disposición de la página."

    # feature loop
    - title: "Eliminar datos adicionales"
      content: "Elimina metadatos como nombres de autor, marcas de tiempo o notas internas para evitar filtraciones."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redactar con reglas de Regex"
      content: |
        Utiliza regex para encontrar y limpiar patrones como números de teléfono, correos electrónicos u otros detalles personales.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abre el archivo para comenzar
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Escribe una regla de regex para EMAIL y elige un reemplazo
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Ejecuta la redacción en función de tu patrón
              redactor.Apply(redaction);

              // Guarda el archivo redactado
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
    title: "Ocultar información en XLSX con .NET"
    exclude: "XLSX"
    description: "Limpia tus documentos XLSX eliminando texto personal o sensible usando herramientas de .NET. Mantén tus datos privados."
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