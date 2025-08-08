
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: es
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Eliminar Texto Privado de PPTX Usando Java"
head_description: "Proteja detalles sensibles en sus presentaciones PPTX con GroupDocs.Redaction for Java y Java. Redacción de texto sencilla con resultados rápidos."

############################# Header ############################
title: "Limpiar Texto en Archivos PPTX con Java" 
description: "Utilice GroupDocs.Redaction for Java y Java para ocultar o eliminar contenido en sus diapositivas PPTX. Ideal para uso empresarial, legal o personal."
subtitle: "Lo Que Puede Hacer con GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Conozca GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java brinda a los desarrolladores de Java una forma sólida de editar u ocultar contenido en archivos PPTX. Trabaje con texto, imágenes, metadatos y comentarios con control total.

############################# Steps ############################
steps:
    enable: true
    title: "Cómo Redactar Contenido en Presentaciones Pptx"
    content: |
      Con GroupDocs.Redaction for Java, puede limpiar sus presentaciones de Java en unos pocos pasos rápidos.
      
      1. Cree un Redactor y cargue su archivo Pptx.
      2. Elija las configuraciones de redacción que se adapten a sus necesidades.
      3. Establezca el término de búsqueda y el contenido de reemplazo.
      4. Aplique los cambios y guarde su archivo actualizado.
   
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
        // Redactando texto en una presentación PPTX

        // Cargue su documento usando Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Establezca las opciones de redacción
            // Elija el texto a encontrar y con qué reemplazarlo
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Redacte y guarde el archivo
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Más Herramientas de Redacción"
  description: "GroupDocs.Redaction for Java facilita ocultar o eliminar contenido privado de una amplia gama de archivos. Perfecto para mantener sus datos seguros antes de compartir."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Opciones para eliminar texto, imágenes y metadatos"
  features:
    # feature loop
    - title: "Reemplazar texto en cualquier lugar"
      content: "Busque y reemplace palabras o frases en todas las diapositivas. Funciona con texto exacto o patrones."

    # feature loop
    - title: "Ocultar contenido visual"
      content: "Cubra partes de una diapositiva o imagen utilizando cuadros de superposición en el color que elija."

    # feature loop
    - title: "Eliminar metadatos"
      content: "Borre datos de fondo como autor, fecha de creación o notas que puedan contener información privada."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redacción Basada en Regex"
      content: |
        Utilice expresiones regulares para encontrar y eliminar patrones como correos electrónicos, números de teléfono o códigos.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra su archivo
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Agregue un patrón regex de EMAIL y el reemplazo
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Aplique la redacción según el patrón
              redactor.apply(redaction);

              // Guarde la versión limpia
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
    title: "Redactar Contenido en PPTX Usando Java"
    exclude: "PPTX"
    description: "Elimine detalles privados o sensibles de documentos PPTX utilizando Java. Una forma confiable de mantener sus archivos seguros."
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