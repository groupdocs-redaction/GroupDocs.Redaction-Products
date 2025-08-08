
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: es
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Cubrir Imágenes Sensibles en POWERPOINT con Superposiciones Usando Java"
head_description: "Oculta contenido de imagen privado en archivos POWERPOINT con GroupDocs.Redaction for Java. Agrega superposiciones para mantener documentos seguros sin afectar el diseño."

############################# Header ############################
title: "Proteger Imágenes Privadas en Documentos POWERPOINT con Superposiciones Usando Java" 
description: "Mantén seguros los visuales personales y de empresa en archivos POWERPOINT con Java. Herramientas fáciles de usar para una sólida protección de la privacidad."
subtitle: "Características Clave de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java permite a los desarrolladores de Java ocultar o borrar contenido en archivos POWERPOINT. Asegura tus documentos enmascarando texto, imágenes y metadatos.

############################# Steps ############################
steps:
    enable: true
    title: "Ocultar Datos Sensibles en Documentos Powerpoint"
    content: |
      GroupDocs.Redaction for Java ayuda a tus aplicaciones Java a ocultar contenido privado en documentos de manera rápida.
      
      1. Crea un objeto Redactor y carga el archivo Powerpoint.
      2. Establece preferencias de redacción para la tarea.
      3. Elige el área de la imagen y selecciona el color de superposición.
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
        // Ocultar datos de imagen en archivos POWERPOINT

        // Abrir el archivo con Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Establecer color y tamaño de superposición
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Seleccionar el área para enmascarar
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
  description: "GroupDocs.Redaction for Java te ayuda a cubrir o eliminar contenido privado a través de diferentes formatos de documento. Mantén archivos seguros para compartir y almacenar."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Herramientas de Redacción para Cada Necesidad"
  features:
    # feature loop
    - title: "Buscar y Reemplazar Texto"
      content: "Encuentra palabras sensibles y reemplázalas para asegurar la privacidad de los datos."

    # feature loop
    - title: "Cubrir Áreas de Imagen"
      content: "Aplica superposiciones a imágenes o partes de imágenes para mantenerlas privadas."

    # feature loop
    - title: "Eliminar Metadatos Ocultos"
      content: "Borra metadatos invisibles para evitar filtraciones de datos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ocultar Contenido de Imagen con Superposiciones"
      content: |
        Este ejemplo muestra cómo colocar superposiciones en áreas sensibles de imagen en documentos.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Cargar el archivo para redacción
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Definir tamaño, color y posición de la superposición
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Marcar sección de imagen en la primera página
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Aplicar superposición para cubrir datos
              redactor.apply(redaction);

              // Guardar el documento actualizado
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
    title: "Proteger Archivos POWERPOINT con Redacciones de Java"
    exclude: "POWERPOINT"
    description: "Con Java, puedes cubrir o eliminar datos sensibles en archivos POWERPOINT. Una solución confiable para la seguridad del documento."
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