---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "es/redaction/net/metadata /docm/"
otherformats: PDF DOC DOT DOCX DOTX DOTM RTF XLSX XLSM XLTX XLTM XLS XLT CSV PPT PPTX  PPS POT PPSX PPTM PPSM POTM JPEG TIFF PNG BMP GIF 

############################# Head ############################
head_title: "Aplicar redacciones de metadatos a PDF, DOCX, PPT, PPTX, XLS, XLSX en .NET"
head_description: "GroupDocs.Redactions .NET API permite a los desarrolladores de software aplicar redacciones de metadatos a diferentes formatos de archivo como PDF DOC DOCX RTF XLSX CSV PPT PPTX e imágenes"

############################# Header ############################
title: "Redactar y filtrar metadatos de PDF, DOCX, PPT, PPTX, XLS, XLSX y más"
description: "GroupDocs.Redactions .NET API permite a los desarrolladores de software redactar o filtrar metadatos de varios formatos de archivo como PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX y muchos otros"

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "¿Qué es la redacción de metadatos?"
    content: |
        Los metadatos son un tipo de datos que proporcionan información sobre otros datos. En otras palabras, muchos piensan en los metadatos como referencias a los datos. Ayuda a resumir la información básica sobre los datos que se pueden usar para rastrear y administrar datos fácilmente. GroupDocs.Redaction para .NET es una potente API nativa que permite a los desarrolladores de software redactar información confidencial y clasificada de varios tipos de documentos sin instalar ningún software externo o herramienta de terceros. Ha proporcionado soporte para varios filtros como autor, empresa, categoría, tamaño de un documento, fecha de creación, título, Última impresión, comentarios, etc. Ayuda a los usuarios a aplicar redacciones de metadatos a varios formatos de documentos populares, como documentos de procesamiento de textos, hojas de cálculo de Excel, presentaciones, PDF y archivos de imágenes rasterizadas. Los desarrolladores también pueden actualizar, reemplazar o borrar metadatos aplicando filtros o utilizando la búsqueda. Además, los desarrolladores pueden aplicar fácilmente múltiples redacciones en una sola llamada. Así que mejor intente automatizar su proceso de redacción de documentos y metadatos descargando la API y explorando sus características básicas y avanzadas.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Cómo limpiar metadatos del documento DOCM en Java"
      content_left: |
        GroupDocs.Redaction para .NET es una potente API que permite a los programadores redactar, ocultar o reemplazar la información clasificada de numerosos tipos de documentos populares mediante filtros o búsqueda por expresión regular.

        El siguiente ejemplo de código .NET muestra cómo aplicar la redacción de metadatos para reemplazar todos los metadatos o metadatos específicos en el documento con valores vacíos o mínimos.

      title_right: "Aplicar redacción de metadatos al archivo DOCM"
      content_right: |
        * Cree una instancia de la clase [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor)
        * Llame al método redactor.Apply con el objeto EraseMetadataRedaction de [EraseMetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction)
        * Llame al método redactor.save para guardar el documento en el archivo "*_Redacted.*" en formato original

      gisthash: "8f1bc20dff33c9a45c01a9e251555bf1"
      gistfile: "how_to_clean_metadata_dotnet.cs"
      
    - title_left: "Redactar metadatos del archivo DOCM a través de .NET"
      content_left: |
        GroupDocs.Redaction .NET API facilita la vida de los desarrolladores al ayudarlos a integrar la automatización de documentos y los trabajos de generación de informes con solo un par de líneas de código sin dependencias externas.
        
        El siguiente ejemplo de código C# .NET muestra cómo los desarrolladores de software pueden eliminar datos confidenciales de los metadatos del documento con solo un par de líneas de código.
        
      title_right: "Redacción de metadatos de archivos DOCM"
      content_right: |
        * Cree una instancia de la clase [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor)
        * Llame a [MetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadataredaction)
        * Llamar al método redaction.Filte
        * Llame al método redactor.save para guardar el documento en el archivo "*_Redacted.*" en formato original
        
      gisthash: "8dee499186930d60909dffa54579c9f4"
      gistfile: "how_to_redact_metadata_dotnet.cs"

    - title_left: "Requisitos del sistema"
      content_left: |
        Las API de GroupDocs.Redaction para .NET son compatibles con las principales plataformas y sistemas operativos. Para obtener una guía completa de requisitos del sistema, visite [requisitos del sistema](https://docs.groupdocs.com/redaction/net/system-requirements/) Antes de ejecutar el código a continuación, asegúrese de tener los siguientes requisitos previos instalados en su sistema:
        * Sistemas operativos: Microsoft Windows, Linux, Mac OS
        * Entorno de desarrollo: Visual Studio, Xamarin, MonoDevelop, etc.
        * Marcos: .NET Framework, .NET Standard, .NET Core, Mono
        * Obtenga la última versión de GroupDocs.Redaction .NET API de [NuGet](https://www.nuget.org/packages/GroupDocs.Redaction/)
        
      title_right: "Por qué usar GroupDocs.Redacción"
      content_right: |
        * Permita que los usuarios agreguen formatos de documentos personalizados y tipos de redacciones
        * No se requiere software adicional para eliminar información confidencial
        * Posibilidad de configurar el documento de representación de rango de página como PDF
        * Manera fácil de redactar diferentes tipos de metadatos: nombre del autor, versión, título, tema, descripción y muchos más
        * Extracción de información del documento: tipo de archivo, número de páginas, etc.
        * Soporte completo para múltiples formatos de datos

demos:
    enable: true
        

more_formats:
    enable: true


back_to_top:
    enable: true
---