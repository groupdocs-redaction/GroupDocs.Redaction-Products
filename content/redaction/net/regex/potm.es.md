---
############################# Static ############################
layout: "autogen"
draft: false
path: "es/redaction/net/regex/potm"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redactar documentos POTM usando expresiones regulares a través de .NET Core"
head_description: "Redactar información confidencial utilizando expresiones regulares de documentos de diferentes formatos"

############################# Header ############################
title: "Desinfecte archivos POTM a través de C# y expresiones regulares en .NET aplicaciones principales"
description: "Encuentre y elimine información confidencial de documentos, hojas de cálculo y presentaciones de Office y OpenOffice, así como POTM en Windows, Linux y macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Redacción de texto de documento para .NET API"
    content: |
        Una única interfaz independiente del formato para la desinfección de información confidencial y clasificada de los documentos e imágenes PDF, Word, Excel, PowerPoint, incluida la capacidad de cambiar metadatos y eliminar comentarios. Con la herramienta GroupDocs.Redaction for .NET puede redactar la información clasificada y guardar el documento redactado en PDF, transformando todas las páginas en imágenes de trama o manteniendo el documento en su formato original para su posterior edición.

############################# Steps ############################
steps:
    enable: true
    title_left: "Redactar texto de POTM usando expresiones regulares a través de C#"
    content_left: |
        [GroupDocs.Redaction](es//redaction/net/) permite a los desarrolladores de .NET utilizar expresiones regulares al máximo para redactar el archivo POTM con unos sencillos pasos.

        *   Cree una instancia de la clase [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) y cargue el archivo POTM
        *   Cree una instancia de la clase [RegexRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/regexredaction) para buscar y reemplazar el texto
        *   Llame al método [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) con objeto de RegexRedaction
        
    title_right: "Comience con la API de Redacción"
    content_right: |
        Instale desde la línea de comandos como ```nuget install GroupDocs.Redaction``` o a través de la consola del administrador de paquetes de Visual Studio con ```Install-Package GroupDocs.Redaction```. 
        Como alternativa, obtenga el instalador MSI sin conexión o las DLL en un archivo ZIP de [descargas](https://downloads.groupdocs.com/redaction/net) y consúltelo en su proyecto manualmente.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.potm"))
        {
        	redactor.Apply(new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", new ReplacementOptions(System.Drawing.Color.Blue)));
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