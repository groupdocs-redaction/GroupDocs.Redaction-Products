
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: es
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Eliminar Metadatos de WORD Usando C#"
head_description: "Usa GroupDocs.Redaction for .NET para encontrar y eliminar metadatos ocultos en archivos WORD. Mantén tus documentos privados y seguros de exposiciones no deseadas."

############################# Header ############################
title: "Eliminar Metadatos en Archivos WORD Usando .NET" 
description: "Protege datos personales y corporativos en archivos WORD con C#. Herramientas simples para una privacidad de archivo fiable."
subtitle: "Lo Que Puedes Hacer con GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ayuda a los desarrolladores de C# a proteger contenido en archivos WORD. Limpia texto, imágenes y metadatos rápidamente.

############################# Steps ############################
steps:
    enable: true
    title: "Eliminar Metadatos de Archivos Word"
    content: |
      Con GroupDocs.Redaction, es fácil limpiar los metadatos del documento en tu entorno .NET.
      
      1. Inicializa un objeto Redactor y abre tu documento Word.
      2. Establece reglas para eliminar todos los metadatos ocultos.
      3. Ejecuta la redacción para eliminar etiquetas sensibles.
      4. Guarda tu documento limpio.
   
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
        // Borrar metadatos de archivos WORD

        // Abre el documento usando Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Configura opciones de eliminación de metadatos
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Redacta y guarda el archivo limpio
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redactar Datos Confidenciales de Documentos"
  description: "Con GroupDocs.Redaction for .NET, puedes eliminar contenido privado de varios formatos. Mantén tus archivos seguros mientras mantienes su estructura."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Herramientas de Redacción de Metadatos y Contenido"
  features:
    # feature loop
    - title: "Reemplazar Texto Sensible"
      content: "Encuentra texto en documentos y elimínalo o cámbialo de manera segura para proteger información privada."

    # feature loop
    - title: "Cubrir Imágenes"
      content: "Cubre áreas sensibles de las imágenes con superposiciones para ocultar datos visuales."

    # feature loop
    - title: "Borrar Metadatos"
      content: "Encuentra y limpia datos ocultos para evitar filtraciones de información."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Editar o Eliminar Metadatos Ocultos"
      content: |
        Este ejemplo muestra cómo apuntar y limpiar entradas de metadatos en un documento WORD.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carga el archivo para redacción
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Elimina los metadatos de Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Elimina los metadatos del Título
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Ejecuta el proceso de redacción
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Exporta el documento limpio
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
    title: "Redacción de Metadatos en WORD con .NET"
    exclude: "WORD"
    description: "Usa .NET para limpiar metadatos ocultos de archivos WORD. Herramientas simples para mantener segura información sensible."
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