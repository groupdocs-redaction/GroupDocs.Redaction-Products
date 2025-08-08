
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: es
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Cubrir Imágenes en JPEG con Superposiciones Usando Java"
head_description: "Mantén sensibles imágenes privadas en archivos JPEG con GroupDocs.Redaction for Java. Agrega superposiciones para ocultar información sin cambiar el diseño de tu documento."

############################# Header ############################
title: "Ocultar Imágenes Sensibles en Archivos JPEG con Superposiciones Usando Java" 
description: "Protege imágenes personales y de negocio en archivos JPEG usando Java. Herramientas simples para ayudarte a asegurar tus documentos."
subtitle: "Características Principales de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "¿Qué es GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java proporciona a los desarrolladores de Java herramientas para ocultar o eliminar contenido en archivos JPEG. Asegura tus documentos cubriendo texto, imágenes y metadatos fácilmente.

############################# Steps ############################
steps:
    enable: true
    title: "Ocultar Datos Privados en Archivos Jpeg"
    content: |
      GroupDocs.Redaction for Java hace rápido que tus aplicaciones Java cubran contenido privado.
      
      1. Inicializa un Redactor y carga tu archivo Jpeg.
      2. Ajusta las configuraciones de redacción para que se adapten a tus necesidades.
      3. Selecciona el área de la imagen y elige un color de superposición.
      4. Aplica la redacción y guarda el archivo.
   
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
        // Enmascarar datos de imagen en archivos JPEG

        // Abrir el archivo usando Redactor
        final Redactor redactor = new Redactor("input.jpg");
        try
        {
            // Establecer tamaño y color de superposición
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Seleccionar área a cubrir
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Aplicar superposición y guardar cambios
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ocultar Datos Sensibles en Documentos"
  description: "GroupDocs.Redaction for Java te ayuda a ocultar o eliminar contenido privado de múltiples tipos de archivos. Asegúrate de que tus documentos permanezcan limpios y listos para compartir."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Características de Redacción Todo en Uno"
  features:
    # feature loop
    - title: "Buscar y Reemplazar Texto"
      content: "Busca en tus documentos texto privado y reemplázalo para proteger datos sensibles."

    # feature loop
    - title: "Cubrir Contenido de Imagen"
      content: "Usa superposiciones para ocultar imágenes completas o partes seleccionadas para mantener visuales privadas."

    # feature loop
    - title: "Eliminar Metadatos"
      content: "Borra metadatos ocultos para evitar la exposición accidental de información sensible."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Usar Superposiciones para Ocultar Contenido de Imagen"
      content: |
        Este ejemplo muestra cómo proteger áreas sensibles de imagen en documentos usando superposiciones.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Cargar el archivo para redacción
          final Redactor redactor = new Redactor("source.jpg");
          try
          {
              // Establecer tamaño, posición y color de la superposición
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Seleccionar un área de imagen en la primera página
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Aplicar superposición para ocultar la imagen
              redactor.apply(redaction);

              // Guardar el archivo actualizado
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
    title: "Asegurar Archivos JPEG con Redacciones de Java"
    exclude: "JPEG"
    description: "Usa Java para ocultar o eliminar datos sensibles en archivos JPEG. Una solución confiable para proteger tus documentos importantes."
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