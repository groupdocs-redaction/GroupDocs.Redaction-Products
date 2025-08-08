
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: es
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Cubrir Texto Privado en PDF con Superposiciones Usando Java"
head_description: "GroupDocs.Redaction for Java te permite ocultar información sensible en archivos PDF mediante el uso de cajas de colores. Protege los datos sin cambiar la apariencia de tu archivo."

############################# Header ############################
title: "Enmascarar Texto en Documentos PDF Usando Superposiciones en Java" 
description: "Toma el control total del contenido del archivo PDF con Java. Utiliza la redacción para proteger detalles financieros, legales o personales."
subtitle: "Principales Características de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Lo que Ofrece GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java proporciona a los desarrolladores de Java una manera efectiva de ocultar o eliminar contenido de archivos PDF. Cubre texto, imágenes y metadatos en diferentes tipos de documentos.

############################# Steps ############################
steps:
    enable: true
    title: "Asegurar Información Confidencial en Archivos Pdf"
    content: |
      GroupDocs.Redaction for Java facilita a los desarrolladores de Java ocultar contenido privado con unos simples pasos.
      
      1. Inicia un Redactor y carga tu archivo Pdf.
      2. Configura tus preferencias de redacción.
      3. Elige qué buscar y selecciona el color de superposición.
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
        // Cubrir texto en PDF usando superposiciones de color

        // Pasa la ruta del archivo al Redactor
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Ajusta la configuración de redacción
            // Configura el texto y el color objetivo
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Aplica y guarda el PDF redactado
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Controla Qué es Visible en Documentos"
  description: "GroupDocs.Redaction for Java te permite bloquear o eliminar partes de tus archivos mientras los mantienes fáciles de visualizar y compartir."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Herramientas de Redacción Poderosas"
  features:
    # feature loop
    - title: "Objetivo y ocultar texto"
      content: "Busca en tu documento y oculta palabras o frases específicas para proteger información privada."

    # feature loop
    - title: "Cubrir imágenes"
      content: "Agrega superposiciones para ocultar totalmente o parcialmente visuales."

    # feature loop
    - title: "Eliminar metadatos"
      content: "Borra detalles ocultos del documento para evitar exposiciones involuntarias."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ocultar Texto Usando Regex"
      content: |
        Este ejemplo utiliza expresiones regulares para encontrar y ocultar contenido específico
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Cargar el archivo que deseas procesar
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Configura el patrón de texto y el color de superposición
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Aplica la redacción
              redactor.apply(redaction);

              // Guarda tus cambios
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
    title: "Protege Archivos PDF con Java"
    exclude: "PDF"
    description: "Usa Java para cubrir o borrar contenido en documentos PDF. Una gran manera de mantener la información privada segura y protegida."
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