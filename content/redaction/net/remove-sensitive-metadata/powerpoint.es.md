
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: es
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Limpia los Metadatos en POWERPOINT con C#"
head_description: "Elimina metadatos no deseados de archivos POWERPOINT usando GroupDocs.Redaction for .NET. Protege tu privacidad borrando datos ocultos."

############################# Header ############################
title: "Borrar Metadatos en POWERPOINT a Través de .NET" 
description: "Protege los datos del documento en archivos POWERPOINT con herramientas simples diseñadas para C#. Elimina metadatos en solo unos pasos."
subtitle: "Características de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Más Sobre GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction es un conjunto de herramientas de redacción para desarrolladores de C#, ayudándote a trabajar con redacciones de texto, imagen y metadatos en archivos POWERPOINT.

############################# Steps ############################
steps:
    enable: true
    title: "Limpiar Metadatos de Documentos Powerpoint"
    content: |
      Con GroupDocs.Redaction, tus aplicaciones .NET pueden eliminar fácilmente los metadatos de los documentos.
      
      1. Comienza con un objeto Redactor y carga tu archivo.
      2. Elige campos de metadatos para eliminar.
      3. Aplica la configuración de redacción.
      4. Exporta el documento final y limpio.
   
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
        // Elimina metadatos en POWERPOINT

        // Abre el documento con el redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Configura opciones de limpieza de metadatos
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Aplica la redacción y guarda
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Protege Documentos con Redacción"
  description: "GroupDocs.Redaction for .NET ayuda a eliminar contenido oculto de documentos para que puedas compartirlos de manera segura. Funciona con muchos formatos y tipos de contenido."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Capacidades de Redacción"
  features:
    # feature loop
    - title: "Eliminar Texto Privado"
      content: "Encuentra palabras o frases sensibles y elimínalas de tu documento."

    # feature loop
    - title: "Cubrir Datos de Imagen"
      content: "Usa superposiciones para cubrir áreas de imágenes que deben permanecer ocultas."

    # feature loop
    - title: "Eliminar Metadatos"
      content: "Limpia campos de metadatos que podrían llevar información oculta."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Limpiar Campos de Metadatos Ocultos"
      content: |
        Este ejemplo te guía para eliminar datos incrustados como Autor y Título de un archivo POWERPOINT.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Importa el archivo al redactor
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Elimina datos del Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Elimina datos del Título
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Ejecuta la redacción
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Guarda la versión limpia
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
    title: "Limpiar Archivos POWERPOINT con .NET"
    exclude: "POWERPOINT"
    description: "Usa .NET para eliminar datos ocultos en archivos POWERPOINT. Ideal para limpiar documentos confidenciales."
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