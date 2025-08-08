
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: es
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Ocultar Imágenes en DOCX con Superposiciones Usando Java"
head_description: "Con GroupDocs.Redaction for Java, puedes ocultar imágenes sensibles en archivos DOCX aplicando superposiciones de colores. Protege la información privada sin cambiar el diseño de tu documento."

############################# Header ############################
title: "Ocultar Imágenes Confidenciales en Documentos DOCX con Superposiciones Usando Java" 
description: "Protege datos empresariales y personales en archivos DOCX usando Java. Nuestras herramientas te ayudan a mantener la información sensible segura y tus documentos limpios."
subtitle: "Características Clave de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ofrece a los desarrolladores de Java las herramientas para ocultar o borrar contenido en archivos DOCX. Protege texto, imágenes y metadatos en varios formatos de documentos.

############################# Steps ############################
steps:
    enable: true
    title: "Asegurar Datos en Documentos Docx"
    content: |
      GroupDocs.Redaction for Java otorga a tus aplicaciones en Java el poder de redactar documentos. Cubre contenido privado de forma rápida y eficiente.
      
      1. Crea un Redactor y establece la ruta del archivo a tu documento Docx.
      2. Ajusta las configuraciones de redacción según tus necesidades.
      3. Selecciona el área de la imagen que deseas cubrir y elige un color de superposición.
      4. Ejecuta el proceso de redacción y guarda el archivo.
   
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
        // Ocultar secciones de imagen sensibles en DOCX

        // Cargar documento usando Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Establecer color y dimensiones de la superposición
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Marcar el área a ser redactada
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Aplicar superposición y guardar el archivo
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ocultar Contenido Sensible en Archivos"
  description: "Con GroupDocs.Redaction for Java, puedes redactar o eliminar contenido de múltiples tipos de archivos. Mantén tus documentos seguros y legibles."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Características de Redacción para Documentos"
  features:
    # feature loop
    - title: "Editar Contenido de Texto"
      content: "Busca y reemplaza texto sensible en tus archivos para mantener la privacidad de los datos."

    # feature loop
    - title: "Aplicar Superposiciones a Imágenes"
      content: "Cubre imágenes completas o partes seleccionadas para ocultar información visual confidencial."

    # feature loop
    - title: "Eliminar Metadatos"
      content: "Limpia metadatos ocultos de documentos para evitar exposición de datos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Aplicar Superposiciones para Ocultar Datos Sensibles"
      content: |
        Este ejemplo muestra cómo aplicar superposiciones para cubrir áreas de imágenes confidenciales en documentos.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abrir el documento para editar
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Establecer tamaño, color y posición de la superposición
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Seleccionar un área objetivo en la página uno
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Aplicar la superposición para cubrir la imagen
              redactor.apply(redaction);

              // Guardar el documento redactado
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
    title: "Redactar Archivos DOCX con Java"
    exclude: "DOCX"
    description: "Usa Java para ocultar o eliminar datos privados en archivos DOCX. Perfecto para mantener seguros documentos empresariales y confidenciales."
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