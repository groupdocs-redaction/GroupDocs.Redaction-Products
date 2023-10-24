---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "es/redaction/net/text/docx"
otherformats: CSV DOC DOCM DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redactar información confidencial de documentos a través de .NET Core"
head_description: "Aplique la redacción de texto usando una frase exacta o una expresión regular para documentos de diferentes formatos"

############################# Header ############################
title: "Redactar archivos DOCX a través de C# en aplicaciones .NET Core"
description: "Buscar y reemplazar texto en documentos, hojas de cálculo y presentaciones de Office y OpenOffice, así como DOCX en Windows, Linux y macOS"

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Redacción de documentos para la API de .NET"
    content: |
        Una única interfaz independiente del formato para redactar información confidencial y clasificada de documentos e imágenes PDF, Word, Excel, PowerPoint, incluida la capacidad de cambiar metadatos y eliminar comentarios. Con la herramienta GroupDocs.Redaction, puede redactar texto y guardar el documento redactado en PDF, transformando todas las páginas en imágenes rasterizadas o manteniendo el documento en su formato original para su posterior edición.

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "Redactar texto exacto de DOCX a través de C#"
      content_left: |
        [GroupDocs.Redaction](/redaction/net/) facilita a los desarrolladores de .NET agregar la función de redacción de archivos DOCX con unos sencillos pasos. 

        * Cree una instancia de la clase [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) y cargue el archivo DOCX 
        * Crear una instancia de la clase [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/exactphraseredaction) para buscar y reemplazar el texto
        * Llame al método [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) con objeto de ExactPhraseRedaction

      title_right: "Comience con la API de Redacción"
      content_right: |
        Instale desde la línea de comandos como ```nuget install GroupDocs.Redaction``` o a través de la Consola del administrador de paquetes de Visual Studio con ```Install-Package GroupDocs.Redaction```.
        Como alternativa, obtenga el instalador MSI sin conexión o las DLL en un archivo ZIP de [descargas](https://downloads.groupdocs.com/redaction/net) y consúltelo en su proyecto manualmente.

      gisthash: "6270f4af5c2fdfae30c6b28a4fd150a6"
      gistfile: "ExactPhraseRedaction.cs"
      
    - title_left: "Requisitos del sistema"
      content_left: |
        Las API de GroupDocs.Redaction para .NET son compatibles con todas las principales plataformas y sistemas operativos. Para obtener una guía completa de requisitos del sistema, visite [requisitos del sistema](https://docs.groupdocs.com/redaction/net/system-requirements/) Antes de ejecutar el código a continuación, asegúrese de que los siguientes requisitos previos estén instalados en su sistema:
        * Sistemas Operativos: Microsoft Windows, Linux, Mac OS
        * Entorno de desarrollo: Visual Studio, Xamarin, MonoDevelop, etc.
        * Marcos: .NET Framework, .NET Standard, .NET Core, Mono
        * Obtenga la última versión de las API GroupDocs.Redaction .NET de [NuGet](https://www.nuget.org/packages/GroupDocs.Redaction/)
        
      title_right: "Por qué usar GroupDocs.Redaction"
      content_right: |
        * Permitir a los usuarios agregar formatos de documentos personalizados y tipos de redacción
        * No se requiere software adicional para eliminar información confidencial
        * Capacidad para configurar el documento de renderizado de rango de página a PDF
        * Una forma sencilla de escribir diferentes tipos de metadatos: nombre del autor, versión, título, tema, descripción y muchos más
        * Extracción de información del documento: tipo de archivo, número de páginas, etc.
        * Soporte completo para múltiples formatos de datos

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