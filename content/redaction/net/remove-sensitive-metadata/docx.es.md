
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: es
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Eliminar Metadatos de DOCX Usando C#"
head_description: "Usa GroupDocs.Redaction for .NET para eliminar o cambiar metadatos ocultos en archivos DOCX. Protege tus documentos de exponer detalles privados."

############################# Header ############################
title: "Eliminar Metadatos en Archivos DOCX con .NET" 
description: "Utiliza C# para limpiar metadatos sensibles de archivos DOCX. Mantén tus datos comerciales y personales protegidos."
subtitle: "Principales Características de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "¿Qué es GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction proporciona a los desarrolladores de C# herramientas para ocultar o eliminar contenido en archivos DOCX. Limpia texto, imágenes y metadatos rápidamente.

############################# Steps ############################
steps:
    enable: true
    title: "Limpiar Datos Ocultos en Archivos Docx"
    content: |
      GroupDocs.Redaction ayuda a tus proyectos .NET a eliminar metadatos no deseados rápidamente.
      
      1. Crea una instancia de Redactor y abre tu archivo Docx.
      2. Configura la redacción para apuntar a las entradas de metadatos.
      3. Aplica cambios para limpiar el documento.
      4. Guarda el archivo limpio.
   
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
        // Borrar metadatos de documentos DOCX

        // Carga el archivo usando Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Configura las opciones de eliminación de metadatos
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Aplica y guarda los cambios
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ocultar Información Sensible en Cualquier Documento"
  description: "GroupDocs.Redaction for .NET te permite limpiar contenido sensible en muchos tipos de archivos. Haz que tus documentos sean más seguros para compartir o almacenar."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Opciones de Redacción Inteligentes"
  features:
    # feature loop
    - title: "Eliminar Texto Privado"
      content: "Busca y borra texto personal o comercial de tus archivos."

    # feature loop
    - title: "Ocultar Imágenes"
      content: "Cubre imágenes o áreas seleccionadas para ocultar contenido confidencial."

    # feature loop
    - title: "Borrar Metadatos"
      content: "Limpia entradas de metadatos ocultas para evitar filtraciones de detalles de fondo."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Limpiar Campos de Metadatos"
      content: |
        Este ejemplo demuestra cómo eliminar datos ocultos de archivos DOCX.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carga tu archivo DOCX
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Apunta al campo Autor para eliminación
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Apunta al campo Título para eliminación
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Ejecuta el proceso de redacción
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Guarda tu archivo actualizado
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
    title: "Eliminar Metadatos en DOCX con .NET"
    exclude: "DOCX"
    description: "Elimina metadatos no deseados en archivos DOCX usando .NET. Una forma simple de proteger los detalles ocultos de tu archivo."
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