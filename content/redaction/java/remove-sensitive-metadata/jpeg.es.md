
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: es
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Editar Metadatos en JPEG Usando Java"
head_description: "Utiliza GroupDocs.Redaction for Java para limpiar o cambiar metadatos en archivos JPEG. Protege la privacidad mediante la eliminación de datos ocultos."

############################# Header ############################
title: "Eliminar Metadatos de Archivos JPEG Usando Java" 
description: "Mantén tus documentos JPEG seguros con sencillas herramientas de Java que eliminan detalles privados."
subtitle: "Funciones Principales de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ofrece a los desarrolladores de Java las herramientas para eliminar texto no deseado, imágenes y metadatos de archivos JPEG.

############################# Steps ############################
steps:
    enable: true
    title: "Limpiar Metadatos en Documentos Jpeg"
    content: |
      GroupDocs.Redaction facilita eliminar metadatos en tus proyectos Java.
      
      1. Crea un Redactor y carga tu archivo Jpeg.
      2. Selecciona opciones para eliminar todos los campos de metadatos.
      3. Ejecuta la redacción para limpiar el archivo.
      4. Guarda el archivo actualizado sin datos ocultos.
   
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
        // Limpiar metadatos de archivos JPEG

        // Carga el archivo usando Redactor
        final Redactor redactor = new Redactor("input.jpg");
        try
        {
            // Configura la limpieza de metadatos
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Ejecuta y guarda los cambios
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Protege Tus Documentos"
  description: "GroupDocs.Redaction for Java ayuda a eliminar contenido privado de muchos tipos de documentos. Mantén información sensible fuera de los archivos que compartes."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Características Clave de Redacción"
  features:
    # feature loop
    - title: "Eliminar Texto"
      content: "Encuentra y borra palabras o frases personales de tus archivos."

    # feature loop
    - title: "Ocultar Contenido de Imagen"
      content: "Agrega superposiciones para cubrir áreas de imágenes con información sensible."

    # feature loop
    - title: "Editar Metadatos"
      content: "Limpia o cambia los campos de metadatos para evitar exponer información privada."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Eliminar Campos de Metadatos Ocultos"
      content: |
        Este ejemplo muestra cómo eliminar o editar metadatos como Autor y Título en documentos JPEG.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abre el archivo JPEG con el redactor
          final Redactor redactor = new Redactor("source.jpg");
          try
          {
              // Dirígete al metadato del Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Dirígete al metadato del Título
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Ejecuta la redacción
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
    title: "Eliminar Metadatos de JPEG Usando Java"
    exclude: "JPEG"
    description: "Utiliza Java para eliminar datos ocultos de archivos JPEG y proteger información sensible."
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