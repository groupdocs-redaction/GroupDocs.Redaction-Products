
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: es
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Editar Metadatos en JPEG Usando C#"
head_description: "Con GroupDocs.Redaction for .NET, puedes limpiar o cambiar metadatos en tus archivos JPEG. Elimina detalles ocultos que pueden contener datos privados."

############################# Header ############################
title: "Eliminar Metadatos de Archivos JPEG Usando .NET" 
description: "Protege detalles privados en tus archivos JPEG usando C#. Herramientas simples para una mejor seguridad documental."
subtitle: "Principales Características de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ayuda a los desarrolladores de C# a eliminar texto, imágenes y metadatos de archivos JPEG con herramientas simples.

############################# Steps ############################
steps:
    enable: true
    title: "Limpiar Metadatos en Documentos Jpeg"
    content: |
      GroupDocs.Redaction facilita la eliminación de metadatos en tus aplicaciones .NET.
      
      1. Configura un Redactor y carga el archivo Jpeg que deseas limpiar.
      2. Elige las configuraciones para limpiar todos los metadatos.
      3. Ejecuta la redacción para limpiar el archivo.
      4. Guarda tu archivo con metadatos limpiados.
   
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
        // Eliminar metadatos de archivos JPEG

        // Usa Redactor para cargar el archivo
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // Configura la redacción de metadatos
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Aplica y guarda
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Eliminar Datos Sensibles de Documentos"
  description: "GroupDocs.Redaction for .NET te permite ocultar o limpiar contenido privado en muchos formatos. Protege datos sensibles mientras mantienes tus archivos útiles y claros."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Características Clave de Redacción"
  features:
    # feature loop
    - title: "Buscar y Eliminar Texto"
      content: "Encuentra palabras o frases sensibles en tus archivos y elimínalas."

    # feature loop
    - title: "Cubrir Áreas de Imagen"
      content: "Usa superposiciones para ocultar partes privadas de las imágenes."

    # feature loop
    - title: "Editar Metadatos"
      content: "Elimina o cambia metadatos para evitar compartir datos privados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Limpiar Campos de Metadatos Ocultos"
      content: |
        Este ejemplo muestra cómo eliminar o editar metadatos ocultos en documentos JPEG.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abre el archivo JPEG con el redactor
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // Añade redacción para el campo Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Añade redacción para el campo Título
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
    title: "Limpiar Metadatos de JPEG con .NET"
    exclude: "JPEG"
    description: "Usa .NET para eliminar datos ocultos de tus documentos JPEG. Una gran forma de proteger detalles sensibles."
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