
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: es
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Eliminar Texto Privado de POWERPOINT Usando Java"
head_description: "Asegure datos sensibles en sus archivos POWERPOINT utilizando GroupDocs.Redaction for Java y Java. Redacción de texto rápida y sencilla."

############################# Header ############################
title: "Editar u Ocultar Texto Sensible en Documentos POWERPOINT con Java" 
description: "Proteja contenido sensible en sus archivos POWERPOINT utilizando Java y GroupDocs.Redaction for Java. Persona o negocio, sus datos permanecen privados."
subtitle: "Lo Que Puede Hacer con GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Conozca GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java proporciona a los desarrolladores de Java todo lo que necesitan para redactar contenido POWERPOINT. Limpie texto, imágenes, anotaciones, comentarios y metadatos en tipos de archivo populares.

############################# Steps ############################
steps:
    enable: true
    title: "Pasos para Limpiar Contenido en Documentos Powerpoint"
    content: |
      Utilice GroupDocs.Redaction for Java para eliminar o cubrir contenido privado en sus aplicaciones Java. Redacción sencilla y rápida.
      
      1. Inicialice un Redactor y cargue su archivo Powerpoint.
      2. Configure las opciones de redacción que necesita.
      3. Especifique el texto a buscar y el texto de reemplazo.
      4. Ejecute la redacción y guarde el archivo.
   
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
        // Cómo redactar texto en un archivo POWERPOINT

        // Cargue su archivo utilizando el constructor Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Establezca sus preferencias de redacción
            // Elija qué buscar y con qué reemplazarlo
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Aplique redacciones y guarde el nuevo archivo POWERPOINT
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Herramientas de Redacción Adicionales"
  description: "GroupDocs.Redaction for Java ayuda a eliminar o ocultar contenido sensible en múltiples formatos de archivo. Mantenga los documentos limpios y seguros para compartir."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Herramientas y opciones de redacción"
  features:
    # feature loop
    - title: "Reemplazar texto confidencial"
      content: "Encuentre y reemplace texto coincidente en cualquier parte de su archivo. Soporta regex y opciones de búsqueda inteligentes."

    # feature loop
    - title: "Ocultar imágenes sensibles"
      content: "Cubra imágenes o áreas específicas con superposiciones. Ajuste la configuración de página, colores y más."

    # feature loop
    - title: "Limpiar metadatos ocultos"
      content: "Elimine datos ocultos como autoría, marcas de tiempo o comentarios para proteger la privacidad."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redacción Basada en Patrones con Regex"
      content: |
        Utilice expresiones regulares para buscar y redactar patrones de texto sensibles como correos electrónicos o identificaciones.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra el documento que desea limpiar
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Defina un patrón regex de EMAIL y el texto a usar como reemplazo
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Aplique reglas de redacción
              redactor.apply(redaction);

              // Guarde el archivo final redactado
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
    title: "Redactar Contenido en POWERPOINT Usando Java"
    exclude: "POWERPOINT"
    description: "Proteja datos oficiales y personales redactando texto en archivos POWERPOINT con las herramientas de Java. Una forma confiable de mantener sus documentos seguros."
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