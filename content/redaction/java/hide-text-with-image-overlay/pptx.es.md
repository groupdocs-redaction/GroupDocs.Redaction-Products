
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: es
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Ocultar Texto en Presentaciones PPTX con Superposiciones de Java"
head_description: "Usa GroupDocs.Redaction for Java para bloquear contenido sensible en archivos PPTX con superposiciones de color. Mantén las diapositivas intactas mientras escondes información clave."

############################# Header ############################
title: "Enmascarar Texto en Presentaciones PPTX con Java" 
description: "Protege fácilmente detalles personales o comerciales en tus diapositivas PPTX usando Java y GroupDocs.Redaction for Java."
subtitle: "Explora las Características de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Qué Hace GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java permite a los desarrolladores de Java ocultar o eliminar texto, imágenes o metadatos en presentaciones PPTX en solo unos pocos pasos.

############################# Steps ############################
steps:
    enable: true
    title: "Redactar Contenido Privado en Diapositivas Pptx"
    content: |
      GroupDocs.Redaction for Java facilita la protección de contenido para los desarrolladores de Java.
      
      1. Configura un Redactor con la ruta de tu presentación.
      2. Elige cómo debe comportarse la redacción.
      3. Agrega el patrón de texto y el color de superposición.
      4. Redacta la diapositiva y guárdala.
   
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
        // Usar superposiciones para bloquear texto en PPTX

        // Inicializa Redactor con tu presentación
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Selecciona tus preferencias de redacción
            // Configura el texto y el color de superposición
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Ejecuta la redacción y guarda el conjunto de diapositivas
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Herramientas de Redacción Poderosas"
  description: "Con GroupDocs.Redaction for Java, bloquea o elimina contenido sensible en tus presentaciones sin alterar el diseño o formato."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Características que funcionan en varias diapositivas"
  features:
    # feature loop
    - title: "Ocultar o reemplazar texto"
      content: "Protege nombres, términos o notas que no deben ser visibles."

    # feature loop
    - title: "Cubrir áreas visuales"
      content: "Agrega superposiciones a imágenes o secciones gráficas de las diapositivas."

    # feature loop
    - title: "Borrar metadatos"
      content: "Elimina información privada detrás de escenas que pueda revelar autoría o historial de edición."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redactar Texto con Regex"
      content: |
        Usa expresiones regulares para encontrar y cubrir palabras sensibles.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abre el archivo de presentación
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Configura el patrón de búsqueda y el color de superposición
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Ejecuta las reglas de redacción
              redactor.apply(redaction);

              // Guarda la versión final
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Proteger Diapositivas PPTX con Herramientas Java"
    exclude: "PPTX"
    description: "Cubre contenido sensible o elimínalo por completo de presentaciones PPTX utilizando las características de redacción de Java."
    items: 
        # format loop 1
        - name: "Redactar PDF"
          format: "PDF"
          link: "/redaction/java/hide-text-with-image-overlay//pdf/"
          description: "Formato de Documento Portátil de Adobe"

        # format loop 2
        - name: "Redactar Word"
          format: "WORD"
          link: "/redaction/java/hide-text-with-image-overlay//word/"
          description: "Documentos de MS Word y Open Office"
          
        # format loop 3
        - name: "Redactar Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-text-with-image-overlay//excel/"
          description: "Hojas de cálculo de MS Excel y Open Office"

        # format loop 4
        - name: "Redactar PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-text-with-image-overlay//powerpoint/"
          description: "Presentaciones de MS PowerPoint y Open Office"

        # format loop 5
        - name: "Redactar DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-text-with-image-overlay//docx/"
          description: "Documento XML Abierto de Microsoft Word"
          
        # format loop 6
        - name: "Redactar XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-text-with-image-overlay//xlsx/"
          description: "Hoja de cálculo XML Abierta de Microsoft Excel"
          
        # format loop 7
        - name: "Redactar PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-text-with-image-overlay//pptx/"
          description: "Presentación XML Abierta de PowerPoint"


---