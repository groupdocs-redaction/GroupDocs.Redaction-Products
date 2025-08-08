
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: es
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Editar y Eliminar Metadatos en EXCEL a Través de C#"
head_description: "Asegura tus documentos EXCEL eliminando metadatos usando GroupDocs.Redaction for .NET. Elimina datos ocultos que podrían comprometer la privacidad."

############################# Header ############################
title: "Protección de Metadatos en Archivos EXCEL a Través de .NET" 
description: "Usando C#, puedes limpiar datos sensibles de archivos EXCEL. Herramientas diseñadas para mantener tu información protegida."
subtitle: "Principales Beneficios de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "¿Qué Es GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ofrece una forma fiable para que los desarrolladores de C# gestionen la redacción en archivos EXCEL. Funciona con texto, imágenes y metadatos.

############################# Steps ############################
steps:
    enable: true
    title: "Limpiar Metadatos en Archivos Excel"
    content: |
      Utiliza GroupDocs.Redaction en tus proyectos .NET para manejar los metadatos de documentos de manera segura.
      
      1. Crea un objeto Redactor y carga el archivo Excel objetivo.
      2. Configura la redacción para limpiar metadatos ocultos.
      3. Ejecuta el proceso de limpieza.
      4. Guarda la versión final.
   
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
        // Limpia los metadatos de EXCEL

        // Inicializa el redactor y carga el archivo
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Establece opciones de eliminación para los metadatos
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Redacta y guarda el resultado
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Borrar Datos Privados en Tus Archivos"
  description: "GroupDocs.Redaction for .NET te permite limpiar texto, imágenes y metadatos en múltiples formatos. Ideal para documentos personales, legales y corporativos."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Herramientas de Eliminación de Metadatos"
  features:
    # feature loop
    - title: "Buscar y Eliminar Texto"
      content: "Encuentra texto personal o confidencial en documentos y elimínalo de manera segura."

    # feature loop
    - title: "Ocultar Elementos Visuales"
      content: "Superpone partes de imágenes sensibles para evitar su visualización."

    # feature loop
    - title: "Eliminar Metadatos"
      content: "Elimina datos incrustados que pueden filtrar información sensible."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Apuntar Metadatos para Redacción"
      content: |
        Aprende a localizar y eliminar metadatos como Autor o Título de un documento EXCEL.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Importa el documento al redactor
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

              // Aplica cambios
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Guarda el documento actualizado
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
    title: "Eliminar Metadatos en EXCEL Usando .NET"
    exclude: "EXCEL"
    description: "Deshazte de metadatos privados en archivos EXCEL con .NET. Mantén tus documentos limpios y seguros."
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