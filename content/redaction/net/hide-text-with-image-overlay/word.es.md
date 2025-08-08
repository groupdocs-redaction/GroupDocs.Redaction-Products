
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: es
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Usar Superposiciones para Ocultar Texto en WORD a través de C#"
head_description: "GroupDocs.Redaction for .NET facilita cubrir texto sensible en WORD con bloques de color. Mantenga el documento intacto mientras oculta lo que importa."

############################# Header ############################
title: "Redacción de Texto en Archivos WORD con .NET" 
description: "Proteja información importante en archivos WORD utilizando superposiciones cuadradas escritas en C#. Ideal para seguridad y cumplimiento."
subtitle: "Vea lo que GroupDocs.Redaction for .NET puede hacer" 

############################# About ############################
about:
    enable: true
    title: "Conozca GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       Los desarrolladores que trabajan con C# pueden usar GroupDocs.Redaction for .NET para ocultar o eliminar partes de documentos WORD. Oculte nombres, números u otros datos en solo unas pocas líneas de código.

############################# Steps ############################
steps:
    enable: true
    title: "Redactar datos privados en archivos Word"
    content: |
      GroupDocs.Redaction for .NET ayuda a los desarrolladores de .NET a eliminar contenido sensible rápidamente. Siga estos pasos para asegurar sus archivos.
      
      1. Inicialice un Redactor con la ruta de su archivo Word.
      2. Establezca las reglas para redactar contenido.
      3. Elija el patrón de texto y el color para cubrirlo.
      4. Aplique redacción y guarde su archivo redactado.
   
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
        // Redactar texto en WORD utilizando superposiciones de imagen

        // Cargue su archivo con el Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Defina qué necesita ser redactado
            // Agregue el texto coincidente y el color de superposición
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Ejecutar redacción y guardar el archivo final
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Herramientas de redacción extra"
  description: "Con GroupDocs.Redaction for .NET, puede mantener los archivos limpios al eliminar información visible y oculta mientras mantiene el diseño intacto."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Salida limpia y segura"
  features:
    # feature loop
    - title: "Reemplace texto expuesto"
      content: "Oculte palabras o frases que pueden filtrar datos importantes."

    # feature loop
    - title: "Cubrir imágenes"
      content: "Marque visuales sensibles con bloques sólidos."

    # feature loop
    - title: "Borrar información oculta"
      content: "Despeje los metadatos en segundo plano para mantener los archivos privados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ocultar texto coincidente con regex"
      content: |
        Esta muestra muestra cómo usar expresiones regulares para encontrar y cubrir contenido sensible
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abra el documento para redactar
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Elija patrón y color
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Ejecutar reglas de redacción
              redactor.Apply(redaction);

              // Guardar y revisar la copia redactada
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
    title: "Proteger sus Archivos WORD Usando .NET"
    exclude: "WORD"
    description: "Con .NET, puede ocultar texto o eliminar metadatos en formatos WORD sin romper el diseño o formato."
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