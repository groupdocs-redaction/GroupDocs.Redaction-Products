
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: es
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Redactar Metadatos en PDF Usando C#"
head_description: "Con GroupDocs.Redaction for .NET, puedes eliminar o actualizar metadatos en archivos PDF. Limpia datos ocultos que podrían exponer información privada."

############################# Header ############################
title: "Limpia Metadatos en Archivos PDF con .NET" 
description: "Protege información comercial y personal sensible en archivos PDF usando C#. Herramientas fáciles de usar para una protección de datos fiable."
subtitle: "Características Clave de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction proporciona a los desarrolladores de C# herramientas fáciles de usar para redactar contenido en archivos PDF. Oculta texto, imágenes y metadatos en múltiples formatos.

############################# Steps ############################
steps:
    enable: true
    title: "Eliminar Metadatos de Documentos Pdf"
    content: |
      GroupDocs.Redaction permite asegurar rápidamente los metadatos del documento en tus aplicaciones .NET.
      
      1. Crea una instancia de Redactor y carga tu archivo Pdf.
      2. Configura la redacción para eliminar todos los metadatos ocultos.
      3. Aplica la redacción para limpiar el documento.
      4. Guarda el archivo actualizado.
   
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
        // Borrar metadatos de archivos PDF

        // Carga el archivo con Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Configura la eliminación de metadatos
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Aplica los cambios y guarda el archivo
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redactar Datos Sensibles en Documentos"
  description: "GroupDocs.Redaction for .NET te ayuda a ocultar o borrar contenido confidencial en varios formatos de archivo. Mantén los datos privados a salvo mientras mantienes los documentos claros y profesionales."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Características de Redacción Poderosas"
  features:
    # feature loop
    - title: "Buscar y Reemplazar Texto"
      content: "Busca texto sensible en tus documentos y reemplázalo o elimínalo para proteger la privacidad."

    # feature loop
    - title: "Ocultar Contenido de Imágenes"
      content: "Agrega superposiciones a imágenes o áreas específicas para cubrir visuales sensibles."

    # feature loop
    - title: "Limpiar Metadatos"
      content: "Elimina o edita metadatos ocultos para prevenir filtraciones no deseadas de datos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Eliminar Entradas de Metadatos Ocultos"
      content: |
        Este ejemplo muestra cómo modificar los metadatos en un archivo PDF.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carga el archivo PDF en el redactor
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Configura la redacción para la propiedad Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Configura la redacción para la propiedad Título
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Ejecuta redacción en el documento
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Guarda el archivo limpio
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
    title: "Proteger Archivos PDF con Redacción de Metadatos .NET"
    exclude: "PDF"
    description: "Usa .NET para eliminar datos ocultos de archivos PDF. Una forma simple y efectiva de asegurar información sensible en tus documentos."
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