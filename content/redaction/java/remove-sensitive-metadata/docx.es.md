
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: es
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Eliminar Metadatos de DOCX con Java"
head_description: "Utiliza GroupDocs.Redaction for Java para limpiar metadatos ocultos en tus archivos DOCX. Asegúrate de que tus documentos no revelen información privada."

############################# Header ############################
title: "Limpiar Metadatos en Documentos DOCX Usando Java" 
description: "Elimina metadatos no deseados de tus archivos DOCX con Java. Mantén tus archivos privados y seguros para compartir o almacenar."
subtitle: "Herramientas Clave Dentro de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "¿Qué es GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ayuda a los desarrolladores de Java a eliminar contenido privado de archivos DOCX. Redacta fácilmente texto, imágenes y metadatos.

############################# Steps ############################
steps:
    enable: true
    title: "Borrar Información Oculta de Archivos Docx"
    content: |
      GroupDocs.Redaction facilita eliminar metadatos en tus aplicaciones Java.
      
      1. Inicializa Redactor y carga el archivo Docx.
      2. Configura la herramienta para eliminar campos de metadatos específicos.
      3. Aplica redacción para borrar la información oculta.
      4. Guarda el archivo actualizado.
   
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
        // Eliminar metadatos de archivos DOCX

        // Abre el archivo con Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Elige qué metadatos eliminar
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Aplica y guarda los cambios
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Proteger Datos Sensibles en Documentos"
  description: "GroupDocs.Redaction for Java te permite ocultar contenido privado de todos los tipos de archivos. Asegúrate de que no se comparta información oculta."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Herramientas de Redacción de Metadatos, Texto e Imágenes"
  features:
    # feature loop
    - title: "Redacción de Texto"
      content: "Encuentra y elimina texto sensible en todo el documento."

    # feature loop
    - title: "Superposiciones de Imágenes"
      content: "Cubre partes de imágenes para ocultar visuales privados."

    # feature loop
    - title: "Limpieza de Metadatos"
      content: "Elimina metadatos de fondo que pueden revelar información oculta."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cómo Eliminar Metadatos"
      content: |
        Este ejemplo muestra cómo eliminar propiedades ocultas como Autor y Título de un archivo DOCX.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abre tu documento DOCX
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Selecciona el campo de Autor para limpiar
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Selecciona el campo de Título para limpiar
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Ejecuta la redacción
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Guarda el archivo final
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
    title: "Limpiar Metadatos de DOCX con Java"
    exclude: "DOCX"
    description: "Usa Java para eliminar metadatos ocultos de documentos DOCX. Ideal para privacidad y protección de datos."
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