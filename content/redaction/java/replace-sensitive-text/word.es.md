
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: es
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Eliminar Texto Privado de WORD Usando Java"
head_description: "Mantenga sus archivos WORD seguros redactando datos sensibles con GroupDocs.Redaction for Java y Java. Limpieza rápida y simple."

############################# Header ############################
title: "Editar o Eliminar Texto en Archivos WORD con Java" 
description: "Proteja contenido importante en sus archivos WORD utilizando GroupDocs.Redaction for Java y Java. Redacte datos empresariales, legales o personales con confianza."
subtitle: "Lo Que Puede Hacer con GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "¿Qué es GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ofrece a los desarrolladores de Java una forma confiable de redactar archivos WORD. Limpie texto, imágenes, comentarios y detalles ocultos con solo unas pocas líneas de código.

############################# Steps ############################
steps:
    enable: true
    title: "Pasos para Redactar Documentos Word"
    content: |
      Utilice GroupDocs.Redaction for Java en sus proyectos de Java para limpiar archivos antes de compartirlos.
      
      1. Cree un Redactor y cargue el documento Word.
      2. Establezca sus opciones de redacción preferidas.
      3. Elija el texto que desea encontrar y reemplazar.
      4. Aplique la redacción y guarde su archivo.
   
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
        // Redactando un documento WORD

        // Cargue el archivo utilizando Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Elija sus reglas de redacción
            // Ingrese el texto de búsqueda y reemplazo
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Ejecute la redacción y guarde el nuevo archivo
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Más Características de Redacción"
  description: "GroupDocs.Redaction for Java puede ayudarle a limpiar información sensible de diferentes tipos de archivos. Elimine texto, imágenes y metadatos rápidamente."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Redactar texto, imágenes y metadatos"
  features:
    # feature loop
    - title: "Buscar y reemplazar texto"
      content: "Encuentre contenido específico y reemplácelo o elimínelo en todo el archivo. Soporte para regex."

    # feature loop
    - title: "Cubrir partes de las páginas"
      content: "Utilice superposiciones para ocultar fotos o secciones del documento."

    # feature loop
    - title: "Limpiar metadatos"
      content: "Borre información adicional como autor, marcas de tiempo o ediciones rastreadas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redacción con Patrones Regex"
      content: |
        Busque texto utilizando expresiones regulares para ocultar contenido como números de teléfono, fechas o identificaciones.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Cargue su documento
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Establezca un patrón regex de EMAIL y un valor de reemplazo
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Aplique la redacción
              redactor.apply(redaction);

              // Guarde el documento actualizado
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
    title: "Redactar Contenido en WORD con Java"
    exclude: "WORD"
    description: "Oculte o elimine contenido personal y privado de documentos WORD utilizando Java. Una forma sencilla de mantener sus archivos seguros."
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