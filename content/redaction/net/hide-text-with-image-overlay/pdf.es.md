
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
head_title: "Ocultar Texto Sensible en PDF con Superposiciones Usando C#"
head_description: "Con GroupDocs.Redaction for .NET, puede ocultar texto sensible en archivos PDF colocando superposiciones cuadradas de colores. Mantenga los datos privados seguros sin cambiar el diseño original."

############################# Header ############################
title: "Ocultar Texto Sensible en Documentos PDF con Superposiciones Usando .NET" 
description: "Tome el control del contenido de archivos PDF utilizando C#. Utilice redacciones para proteger información legal, financiera y personal."
subtitle: "Funciones de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET proporciona a los desarrolladores de C# las herramientas para ocultar o eliminar contenido de archivos PDF. Es una forma sencilla de mantener seguros los documentos. Puede cubrir texto, imágenes o metadatos en muchos tipos de archivos.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger datos comerciales en documentos Pdf"
    content: |
      GroupDocs.Redaction for .NET: diseñado para ayudar a sus aplicaciones .NET a mantener los documentos seguros. Redacte información privada rápidamente.
      
      1. Cree una instancia de Redactor y proporcione la ruta al archivo Pdf que desea redactar.
      2. Configure los ajustes de redacción para obtener el resultado deseado.
      3. Simplemente establezca el patrón de texto a buscar y elija el color de la superposición.
      4. Redacte el documento y guarde los cambios.
   
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
        // Ocultar texto sensible en PDF con imágenes de superposición

        // Pase la ruta del archivo al constructor Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Configure las opciones de redacción
            // Defina el patrón de texto y el color de la superposición
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Redacte y guarde el archivo PDF actualizado
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redactar contenido en documentos"
  description: "Con GroupDocs.Redaction for .NET, puede eliminar u ocultar contenido en muchos tipos de archivos. Proteja información sensible mientras mantiene sus documentos fáciles de leer y compartir."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Opciones de Redacción Avanzadas"
  features:
    # feature loop
    - title: "Editar texto en cualquier lugar"
      content: "Busque y reemplace cualquier texto coincidente en su documento para ayudar a asegurar datos confidenciales."

    # feature loop
    - title: "Cubrir imágenes"
      content: "Coloque superposiciones sobre imágenes completas o áreas seleccionadas para ocultar visuales privados."

    # feature loop
    - title: "Gestionar metadatos"
      content: "Borre o cambie los metadatos ocultos para prevenir filtraciones de datos no deseadas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Utilizar expresiones regulares para ocultar texto"
      content: |
        Este ejemplo muestra cómo encontrar y ocultar texto utilizando expresiones regulares
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Cargue el documento que desea redactar
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Defina los ajustes de redacción: patrón de texto y color
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Aplique redacción al contenido
              redactor.Apply(redaction);

              // Guarde la versión redactada
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
    title: "Proteger Contenido PDF con Redacciones de .NET"
    exclude: "PDF"
    description: "Utilice .NET para cubrir o borrar contenido en archivos PDF. Es una elección inteligente para mantener seguros documentos sensibles u oficiales."
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