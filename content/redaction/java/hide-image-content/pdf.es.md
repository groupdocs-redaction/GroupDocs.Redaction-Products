
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: es
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Cubrir Imágenes en PDF con Superposiciones Usando Java"
head_description: "Con GroupDocs.Redaction for Java, puedes ocultar imágenes privadas en archivos PDF al colocar superposiciones de colores. Protege visuales sensibles mientras mantienes intacto el diseño de tu documento."

############################# Header ############################
title: "Ocultar Imágenes Confidenciales en Archivos PDF con Superposiciones Usando Java" 
description: "Protege datos personales y de negocio en archivos PDF con Java. Nuestras herramientas hacen que la redacción de imágenes sea simple y efectiva."
subtitle: "Características de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ofrece a los desarrolladores de Java herramientas efectivas para ocultar o borrar contenido en archivos PDF. Cubre texto, imágenes y metadatos para mantener tus documentos seguros en múltiples formatos.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Información Empresarial en Archivos Pdf"
    content: |
      GroupDocs.Redaction for Java ayuda a tus aplicaciones en Java a asegurar documentos. Redacta imágenes privadas en unos pocos pasos.
      
      1. Inicializa un Redactor y establece la ruta a tu archivo Pdf.
      2. Elige configuraciones de redacción para obtener los mejores resultados.
      3. Selecciona el área de la imagen y elige un color de superposición.
      4. Procesa y guarda el archivo asegurado.
   
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
        // Cubrir imágenes sensibles en PDF

        // Cargar el archivo con Redactor
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Establecer el color y dimensiones de la superposición
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Seleccionar el área objetivo para la redacción
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Aplicar la superposición y guardar el archivo
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ocultar Contenido en Documentos"
  description: "Con GroupDocs.Redaction for Java, puedes ocultar o eliminar datos sensibles en varios formatos de archivo. Protege información privada mientras mantienes archivos fáciles de leer y distribuir."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Opciones de Redacción Poderosas"
  features:
    # feature loop
    - title: "Modificar Texto en Cualquier Lugar"
      content: "Busca y reemplaza palabras sensibles en tu documento para asegurar contenido privado."

    # feature loop
    - title: "Ocultar Imágenes"
      content: "Añade superposiciones a imágenes o partes de ellas para mantener visuales sensibles ocultos."

    # feature loop
    - title: "Limpiar Metadatos"
      content: "Elimina o edita metadatos ocultos para prevenir filtraciones de información no intencionadas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cubrir Datos de Imagen con Superposiciones"
      content: |
        Este ejemplo demuestra cómo ocultar visuales confidenciales en documentos usando superposiciones.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abrir el documento para editar
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Definir tamaño, color y posición de la superposición
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Elegir el área de la imagen para redactar en la página uno
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Agregar la superposición para cubrir datos sensibles
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
    title: "Proteger Archivos PDF con Redacciones de Java"
    exclude: "PDF"
    description: "Usa Java para ocultar o eliminar datos sensibles en archivos PDF. Ideal para asegurar documentos oficiales y privados."
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