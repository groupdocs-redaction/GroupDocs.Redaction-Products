
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: es
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Eliminar Metadatos de POWERPOINT con Java"
head_description: "Utiliza GroupDocs.Redaction for Java para limpiar metadatos ocultos de archivos POWERPOINT y mantener tus documentos privados y seguros."

############################# Header ############################
title: "Eliminar Metadatos en POWERPOINT usando Java" 
description: "Protege tus archivos con herramientas fáciles de usar hechas para Java. Elimina metadatos en solo unos pasos."
subtitle: "Lo que Obtienes con GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "¿Qué es GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction es una herramienta de redacción para desarrolladores de Java. Te ayuda a limpiar texto, imágenes y metadatos en archivos POWERPOINT.

############################# Steps ############################
steps:
    enable: true
    title: "Cómo Limpiar Metadatos de Archivos Powerpoint"
    content: |
      Con GroupDocs.Redaction, tus aplicaciones Java pueden limpiar rápidamente metadatos de documentos.
      
      1. Crea un objeto Redactor y carga el documento.
      2. Selecciona los campos de metadatos que deseas eliminar.
      3. Aplica tus ajustes de redacción.
      4. Exporta tu documento sin los datos ocultos.
   
    code:
      platform: "java"
      copy_title: "Copiar"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redacciones de muestra"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "haz clic para copiar"
        copy_done: "copiado"
      links:
        #  loop
        - title: "Más ejemplos"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "Documentación"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // Eliminar metadatos de archivos POWERPOINT

        // Abre tu archivo con el redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Establece qué metadatos eliminar
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Limpia y guarda el archivo
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Mantén Tus Archivos Seguros con Redacción"
  description: "GroupDocs.Redaction for Java ayuda a limpiar contenido privado u oculto para que los documentos se puedan compartir de forma segura. Admite muchos tipos de archivos."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Lo que Puedes Redactar"
  features:
    # feature loop
    - title: "Eliminar Texto Sensible"
      content: "Busca y elimina palabras personales o confidenciales de tus archivos."

    # feature loop
    - title: "Ocultar Áreas de Imagen"
      content: "Cubre partes de imágenes que no deben ser vistas."

    # feature loop
    - title: "Limpiar Metadatos"
      content: "Elimina campos que pueden revelar detalles ocultos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Eliminar Campos de Metadatos Ocultos"
      content: |
        Esta muestra muestra cómo borrar información incrustada como Autor y Título de un documento POWERPOINT.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abre el archivo con el redactor
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Borra el campo del Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Borra el campo del Título
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Aplica la redacción
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Guarda el documento actualizado
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "Copiar"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "Documentación"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "¿Listo para empezar?"
  description: "Prueba las características de GroupDocs.Redaction gratis o solicita una licencia"
  items:
    #  loop
    - title: "Descarga de Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "Licenciamiento"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Limpiar Metadatos de POWERPOINT en Java"
    exclude: "POWERPOINT"
    description: "Utiliza Java para eliminar datos privados de archivos POWERPOINT. Perfecto para limpiar y compartir documentos sensibles."
    items: 
        # format loop 1
        - name: "Redactar PDF"
          format: "PDF"
          link: "/redaction/java/remove-sensitive-metadata//pdf/"
          description: "Formato de Documento Portátil de Adobe"

        # format loop 2
        - name: "Redactar Word"
          format: "WORD"
          link: "/redaction/java/remove-sensitive-metadata//word/"
          description: "Documentos de MS Word y Open Office"
          
        # format loop 3
        - name: "Redactar Excel"
          format: "EXCEL"
          link: "/redaction/java/remove-sensitive-metadata//excel/"
          description: "Hojas de cálculo de MS Excel y Open Office"

        # format loop 4
        - name: "Redactar PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/remove-sensitive-metadata//powerpoint/"
          description: "Presentaciones de MS PowerPoint y Open Office"

        # format loop 5
        - name: "Redactar Imagen"
          format: "IMAGE"
          link: "/redaction/java/remove-sensitive-metadata//image/"
          description: "Formatos de imagen populares"

        # format loop 6
        - name: "Redactar Foto"
          format: "PHOTO"
          link: "/redaction/java/remove-sensitive-metadata//photo/"
          description: "Formatos de foto"

        # format loop 7
        - name: "Redactar DOCX"
          format: "DOCX"
          link: "/redaction/java/remove-sensitive-metadata//docx/"
          description: "Documento XML Abierto de Microsoft Word"
          
        # format loop 8
        - name: "Redactar XLSX"
          format: "XLSX"
          link: "/redaction/java/remove-sensitive-metadata//xlsx/"
          description: "Hoja de cálculo XML Abierta de Microsoft Excel"
          
        # format loop 9
        - name: "Redactar PPTX"
          format: "PPTX"
          link: "/redaction/java/remove-sensitive-metadata//pptx/"
          description: "Presentación XML Abierta de PowerPoint"

        # format loop 10
        - name: "Redactar JPEG"
          format: "JPEG"
          link: "/redaction/java/remove-sensitive-metadata//jpeg/"
          description: "Imagen JPEG"


---