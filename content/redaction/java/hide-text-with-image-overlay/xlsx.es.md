
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: es
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Bloquear Texto en XLSX con Superposiciones de Java"
head_description: "GroupDocs.Redaction for Java te permite cubrir información sensible en archivos XLSX con bloques de color. Oculta datos mientras mantienes el diseño intacto."

############################# Header ############################
title: "Ocultar Datos en XLSX con Superposiciones Usando Java" 
description: "Usa Java y GroupDocs.Redaction for Java para enmascarar contenido privado en archivos XLSX sin afectar el formato."
subtitle: "Principales Características de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Por qué GroupDocs.Redaction for Java Funciona"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java permite a los desarrolladores de Java asegurar archivos XLSX. Oculta texto, imágenes o metadatos rápidamente.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Información en Documentos Xlsx"
    content: |
      Mantén tus documentos seguros usando código simple con GroupDocs.Redaction for Java en Java.
      
      1. Crea un Redactor con la ruta del archivo.
      2. Configura tu lógica de redacción.
      3. Elige la palabra clave y el color de superposición.
      4. Redacta y guarda el archivo.
   
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
        // Ocultar información en XLSX usando bloques

        // Carga el archivo con Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Configura preferencias de redacción
            // Agrega texto y color para bloquear
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Guarda el documento actualizado
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Funciones de Privacidad Integradas"
  description: "Usa GroupDocs.Redaction for Java para bloquear o eliminar contenido en tus archivos mientras mantienes la estructura intacta."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Herramientas de privacidad fáciles"
  features:
    # feature loop
    - title: "Cambiar u ocultar texto"
      content: "Edita o redacta palabras específicas con facilidad."

    # feature loop
    - title: "Enmascarar partes de imágenes"
      content: "Agrega superposiciones para ocultar fotos o detalles gráficos."

    # feature loop
    - title: "Eliminar información oculta"
      content: "Borra metadatos como información del usuario o historial de archivos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Usar Regex para Redactar Contenido"
      content: |
        Encuentra y oculta texto automáticamente con coincidencia de patrones.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abre la hoja de cálculo
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Define patrón y color de superposición
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Aplica reglas de redacción
              redactor.apply(redaction);

              // Exporta tu resultado
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
    title: "Redactar Datos XLSX Usando Java"
    exclude: "XLSX"
    description: "Usa superposiciones o elimina contenido en archivos XLSX para mantener datos sensibles privados con Java."
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