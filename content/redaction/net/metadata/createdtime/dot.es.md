
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "es/redaction/net/metadata/createdtime/dot"
otherformats: BMP DOC DOCM DOCX DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redacte los metadatos confidenciales de los documentos en C#"
head_description: "Aplique la redacción de metadatos mediante la aplicación de filtros para documentos de diferentes formatos"

############################# Header ############################
title: "Redacte los metadatos de createdtime del documento DOT en C#"
description: "GroupDocs.Redaction s proporciona una API flexible que permite buscar, reemplazar o eliminar cualquier propiedad de metadatos mediante filtros."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "¿Qué es la redacción de metadatos?"
    content: |
        Todos los formatos de archivo, incluidos PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX y otros, tienen algunas propiedades de metadatos. Estas propiedades incluyen el nombre del autor, la categoría, el nombre de la empresa, los comentarios, la hora de creación, la última actualización y muchas más. La redacción se refiere a la eliminación de información confidencial o no deseada de los documentos electrónicos. A veces es necesario eliminar por completo los campos de metadatos no deseados o puede que desee actualizar sus valores. También hay algunos datos ocultos asociados a los archivos que se pueden ver utilizando diversas herramientas y técnicas. Hay muchos casos en los que no desea que nadie acceda a estos datos. Con la API GroupDocs.Redaction puedes aplicar redacciones de metadatos a cualquiera de estas propiedades de metadatos. Puede cambiarlas o eliminarlas filtrando los metadatos que desee. En esta guía, explicaremos cómo puedes eliminar los metadatos de createdtime del documento DOT en C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Eliminar metadatos de DOT en C#"
      content_left: |
        Puedes reemplazar todos los metadatos o algunos específicos de un documento DOT por valores vacíos mediante la clase EraseMetaDataRedAction. El siguiente código muestra cómo puede filtrar y, a continuación, eliminar una propiedad de metadatos de un documento DOT. En el siguiente ejemplo, se omiten todas las propiedades del documento:
        

      title_right: "Borrar metadatos del documento DOT"
      content_right: |
        * Crea una instancia de la clase [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) y sube el archivo DOT
        * Crea una instancia de [EraseMetaDataRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) para eliminar los metadatos del documento
        * Establezca el alcance de la redacción configurando el filtro, por ejemplo, reemplace MetadataFilter.all por MetadataFilter.createdTime en el siguiente código
        * Llama al método [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) con el objeto de [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "cef91d8d8f160aaf560218d1abd520e2"
      gistfile: "CleanMetadata.cs"

    - title_left: "Redacte los metadatos de DOT en C#"
      content_left: |
        El siguiente código te permite buscar y eliminar datos confidenciales de un documento DOT. Puedes establecer el margen de redacción configurando un filtro, por ejemplo, en MetadataFilter.createdTime. - Se dejarán sin hacer las coincidencias de las expresiones regulares en todos los elementos de metadatos, excepto en la propiedad «Createdtime»:
        
        
      title_right: "Cómo redactar los metadatos de DOT"
      content_right: |
        * Crea una instancia de la clase [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) y sube el archivo DOT
        * Cree una instancia de la clase [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) para buscar y reemplazar datos confidenciales de los metadatos del documento
        * Establezca el alcance de la redacción configurando el filtro, por ejemplo, use MetadataFilter.createdTime en el siguiente código 
        * Llama al método [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) con el objeto de [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        
      gisthash: "4bc023c912c5eb34b1490c159a35a6ea"
      gistfile: "RedactCreatedTimeMetadata.cs"

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