
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "es/redaction/java/metadata/version/ppt"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Redactar metadatos | Java"
ad_description: "Redacte la versión de los metadatos de PPT en Java"
############################# Head ############################
head_title: "Redacte los metadatos de la versión del documento PPT en Java"
head_description: "GroupDocs.Redaction es una potente API de desinfección que te permite eliminar o editar información confidencial de más de 30 tipos de documentos."

############################# Header ############################
title: "Redacte los metadatos de la versión del documento PPT en Java"
description: "GroupDocs.Redaction es una potente API de desinfección que te permite eliminar o editar información confidencial de más de 30 tipos de documentos."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "¿Qué es la redacción de metadatos?"
    content: |
        Para guardar el documento en el formato original, es necesario eliminar o eliminar sus metadatos para eliminar todos los datos confidenciales. Para ello, GroupDocs.Redaction proporciona una API de redacción de metadatos. La API GroupDocs.Redaction permite guardar los documentos redactados en PDF, transformar todas las páginas en imágenes rasterizadas o guardar el documento redactado en su formato original para su posterior edición. Todos los formatos de archivo, incluidos PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX y otros, tienen algunas propiedades de metadatos. Estas propiedades incluyen el nombre del autor, la categoría, el nombre de la empresa, los comentarios, la hora de creación, la última actualización y muchos más. También hay algunos datos ocultos asociados a los archivos que se pueden ver con diversas herramientas y técnicas. Con la API GroupDocs.Redaction puedes aplicar redacciones de metadatos a cualquiera de estas propiedades de metadatos. Puede cambiarlas o eliminarlas filtrando los metadatos que desee. En esta guía, explicaremos cómo puedes redactar los metadatos de la versión del documento PPT en Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redacte los metadatos de PPT en Java"
      content_left: |
        El siguiente código te permite buscar y eliminar datos confidenciales de un documento PPT. Puedes establecer el alcance de la redacción configurando un filtro, por ejemplo, en MetadataFilter.VERSION. Dejará sin efecto las coincidencias de las expresiones regulares en todos los elementos de metadatos, excepto en la propiedad «Version»: 

      title_right: "Cómo redactar los metadatos de PPT"
      content_right: |
        * Crea una instancia de la clase [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) y sube el archivo PPT
        * Cree una instancia de la clase [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) para buscar y reemplazar datos confidenciales de los metadatos del documento
        * Establezca el alcance de la redacción configurando el filtro, por ejemplo, use MetadataFilters.version en el siguiente código
        * Llame al método save con el objeto de [MetadataSearchredAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "aef660cb45245aebaae5c5eaa8054769"
      gistfile: "RedactVersionMetadata.java"
      
    - title_left: "Eliminar PPT metadatos en Java"
      content_left: |
        Puede reemplazar todos o algunos metadatos específicos del documento por valores vacíos (en blanco o mínimos) mediante la clase EraseMetaDataRedAction. El siguiente código muestra cómo puede filtrar y, a continuación, eliminar una propiedad de metadatos de un documento PPT. En el ejemplo siguiente se omiten todas las propiedades del documento: 
        
      title_right: "Cómo borrar los metadatos de la versión"
      content_right: |
        * Crea una instancia de la clase [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) y sube el archivo PPT
        * Crea una instancia de la clase [MetadataSearchredAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) para eliminar los metadatos del documento
        * Establezca el alcance de la redacción configurando el filtro, por ejemplo, reemplace MetadataFilter.all por MetadataFilter.VERSION en el siguiente código
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