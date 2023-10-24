
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "es/redaction/net/metadata/title/pps"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redacciones de metadatos de documentos en C#"
head_description: "Redacte metadatos confidenciales en C# mediante la aplicación de filtros para documentos de diferentes formatos"

############################# Header ############################
title: "Redacte los metadatos del título del documento PPS en C#"
description: "La API de GroupDocs.Redaction permite buscar y, a continuación, actualizar o eliminar cualquier dato confidencial de los metadatos de un documento."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "¿Qué es la redacción de metadatos?"
    content: |
        La mayoría de las personas se preocupan por la redacción del texto de un documento. Pero la redacción de metadatos es igual de importante. Los metadatos son los datos ocultos de un documento que pueden contener información confidencial que quizás no quieras compartir con otros. La redacción de metadatos se refiere a la eliminación de información confidencial o no deseada de los documentos electrónicos. Los metadatos de un documento incluyen el nombre del autor, la categoría, el nombre de la empresa, los comentarios, la hora de creación, la última actualización y muchos más. A veces es necesario eliminar por completo los campos de metadatos no deseados o puede que desee actualizar sus valores. Con la API GroupDocs.Redaction puedes aplicar redacciones de metadatos a cualquiera de estas propiedades de metadatos. Puede cambiarlas o eliminarlas filtrando los metadatos que desee. En esta guía, explicaremos cómo puedes eliminar los metadatos del título del documento PPS en C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redactar el título del documento PPS"
      content_left: |
        El siguiente código te permite buscar y eliminar datos confidenciales de un documento PPS. Puedes establecer el alcance de la redacción configurando un filtro, por ejemplo, en MetadataFilter.title. Dejará sin efecto las coincidencias de las expresiones regulares en todos los elementos de metadatos, excepto en la propiedad «Título»:
        

      title_right: "Cómo redactar los metadatos de PPS"
      content_right: |
        * Crea una instancia de la clase [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) y sube el archivo PPS
        * Cree una instancia de la clase [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) para buscar y reemplazar datos confidenciales de los metadatos del documento
        * Establezca el alcance de la redacción configurando el filtro, por ejemplo, use MetadataFilter.title en el siguiente código
        * Llama al método [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) con el objeto de [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "78fca6b6facd4e3ea79038d7abcb092f"
      gistfile: "RedactTitleMetadata.cs"

    - title_left: "Eliminar PPS metadatos en C#"
      content_left: |
        Puede reemplazar todos o algunos metadatos específicos del documento por valores vacíos (en blanco o mínimos) mediante la clase EraseMetaDataRedAction. El siguiente código muestra cómo puede filtrar y, a continuación, eliminar una propiedad de metadatos de un documento PPS. En el ejemplo siguiente se omiten todas las propiedades del documento:
        
        
      title_right: "Borrar PPS metadatos"
      content_right: |
        * Crea una instancia de la clase [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) y sube el archivo PPS
        * Crea una instancia de [EraseMetaDataRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) para eliminar los metadatos del documento
        * Establezca el alcance de la redacción configurando el filtro, por ejemplo, reemplace MetadataFilter.all por MetadataFilter.TITLE en el siguiente código 
        * Llama al método [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) con el objeto de [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        
      gisthash: "cef91d8d8f160aaf560218d1abd520e2"
      gistfile: "CleanMetadata.cs"

    - title_left: "Requerimientos del sistema"
      content_left: |
        GroupDocs.Redaction for .NET admite cualquier sistema operativo de 32 o 64 bits en el que esté instalada la plataforma .NET. No requiere la instalación de ningún software externo ni de ninguna herramienta de terceros. Para obtener una guía completa de requisitos del sistema, visite [requisitos del sistema](https://docs.groupdocs.com/redaction/net/system-requirements)
        
      title_right: "Instrucciones de instalación"
      content_right: |
        Instale desde la línea de comandos como ``nuget install GroupDocs.Redaction ```o mediante la consola del administrador de paquetes de Visual Studio con ``Install-Package GroupDocs.Redaction```. 
        También puedes obtener el instalador MSI sin conexión o las DLL en un archivo ZIP en [downloads](https://downloads.groupdocs.com/redaction/net) y hacer referencia a ellos manualmente en tu proyecto.

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