
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: es
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Eliminar Texto Privado de DOCX con Java"
head_description: "Asegure el contenido en sus archivos DOCX utilizando GroupDocs.Redaction for Java. Redacción rápida y eficaz para texto, imágenes y metadatos."

############################# Header ############################
title: "Editar o Eliminar Texto en Documentos DOCX Usando Java" 
description: "Proteja contenido personal o empresarial en sus archivos DOCX con Java y GroupDocs.Redaction for Java."
subtitle: "Lo Que Puede Hacer con GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "¿Qué es GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ayuda a los desarrolladores de Java a limpiar y redactar archivos DOCX. Elimine texto, imágenes, comentarios y datos ocultos con precisión.

############################# Steps ############################
steps:
    enable: true
    title: "Cómo Redactar Contenido en Archivos Docx"
    content: |
      Utilice GroupDocs.Redaction for Java en sus proyectos de Java para limpiar archivos antes de compartir.
      
      1. Cree un Redactor y cargue el archivo.
      2. Elija sus opciones de redacción.
      3. Ingrese el texto a buscar y su reemplazo.
      4. Aplique las redacciones y guarde el archivo.
   
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
        // Redactar contenido en un archivo DOCX

        // Cargue el documento utilizando Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Establezca opciones de redacción
            // Defina qué buscar y qué reemplazar
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Aplique la redacción y guarde
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Opciones de Redacción"
  description: "GroupDocs.Redaction for Java le permite limpiar contenido sensible de muchos tipos de archivos. Mantenga sus documentos seguros sin perder estructura."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Herramientas para eliminar contenido"
  features:
    # feature loop
    - title: "Reemplazar texto"
      content: "Busque contenido específico y reemplácelo en todo el documento."

    # feature loop
    - title: "Ocultar imágenes o partes"
      content: "Cubra visuales sensibles con superposiciones de color."

    # feature loop
    - title: "Eliminar datos ocultos"
      content: "Borre metadatos como nombres de autores, marcas de tiempo o propiedades del documento."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redacción Basada en Regex"
      content: |
        Utilice expresiones regulares para detectar y redactar patrones como números de teléfono o correos electrónicos.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Cargue el documento
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Establezca un patrón regex de EMAIL y el texto de reemplazo
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Ejecute la redacción
              redactor.apply(redaction);

              // Guarde el archivo limpio
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
    title: "Limpiar Archivos DOCX con Java"
    exclude: "DOCX"
    description: "Redacte o reemplace contenido sensible en documentos DOCX utilizando las herramientas proporcionadas por Java."
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