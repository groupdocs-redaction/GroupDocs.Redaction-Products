
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: es
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Eliminar Metadatos de EXCEL con Java"
head_description: "Protege tus documentos EXCEL limpiando metadatos ocultos utilizando GroupDocs.Redaction for Java. Mantén detalles privados a salvo de ser expuestos."

############################# Header ############################
title: "Limpiar Metadatos en Archivos EXCEL Usando Java" 
description: "Con Java, elimina datos sensibles de archivos EXCEL. Una manera inteligente de mantener tus documentos seguros."
subtitle: "Por qué Elegir GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction proporciona a los desarrolladores de Java las herramientas para controlar el contenido en archivos EXCEL. Elimina texto, metadatos e imágenes según sea necesario.

############################# Steps ############################
steps:
    enable: true
    title: "Cómo Eliminar Metadatos de Archivos Excel"
    content: |
      En Java, GroupDocs.Redaction facilita la limpieza de metadatos de documentos.
      
      1. Crea un Redactor y carga tu archivo Excel.
      2. Establece reglas para eliminar campos de datos ocultos.
      3. Ejecuta el proceso de limpieza.
      4. Guarda el documento limpio.
   
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
        // Eliminar metadatos ocultos de EXCEL

        // Inicia el redactor y abre el archivo
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Establece opciones para eliminar metadatos
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Limpia y guarda el documento
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Eliminar Contenido Sensible de Archivos"
  description: "Con GroupDocs.Redaction for Java, puedes eliminar metadatos, redactar texto y ocultar áreas de imágenes en muchos tipos de archivos. Ideal para uso legal, personal o corporativo."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Herramientas para Limpiar Metadatos y Contenido"
  features:
    # feature loop
    - title: "Buscar y Eliminar Texto"
      content: "Busca texto sensible y elimínalo para proteger la información."

    # feature loop
    - title: "Cubrir Contenido de Imagen"
      content: "Oculta secciones confidenciales de imágenes usando superposiciones."

    # feature loop
    - title: "Eliminar Metadatos"
      content: "Elimina detalles incrustados que podrían contener datos privados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Enfocarse en Campos de Metadatos Específicos"
      content: |
        Este ejemplo describe la eliminación de campos como Autor y Título de un archivo EXCEL.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carga el archivo en el redactor
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Selecciona el campo del Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Selecciona el campo del Título
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Aplica redacción
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
    title: "Limpieza de Metadatos en EXCEL Usando Java"
    exclude: "EXCEL"
    description: "Usa las herramientas de Java para eliminar datos ocultos de archivos EXCEL. Comparte documentos limpios y seguros."
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