
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: es
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Eliminar Metadatos en PHOTO con Java"
head_description: "GroupDocs.Redaction for Java te ayuda a eliminar datos ocultos de archivos PHOTO que podrían exponer detalles personales o comerciales."

############################# Header ############################
title: "Eliminar Metadatos de PHOTO con Java" 
description: "Mantén seguros tus archivos PHOTO eliminando metadatos ocultos utilizando herramientas de Java."
subtitle: "Aspectos Destacados de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction proporciona a los desarrolladores de Java herramientas para ocultar contenido sensible en archivos PHOTO, incluidas texto, secciones de imágenes y metadatos.

############################# Steps ############################
steps:
    enable: true
    title: "Cómo Eliminar Metadatos de Archivos Photo"
    content: |
      Usa GroupDocs.Redaction en tu aplicación Java para borrar metadatos de documentos.
      
      1. Inicia un Redactor y abre el archivo Photo.
      2. Establece las reglas para eliminar campos ocultos.
      3. Aplica la redacción para limpiar el archivo.
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
        // Limpiar metadatos en archivos PHOTO

        // Carga el archivo con Redactor
        final Redactor redactor = new Redactor("input.jpeg");
        try
        {
            // Elige los campos de metadatos a redaccionar
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Aplica y guarda el archivo
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Eliminar Información Privada de Documentos"
  description: "GroupDocs.Redaction for Java ayuda a limpiar archivos eliminando texto sensible, contenido de imagen y metadatos. Ideal para privacidad y seguridad."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Características Útiles de Redacción"
  features:
    # feature loop
    - title: "Limpieza de Texto"
      content: "Encuentra y elimina palabras o números que no deberían ser compartidos."

    # feature loop
    - title: "Redacción de Imágenes"
      content: "Añade cubiertas sobre partes de imágenes con contenido sensible."

    # feature loop
    - title: "Eliminación de Metadatos"
      content: "Limpia detalles del archivo que pueden contener información privada."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Eliminar Campos de Metadatos Ocultos"
      content: |
        Este ejemplo muestra cómo eliminar campos como Autor y Título de un documento PHOTO.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abre el archivo PHOTO en el redactor
          final Redactor redactor = new Redactor("source.jpeg");
          try
          {
              // Redacta el campo del Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Redacta el campo del Título
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Ejecuta el proceso
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Guarda el archivo limpio
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
    title: "Usa Java para Eliminar Metadatos de PHOTO"
    exclude: "PHOTO"
    description: "Protege tus documentos PHOTO eliminando metadatos utilizando herramientas de Java."
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