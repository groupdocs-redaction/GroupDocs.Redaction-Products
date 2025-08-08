
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: es
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Ocultar Imágenes en PPTX con Superposiciones Usando Java"
head_description: "Con GroupDocs.Redaction for Java, puedes ocultar imágenes sensibles en archivos PPTX al agregar superposiciones de colores. Protege información confidencial mientras mantienes el diseño del documento intacto."

############################# Header ############################
title: "Ocultar Imágenes Sensibles en Documentos PPTX Usando Java" 
description: "Protege datos personales y empresariales en archivos PPTX usando Java. Nuestras herramientas hacen que la redacción de imágenes sea rápida y sencilla."
subtitle: "Beneficios Clave de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java proporciona a los desarrolladores de Java herramientas prácticas para ocultar o eliminar contenido en archivos PPTX. Redacta texto, imágenes y metadatos en diferentes tipos de documentos.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Datos Privados en Documentos Pptx"
    content: |
      GroupDocs.Redaction for Java facilita que las aplicaciones Java aseguren documentos al ocultar contenido sensible.
      
      1. Inicializa un Redactor y carga el archivo Pptx.
      2. Establece las opciones de redacción de acuerdo a tus necesidades.
      3. Selecciona las áreas de imagen y define los colores de superposición.
      4. Aplica la redacción y guarda el archivo actualizado.
   
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
        // Ocultar secciones de imagen sensibles en PPTX

        // Abrir el documento usando Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Elegir color y tamaño de superposición
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Marcar el área a ocultar
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Aplicar cambios y guardar el documento
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Herramientas de Redacción de Contenido"
  description: "GroupDocs.Redaction for Java te ayuda a ocultar o eliminar información sensible en muchos formatos de archivo. Mantén los documentos seguros mientras mantienes una apariencia profesional."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Características Avanzadas de Redacción"
  features:
    # feature loop
    - title: "Buscar y Reemplazar Texto"
      content: "Busca rápidamente texto privado y redactalo para asegurar los documentos."

    # feature loop
    - title: "Cubrir Imágenes con Superposiciones"
      content: "Oculta imágenes completas o áreas seleccionadas aplicando superposiciones."

    # feature loop
    - title: "Limpiar Metadatos"
      content: "Elimina o edita metadatos ocultos para prevenir compartir información confidencial."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cubrir Datos de Imagen con Superposiciones"
      content: |
        Este ejemplo muestra cómo cubrir imágenes sensibles en tus documentos.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carga tu documento
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Definir tamaño, color y posición de la superposición
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Seleccionar el área de imagen en la primera página
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Aplicar superposición para cubrirla
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
    title: "Redactar Contenido PPTX Usando Java"
    exclude: "PPTX"
    description: "Aplica Java para ocultar o eliminar contenido sensible en archivos PPTX. Una solución confiable para la protección de documentos."
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