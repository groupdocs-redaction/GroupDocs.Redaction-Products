
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: es
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Eliminar Texto Privado de XLSX con Java"
head_description: "Mantenga sus datos de XLSX seguros redactando texto y metadatos utilizando GroupDocs.Redaction for Java. Protección fácil y efectiva."

############################# Header ############################
title: "Limpiar Archivos XLSX Usando Java" 
description: "Elimine contenido sensible de archivos XLSX con Java y GroupDocs.Redaction for Java. Mantenga sus hojas de cálculo seguras."
subtitle: "Lo Que Puede Hacer con GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "¿Por Qué Utilizar GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java proporciona a los desarrolladores de Java herramientas para limpiar archivos XLSX. Redacte texto, metadatos, imágenes y más con pocas líneas de código.

############################# Steps ############################
steps:
    enable: true
    title: "Redactar Datos de Archivos Xlsx"
    content: |
      Utilice GroupDocs.Redaction for Java en cualquier aplicación de Java para eliminar texto o contenido oculto antes de compartir.
      
      1. Cree una instancia de Redactor y cargue su archivo.
      2. Seleccione las opciones de redacción que desee.
      3. Elija el texto a encontrar y su reemplazo.
      4. Aplique la redacción y guarde su documento.
   
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
        // Cómo redactar una hoja de cálculo XLSX

        // Cree un Redactor y cargue su archivo
        final Redactor redactor = new Redactor("input.xlsx");
        try
        {
            // Elija su configuración de redacción
            // Ingrese el texto de búsqueda y reemplazo
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Aplique los cambios y guarde
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Herramientas de Redacción Útiles"
  description: "GroupDocs.Redaction for Java ayuda a eliminar contenido privado de varios archivos. Limpie documentos sin perder formato."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Protección de contenido inteligente"
  features:
    # feature loop
    - title: "Buscar y reemplazar texto"
      content: "Encuentre y actualice o oculte datos sensibles en celdas."

    # feature loop
    - title: "Cubrir visuales"
      content: "Oculte gráficos, imágenes o rangos utilizando superposiciones de colores."

    # feature loop
    - title: "Limpiar metadatos"
      content: "Borre información del autor, fechas de creación y otros datos de fondo."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redacción Utilizando Regex"
      content: |
        Encuentre y redacte valores como números de cuenta o patrones usando regex.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra el archivo a procesar
          final Redactor redactor = new Redactor("source.xlsx");
          try
          {
              // Agregue una regla regex de EMAIL y el reemplazo
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Aplique las reglas de redacción
              redactor.apply(redaction);

              // Guarde el archivo actualizado
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
    title: "Redactar Contenido en XLSX con Java"
    exclude: "XLSX"
    description: "Limpie y proteja archivos XLSX utilizando las características de Java para la redacción y eliminación de contenido."
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