













---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "es/redaction/java/text/ppsx"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redactar PPSX Text a través de Exact Phrase/Regular Expression en Java"
head_description: "GroupDocs.Redactions Java API permite a los desarrolladores redactar texto de PDF DOC DOCX RTF XLSX CSV PPT PPTX e imágenes a través de frases exactas o expresiones regulares en Java"

############################# Header ############################
title: "Cómo redactar, ocultar o eliminar texto de archivos PPSX usando Java"
description: "GroupDocs.Redactions Java API permite redactar, ocultar o eliminar texto confidencial de documentos de procesamiento de texto, hojas de trabajo, presentaciones, PDF e imágenes."

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "¿Qué es la redacción de texto?"
    content: |
        La redacción de texto es el proceso de eliminar el texto o la información confidencial o no deseada de los documentos digitales y dejar intacto el resto del documento o párrafo que lo contiene. La redacción ayuda a los usuarios, así como a la organización, a proteger su información confidencial ocultándola o eliminándola de forma permanente. Con GroupDocs.Redaction, los usuarios de la API de Java ahora pueden redactar, ocultar o eliminar texto confidencial de documentos de procesamiento de texto, hojas de trabajo, presentaciones, PDF y archivos de imágenes rasterizadas. La API proporciona una amplia gama de opciones y métodos para la redacción de información privada en los documentos. Admite la búsqueda y la redacción mediante coincidencias exactas o expresiones regulares, utiliza redacciones textuales (códigos de exención) o gráficas (rectángulos de colores) y muchas más. Entonces, ¿por qué no probarlo y automatizar el proceso de redacción de documentos descargando la API y explorando sus funciones básicas y avanzadas?

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "Redactar PPSX Frase exacta en Java"
      content_left: |
        GroupDocs.Redaction permite redactar fácilmente datos de naturaleza confidencial o privada de sus documentos. El caso de redacción más popular es eliminar un texto de un documento. 

        El siguiente código se puede usar para aplicar redacción textual a una parte particular de un documento a través de una frase exacta. Permite a los usuarios reemplazar la frase personal exacta "Michal Clark" con personal (o cualquier código de exención).

      title_right: "Eliminar datos confidenciales de PPSX"
      content_right: |
        * Cree una instancia de la clase [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) y cargue el archivo PPSX
        * Llame al método Redactor.apply con una nueva instancia de la clase ExactPhraseRedaction
        * Llame al método redactor.save con objeto de [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Llame al método redactor.save para guardar los cambios 

      gisthash: "3202859fc19b5dfd14e8f073b70a18f8"
      gistfile: "redact_exact_phrase.java"
      
    - title_left: "Redacción de texto con distinción entre mayúsculas y minúsculas en PPSX"
      content_left: |
        El siguiente ejemplo permite a los usuarios realizar una redacción de fase exacta que distingue entre mayúsculas y minúsculas para eliminar u ocultar un fragmento de texto particular dentro de un documento. De forma predeterminada, la búsqueda de la fase exacta no distingue entre mayúsculas y minúsculas. 
        
      title_right: "Realizar redacción sensible a mayúsculas y minúsculas a través de Java"
      content_right: |
        * Cree una instancia de la clase [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) y cargue el archivo PPSX
        * Llame al método Redactor.apply con una nueva instancia de la clase ExactPhraseRedaction
        * Llame al método redactor.save con objeto de [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Llame al método redactor.save para guardar los cambios 
        
      gisthash: "a43e3ce358f93df92373b5441bc579fb"
      gistfile: "case_sensitive_redaction.java"

    - title_left: "Redactar texto en PPSX a través de Color Box"
      content_left: |
        En lugar de eliminar un texto redactado o colocar una cadena allí, también es posible colocar un cuadro de color sobre el texto redactado. En este caso, se eliminará el texto coincidente y se colocará un rectángulo de color sobre el texto redactado.
        
      title_right: "Use el cuadro de color para eliminar texto en Java"
      content_right: |
        * Cree una instancia de la clase [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) y cargue el archivo PPSX
        * Llame al método Redactor.apply con una nueva instancia de la clase ExactPhraseRedaction
        * Llame al método redactor.save con objeto de [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Llame al método redactor.save para guardar los cambios 
        
      gisthash: "6d83e791388b6834a372dc90f4b455f6"
      gistfile: "redact_text_using_color_box.java"

    - title_left: "Requisitos del sistema"
      content_left: |
        Las API de GroupDocs.Assembly Java son compatibles con todas las principales plataformas y sistemas operativos. Puede generar documentos en Microsoft Word, Excel, PowerPoint, Outlook, OpenOffice y más de 50 formatos. Para obtener una guía completa de requisitos del sistema, visite [requisitos del sistema](https://docs.groupdocs.com/assembly/java/system-requirements/) Antes de ejecutar el código a continuación, asegúrese de tener los siguientes requisitos previos instalados en su sistema:
        * Sistemas Operativos: Microsoft Windows, Linux, Mac OS
        * Compatibilidad con versiones de Java: J2SE 7.0 (1.7), J2SE 8.0 (1.8) o superior
        * Tiempo de ejecución de Java: J2SE 6.0 y superior
        * Obtenga la última versión de las API Java de GroupDocs.Assembly de [Maven](https://mvnrepository.com/artifact/com.groupdocs/groupdocs-assembly/)
        
      title_right: "Por qué usar GroupDocs.Redaction"
      content_right: |
        * Permitir a los usuarios agregar formatos de documentos personalizados y tipos de revisión
        * No se requiere software adicional para eliminar información confidencial.
        * Opción para configurar el documento de representación de rango de página en PDF
        * Una manera fácil de editar varios tipos de metadatos: nombre del autor, versión, título, tema, descripción y más.
        * Recuperar información sobre el documento: tipo de archivo, número de páginas, etc.

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