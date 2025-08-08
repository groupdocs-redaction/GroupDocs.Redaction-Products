
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: es
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Eliminar Metadatos de WORD Usando Java"
head_description: "Con GroupDocs.Redaction for Java, puedes eliminar rápidamente metadatos ocultos de archivos WORD. Mantén tus documentos seguros y privados."

############################# Header ############################
title: "Limpiar Metadatos Ocultos en Archivos WORD con Java" 
description: "Protege tus archivos WORD eliminando información privada utilizando herramientas de Java. Ideal para uso empresarial y personal."
subtitle: "Cómo GroupDocs.Redaction for Java Te Ayuda" 

############################# About ############################
about:
    enable: true
    title: "Conoce GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ofrece a los desarrolladores de Java todo lo que necesitan para eliminar datos de archivos WORD. Limpia metadatos, texto e imágenes de forma eficiente.

############################# Steps ############################
steps:
    enable: true
    title: "Eliminar Metadatos en Archivos Word"
    content: |
      Usa GroupDocs.Redaction para limpiar metadatos de documentos en tus aplicaciones Java.
      
      1. Inicia un objeto Redactor y carga tu archivo Word.
      2. Define reglas para eliminar campos de metadatos ocultos.
      3. Aplica redacción para borrar metadatos.
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
        // Eliminar metadatos ocultos de WORD

        // Carga el archivo con Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Configura los ajustes de redacción de metadatos
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Ejecuta redacción y guarda
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Más Herramientas para Eliminar Información Privada"
  description: "Usa GroupDocs.Redaction for Java para limpiar texto, imágenes y metadatos de muchos formatos de archivo. Comparte tus archivos sin exponer datos sensibles."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Características de Redacción de Metadatos y Contenido"
  features:
    # feature loop
    - title: "Eliminar Texto Privado"
      content: "Busca contenido sensible en archivos y elimínalo o cámbialo según sea necesario."

    # feature loop
    - title: "Cubrir Áreas de Imagen"
      content: "Oculta partes específicas de imágenes que puedan contener detalles privados."

    # feature loop
    - title: "Eliminar Campos de Metadatos"
      content: "Borra etiquetas ocultas como autor, título, y más para asegurar la privacidad."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Limpiar Campos de Metadatos en Documentos"
      content: |
        Esta muestra explica cómo borrar metadatos como Autor y Título en un archivo WORD.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carga el archivo para procesamiento
          final Redactor redactor = new Redactor("source.docx");
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

              // Realiza la redacción
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
    title: "Borrar Metadatos en WORD con Java"
    exclude: "WORD"
    description: "Java te permite limpiar metadatos ocultos de archivos WORD. Una forma simple de proteger tus documentos."
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