
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: es
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Ocultar Imágenes en IMAGE con Superposiciones Usando Java"
head_description: "Usa GroupDocs.Redaction for Java para enmascarar áreas sensibles de imágenes en archivos IMAGE con superposiciones de colores. Mantén datos importantes seguros sin cambiar el diseño del documento."

############################# Header ############################
title: "Proteger Imágenes Privadas en Archivos IMAGE Usando Superposiciones con Java" 
description: "Asegura imágenes personales y empresariales en archivos IMAGE con Java. Herramientas fáciles para una protección de datos rápida y confiable."
subtitle: "Características Principales de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java otorga a los desarrolladores de Java la capacidad de ocultar o eliminar contenido en archivos IMAGE. Protege documentos enmascarando texto, imágenes y metadatos.

############################# Steps ############################
steps:
    enable: true
    title: "Asegurar Contenido en Archivos Image Usando Superposiciones"
    content: |
      Cubre rápidamente áreas sensibles en tus aplicaciones Java con GroupDocs.Redaction for Java.
      
      1. Crea un objeto Redactor y especifica la ruta de tu archivo Image.
      2. Establece las opciones de redacción según sea necesario.
      3. Marca las secciones de imagen y elige los colores de superposición.
      4. Procesa y guarda tu archivo redactado.
   
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
        // Ocultar contenido de imagen en IMAGE

        // Cargar el archivo usando Redactor
        final Redactor redactor = new Redactor("input.png");
        try
        {
            // Establecer dimensiones y colores de superposición
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Elegir el área a proteger
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Aplicar superposición y guardar archivo
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redactar Contenido Sensible en Cualquier Documento"
  description: "GroupDocs.Redaction for Java te ayuda a ocultar o eliminar contenido privado en múltiples formatos de archivo. Asegúrate de que los documentos permanezcan limpios y seguros para su distribución."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Herramientas de Redacción con Control Total"
  features:
    # feature loop
    - title: "Buscar y Reemplazar Texto"
      content: "Encuentra texto sensible en documentos y reemplázalo para proteger la información."

    # feature loop
    - title: "Cubrir Imágenes con Superposiciones"
      content: "Usa superposiciones para ocultar imágenes completas o secciones específicas."

    # feature loop
    - title: "Limpiar Metadatos"
      content: "Borrar o editar metadatos ocultos para prevenir filtraciones de datos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Enmascarar Áreas de Imagen con Superposiciones"
      content: |
        Este ejemplo de código demuestra cómo ocultar partes sensibles de imagen usando superposiciones.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abrir el archivo para editar
          final Redactor redactor = new Redactor("source.png");
          try
          {
              // Definir tamaño, color y posición de la superposición
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Seleccionar área de imagen en la página uno
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Aplicar superposición para enmascarar contenido
              redactor.apply(redaction);

              // Guardar el archivo modificado
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
    title: "Asegurar Archivos IMAGE con Redacciones de Java"
    exclude: "IMAGE"
    description: "Con Java, puedes ocultar o eliminar contenido sensible en archivos IMAGE. Una solución confiable para proteger tus documentos importantes."
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