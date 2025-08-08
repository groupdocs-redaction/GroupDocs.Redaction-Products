
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: es
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Ocultar Imágenes en WORD con Superposiciones Usando Java"
head_description: "Con GroupDocs.Redaction for Java, puedes cubrir imágenes sensibles en archivos WORD usando superposiciones de colores. Protege datos privados sin cambiar el diseño del documento."

############################# Header ############################
title: "Proteger Imágenes Sensibles en Archivos WORD Usando Java" 
description: "Asegura visuales personales y empresariales en documentos WORD con Java. Rápida y confiable redacción de imágenes hecha simple."
subtitle: "Principales Características de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ofrece a los desarrolladores de Java herramientas fáciles de usar para ocultar o borrar contenido de archivos WORD. Redacta texto, imágenes y metadatos en varios formatos.

############################# Steps ############################
steps:
    enable: true
    title: "Mantener Datos Confidenciales Seguros en Archivos Word"
    content: |
      GroupDocs.Redaction for Java facilita que las aplicaciones Java oculten información privada dentro de los documentos.
      
      1. Inicializa un Redactor y carga el archivo Word.
      2. Define las configuraciones de redacción que necesites.
      3. Resalta el área de la imagen y selecciona un color de superposición.
      4. Ejecuta la redacción y guarda tu documento actualizado.
   
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
        // Ocultar contenido de imagen sensible en WORD

        // Cargar el archivo usando Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Elegir color y tamaño de superposición
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Marcar el área de la imagen para cubrir
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
  title: "Herramientas para Ocultar y Eliminar Contenido"
  description: "GroupDocs.Redaction for Java te ayuda a ocultar o eliminar datos sensibles en varios formatos de archivo. Mantén tus documentos seguros y bien estructurados."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Características Efectivas de Redacción"
  features:
    # feature loop
    - title: "Buscar y Reemplazar Texto"
      content: "Busca documentos para encontrar texto privado y reemplazarlo para garantizar la seguridad de los datos."

    # feature loop
    - title: "Cubrir Áreas de Imagen"
      content: "Oculta imágenes completas o regiones seleccionadas aplicando superposiciones."

    # feature loop
    - title: "Borrar Metadatos"
      content: "Elimina o modifica metadatos ocultos para proteger información confidencial."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Usar Superposiciones para Ocultar Datos de Imagen"
      content: |
        Esta muestra muestra cómo proteger contenido sensible de imagen en documentos con superposiciones.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Cargar el documento
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Establecer propiedades de superposición como tamaño, posición y color
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Marcar el área de la imagen en la primera página
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Cubrir el área con la superposición
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
    title: "Ocultar Contenido en Archivos WORD con Java"
    exclude: "WORD"
    description: "Usa Java para ocultar o eliminar datos sensibles en archivos WORD. Una manera efectiva de mantener seguros los documentos."
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