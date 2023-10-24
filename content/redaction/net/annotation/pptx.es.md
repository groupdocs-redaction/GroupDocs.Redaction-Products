---
############################# Static ############################
layout: "autogen"
draft: false
path: "es/redaction/net/annotation/pptx"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redactar anotaciones en documentos PPTX usando expresiones regulares a través de .NET Core"
head_description: "Redactar información confidencial en anotaciones usando expresiones regulares de documentos de diferentes formatos"

############################# Header ############################
title: "Redactar anotaciones de archivos PPTX a través de C# y expresiones regulares en .NET aplicaciones principales"
description: "Encuentre y elimine información confidencial de documentos, hojas de cálculo y presentaciones de Office y OpenOffice, así como PPTX en Windows, Linux y macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Redacción de anotaciones de documentos para .NET API"
    content: |
        Una única interfaz independiente del formato para la desinfección de información confidencial y clasificada de los documentos e imágenes PDF, Word, Excel, PowerPoint, incluida la capacidad de cambiar metadatos y eliminar anotaciones. Con la herramienta GroupDocs.Redaction for .NET puede redactar la información clasificada y guardar el documento redactado en PDF, transformando todas las páginas en imágenes de trama o manteniendo el documento en su formato original para su posterior edición.

############################# Steps ############################
steps:
    enable: true
    title_left: "Redactar anotaciones de PPTX usando expresiones regulares a través de C#"
    content_left: |
        [GroupDocs.Redaction](es//redaction/net/) permite a los desarrolladores de .NET utilizar expresiones regulares al máximo para redactar el archivo PPTX con unos sencillos pasos.

        *   Cree una instancia de la clase [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) y cargue el archivo PPTX
        *   Cree una instancia de la clase [AnnotationRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/annotationredaction) para encontrar y reemplazar los comentarios.
        *   Llame al método [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) con objeto de AnnotationRedaction
        
    title_right: "Cómo utilizar la API de redacción GroupDocs"
    content_right: |
        Instale el paquete desde la línea de comandos como ```nuget install GroupDocs.Redaction``` o a través de la Consola del administrador de paquetes de Visual Studio con ```Install-Package GroupDocs.Redaction```. 
        Como alternativa, obtenga el instalador MSI sin conexión o las DLL en un archivo ZIP de [descargas](https://downloads.groupdocs.com/redaction/net) y consúltelo en su proyecto manualmente.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.pptx"))
        {
        	redactor.Apply(new AnnotationRedaction("(?im:john)", "[redacted]"));
        	redactor.Save();
        }
        ```

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