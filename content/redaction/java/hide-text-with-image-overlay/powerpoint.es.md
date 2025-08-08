
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: es
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Proteger Texto en POWERPOINT con Superposiciones de Java"
head_description: "Con GroupDocs.Redaction for Java, puedes bloquear texto privado en diapositivas POWERPOINT utilizando simples cuadros de superposición, sin cambiar el diseño."

############################# Header ############################
title: "Ocultar Texto en POWERPOINT Usando Superposiciones y Java" 
description: "Usa Java y GroupDocs.Redaction for Java para mantener tus diapositivas POWERPOINT seguras, enmascarando contenido sensible."
subtitle: "Dentro de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Acerca de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saber más"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ayuda a los desarrolladores de Java a limpiar diapositivas POWERPOINT bloqueando o eliminando contenido sensible como texto, metadatos o imágenes.

############################# Steps ############################
steps:
    enable: true
    title: "Limpiar Presentaciones Powerpoint Antes de Compartir"
    content: |
      Usa GroupDocs.Redaction for Java en aplicaciones Java para ocultar o eliminar partes sensibles de tus diapositivas.
      
      1. Crea un nuevo Redactor con la ruta de tu conjunto de diapositivas.
      2. Define tus preferencias de redacción.
      3. Configura el patrón de texto y el color de superposición.
      4. Ejecuta y guarda el archivo redactado.
   
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
        // Superponer áreas de texto en POWERPOINT

        // Abre el archivo con Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Ajusta la configuración de redacción
            // Ingresa texto y elige color de superposición
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Redacta y guarda el archivo actualizado
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redacción Simple para Diapositivas Sensibles"
  description: "GroupDocs.Redaction for Java facilita el bloqueo o la eliminación de contenido de las diapositivas, independientemente del caso de uso."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Herramientas de redacción que se adaptan"
  features:
    # feature loop
    - title: "Encontrar y reemplazar texto"
      content: "Protege frases o etiquetas sensibles en cualquier diapositiva."

    # feature loop
    - title: "Cubrir partes de visuales"
      content: "Agrega superposiciones a áreas seleccionadas de las diapositivas o imágenes."

    # feature loop
    - title: "Eliminar contenido oculto"
      content: "Borra metadatos de las diapositivas o notas de revisión antes de compartir."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex para Redacción de Texto"
      content: |
        Aprende a detectar y redactar texto utilizando coincidencia de patrones.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carga el conjunto de diapositivas
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Aplica tus reglas regex
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Ejecuta la redacción
              redactor.apply(redaction);

              // Guarda la versión final
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
    title: "Proteger Diapositivas POWERPOINT con Java"
    exclude: "POWERPOINT"
    description: "Usa herramientas de redacción y limpieza de Java para mantener tus diapositivas POWERPOINT privadas."
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