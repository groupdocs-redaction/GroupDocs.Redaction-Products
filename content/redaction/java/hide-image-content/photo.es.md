
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: es
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Ocultar Imágenes en PHOTO con Superposiciones Usando Java"
head_description: "Usa GroupDocs.Redaction for Java para enmascarar áreas sensibles de imagen en archivos PHOTO con superposiciones. Protege contenido privado mientras mantienes intacto el diseño del archivo."

############################# Header ############################
title: "Proteger Contenido de Imagen en Archivos PHOTO con Superposiciones Usando Java" 
description: "Asegura datos de imágenes personales y de negocio en archivos PHOTO con Java. Herramientas simples diseñadas para una protección rápida y efectiva."
subtitle: "Principales Características de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Conoce GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java proporciona a los desarrolladores de Java herramientas fiables para ocultar o eliminar contenido en archivos PHOTO. Protege documentos enmascarando texto, imágenes y metadatos.

############################# Steps ############################
steps:
    enable: true
    title: "Ocultar Contenido en Archivos Photo con Superposiciones"
    content: |
      GroupDocs.Redaction for Java facilita ocultar áreas sensibles en tus aplicaciones Java.
      
      1. Inicializa un Redactor y carga tu archivo Photo.
      2. Establece preferencias de redacción según sea necesario.
      3. Selecciona regiones de imagen y elige colores de superposición.
      4. Ejecuta la redacción y guarda el archivo.
   
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
        // Cubrir secciones de imagen en PHOTO con superposiciones

        // Cargar archivo usando Redactor
        final Redactor redactor = new Redactor("input.jpeg");
        try
        {
            // Definir color y tamaño de superposición
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Marcar el área de imagen que deseas cubrir
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Aplicar superposición y guardar el resultado
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redactar Contenido Sensible con Facilidad"
  description: "GroupDocs.Redaction for Java te permite ocultar o eliminar datos privados en varios tipos de documentos. Mantén tus archivos limpios y listos para compartir."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Control Total Sobre las Redacciones"
  features:
    # feature loop
    - title: "Buscar y Reemplazar Texto"
      content: "Encuentra texto sensible en documentos y reemplázalo para proteger información."

    # feature loop
    - title: "Cubrir Áreas de Imagen"
      content: "Usa superposiciones para cubrir imágenes completas o partes seleccionadas."

    # feature loop
    - title: "Eliminar Metadatos"
      content: "Limpia metadatos ocultos para prevenir exposición accidental de datos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Enmascarar Datos de Imagen con Superposiciones"
      content: |
        Este ejemplo muestra cómo cubrir contenido de imagen con superposiciones en un documento.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Cargar documento para editar
          final Redactor redactor = new Redactor("source.jpeg");
          try
          {
              // Definir tamaño, color y posición de la superposición
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Seleccionar sección de imagen en la página uno
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Aplicar superposición para ocultar contenido
              redactor.apply(redaction);

              // Guardar el archivo editado
              SaveOptions save_options = new SaveOptions();
              save_options.setAddSuffix(true);
              save_options.setRasterizeToPDF(false);
              redactor.save(save_options);
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Asegurar Archivos PHOTO con Redacciones de Java"
    exclude: "PHOTO"
    description: "Con Java, puedes ocultar o eliminar datos sensibles en archivos PHOTO. Una forma confiable de proteger documentos oficiales."
    items: 
        # format loop 1
        - name: "Redactar PDF"
          format: "PDF"
          link: "/redaction/java/hide-image-content//pdf/"
          description: "Formato de Documento Portátil de Adobe"

        # format loop 2
        - name: "Redactar Word"
          format: "WORD"
          link: "/redaction/java/hide-image-content//word/"
          description: "Documentos de MS Word y Open Office"
          
        # format loop 3
        - name: "Redactar Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-image-content//excel/"
          description: "Hojas de cálculo de MS Excel y Open Office"

        # format loop 4
        - name: "Redactar PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-image-content//powerpoint/"
          description: "Presentaciones de MS PowerPoint y Open Office"

        # format loop 5
        - name: "Redactar Imagen"
          format: "IMAGE"
          link: "/redaction/java/hide-image-content//image/"
          description: "Formatos de imagen populares"

        # format loop 6
        - name: "Redactar Foto"
          format: "PHOTO"
          link: "/redaction/java/hide-image-content//photo/"
          description: "Formatos de foto"

        # format loop 7
        - name: "Redactar DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-image-content//docx/"
          description: "Documento XML Abierto de Microsoft Word"
          
        # format loop 8
        - name: "Redactar XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-image-content//xlsx/"
          description: "Hoja de cálculo XML Abierta de Microsoft Excel"
          
        # format loop 9
        - name: "Redactar PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-image-content//pptx/"
          description: "Presentación XML Abierta de PowerPoint"

        # format loop 10
        - name: "Redactar JPEG"
          format: "JPEG"
          link: "/redaction/java/hide-image-content//jpeg/"
          description: "Imagen JPEG"


---