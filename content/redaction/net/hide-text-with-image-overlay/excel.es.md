
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: es
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Ocultar Contenido en EXCEL con Redacción de Superposición y C#"
head_description: "Cubra texto en documentos EXCEL utilizando bloques de color sólido con GroupDocs.Redaction for .NET. Una manera efectiva de proteger contenido privado."

############################# Header ############################
title: "Redacción de Superposición para Archivos EXCEL en .NET" 
description: "Use código C# para ocultar texto y proteger datos dentro de sus archivos EXCEL. Una solución limpia para la seguridad del documento."
subtitle: "Lo que incluye GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Por qué Elegir GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET está diseñado para desarrolladores de C# que desean redactar o eliminar contenido en archivos EXCEL. Úselo para trabajar con texto, metadatos e imágenes.

############################# Steps ############################
steps:
    enable: true
    title: "Redactar información sensible en formato Excel"
    content: |
      GroupDocs.Redaction for .NET es una herramienta sencilla para los desarrolladores de .NET que desean limpiar documentos antes de compartir.
      
      1. Inicie un Redactor y cargue su archivo Excel.
      2. Decida la configuración de redacción para su tarea.
      3. Agregue una palabra clave o frase a redactar y elija un color.
      4. Ejecute la herramienta y guarde los cambios.
   
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
        // Utilizar superposiciones para ocultar texto en EXCEL

        // Cree un Redactor y cargue su archivo
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Elija las reglas de redacción
            // Ingrese lo que debe ocultarse y elija un color
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Aplique la redacción y guarde el archivo
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Características clave para la protección de datos"
  description: "GroupDocs.Redaction for .NET le permite ocultar o eliminar datos dentro de sus documentos sin perder diseño o significado."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Diseñado para la seguridad del documento"
  features:
    # feature loop
    - title: "Cambiar contenido de texto"
      content: "Intercambiar o ocultar palabras seleccionadas a lo largo del archivo."

    # feature loop
    - title: "Redactar imágenes"
      content: "Ocultar fotos o áreas con bloques simples."

    # feature loop
    - title: "Limpiar metadatos"
      content: "Deshacerse de datos de fondo como nombres de autores o marcas de tiempo."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redacción de texto regex"
      content: |
        Aquí se muestra cómo usar regex para encontrar y ocultar contenido en un archivo
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Cargue el documento a procesar
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Agregue patrón y configuraciones de superposición
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Aplique los cambios
              redactor.Apply(redaction);

              // Guarde y cierre el documento redactado
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Redactar Archivos EXCEL con .NET"
    exclude: "EXCEL"
    description: "Cubra contenido sensible en EXCEL utilizando superposiciones cuadradas o redacciones claras con funciones de .NET."
    items: 
        # format loop 1
        - name: "Redactar PDF"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "Formato de Documento Portátil de Adobe"

        # format loop 2
        - name: "Redactar Word"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "Documentos de MS Word y Open Office"
          
        # format loop 3
        - name: "Redactar Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "Hojas de cálculo de MS Excel y Open Office"

        # format loop 4
        - name: "Redactar PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "Presentaciones de MS PowerPoint y Open Office"

        # format loop 5
        - name: "Redactar DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "Documento XML Abierto de Microsoft Word"
          
        # format loop 6
        - name: "Redactar XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "Hoja de cálculo XML Abierta de Microsoft Excel"
          
        # format loop 7
        - name: "Redactar PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "Presentación XML Abierta de PowerPoint"


---