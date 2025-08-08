
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: es
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Limpia los Metadatos en Archivos XLSX con C#"
head_description: "Con GroupDocs.Redaction for .NET, puedes eliminar de forma segura los metadatos de archivos XLSX. Limpia la información oculta que podría revelar datos privados."

############################# Header ############################
title: "Borrar Metadatos de Archivos XLSX Usando .NET" 
description: "Protege detalles sensibles en tus archivos XLSX con C#. Redacción simple para documentos personales y laborales."
subtitle: "Explora Lo Que Puede Hacer GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Conoce Sobre GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction proporciona a los desarrolladores de C# herramientas para limpiar contenido en documentos XLSX. Oculta o elimina texto, imágenes y metadatos con rapidez.

############################# Steps ############################
steps:
    enable: true
    title: "Limpiar Metadatos en Archivos Xlsx"
    content: |
      Con GroupDocs.Redaction, tus aplicaciones .NET pueden eliminar rápidamente datos ocultos.
      
      1. Configura un Redactor y abre tu archivo Xlsx.
      2. Define qué metadatos deseas borrar.
      3. Aplica las reglas de redacción.
      4. Guarda el archivo final.
   
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
        // Limpia los metadatos ocultos en XLSX

        // Abre el archivo con Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Configura qué metadatos eliminar
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Aplica la redacción y guarda
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Protege Información Sensible en Documentos"
  description: "Usa GroupDocs.Redaction for .NET para borrar o ocultar contenido en muchos formatos de archivo. Mantén los archivos privados y listos para compartir."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Características de Redacción Todo en Uno"
  features:
    # feature loop
    - title: "Reemplazar o Eliminar Texto"
      content: "Protege los datos personales al encontrar y eliminar texto sensible."

    # feature loop
    - title: "Ocultar Secciones de Imágenes"
      content: "Usa superposiciones para bloquear áreas de imágenes con visuales privadas."

    # feature loop
    - title: "Eliminar Metadatos"
      content: "Limpia campos de metadatos ocultos que pueden tener detalles personales o comerciales."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cómo Eliminar Metadatos"
      content: |
        Este código de muestra elimina propiedades de metadatos en un documento XLSX.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abre el documento
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Apunta a los metadatos del Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Apunta a los metadatos del Título
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Ejecuta el proceso de redacción
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Guarda el documento limpio
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
    title: "Redactar Metadatos en XLSX Usando .NET"
    exclude: "XLSX"
    description: ".NET facilita la limpieza de metadatos de archivos XLSX. Mantén tus archivos limpios y seguros."
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