---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: es
product: "Redaction"
product_tag: "redaction"
platform: "Net"
platform_tag: "net"

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
head_title: "Redacta datos sensibles en tus documentos utilizando .NET"
head_description: "Protege tus documentos empresariales con GroupDocs.Redaction for .NET. Redacta, oculta o elimina contenido confidencial de PDFs, Word, Excel, PowerPoint y archivos de imagen."

############################# Header ############################
title: "Asegura Tu Contenido con GroupDocs.Redaction"
description: "Redacta, oculta o elimina permanentemente información y metadatos sensibles de PDFs, documentos de Word, hojas de cálculo, presentaciones e imágenes utilizando nuestra potente solución .NET."
words:
  for: "para"

actions:
  main: "Descarga Nuget"
  main_link: "https://www.nuget.org/packages/GroupDocs.Redaction"
  alt: "Licencias"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/net/"
  title: "¿Listo para Comenzar?"
  description: "Prueba las funciones de GroupDocs.Redaction gratis o solicita una licencia."

release:
  title: "Versión {0} Lanzada"
  notes: "Consulta qué hay de nuevo"
  downloads: "Descargas"

code:
  title: "Cómo Redactar Contenido de Archivos"
  more: "Más ejemplos"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
  install: "dotnet add package GroupDocs.Redaction"
  content: |
    ```csharp {style=abap}   
    // Pasa el archivo de entrada a una instancia de Redactor
    using (Redactor redactor = new Redactor("source.pdf"))
    {
        // Configura las opciones de redacción
        var repl_opt = new ReplacementOptions("[redacted]");
        var red = new ExactPhraseRedaction("Data", repl_opt);

        // Ejecuta el proceso de redacción
        RedactorChangeLog result = redactor.Apply(red);

        // Guarda el archivo redactado
        if (result.Status != RedactionStatus.Failed)
        {
            redactor.Save();
        }
    }  
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction de un Vistazo"
  description: "Agrega redacción de contenido de calidad profesional a tus aplicaciones .NET"
  features:
    # feature loop
    - title: "Redactar Contenido Textual"
      content: "GroupDocs.Redaction for .NET te permite localizar y redactar texto sensible. El texto se puede reemplazar u ocultar utilizando superposiciones de imagen coloreadas para mayor seguridad. Soportado en una amplia variedad de formatos, incluidos PDFs y documentos de Office, esta función ayuda a proteger datos privados y agilizar el cumplimiento empresarial."

    # feature loop
    - title: "Redactar Imágenes"
      content: "Detecta y redacta automáticamente imágenes, ya sea completamente o en parte, en las páginas de documentos. Especifica criterios de búsqueda y regiones objetivo para enmascarar contenido visual sensible de manera eficiente."

    # feature loop
    - title: "Gestionar Metadatos de Archivos"
      content: "Muchos tipos de archivo contienen metadatos ocultos, como nombres de autores en archivos de Word o datos EXIF en imágenes. GroupDocs.Redaction for .NET facilita encontrar y redactar esta información para garantizar la privacidad completa de los datos."

    # feature loop
    - title: "Redactar Objetos del Documento"
      content: "Asegura una protección completa del contenido redactando elementos específicos del documento como anotaciones, comentarios y objetos incrustados en formatos como PDFs."

############################# Platforms ############################
platforms:
  enable: true
  title: "Independencia de Plataforma"
  description: "GroupDocs.Redaction for .NET es compatible con una amplia gama de sistemas operativos, marcos de desarrollo y administradores de paquetes."
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
    - title: "VS Code"
      image: "vs_code"
    # platform loop
    - title: "ReSharper"
      image: "resharper"
    # platform loop
    - title: "macOS"
      image: "finder"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "NuGet"
      image: "nuget"

############################# File formats ############################
formats:
  enable: true
  title: "Formatos de Archivo Soportados"
  description: |
    GroupDocs.Redaction for .NET soporta operaciones con los siguientes [formatos de archivo](https://docs.groupdocs.com/redaction/net/supported-document-formats/).
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
  title: "Características de GroupDocs.Redaction for .NET"
  description: "Extrae y redacta datos de PDFs, archivos de Office e imágenes con alta velocidad y precisión."

  items:
    # feature loop
    - icon: "search"
      title: "Búsqueda Flexible"
      content: "Realiza búsquedas sensibles o insensibles a mayúsculas para redactar frases o términos específicos."

    # feature loop
    - icon: "text"
      title: "Reemplazar o Eliminar Texto"
      content: "Localiza y reemplaza o elimina fácilmente texto sensible en tus documentos."

    # feature loop
    - icon: "image"
      title: "Ocultar Texto con Imágenes"
      content: "Utiliza superposiciones de imagen coloreadas para ocultar visualmente el contenido redactado en lugar de reemplazar texto."

    # feature loop
    - icon: "search"
      title: "Capacidades de Búsqueda Avanzadas"
      content: "Utiliza expresiones regulares para una redacción de contenido precisa y flexible a través de conjuntos de datos complejos."

    # feature loop
    - icon: "table"
      title: "Redacción Específica"
      content: "Dirige la redacción a páginas específicas o áreas definidas para limitarla solo a secciones relevantes."

    # feature loop
    - icon: "template"
      title: "Redacción de Metadatos"
      content: "Encuentra y redacta propiedades de metadatos para proteger la propiedad y detalles de creación del documento."

    # feature loop
    - icon: "pdf"
      title: "Formatos de Salida Flexibles"
      content: "Exporta archivos redactados a PDF o cualquier formato soportado mientras preservas la integridad del diseño."

    # feature loop
    - icon: "template"
      title: "Borrado Completo de Metadatos"
      content: "Borra todos los metadatos de un documento en una sola acción para asegurar la privacidad absoluta."

    # feature loop
    - icon: "hyperlink"
      title: "Reglas de Redacción Basadas en XML"
      content: "Define políticas de redacción en formato XML para un procesamiento repetible y automatizado a través de múltiples archivos."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Muestras de Código"
  description: "Ejemplos típicos de uso de GroupDocs.Redaction for .NET en acción"
  items:
    # code sample loop
    - title: "Redacción con Expresiones Regulares"
      content: |
        GroupDocs.Redaction for .NET permite a los desarrolladores C# redactar texto usando [expresiones regulares](https://docs.groupdocs.com/redaction/net/text-redactions/#use-regular-expression) y ocultarlo con superposiciones de imagen:
        {{< landing/code title="Redactar Documentos de Word Usando Expresiones Regulares">}}
        ```csharp {style=abap}
        // Crea una instancia de la clase Redactor
        using (Redactor redactor = new Redactor("source.docx"))
        {
            // Define reglas de redacción usando una expresión regular
            var replacement = new ReplacementOptions(System.Drawing.Color.Blue);
            var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);
            
            // Enmascara todo el texto coincidente con superposiciones de cuadros azules
            redactor.Apply(redaction);

            // Guarda el documento de Word redactado
            redactor.Save();
        }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Limpieza de Metadatos"
      content: |
        Utiliza nuestra API para [eliminar](https://docs.groupdocs.com/redaction/net/metadata-redactions/#clean-metadata) todos los metadatos de los formatos de archivo soportados:
        {{< landing/code title="Eliminar Todo Metadato de Presentaciones">}}
        ```csharp {style=abap}   
        // Proporciona la ruta de la presentación a Redactor
        using (Redactor redactor = new Redactor("source.pptx"))
        {
            // Configura las opciones de redacción
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Borra todos los metadatos de la presentación
            redactor.Apply(redaction);

            // Guarda el archivo de presentación limpio
            redactor.Save();
        }
        ```
        {{< /landing/code >}}

---
