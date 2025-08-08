
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: es
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Eliminar Metadatos en PHOTO con C#"
head_description: "GroupDocs.Redaction for .NET te ayuda a eliminar datos ocultos en archivos PHOTO que podrían revelar información personal o empresarial."

############################# Header ############################
title: "Eliminar Metadatos de PHOTO con .NET" 
description: "Protege fácilmente tus documentos eliminando información oculta de archivos PHOTO usando C#."
subtitle: "Aspectos Destacados de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ayuda a los desarrolladores de C# a ocultar contenido privado en archivos PHOTO, incluyendo texto, partes de imágenes y metadatos.

############################# Steps ############################
steps:
    enable: true
    title: "Borrar Metadatos en Archivos Photo"
    content: |
      Usa GroupDocs.Redaction en tu proyecto .NET para limpiar los metadatos del documento.
      
      1. Inicia un Redactor y abre tu archivo Photo.
      2. Establece las reglas para eliminar metadatos.
      3. Aplica la redacción y limpia el archivo.
      4. Guarda el archivo resultante.
   
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
        // Eliminar metadatos de documentos PHOTO

        // Usa Redactor para cargar el documento
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // Establece campos de metadatos para la redacción
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Limpia el documento y guarda
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Eliminar Información Privada de Archivos"
  description: "GroupDocs.Redaction for .NET te ofrece formas de eliminar datos personales de texto, imágenes y detalles del archivo. Perfecto para la seguridad de datos."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Características Útiles de Redacción"
  features:
    # feature loop
    - title: "Limpieza de Texto"
      content: "Escanea y elimina cualquier texto que no debería compartirse."

    # feature loop
    - title: "Cubrir Áreas de Imágenes"
      content: "Agrega cubiertas sobre partes de imágenes con detalles privados."

    # feature loop
    - title: "Eliminar Metadatos"
      content: "Elimina datos ocultos del archivo antes de compartir o publicar."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Eliminar Campos de Metadatos Ocultos"
      content: |
        Este ejemplo te guía para eliminar metadatos en un documento PHOTO.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carga el archivo PHOTO en el redactor
          using (Redactor redactor  = new Redactor("source.jpeg"))
          {
              // Redacta el campo Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Redacta el campo Título
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Procesa el documento
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
    title: "Usar .NET para Redactar Metadatos de PHOTO"
    exclude: "PHOTO"
    description: "Mantén tus documentos PHOTO seguros limpiando los metadatos con herramientas .NET."
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