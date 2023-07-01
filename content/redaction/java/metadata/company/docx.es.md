
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "es/redaction/java/metadata/company/docx"
otherformats: BMP DOC DOCM DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Redactar metadatos | Java"
ad_description: "Redactar el nombre de la empresa de los metadatos de DOCX en Java"
############################# Head ############################
head_title: "Redacción de metadatos del documento DOCX en Java"
head_description: "Busque, reemplace, elimine o edite fácilmente metadatos de varios tipos de documentos mediante la aplicación de filtros para elegir propiedades de metadatos específicas mediante la API de GroupDocs.Redaction para Java."

############################# Header ############################
title: "Redacción de metadatos del documento DOCX en Java"
description: "Busque, reemplace, elimine o edite fácilmente metadatos de varios tipos de documentos mediante la aplicación de filtros para elegir propiedades de metadatos específicas mediante la API de GroupDocs.Redaction para Java."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Introducción a la redacción de metadatos"
    content: |
        A veces es necesario eliminar por completo los campos de metadatos no deseados o puede que desee actualizar sus valores. También hay datos ocultos asociados a los archivos que se pueden ver con diversas herramientas y técnicas. Hay muchas situaciones en las que no desea que nadie pueda acceder a estos datos. La redacción significa la eliminación de información confidencial o no deseada de varios documentos. Todos los formatos de archivo, incluidos PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX y otros, tienen estructuras de metadatos específicas. Las propiedades de los metadatos incluyen el nombre del autor, la categoría, el nombre de la empresa, los comentarios, la hora de creación y la última actualización, etc. Con la API GroupDocs.Redaction puede aplicar la redacción de metadatos a cualquiera de estos campos de metadatos. Puede cambiarlos o eliminarlos filtrando los metadatos que desee. En esta guía, explicaremos cómo puedes aplicar la redacción de metadatos del documento DOCX en Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redactar los metadatos del archivo DOCX"
      content_left: |
        El siguiente código te permite buscar y eliminar datos confidenciales de un documento DOCX. Puede establecer el alcance de la redacción configurando un filtro, por ejemplo, en MetadataFilter.company. Dejará sin efecto las coincidencias de las expresiones regulares en todos los elementos de metadatos, excepto en la propiedad «Empresa»: 

      title_right: "Pasos para redactar los metadatos"
      content_right: |
        * Crea una instancia de la clase [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) y sube el archivo DOCX
        * Cree una instancia de la clase [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) para buscar y reemplazar datos confidenciales de los metadatos del documento
        * Establezca el alcance de la redacción configurando el filtro, por ejemplo, use MetadataFilters.company en el siguiente código
        * Llame al método save con el objeto de [MetadataSearchredAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "5b04349a19f1627145ab6a9f8f0f5fc0"
      gistfile: "RedactCompanyMetadata.java"
      
    - title_left: "Eliminar DOCX metadatos en Java"
      content_left: |
        Puede reemplazar todos o algunos metadatos específicos del documento por valores vacíos (en blanco o mínimos) mediante la clase EraseMetaDataRedAction. El siguiente código muestra cómo puede filtrar y, a continuación, eliminar una propiedad de metadatos de un documento DOCX. En el ejemplo siguiente se omiten todas las propiedades del documento: 
        
      title_right: "Cómo borrar los metadatos de la empresa"
      content_right: |
        * Crea una instancia de la clase [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) y sube el archivo DOCX
        * Crea una instancia de la clase [MetadataSearchredAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) para eliminar los metadatos del documento
        * Establezca el alcance de la redacción configurando el filtro, por ejemplo, reemplace MetadataFilter.all por MetadataFilter.company en el siguiente código
        * Llame al método save con el objeto de [MetadataSearchredAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
      gisthash: "84586804ee996134fd12f2061f989fd5"
      gistfile: "CleanMetadata.java"

    - title_left: "Requerimientos del sistema"
      content_left: |
        GroupDocs.Redaction for Java Las API son compatibles con las principales plataformas y sistemas operativos. Para obtener una guía completa de los requisitos del sistema, visita [requisitos del sistema](https://docs.groupdocs.com/redaction/java/system-requirements). Antes de ejecutar el código que aparece a continuación, asegúrate de tener los siguientes requisitos previos instalados en tu sistema:
        * Sistemas operativos: Microsoft Windows, Linux, Mac OS
        * Entorno de desarrollo: NetBeans, Intellij IDEA, Eclipse, etc.
        * Java Entorno de ejecución: J2SE 6.0 y superior
        * Obtén la versión más reciente de GroupDocs.Redaction for Java en [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)
        
      title_right: "Por qué usar GroupDocs.Redaction"
      content_right: |
        * Permita a los usuarios añadir formatos de documentos personalizados y tipos de redacciones
        * No se requiere ningún software adicional para eliminar la información confidencial
        * Posibilidad de configurar el documento de representación por rango de páginas como PDF
        * Una forma sencilla de redactar diferentes tipos de metadatos: nombre del autor, versión, título, tema, descripción y muchos más
        * Extracción de información del documento: tipo de archivo, recuento de páginas, etc.
        

############################# Demos ############################
demos:
    enable: true
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---