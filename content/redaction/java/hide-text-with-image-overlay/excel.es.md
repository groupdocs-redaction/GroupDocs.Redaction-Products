
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: es
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Cubrir Texto en EXCEL con Superposiciones y Java"
head_description: "Protege contenido sensible en archivos EXCEL aplicando superposiciones de color con GroupDocs.Redaction for Java. Mantén el diseño del documento intacto."

############################# Header ############################
title: "Redactar Datos EXCEL con Superposiciones en Java" 
description: "Usa código Java para enmascarar información sensible en hojas de cálculo EXCEL. Una forma efectiva de mantener los datos privados."
subtitle: "Características Clave de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Por Qué Elegir GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java está diseñado para desarrolladores Java que desean ocultar o limpiar contenido en hojas de cálculo EXCEL rápidamente.

############################# Steps ############################
steps:
    enable: true
    title: "Ocultar Información en Hojas de Cálculo Excel"
    content: |
      GroupDocs.Redaction for Java ayuda a los desarrolladores de Java a proteger archivos ocultando información privada en solo unas líneas.
      
      1. Inicia un Redactor y carga tu hoja de cálculo.
      2. Establece las reglas de redacción según sea necesario.
      3. Elige texto y color de superposición.
      4. Aplica y guarda el archivo.
   
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
        // Usa superposiciones para ocultar texto en EXCEL

        // Crea un Redactor y carga tu archivo
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Elige reglas de redacción
            // Ingresa qué ocultar y escoge un color
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Aplica redacción y guarda el archivo
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Herramientas Esenciales de Protección de Datos"
  description: "Oculta o elimina información sensible de tus hojas de cálculo sin romper la estructura o el significado, usando GroupDocs.Redaction for Java."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Diseñado para la limpieza segura de datos"
  features:
    # feature loop
    - title: "Editar u ocultar texto"
      content: "Encuentra y bloquea cualquier texto que necesite protección."

    # feature loop
    - title: "Cubrir visuales sensibles"
      content: "Aplica bloques de color sobre áreas de gráficos o imágenes."

    # feature loop
    - title: "Eliminar metadatos"
      content: "Borra el historial de documentos, nombres de autores o marcas de tiempo."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redacción con Regex"
      content: |
        Usa regex para encontrar y ocultar texto automáticamente.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abre tu hoja de cálculo
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Configura el patrón y los detalles de superposición
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Aplica la redacción
              redactor.apply(redaction);

              // Guarda la versión limpia
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
    title: "Redactar Hojas EXCEL con Java"
    exclude: "EXCEL"
    description: "Oculta o limpia datos sensibles en EXCEL usando superposiciones y herramientas de Java."
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