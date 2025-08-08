---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: es
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Drop-down ############################
supported_platforms:
  items:
    # supported_platforms loop
    - title: ".NET"
      tag: "net"
    # supported_platforms loop
    - title: "Java"
      tag: "java"
    # supported_platforms loop
    - title: "Python"
      tag: "python-net"

############################# Head ############################
head_title: "Elimina datos confidenciales de documentos usando Java"
head_description: "Protege tu información sensible con GroupDocs.Redaction for Java. Redacta, oculta o elimina contenido privado en PDFs, archivos de Office e imágenes."

############################# Header ############################
title: "Protege Datos Confidenciales con GroupDocs.Redaction"
description: "Elimina fácilmente datos privados, redacta texto y limpia metadatos de PDFs, Word, Excel, PowerPoint y formatos de imagen utilizando el confiable kit de herramientas Java."
words:
  for: "para"

actions:
  main: "Descarga Maven"
  main_link: "https://releases.groupdocs.com/java/repo/com/groupdocs/groupdocs-redaction/"
  alt: "Licencias"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/java/"
  title: "¿Listo para Comenzar?"
  description: "Prueba las funciones de GroupDocs.Redaction gratis o solicita una licencia."

release:
  title: "Versión {0} Lanzada"
  notes: "Consulta qué hay de nuevo"
  downloads: "Descargas"

code:
  title: "Pasos para Redactar Contenido del Documento"
  more: "Más ejemplos"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
  install: |
    <dependency>
      <groupId>com.groupdocs</groupId>
      <artifactId>groupdocs-redaction</artifactId>
      <version>{0}</version>
    </dependency>
  content: |
    ```java {style=abap}  
    // Carga tu archivo de origen con una instancia de Redactor
    final Redactor redactor = new Redactor("sample.pdf");
    try
    {
        // Define los criterios y configuraciones de redacción
        ReplacementOptions ro = new ReplacementOptions("[redacted]");
        ExactPhraseRedaction red = new ExactPhraseRedaction("Data", ro);

        // Ejecuta la operación de redacción
        RedactorChangeLog result = redactor.apply(red);

        // Guarda el archivo con las redacciones aplicadas
        redactor.save();
    }
    finally { redactor.close(); }
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction de un Vistazo"
  description: "Mejora tus aplicaciones Java con herramientas de redacción profesionales"
  features:
    # feature loop
    - title: "Eliminar Texto Sensible"
      content: "Con GroupDocs.Redaction for Java, puedes buscar y ocultar texto privado utilizando superposiciones o reemplazos personalizables. Compatible con PDFs, Word, Excel y más, es ideal para el cumplimiento regulatorio y el intercambio seguro de documentos."

    # feature loop
    - title: "Ocultar Imágenes"
      content: "Identifica y enmascara imágenes completamente o en parte según tus necesidades. Define reglas de detección y coordenadas de área para asegurar datos visuales de manera eficiente."

    # feature loop
    - title: "Limpiar Metadatos Incrustados"
      content: "Los archivos pueden contener información oculta como nombres de autores, herramientas de creación o detalles del dispositivo. GroupDocs.Redaction for Java te permite detectar y sanitizar metadatos en Word, Excel, imágenes y otros formatos."

    # feature loop
    - title: "Redactar Objetos Incrustados"
      content: "Sanea minuciosamente documentos redactando objetos como anotaciones, comentarios o artículos incrustados en PDF para eliminar cualquier rastro de información confidencial."

############################# Platforms ############################
platforms:
  enable: true
  title: "Independencia de Plataforma"
  description: "GroupDocs.Redaction for Java funciona en todos los principales sistemas operativos, soporta marcos populares e integra administradores de paquetes comunes."
  items:
    # platform loop
    - title: "Amazon"
      image: "amazon"
    # platform loop
    - title: "Docker"
      image: "docker"
    # platform loop
    - title: "Azure"
      image: "azure"
    # platform loop
    - title: "Eclipse"
      image: "eclipse"
    # platform loop
    - title: "IntelliJ"
      image: "intellij"
    # platform loop
    - title: "Windows"
      image: "windows"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "Maven"
      image: "maven"

############################# File formats ############################
formats:
  enable: true
  title: "Formatos de Archivo Soportados"
  description: |
    GroupDocs.Redaction for Java soporta trabajar con los siguientes [formatos de archivo](https://docs.groupdocs.com/redaction/java/supported-document-formats/).
  groups:
    # group loop
    - color: "green"
      content: |
        ### Formatos de MS Office
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### Otros Formatos de Office
        * **Portable:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **Formatos de Texto:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### Otros Formatos
        * **Web:** HTM, HTML, MD
        * **Imágenes:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **eBooks:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "Lo Que Puedes Hacer con GroupDocs.Redaction"
  description: "Ubica y redacta rápidamente contenido de PDFs, documentos de Office e imágenes con precisión."

  items:
    # feature loop
    - icon: "search"
      title: "Buscar con Precisión"
      content: "Utiliza modos de búsqueda sensibles e insensibles a mayúsculas para encontrar y redactar coincidencias exactas."

    # feature loop
    - icon: "text"
      title: "Buscar y Reemplazar Texto"
      content: "Detecta automáticamente y sustituye o elimina texto confidencial a través del documento."

    # feature loop
    - icon: "image"
      title: "Enmascarar con Imágenes Personalizadas"
      content: "Utiliza bloques de imagen para oscurecer texto redactado, preservando el diseño mientras ocultas detalles."

    # feature loop
    - icon: "search"
      title: "Usar Regex para Redacción Avanzada"
      content: "Utiliza expresiones regulares para detectar patrones complejos y redactar de manera inteligente."

    # feature loop
    - icon: "table"
      title: "Redactar Áreas Específicas"
      content: "Limita la redacción a páginas o zonas seleccionadas definiendo áreas precisas para dirigir."

    # feature loop
    - icon: "template"
      title: "Limpiar Campos de Metadatos"
      content: "Identifica y limpia metadatos de documentos, incluidos autor, empresa o datos de seguimiento."

    # feature loop
    - icon: "pdf"
      title: "Exportar en el Formato Deseado"
      content: "Guarda tus archivos redactados en PDF u otro formato soportado sin perder la integridad del diseño."

    # feature loop
    - icon: "template"
      title: "Borrar Todos los Metadatos"
      content: "Elimina completamente metadatos de los archivos soportados en un solo comando."

    # feature loop
    - icon: "hyperlink"
      title: "Políticas de Redacción Automatizadas"
      content: "Crea configuraciones de redacción reutilizables almacenadas en XML para una redacción por lotes consistente."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Muestras de Código"
  description: "Ejemplos comunes de casos de uso de GroupDocs.Redaction for Java"
  items:
    # code sample loop
    - title: "Redacción Usando Regex"
      content: |
        GroupDocs.Redaction for Java empodera a los desarrolladores Java a aplicar [redacción basada en regex](https://docs.groupdocs.com/redaction/java/text-redactions/#use-regular-expression) con enmascarado de imagen opcional:
        {{< landing/code title="Redactar Documentos de Word Usando Expresiones Regulares">}}
        ```java {style=abap}
        // Crea una instancia de la clase Redactor
        final Redactor redactor = new Redactor("source.docx");
        try
        {
            // Define reglas de redacción usando una expresión regular
            ReplacementOptions replacement = new ReplacementOptions(java.awt.Color.BLUE);
            RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);

            // Enmascara todo el texto coincidente con superposiciones de cuadros azules
            redactor.apply(redaction);

            // Guarda el documento de Word redactado
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Eliminar Todos los Metadatos"
      content: |
        Con nuestra API, puedes [eliminar metadatos](https://docs.groupdocs.com/redaction/java/metadata-redactions/#clean-metadata) a través de múltiples tipos de archivos en un solo paso:
        {{< landing/code title="Eliminar Todo Metadato de Presentaciones">}}
        ```java {style=abap}   
        // Proporciona la ruta de la presentación a Redactor
        final Redactor redactor  = new Redactor("source.pptx");
        try 
        {
            // Configura las opciones de redacción
            EraseMetadataRedaction red = new EraseMetadataRedaction(MetadataFilters.All);

            // Borra todos los metadatos de la presentación
            redactor.apply(red);

            // Guarda el archivo de presentación limpio
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}

---
