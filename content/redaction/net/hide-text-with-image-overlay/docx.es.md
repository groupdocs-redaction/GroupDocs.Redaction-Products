
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
head_title: "Cubrir Texto Sensible en DOCX Usando Superposiciones y C#"
head_description: "Utilice GroupDocs.Redaction for .NET para proteger texto privado en archivos DOCX con simples superposiciones cuadradas. Mantenga el diseño de su documento sin cambios y sus datos ocultos."

############################# Header ############################
title: "Cubrir Texto en DOCX con Superposiciones Usando .NET" 
description: "Oculte contenido sensible en sus documentos DOCX utilizando código C#. Ideal para protección de documentos legales, empresariales o personales."
subtitle: "Funciones de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "¿Qué es GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET ayuda a los desarrolladores de C# a ocultar o eliminar contenido privado en archivos DOCX. Úselo para bloquear texto, imágenes y metadatos en diferentes formatos de archivo.

############################# Steps ############################
steps:
    enable: true
    title: "Eliminar datos privados de documentos Docx"
    content: |
      GroupDocs.Redaction for .NET ayuda a los desarrolladores de .NET a limpiar documentos con solo unas pocas líneas de código.
      
      1. Cree un Redactor y proporcione la ruta de su archivo.
      2. Defina cómo debe funcionar la redacción.
      3. Ingrese el texto a ocultar y elija el color de la superposición.
      4. Redacte el archivo y guárdelo.
   
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
        // Ocultar texto en DOCX usando bloques de superposición

        // Cree un Redactor y cargue el archivo
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Establezca sus preferencias de redacción
            // Ingrese el texto y establezca el color del bloque
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Redacte y guarde el documento actualizado
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Más formas de limpiar documentos"
  description: "Con GroupDocs.Redaction for .NET, redacte diferentes tipos de archivos para mantener su contenido seguro y profesional."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Redacción inteligente incorporada"
  features:
    # feature loop
    - title: "Editar o eliminar texto"
      content: "Encuentre frases específicas y oculte o reemplácelas."

    # feature loop
    - title: "Ocultar áreas de imagen"
      content: "Cubrir puntos sensibles en imágenes o páginas escaneadas."

    # feature loop
    - title: "Eliminar metadatos ocultos"
      content: "Borrar información invisible que puede exponer datos del usuario o del sistema."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex para redactar contenido"
      content: |
        Vea cómo las expresiones regulares pueden encontrar y ocultar palabras sensibles
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abra el archivo objetivo
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Establezca patrón y color
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Aplique la lógica de redacción
              redactor.Apply(redaction);

              // Exportar el documento redactado
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
    title: "Ocultar Contenido en DOCX con .NET"
    exclude: "DOCX"
    description: "Proteja datos sensibles en documentos DOCX cubriéndolos con superposiciones o eliminándolos completamente utilizando herramientas de .NET."
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