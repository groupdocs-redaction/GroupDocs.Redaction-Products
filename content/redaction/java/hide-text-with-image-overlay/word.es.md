
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: es
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Redactar Texto en WORD Usando Superposiciones de Java"
head_description: "Usa GroupDocs.Redaction for Java para cubrir texto sensible en archivos WORD con bloques de color mientras mantienes la estructura del documento sin cambios."

############################# Header ############################
title: "Redacción por Superposición en Archivos WORD con Java" 
description: "Oculta detalles importantes en tus documentos WORD con superposiciones de color potenciadas por Java y GroupDocs.Redaction for Java."
subtitle: "Lo que GroupDocs.Redaction for Java Puede Hacer" 

############################# About ############################
about:
    enable: true
    title: "Presentando GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java proporciona a los usuarios de Java un control total sobre la redacción en WORD. Oculta lo que desees: texto, imágenes o metadatos.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Información Privada en Formato Word"
    content: |
      GroupDocs.Redaction for Java proporciona a los desarrolladores de Java formas rápidas de limpiar archivos y asegurar su contenido.
      
      1. Inicia un Redactor y carga el archivo Word.
      2. Elige tus opciones de redacción.
      3. Agrega patrón de texto y color de superposición.
      4. Ejecuta la redacción y guarda el archivo.
   
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
        // Ocultar texto usando superposiciones en WORD

        // Usa Redactor para abrir el documento
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Ajusta preferencias de redacción
            // Agrega palabras clave y selecciona color
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Aplica y guarda tu archivo redactado
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Más Capacidades de Redacción"
  description: "Usa GroupDocs.Redaction for Java para eliminar contenido tanto visible como oculto de los archivos mientras mantienes la estructura intacta."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Salida simple y limpia"
  features:
    # feature loop
    - title: "Reemplazar texto"
      content: "Cubre palabras o términos que no deben ser visibles."

    # feature loop
    - title: "Enmascarar elementos visuales"
      content: "Usa superposiciones de color para ocultar imágenes o partes de ellas."

    # feature loop
    - title: "Borrar metadatos"
      content: "Elimina detalles ocultos en las propiedades del archivo."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redacción Potenciada por Regex"
      content: |
        Aprende a usar regex para ocultar automáticamente contenido específico.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carga el documento a redactar
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Define tu patrón regex y color de superposición
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Aplica la redacción
              redactor.apply(redaction);

              // Guarda tu versión limpia
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
    title: "Redactar Contenido en WORD con Java"
    exclude: "WORD"
    description: "Mantén tus documentos WORD privados ocultando o eliminando datos sensibles utilizando Java."
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