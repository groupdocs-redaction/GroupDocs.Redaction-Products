---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "es/redaction/java/regex/xltm"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTX  

############################# Head ############################
head_title: "Redactar XLTM texto a través de expresiones regulares en Java"
head_description: "La API Java de GroupDocs.Redaction permite a los desarrolladores redactar texto de PDF DOC DOCX RTF XLSX CSV PPT PPTX e imágenes usando expresiones regulares en Java"

############################# Header ############################
title: "Cómo eliminar texto de archivos XLTM usando expresiones regulares y Java"
description: "La API de GroupDocs.Redaction Java permite redactar, ocultar o eliminar texto confidencial de documentos de procesamiento de texto, hojas de trabajo, presentaciones, PDF e imágenes mediante expresiones regulares."

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "¿Qué es la desinfección de texto?"
    content: |
        La redacción o desinfección de texto es el proceso de eliminar el texto o la información confidencial o no deseada de los documentos digitales y dejar intacto el resto del documento o párrafo que lo contiene. La redacción ayuda a los usuarios, así como a la organización, a proteger su información confidencial ocultándola o eliminándola de forma permanente. Usando la API GroupDocs.Redaction Java, los usuarios ahora pueden redactar, ocultar o eliminar texto confidencial de documentos de procesamiento de texto, hojas de trabajo, presentaciones, PDF y archivos de imágenes rasterizadas. La API proporciona una amplia gama de opciones y métodos para la redacción de información privada en los documentos. Admite la búsqueda y la redacción mediante expresiones regulares, el uso de redacciones textuales (códigos de exención) o gráficas (rectángulos de colores) y mucho más. Entonces, ¿por qué no probarlo y automatizar el proceso de redacción de documentos descargando la API y explorando sus funciones básicas y avanzadas?

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "Redactar XLTM usando expresiones regulares en Java"
      content_left: |
        GroupDocs.Redaction permite redactar fácilmente datos de naturaleza confidencial o privada de sus documentos. El caso de redacción más popular es eliminar un texto de un documento. 

        El siguiente código se puede usar para aplicar redacción textual a una parte particular de un documento usando una expresión regular. Permite a los usuarios reemplazar todos los números, haciendo coincidir el patrón "AA BB CCCCCC" con un rectángulo de color azul,

      title_right: "Eliminar datos confidenciales de XLTM"
      content_right: |
        * Cree una instancia de la clase [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) y cargue el archivo XLTM
        * Cree una instancia de la clase [RegexRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/RegexRedaction)
        * Llame al método redactor.apply con el objeto de la clase RegexRedaction
        * Llame al método redactor.save para guardar los cambios 

      gisthash: "6dea616a14aeeff21698dc03be62a341"
      gistfile: "RegularExpressionRedaction.java"
      
    - title_left: "Requisitos del sistema"
      content_left: |
        GroupDocs.Redaction for Java Las API son compatibles con las principales plataformas y sistemas operativos. Para obtener una guía completa de requisitos del sistema, visite [requisitos del sistema] (https://docs.groupdocs.com/redaction/java/system-requirements) Antes de ejecutar el código a continuación, asegúrese de tener los siguientes requisitos previos instalados en su sistema :
        * Sistemas operativos: Microsoft Windows, Linux, MacOS
        * Entorno de desarrollo: NetBeans, Intellij IDEA, Eclipse, etc.
        * Java Entorno de tiempo de ejecución: J2SE 6.0 y superior
        * Obtenga la última versión de GroupDocs.Redaction for Java de [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)
        
      title_right: "Por qué usar GroupDocs.Redaction"
      content_right: |
        * Permita que los usuarios agreguen formatos de documentos personalizados y tipos de redacciones
        * No se requiere software adicional para eliminar información confidencial
        * Capacidad para configurar el documento de representación de rango de página como PDF
        * Manera fácil de redactar diferentes tipos de metadatos: nombre del autor, versión, título, tema, descripción y muchos más
        * Extracción de información del documento: tipo de archivo, número de páginas, etc.

############################# Demos ############################
demos:
    enable: true
############################# About Formats ############################
about_formats:
    enable: true
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---