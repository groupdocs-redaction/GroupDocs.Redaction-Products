
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: es
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Eliminar Metadatos Ocultos en IMAGE con C#"
head_description: "Usa GroupDocs.Redaction for .NET para limpiar metadatos en tus archivos IMAGE. Asegúrate de que los detalles privados permanezcan privados."

############################# Header ############################
title: "Borrar Metadatos en Archivos IMAGE a Través de .NET" 
description: "Mantén tus archivos IMAGE seguros usando C#. Protege datos comerciales y personales de manera sencilla."
subtitle: "Lo Que Obtienes con GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ayuda a los usuarios de C# a limpiar archivos eliminando texto no deseado, partes de imágenes y metadatos en archivos IMAGE.

############################# Steps ############################
steps:
    enable: true
    title: "Limpiar Metadatos en Archivos Image"
    content: |
      Comienza con GroupDocs.Redaction en tu aplicación .NET para limpiar los metadatos del archivo.
      
      1. Crea un Redactor y abre tu archivo Image.
      2. Elige opciones para eliminar entradas de metadatos ocultos.
      3. Aplica la configuración de redacción.
      4. Guarda el resultado.
   
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
        // Eliminar metadatos ocultos de archivos IMAGE

        // Abre el archivo con Redactor
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // Añade reglas de redacción para metadatos
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Procesa y guarda
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Limpiar Contenido en Cualquier Documento"
  description: "GroupDocs.Redaction for .NET elimina texto privado, partes de imagen o campos ocultos. Haz que los documentos sean seguros para compartir."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Características Principales"
  features:
    # feature loop
    - title: "Redacción de Texto"
      content: "Encuentra y elimina palabras y números privados."

    # feature loop
    - title: "Cubrir Imágenes"
      content: "Agrega máscaras de imagen para cubrir información visual."

    # feature loop
    - title: "Redacción de Metadatos"
      content: "Limpia campos de metadatos que podrían filtrar información."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Eliminar Metadatos Sensibles"
      content: |
        Este ejemplo explica cómo eliminar campos específicos de metadatos en un documento IMAGE.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abre IMAGE con el redactor
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // Apunta al campo Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Apunta al campo Título
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Redacta los campos
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Guarda tu documento
              var saveOptions = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(saveOptions);
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "Eliminar Metadatos de IMAGE Usando .NET"
    exclude: "IMAGE"
    description: "Elimina datos sensibles de archivos IMAGE con la redacción de .NET. Mantén tus archivos seguros para compartir o almacenar."
    items: 
        # format loop 1
        - name: "Redactar PDF"
          format: "PDF"
          link: "/redaction/net/remove-sensitive-metadata//pdf/"
          description: "Formato de Documento Portátil de Adobe"

        # format loop 2
        - name: "Redactar Word"
          format: "WORD"
          link: "/redaction/net/remove-sensitive-metadata//word/"
          description: "Documentos de MS Word y Open Office"
          
        # format loop 3
        - name: "Redactar Excel"
          format: "EXCEL"
          link: "/redaction/net/remove-sensitive-metadata//excel/"
          description: "Hojas de cálculo de MS Excel y Open Office"

        # format loop 4
        - name: "Redactar PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/remove-sensitive-metadata//powerpoint/"
          description: "Presentaciones de MS PowerPoint y Open Office"

        # format loop 5
        - name: "Redactar Imagen"
          format: "IMAGE"
          link: "/redaction/net/remove-sensitive-metadata//image/"
          description: "Formatos de imagen populares"

        # format loop 6
        - name: "Redactar Foto"
          format: "PHOTO"
          link: "/redaction/net/remove-sensitive-metadata//photo/"
          description: "Formatos de foto"

        # format loop 7
        - name: "Redactar DOCX"
          format: "DOCX"
          link: "/redaction/net/remove-sensitive-metadata//docx/"
          description: "Documento XML Abierto de Microsoft Word"
          
        # format loop 8
        - name: "Redactar XLSX"
          format: "XLSX"
          link: "/redaction/net/remove-sensitive-metadata//xlsx/"
          description: "Hoja de cálculo XML Abierta de Microsoft Excel"
          
        # format loop 9
        - name: "Redactar PPTX"
          format: "PPTX"
          link: "/redaction/net/remove-sensitive-metadata//pptx/"
          description: "Presentación XML Abierta de PowerPoint"

        # format loop 10
        - name: "Redactar JPEG"
          format: "JPEG"
          link: "/redaction/net/remove-sensitive-metadata//jpeg/"
          description: "Imagen JPEG"


---