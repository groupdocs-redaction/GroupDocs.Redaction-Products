---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "ru/redaction/net/annotation/xltm"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTX  

############################# Head ############################
head_title: "Редактирование аннотаций в документах XLTM с использованием регулярных выражений через ядро ​​.NET"
head_description: "Редактируйте конфиденциальную информацию в аннотациях с помощью регулярных выражений из документов разных форматов."

############################# Header ############################
title: "Редактирование аннотаций файлов XLTM с помощью C# и регулярных выражений в основных приложениях .NET"
description: "Поиск и удаление конфиденциальной информации из документов, электронных таблиц и презентаций Office и OpenOffice, а также XLTM в Windows, Linux и macOS."

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Редактирование аннотации к документу для .NET API"
    content: |
        Единый независимый от формата интерфейс для очистки конфиденциальной и секретной информации из документов и изображений PDF, Word, Excel, PowerPoint, включая возможность изменять метаданные и удалять аннотации. С помощью инструмента GroupDocs.Redaction for .NET вы можете отредактировать секретную информацию и сохранить отредактированный документ в PDF, преобразовав все страницы в растровые изображения или сохранить документ в исходном формате для дальнейшего редактирования.

############################# Steps ############################
steps:
    enable: true
    title_left: "Редактировать аннотации из XLTM с помощью регулярных выражений через C#"
    content_left: |
        [GroupDocs.Redaction](ru//redaction/net/) позволяет разработчикам .NET использовать все возможности регулярных выражений для редактирования файла XLTM с помощью нескольких простых шагов.

        *   Создайте экземпляр класса [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) и загрузите файл XLTM
        *   Создайте экземпляр класса [AnnotationRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/annotationredaction), чтобы найти и заменить комментарии.
        *   Вызов метода [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) с объектом AnnotationRedaction
        
    title_right: "Как использовать GroupDocs API редактирования"
    content_right: |
        Установите пакет из командной строки как ```nuget install GroupDocs.Redaction``` или через консоль диспетчера пакетов Visual Studio с помощью ```Install-Package GroupDocs.Redaction```. 
        Кроме того, вы можете получить автономный установщик MSI или библиотеки DLL в файле ZIP из [загрузки](https://downloads.groupdocs.com/redaction/net) и указать его в своем проекте вручную.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.xltm"))
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