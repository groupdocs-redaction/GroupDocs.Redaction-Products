
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: es
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Eliminar Texto Privado de EXCEL Usando Java"
head_description: "Mantenga sus hojas de cálculo EXCEL seguras eliminando contenido sensible con GroupDocs.Redaction for Java y Java. Redacción rápida y simple."

############################# Header ############################
title: "Editar o Eliminar Texto en Archivos EXCEL con Java" 
description: "Limpie sus archivos EXCEL con GroupDocs.Redaction for Java y Java. Ideal para proteger datos empresariales o personales."
subtitle: "Lo Que Puede Hacer con GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Conozca GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java proporciona a los desarrolladores de Java todo lo que necesitan para limpiar archivos EXCEL. Edite u oculte texto, imágenes, metadatos y notas con precisión.

############################# Steps ############################
steps:
    enable: true
    title: "Cómo Redactar Contenido en Archivos Excel"
    content: |
      Utilice GroupDocs.Redaction for Java en sus proyectos de Java para eliminar o cubrir texto que no desea compartir.
      
      1. Cree un Redactor y cargue el archivo Excel.
      2. Elija la configuración de redacción.
      3. Defina qué buscar y con qué reemplazarlo.
      4. Ejecute la redacción y guarde su archivo.
   
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
        // Cómo redactar texto en un archivo EXCEL

        // Cargue el archivo con Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Establezca sus reglas de redacción
            // Ingrese el texto objetivo y el reemplazo
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Aplique y guarde el archivo limpiado
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Más Herramientas de Redacción"
  description: "GroupDocs.Redaction for Java ayuda a limpiar contenido privado en muchos tipos de documentos. Ideal para la privacidad antes de compartir."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Características de redacción de texto, imagen y metadatos"
  features:
    # feature loop
    - title: "Reemplazar texto privado"
      content: "Encuentre y cambie palabras o números coincidentes en todo el archivo. Utilice patrones de búsqueda o coincidencias exactas."

    # feature loop
    - title: "Ocultar partes de imágenes"
      content: "Agregue cuadros de superposición para ocultar imágenes o celdas. Elija colores, tamaños y posiciones."

    # feature loop
    - title: "Eliminar información de fondo"
      content: "Borre datos ocultos como autoría, marcas de tiempo o comentarios del documento."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redactar Patrones con Regex"
      content: |
        Utilice expresiones regulares para encontrar y ocultar patrones como direcciones de correo electrónico o números de cuenta.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra el archivo que desea limpiar
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Cree un patrón regex de EMAIL y establezca el texto de reemplazo
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Ejecute el proceso de redacción
              redactor.apply(redaction);

              // Guarde la versión actualizada
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
    title: "Redactar Contenido en EXCEL Usando Java"
    exclude: "EXCEL"
    description: "Limpie datos privados de archivos EXCEL utilizando Java. Una forma inteligente de mantener sus hojas de cálculo seguras."
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