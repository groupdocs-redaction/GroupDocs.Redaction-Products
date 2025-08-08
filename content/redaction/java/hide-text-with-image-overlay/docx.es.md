
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: es
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Ocultar Texto en DOCX con Superposiciones Usando Java"
head_description: "Usa GroupDocs.Redaction for Java para bloquear texto privado en archivos DOCX. Mantén el diseño sin cambios mientras ocultas datos sensibles."

############################# Header ############################
title: "Proteger Texto DOCX con Superposiciones en Java" 
description: "Oculta rápidamente detalles personales, legales o comerciales en archivos DOCX con Java y GroupDocs.Redaction for Java."
subtitle: "Herramientas Clave en GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Lo que es GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java proporciona a los desarrolladores de Java herramientas para limpiar archivos DOCX. Redacta nombres, números o notas con rapidez.

############################# Steps ############################
steps:
    enable: true
    title: "Redactar Contenido Sensible en Docx"
    content: |
      Limpia documentos en tu proyecto Java utilizando GroupDocs.Redaction for Java.
      
      1. Inicializa Redactor con tu archivo.
      2. Elige cómo debe funcionar la redacción.
      3. Selecciona el texto a ocultar y el color de superposición.
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
        // Cubrir texto con superposiciones en DOCX

        // Crea un Redactor y carga tu documento
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Elige opciones de redacción
            // Selecciona texto y color
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Guarda la versión redactada
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Herramientas de Redacción para Uso Cotidiano"
  description: "GroupDocs.Redaction for Java te ofrece opciones simples para ocultar detalles sensibles en documentos mientras los mantienes utilizables."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Opciones de redacción fáciles"
  features:
    # feature loop
    - title: "Encontrar y cambiar texto"
      content: "Oculta o reemplaza palabras en segundos."

    # feature loop
    - title: "Bloquear partes de imágenes"
      content: "Enmascara secciones de imágenes o contenido escaneado."

    # feature loop
    - title: "Borrar información de fondo"
      content: "Elimina metadatos ocultos como autoría o fechas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Encontrar Texto con Regex y Ocultarlo"
      content: |
        Usa coincidencia de patrones para ocultar frases clave automáticamente.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abre el documento que deseas redactar
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Configura el patrón regex y el estilo de superposición
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Aplica la lógica de redacción
              redactor.apply(redaction);

              // Guarda tu documento limpio
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
    title: "Redactar Archivos DOCX Usando Java"
    exclude: "DOCX"
    description: "Protege contenido sensible en DOCX ocultándolo o eliminándolo utilizando las herramientas en Java."
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