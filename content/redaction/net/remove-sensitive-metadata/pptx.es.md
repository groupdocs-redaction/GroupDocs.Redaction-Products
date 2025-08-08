
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: es
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Borrar Metadatos de Archivos PPTX con C#"
head_description: "GroupDocs.Redaction for .NET te ayuda a eliminar o editar metadatos en archivos PPTX. Protege tus documentos eliminando datos de fondo privados."

############################# Header ############################
title: "Eliminar Metadatos en PPTX Usando Herramientas de .NET" 
description: "Oculta metadatos sensibles en archivos PPTX usando C#. Ideal para privacidad empresarial y personal."
subtitle: "Funciones Básicas de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Conoce Más Sobre GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction es un conjunto de herramientas de redacción para desarrolladores de C#, ayudándote a trabajar con texto, imágenes y redacciones de metadatos en archivos PPTX.

############################# Steps ############################
steps:
    enable: true
    title: "Eliminar Metadatos Ocultos en Archivos Pptx"
    content: |
      GroupDocs.Redaction ayuda a tus soluciones .NET a limpiar datos ocultos fácilmente.
      
      1. Crea una instancia de Redactor y carga el archivo Pptx.
      2. Configura las reglas de redacción para campos de metadatos.
      3. Aplica la redacción para eliminar los datos.
      4. Guarda tu archivo redactado.
   
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
        // Eliminar metadatos en PPTX

        // Abre el archivo usando Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Configura la redacción para limpieza de metadatos
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Aplica y guarda el archivo
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Herramientas de Redacción Adicionales para Cualquier Archivo"
  description: "GroupDocs.Redaction for .NET admite la redacción de contenido a través de diferentes formatos. Asegúrate de que tus datos sean privados y tus archivos estén limpios."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Herramientas de Privacidad Integradas"
  features:
    # feature loop
    - title: "Encontrar y Eliminar Texto"
      content: "Elimina rápidamente entradas de texto personal de tus archivos."

    # feature loop
    - title: "Cubrir Imágenes con Superposiciones"
      content: "Oculta secciones de imágenes que no deberían ser visibles."

    # feature loop
    - title: "Eliminar Metadatos"
      content: "Limpia campos ocultos como autor, título y más para mantenerte seguro."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Limpiar Campos de Metadatos"
      content: |
        Este ejemplo muestra cómo limpiar metadatos de un archivo PPTX de manera segura.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Importa tu archivo PPTX
          using (Redactor redactor  = new Redactor("source.pptx"))
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

              // Ejecuta el proceso de redacción
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Exporta el archivo redactado
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
    title: "Limpiar Metadatos en Archivos PPTX Usando .NET"
    exclude: "PPTX"
    description: "Elimina rápidamente metadatos de fondo de archivos PPTX con .NET. Ideal para la seguridad de documentos."
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