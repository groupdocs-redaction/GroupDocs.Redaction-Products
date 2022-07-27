---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "es/redaction/net/text/dotm/"
otherformats: PDF DOC DOT DOCX DOCM DOTX RTF XLSX XLSM XLTX XLTM XLS XLT CSV PPT PPTX  PPS POT PPSX PPTM PPSM POTM 

############################# Head ############################
head_title: "Redactar información confidencial de documentos a través de .NET Core"
head_description: "Aplique la redacción de texto usando una frase exacta o una expresión regular para documentos de diferentes formatos"

############################# Header ############################
title: "Redactar archivos DOTM a través de C# en aplicaciones .NET Core"
description: "Buscar y reemplazar texto en documentos, hojas de cálculo y presentaciones de Office y OpenOffice, así como DOTM en Windows, Linux y macOS"

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Redacción de documentos para la API de .NET"
    content: |
        Una única interfaz independiente del formato para redactar información confidencial y clasificada de documentos e imágenes PDF, Word, Excel, PowerPoint, incluida la capacidad de cambiar metadatos y eliminar comentarios. Con la herramienta GroupDocs.Redaction, puede redactar texto y guardar el documento redactado en PDF, transformando todas las páginas en imágenes rasterizadas o manteniendo el documento en su formato original para su posterior edición.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redactar texto exacto de DOTM a través de C#"
      content_left: |
        [GroupDocs.Redaction](/redaction/net/) facilita a los desarrolladores de .NET agregar la función de redacción de archivos DOTM con unos sencillos pasos.

        * Cree una instancia de la clase [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) y cargue el archivo DOTM
        * Crear una instancia de la clase [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/exactphraseredaction) para buscar y reemplazar el texto
        * Llame al método [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) con objeto de ExactPhraseRedaction

      title_right: "Comience con la API de Redacción"
      content_right: |
        Instale desde la línea de comandos como ```nuget install GroupDocs.Redaction``` o a través de la Consola del administrador de paquetes de Visual Studio con ```Install-Package GroupDocs.Redaction```.
        Como alternativa, obtenga el instalador MSI sin conexión o las DLL en un archivo ZIP de [descargas](https://downloads.groupdocs.com/redaction/net) y consúltelo en su proyecto manualmente.
        
      code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.csv"))
        {
        	redactor.Apply(new ExactPhraseRedaction("John Doe", new ReplacementOptions("[personal]")));
        	redactor.Save();
        }
        ```
        
    - title_left: "Requisitos del sistema"
      content_left: |
        Las API de GroupDocs.Assembly Java son compatibles con todas las principales plataformas y sistemas operativos. Puede generar documentos en Microsoft Word, Excel, PowerPoint, Outlook, OpenOffice y más de 50 formatos. Para obtener una guía completa de requisitos del sistema, visite [requisitos del sistema](https://docs.groupdocs.com/assembly/java/system-requirements/) Antes de ejecutar el código a continuación, asegúrese de tener los siguientes requisitos previos instalados en su sistema:
         * Sistemas Operativos: Microsoft Windows, Linux, Mac OS
         * Compatibilidad con versiones de Java: J2SE 7.0 (1.7), J2SE 8.0 (1.8) o superior
         * Obtenga la última versión de las API Java de GroupDocs.Assembly de [Maven](https://mvnrepository.com/artifact/com.groupdocs/groupdocs-assembly/)
        
      title_right: "Por qué usar GroupDocs.Assembly"
      content_right: |
        * Cree documentos personalizados a partir de plantillas.
        * Adjunte dinámicamente archivos adjuntos de correo electrónico.
        * No se requiere software adicional para crear y automatizar documentos.
        * Genera un documento de salida basado en la fuente de datos.
        * Insertar dinámicamente el contenido del documento en el informe
        * Aplicar fórmula durante el montaje de la hoja de cálculo.
        * Proporciona soporte para múltiples formatos de datos
        * Soporte de operaciones de datos secuenciales.

demos:
    enable: true
        

more_formats:
    enable: true


back_to_top:
    enable: true
---