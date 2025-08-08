
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: es
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Redactar Texto Sensible en PDF Usando Java"
head_description: "Utilice GroupDocs.Redaction for Java para encontrar y eliminar datos privados de sus archivos PDF. Redacción de texto sencilla, rápida y confiable."

############################# Header ############################
title: "Eliminar Datos Sensibles de Archivos PDF con Java" 
description: "Limpie archivos PDF utilizando Java y GroupDocs.Redaction for Java. Redacte contenido personal, legal o empresarial sin complicaciones."
subtitle: "Lo Que Puede Hacer con GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ofrece a los desarrolladores de Java una forma sencilla de limpiar archivos PDF. Elimine o reemplace texto, imágenes, comentarios y datos ocultos.

############################# Steps ############################
steps:
    enable: true
    title: "Cómo Redactar Texto en Archivos Pdf"
    content: |
      Con GroupDocs.Redaction for Java, los desarrolladores de Java pueden eliminar contenido sensible en solo unos pocos pasos.
      
      1. Cree un Redactor y cargue su archivo Pdf.
      2. Elija la configuración de redacción que desee.
      3. Ingrese el texto a buscar y su reemplazo.
      4. Aplique la redacción y guarde el archivo.
   
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
        // Cómo limpiar un archivo PDF

        // Cree un Redactor y cargue el documento
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Establezca sus reglas de redacción
            // Agregue el texto a eliminar y con qué reemplazarlo
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Aplique la redacción y guarde el nuevo archivo
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Más Características de Redacción"
  description: "GroupDocs.Redaction for Java elimina información sensible en muchos formatos. Redacte texto, imágenes y metadatos mientras mantiene los archivos legibles."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Herramientas para la redacción de texto e imágenes"
  features:
    # feature loop
    - title: "Encontrar y reemplazar texto"
      content: "Busque cualquier palabra o frase y reemplácela. Funciona con texto plano o regex."

    # feature loop
    - title: "Cubrir contenido de imagen"
      content: "Ocultar imágenes o partes de imágenes utilizando superposiciones de colores."

    # feature loop
    - title: "Limpiar metadatos"
      content: "Eliminar nombres de autores, fechas u otros detalles ocultos antes de compartir."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redactar Texto con Regex"
      content: |
        Utilice regex para encontrar y ocultar patrones como correos electrónicos, identificaciones o formatos personalizados.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra el documento que desea editar
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Agregue un patrón regex de EMAIL y el texto de reemplazo
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Aplique la redacción al contenido coincidente
              redactor.apply(redaction);

              // Guarde la versión redactada
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Redactar Archivos PDF con Java"
    exclude: "PDF"
    description: "Proteja información personal o empresarial redactando contenido PDF con herramientas de Java."
    items: 
        # format loop 1
        - name: "Redactar PDF"
          format: "PDF"
          link: "/redaction/java/replace-sensitive-text//pdf/"
          description: "Formato de Documento Portátil de Adobe"

        # format loop 2
        - name: "Redactar Word"
          format: "WORD"
          link: "/redaction/java/replace-sensitive-text//word/"
          description: "Documentos de MS Word y Open Office"
          
        # format loop 3
        - name: "Redactar Excel"
          format: "EXCEL"
          link: "/redaction/java/replace-sensitive-text//excel/"
          description: "Hojas de cálculo de MS Excel y Open Office"

        # format loop 4
        - name: "Redactar PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/replace-sensitive-text//powerpoint/"
          description: "Presentaciones de MS PowerPoint y Open Office"

        # format loop 5
        - name: "Redactar DOCX"
          format: "DOCX"
          link: "/redaction/java/replace-sensitive-text//docx/"
          description: "Documento XML Abierto de Microsoft Word"
          
        # format loop 6
        - name: "Redactar XLSX"
          format: "XLSX"
          link: "/redaction/java/replace-sensitive-text//xlsx/"
          description: "Hoja de cálculo XML Abierta de Microsoft Excel"
          
        # format loop 7
        - name: "Redactar PPTX"
          format: "PPTX"
          link: "/redaction/java/replace-sensitive-text//pptx/"
          description: "Presentación XML Abierta de PowerPoint"


---