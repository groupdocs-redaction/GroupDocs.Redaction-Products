
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: es
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Eliminar Metadatos de Archivos PPTX Usando Java"
head_description: "Utiliza GroupDocs.Redaction for Java para eliminar o editar metadatos ocultos en tus archivos PPTX. Protege tu contenido y mantén tus documentos limpios."

############################# Header ############################
title: "Limpiar Metadatos en PPTX con Herramientas Java" 
description: "Borra detalles personales que se encuentran en los metadatos usando Java. Funciona genial para documentos personales y de negocios."
subtitle: "Funciones Clave de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "¿Qué es GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction proporciona a los desarrolladores de Java herramientas para eliminar contenido privado en archivos PPTX. Elimina metadatos, oculta imágenes y limpia texto de manera eficaz.

############################# Steps ############################
steps:
    enable: true
    title: "Eliminar Metadatos en Archivos Pptx"
    content: |
      Con GroupDocs.Redaction, tus proyectos Java pueden limpiar metadatos ocultos en solo unos pasos.
      
      1. Configura un Redactor y carga tu archivo Pptx.
      2. Elige qué campos de metadatos eliminar.
      3. Ejecuta el proceso de redacción.
      4. Guarda el archivo con los metadatos eliminados.
   
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
        // Eliminar metadatos de PPTX

        // Usa Redactor para abrir el archivo
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Configura los campos de metadatos a eliminar
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Aplica los cambios y guarda
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Más Herramientas de Redacción que Puedes Usar"
  description: "GroupDocs.Redaction for Java te ayuda a eliminar información sensible de todos los tipos de archivos principales. Mantén los documentos limpios y listos para compartir."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Características de Privacidad Integradas"
  features:
    # feature loop
    - title: "Eliminar Texto Sensible"
      content: "Encuentra y elimina nombres, correos electrónicos y otra información personal de tus archivos."

    # feature loop
    - title: "Ocultar Partes de Imágenes"
      content: "Agrega superposiciones para cubrir áreas en imágenes que deseas mantener privadas."

    # feature loop
    - title: "Limpiar Metadatos"
      content: "Borra datos de fondo como autor o título antes de compartir tus archivos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ejemplo de Eliminación de Campos de Metadatos"
      content: |
        Este ejemplo muestra cómo eliminar metadatos como autor y título de un archivo PPTX.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abre tu archivo PPTX
          final Redactor redactor = new Redactor("source.pptx");
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

              // Aplica las reglas de redacción
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Guarda el archivo redactado
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
    title: "Eliminar Metadatos de PPTX con Java"
    exclude: "PPTX"
    description: "Java permite eliminar datos ocultos en archivos PPTX. Ideal para mantener documentos seguros antes de compartir."
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