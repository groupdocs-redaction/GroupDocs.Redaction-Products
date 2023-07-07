---
############################# Static ############################
layout: "autogen"
draft: false
path: "ru/redaction/net/regex/pptx"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Редактирование документов PPTX с использованием регулярных выражений через ядро ​​.NET"
head_description: "Исключайте конфиденциальную информацию с помощью регулярных выражений из документов разных форматов."

############################# Header ############################
title: "Очистка файлов PPTX с помощью C# и регулярных выражений в основных приложениях .NET"
description: "Поиск и удаление конфиденциальной информации из документов, электронных таблиц и презентаций Office и OpenOffice, а также PPTX в Windows, Linux и macOS."

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Редактирование текста документа для .NET API"
    content: |
        Единый независимый от формата интерфейс для очистки конфиденциальной и секретной информации из документов и изображений PDF, Word, Excel, PowerPoint, включая возможность изменять метаданные и удалять комментарии. С помощью инструмента GroupDocs.Redaction for .NET вы можете отредактировать секретную информацию и сохранить отредактированный документ в PDF, преобразовав все страницы в растровые изображения или сохранить документ в исходном формате для дальнейшего редактирования.

############################# Steps ############################
steps:
    enable: true
    title_left: "Редактировать текст из PPTX с помощью регулярных выражений через C#"
    content_left: |
        [GroupDocs.Redaction](ru//redaction/net/) позволяет разработчикам .NET использовать все возможности регулярных выражений для редактирования файла PPTX с помощью нескольких простых шагов.

        *   Создайте экземпляр класса [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) и загрузите файл PPTX
        *   Создайте экземпляр класса [RegexRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/regexredaction), чтобы найти и заменить текст
        *   Вызов метода [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) с объектом RegexRedaction
        
    title_right: "Начните работу с Redaction API"
    content_right: |
        Установите из командной строки как ```nuget install GroupDocs.Redaction``` или через консоль диспетчера пакетов Visual Studio с ```Install-Package GroupDocs.Redaction```. 
        Кроме того, вы можете получить автономный установщик MSI или библиотеки DLL в файле ZIP из [загрузки](https://downloads.groupdocs.com/redaction/net) и указать его в своем проекте вручную.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.pptx"))
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