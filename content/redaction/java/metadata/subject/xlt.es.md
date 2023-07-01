
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "es/redaction/java/metadata/subject/xlt"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLTM XLTX  
ad_headline: "Redactar metadatos | Java"
ad_description: "Redacte los metadatos del asunto de un archivo XLT en Java"
############################# Head ############################
head_title: "Redacte los metadatos del asunto de un archivo XLT en Java"
head_description: "GroupDocs.Redaction s proporciona una API flexible que permite buscar, reemplazar o eliminar cualquier propiedad de metadatos mediante filtros."

############################# Header ############################
title: "Redacte los metadatos del asunto de un archivo XLT en Java"
description: "GroupDocs.Redaction s proporciona una API flexible que permite buscar, reemplazar o eliminar cualquier propiedad de metadatos mediante filtros."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Aproximadamente GroupDocs.Redaction para Java"
    content: |
        La redacción se refiere a la eliminación de información confidencial o no deseada de los documentos electrónicos. Todos los formatos de archivo, incluidos PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX y otros, tienen algunas propiedades de metadatos. Estas propiedades incluyen el nombre del autor, la categoría, el nombre de la empresa, los comentarios, la hora de creación, la última actualización y muchas más. A veces es necesario eliminar por completo los campos de metadatos no deseados o puede que desee actualizar sus valores. También hay algunos datos ocultos asociados a los archivos que se pueden ver utilizando diversas herramientas y técnicas. Hay muchos casos en los que no desea que nadie acceda a estos datos. Con la API GroupDocs.Redaction puedes aplicar redacciones de metadatos a cualquiera de estas propiedades de metadatos. Puede cambiarlas o eliminarlas filtrando los metadatos que desee. En esta guía, explicaremos cómo puedes eliminar el tema de los XLT metadatos de Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Actualización de los metadatos del asunto en Java"
      content_left: |
        El siguiente código te permite buscar y eliminar datos confidenciales de un documento XLT. Puedes establecer el alcance de la redacción configurando un filtro, por ejemplo, en MetadataFilter.Subject. Dejará sin efecto las coincidencias de las expresiones regulares en todos los elementos de metadatos, excepto en la propiedad «Asunto»: 

      title_right: "Cómo redactar los metadatos de XLT"
      content_right: |
        * Crea una instancia de la clase [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) y sube el archivo XLT
        * Cree una instancia de la clase [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) para buscar y reemplazar datos confidenciales de los metadatos del documento
        * Establezca el alcance de la redacción configurando el filtro, por ejemplo, use MetadataFilters.Subject en el siguiente código
        * Llame al método save con el objeto de [MetadataSearchredAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "f38d8b4c0acad38e154dc7f64018e51e"
      gistfile: "RedactSubjectMetadata.java"
      
    - title_left: "Borrar un campo de metadatos en Java"
      content_left: |
        Puede reemplazar todos o algunos metadatos específicos del documento por valores vacíos (en blanco o mínimos) mediante la clase EraseMetaDataRedAction. El siguiente código muestra cómo puede filtrar y, a continuación, eliminar una propiedad de metadatos de un documento XLT. En el ejemplo siguiente se omiten todas las propiedades del documento: 
        
      title_right: "Eliminar XLT metadatos a través de GroupDocs.Redaction"
      content_right: |
        * Crea una instancia de la clase [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) y sube el archivo XLT
        * Crea una instancia de la clase [MetadataSearchredAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) para eliminar los metadatos del documento
        * Establezca el alcance de la redacción configurando el filtro, por ejemplo, reemplace MetadataFilter.all por MetadataFilter.SUBJECT en el siguiente código
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
        
      title_right: "¿Por qué usar GroupDocs.Redaction?"
      content_right: |
        * Permita a los usuarios añadir formatos de documentos personalizados y tipos de redacciones
        * Una forma sencilla de redactar diferentes tipos de metadatos: nombre del autor, versión, título, tema, descripción y muchos más
        * Posibilidad de configurar el documento de representación por rango de páginas como PDF
        * No se requiere ningún software adicional para eliminar la información confidencial
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