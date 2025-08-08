
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: es
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Cubrir Imágenes en Archivos XLSX con Superposiciones Usando Java"
head_description: "Usa GroupDocs.Redaction for Java para cubrir imágenes sensibles en archivos XLSX al agregar superposiciones de colores. Protege datos importantes mientras mantienes la estructura de tu documento sin cambios."

############################# Header ############################
title: "Cubrir Imágenes Privadas en Documentos XLSX Usando Java" 
description: "Mantén seguro el contenido de imagen sensible en archivos XLSX con Java. Nuestras herramientas fáciles de usar hacen que la redacción de imágenes sea rápida y confiable."
subtitle: "Características Clave de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java proporciona a los desarrolladores de Java herramientas simples para ocultar o eliminar contenido de archivos XLSX. Redacta texto, imágenes y metadatos en múltiples tipos de documentos.

############################# Steps ############################
steps:
    enable: true
    title: "Mantener Datos Privados Seguros en Documentos Xlsx"
    content: |
      GroupDocs.Redaction for Java ayuda a tus aplicaciones en Java a proteger documentos con pasos simples.
      
      1. Inicializa un Redactor y carga tu documento Xlsx.
      2. Establece opciones de redacción para adecuarse a tu proyecto.
      3. Selecciona la sección de imagen y elige un color de superposición.
      4. Aplica la redacción y guarda tu archivo.
   
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
        // Cubrir áreas de imagen sensibles en XLSX

        // Crear Redactor con ruta del archivo
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Elegir dimensiones y color de superposición
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Seleccionar el área a redactar
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Aplicar superposición y guardar documento
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Características Avanzadas de Redacción"
  description: "Con GroupDocs.Redaction for Java, puedes ocultar o borrar contenido sensible en varios tipos de archivos mientras mantienes limpio y legible el diseño del documento."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Herramientas de Redacción Poderosas"
  features:
    # feature loop
    - title: "Buscar y Reemplazar Texto"
      content: "Busca texto privado y redactalo para asegurar tus documentos."

    # feature loop
    - title: "Cubrir Contenido de Imágenes"
      content: "Aplica superposiciones para ocultar imágenes confidenciales o secciones específicas."

    # feature loop
    - title: "Limpiar Metadatos Ocultos"
      content: "Elimina o actualiza metadatos para evitar compartir detalles privados accidentalmente."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ocultar Detalles de Imagen Usando Superposiciones"
      content: |
        Aprende a proteger partes sensibles de imágenes en tus documentos con superposiciones.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carga el documento a redactar
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Establece tamaño, color y posición de la superposición
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Selecciona un área específica de la imagen
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Aplica la superposición para enmascarar la imagen
              redactor.apply(redaction);

              // Guarda el archivo actualizado
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
    title: "Cubrir Contenido XLSX con Redacciones de Java"
    exclude: "XLSX"
    description: "Usa Java para enmascarar o borrar contenido privado en archivos XLSX. Una opción inteligente para asegurar documentos empresariales y personales."
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