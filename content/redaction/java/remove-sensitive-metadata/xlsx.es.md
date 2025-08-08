
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: es
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Eliminar Metadatos de XLSX Usando Java"
head_description: "GroupDocs.Redaction for Java ayuda a limpiar metadatos ocultos de archivos XLSX. Mantén tus documentos privados y libres de detalles no deseados."

############################# Header ############################
title: "Limpiar Metadatos de Archivos XLSX en Java" 
description: "Usa Java para deshacerte de detalles personales u ocultos en tus documentos XLSX. Ideal tanto para uso laboral como personal."
subtitle: "Ve lo que puedes hacer con GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction proporciona a los desarrolladores de Java las herramientas para controlar contenido en archivos XLSX. Elimina texto, metadatos e imágenes según sea necesario.

############################# Steps ############################
steps:
    enable: true
    title: "Eliminar Metadatos de Archivos Xlsx"
    content: |
      GroupDocs.Redaction ayuda a tu proyecto Java a limpiar rápidamente metadatos sensibles.
      
      1. Inicia un Redactor y abre el archivo Xlsx.
      2. Elige qué campos de metadatos eliminar.
      3. Ejecuta la redacción para borrarlos del archivo.
      4. Guarda la versión limpia.
   
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
        // Borrar metadatos ocultos en archivos XLSX

        // Abre el archivo usando Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Elige los campos de metadatos a eliminar
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Aplica redacción y guarda tu archivo
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Asegura Tus Archivos Ocultando Información Sensible"
  description: "Con GroupDocs.Redaction for Java, puedes limpiar datos personales de múltiples tipos de documentos. Una forma sencilla de mantener tus archivos seguros."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Características para Redactar Contenido"
  features:
    # feature loop
    - title: "Eliminar Texto"
      content: "Busca y elimina palabras o frases que contienen datos privados."

    # feature loop
    - title: "Cubrir Imágenes"
      content: "Oculta secciones de imágenes que contienen partes privadas o sensibles."

    # feature loop
    - title: "Borrar Metadatos"
      content: "Elimina información de fondo que podría revelar detalles personales o de negocio."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ejemplo de Eliminación de Metadatos"
      content: |
        Este ejemplo muestra cómo eliminar metadatos como Autor o Título de un archivo XLSX.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abre tu documento
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Selecciona el campo Autor para redacción
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Selecciona el campo Título para redacción
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Ejecuta la herramienta de redacción
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Guarda el resultado
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
    title: "Limpieza de Metadatos en XLSX Usando Java"
    exclude: "XLSX"
    description: "Usa las herramientas de Java para eliminar datos ocultos de archivos XLSX. Comparte documentos limpios y seguros."
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