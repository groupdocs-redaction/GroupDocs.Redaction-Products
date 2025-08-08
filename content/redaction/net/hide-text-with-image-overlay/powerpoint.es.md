
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
head_title: "Ocultar Texto Sensible en POWERPOINT con Superposiciones de C#"
head_description: "GroupDocs.Redaction for .NET le permite ocultar partes de archivos POWERPOINT utilizando redacciones de superposición simples. Mantenga los documentos seguros sin cambiar la estructura."

############################# Header ############################
title: "Redacción de Texto en POWERPOINT con Superposiciones Usando .NET" 
description: "Proteja el contenido en sus archivos POWERPOINT colocando bloques de superposición con ayuda de C# y GroupDocs.Redaction for .NET."
subtitle: "Herramientas dentro de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Acerca de Esta Herramienta"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET ayuda a los usuarios de C# a limpiar documentos POWERPOINT cubriendo o eliminando texto, metadatos o imágenes según sea necesario.

############################# Steps ############################
steps:
    enable: true
    title: "Asegurar contenido en documentos Powerpoint"
    content: |
      Utilice GroupDocs.Redaction for .NET en sus aplicaciones .NET para limpiar archivos antes de la distribución.
      
      1. Pase la ruta del archivo a una nueva instancia de Redactor.
      2. Establezca qué y cómo desea redactar.
      3. Defina el patrón de texto y configure el color de la superposición.
      4. Redacte y guarde su archivo actualizado.
   
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
        // Superponer texto en POWERPOINT para ocultar detalles

        // Use Redactor para abrir su archivo
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Ajuste la configuración de redacción
            // Seleccione texto y un color de bloqueo
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Ejecute y guarde su archivo redactado
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ocultar datos sensibles fácilmente"
  description: "Utilice GroupDocs.Redaction for .NET para eliminar o cubrir contenido en varios tipos de documentos — ideal para proteger datos en archivos legales, empresariales o personales."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Redacción flexible de documentos"
  features:
    # feature loop
    - title: "Intercambiar texto"
      content: "Encontrar palabras o números y reemplazarlos o ocultarlos."

    # feature loop
    - title: "Redactar fotos o secciones"
      content: "Agregar superposiciones a imágenes o lugares seleccionados en una página."

    # feature loop
    - title: "Eliminar datos extra"
      content: "Limpiar metadatos que pueden revelar información oculta."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Encontrar y redactar con regex"
      content: |
        Esto muestra cómo regex puede ayudar a identificar y ocultar texto
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abra el archivo que necesita redacción
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Configure sus reglas utilizando regex
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Ejecutar proceso de redacción
              redactor.Apply(redaction);

              // Guardar la versión limpia
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
    title: "Ocultar Contenido en POWERPOINT Usando .NET"
    exclude: "POWERPOINT"
    description: "Agregar superposiciones o limpiar datos de sus archivos POWERPOINT para mantener el contenido sensible privado utilizando .NET."
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