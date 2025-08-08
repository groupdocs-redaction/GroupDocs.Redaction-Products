
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
head_title: "Ocultar Texto en XLSX con Superposiciones de C#"
head_description: "GroupDocs.Redaction for .NET ayuda a ocultar texto en archivos XLSX utilizando cajas de colores. Mantenga la información segura sin cambiar el formato de su documento."

############################# Header ############################
title: "Enmascarar Texto en Archivos XLSX Usando Superposiciones y .NET" 
description: "Utilice C# y GroupDocs.Redaction for .NET para agregar superposiciones simples que bloqueen texto sensible en sus archivos XLSX."
subtitle: "Características de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Cómo GroupDocs.Redaction for .NET Ayuda"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET permite a los desarrolladores que utilizan C# ocultar contenido no deseado en archivos XLSX. Bloquee desde palabras hasta imágenes, en diferentes tipos de archivos.

############################# Steps ############################
steps:
    enable: true
    title: "Mantener la información sensible segura en documentos Xlsx"
    content: |
      GroupDocs.Redaction for .NET ayuda a los desarrolladores de .NET a proteger archivos. Oculte contenido privado con solo unas pocas líneas de código.
      
      1. Cree un nuevo objeto Redactor con la ruta de su archivo Xlsx.
      2. Ajuste los ajustes de redacción según sea necesario.
      3. Agregue un patrón de búsqueda y elija un color para el bloque de superposición.
      4. Ejecute la redacción y guarde su archivo.
   
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
        // Cubrir texto privado en XLSX usando superposiciones

        // Cargue el archivo con Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Elija cómo funcionará la redacción
            // Ingrese texto a ocultar y seleccione color de superposición
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Procese el archivo y guarde los cambios
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Funciones de redacción inteligente"
  description: "Utilice GroupDocs.Redaction for .NET para borrar o ocultar contenido en varios tipos de archivos. Mantenga detalles privados fuera de la vista pública."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Herramientas de redacción prácticas"
  features:
    # feature loop
    - title: "Cambiar cualquier texto"
      content: "Busque y actualice cualquier cadena en el documento para proteger datos."

    # feature loop
    - title: "Ocultar contenido de imagen"
      content: "Agregue cuadrados o rectángulos para cubrir partes sensibles de imágenes."

    # feature loop
    - title: "Limpiar metadatos"
      content: "Elimine o sobrescriba detalles del archivo en segundo plano antes de compartir."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Coincidir y ocultar con regex"
      content: |
        Aprenda cómo detectar y redactar contenido utilizando expresiones regulares
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abra el documento objetivo
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Configure patrón y color de superposición
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Aplique las reglas de redacción
              redactor.Apply(redaction);

              // Exportar la versión redactada
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
    title: "Use .NET para Ocultar Información en Archivos XLSX"
    exclude: "XLSX"
    description: "Agregue superposiciones o elimine partes de sus documentos XLSX para proteger detalles sensibles con ayuda de .NET."
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