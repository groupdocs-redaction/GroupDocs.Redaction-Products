
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: es
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Ocultar Imágenes en EXCEL con Superposiciones Usando Java"
head_description: "Usa GroupDocs.Redaction for Java para cubrir imágenes sensibles en archivos EXCEL. Agrega superposiciones de colores para proteger información privada mientras mantienes intacto el diseño del documento."

############################# Header ############################
title: "Ocultar Imágenes Sensibles en Archivos EXCEL con Superposiciones Usando Java" 
description: "Protege visuales privadas y de negocio en archivos EXCEL con Java. Herramientas rápidas y fáciles para una protección confiable de datos."
subtitle: "Descubre las Características de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ofrece a los desarrolladores de Java las herramientas para ocultar o eliminar contenido en archivos EXCEL. Cubre texto, imágenes y metadatos para proteger datos sensibles.

############################# Steps ############################
steps:
    enable: true
    title: "Asegura Tus Datos en Archivos Excel"
    content: |
      GroupDocs.Redaction for Java ayuda a las aplicaciones Java a ocultar contenido sensible dentro de documentos con facilidad.
      
      1. Crea un objeto Redactor y carga tu archivo Excel.
      2. Establece opciones de redacción según sea necesario.
      3. Elige el área de la imagen para cubrir y selecciona un color de superposición.
      4. Aplica la redacción y guarda tu documento.
   
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
        // Ocultar contenido de imagen en EXCEL

        // Abrir archivo con Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Definir tamaño y color de superposición
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Marcar el área que deseas ocultar
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Aplicar cambios y guardar el archivo
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ocultar o Eliminar Contenido en Documentos"
  description: "GroupDocs.Redaction for Java te permite cubrir o borrar datos sensibles en múltiples tipos de archivos. Mantén tus documentos limpios y seguros."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Características Avanzadas de Redacción"
  features:
    # feature loop
    - title: "Buscar y Reemplazar Texto"
      content: "Busca documentos para encontrar texto privado y reemplazarlo para mantener la seguridad de los datos."

    # feature loop
    - title: "Cubrir Áreas de Imagen"
      content: "Oculta partes de imágenes o visuales completas con superposiciones de colores."

    # feature loop
    - title: "Limpiar Metadatos"
      content: "Elimina metadatos ocultos para evitar compartir información adicional."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cubrir Datos de Imagen con Superposiciones"
      content: |
        Este ejemplo muestra cómo ocultar áreas sensibles de imagen en documentos usando superposiciones.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abrir el archivo para editar
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Establecer dimensiones, color y posición de la superposición
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Elegir la sección de imagen en la primera página
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Aplicar la superposición para ocultar los datos
              redactor.apply(redaction);

              // Guardar tu documento redactado
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
    title: "Asegurar Archivos EXCEL con Redacción de Java"
    exclude: "EXCEL"
    description: "Usa Java para ocultar o borrar información privada en archivos EXCEL. Una manera sencilla de garantizar la privacidad del documento."
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