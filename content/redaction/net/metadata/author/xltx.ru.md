
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "ru/redaction/net/metadata/author/xltx"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM  

############################# Head ############################
head_title: "Редактировать конфиденциальные метаданные из документов в C#"
head_description: "Применяйте редактирование метаданных, применяя фильтры для документов разных форматов"

############################# Header ############################
title: "Редактировать имя автора из метаданных XLTX в C#"
description: "GroupDocs.Redactions предоставляет гибкий API, который позволяет искать и заменять/удалять любое свойство метаданных с помощью фильтров."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Что такое редактирование метаданных?"
    content: |
        Под редакцией понимается удаление нежелательной или конфиденциальной информации из электронных документов. Все форматы файлов, включая PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX и другие, имеют некоторые свойства метаданных. Эти свойства включают имя автора, категорию, название компании, комментарии, время создания, последнее обновление и многое другое. Иногда вам нужно полностью удалить ненужные поля метаданных или обновить их значения. Есть также некоторые скрытые данные, связанные с файлами, которые можно просмотреть с помощью различных инструментов и методов. Есть много случаев, когда вы не хотите, чтобы эти данные были доступны кому-либо. С помощью API GroupDocs.Redaction вы можете применять исправления метаданных к любому из этих свойств метаданных. Вы можете изменить или удалить их, отфильтровав нужные метаданные. В этом руководстве мы объясним, как вы можете отредактировать имя автора из метаданных XLTX в C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Редактировать метаданные XLTX в C#"
      content_left: |
        Следующий код позволяет вам искать и редактировать конфиденциальные данные из документа XLTX. Вы можете установить область редактирования, установив фильтр, например. в MetadataFilter.Author. Это оставит совпадения регулярных выражений во всех элементах метаданных, кроме свойства "Автор":
        

      title_right: "Как редактировать метаданные XLTX"
      content_right: |
        * Создайте экземпляр класса [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) и загрузите файл XLTX.
        * Создайте экземпляр класса [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) для поиска и замены конфиденциальных данных из метаданных документа.
        * Установите область редактирования, установив фильтр. Например, используйте MetadataFilters.Author в приведенном ниже коде.
        * Вызов метода [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) с объектом [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "9718d29035590c729114d50e69aa49b0"
      gistfile: "RedactAuthorMetadata.cs"

    - title_left: "Удалить метаданные XLTX в C#"
      content_left: |
        Вы можете заменить все или определенные метаданные в документе пустыми (пустыми или минимальными) значениями, используя класс EraseMetadataRedaction. Следующий код показывает, как вы можете отфильтровать, а затем удалить свойство метаданных из документа XLTX. В приведенном ниже примере все свойства документа пусты:
        
        
      title_right: "Удалить метаданные XLTX"
      content_right: |
        * Создайте экземпляр класса [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) и загрузите файл XLTX.
        * Создайте экземпляр [EraseMetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction), чтобы удалить метаданные документа.
        * Установите область редактирования, установив фильтр, например. Замените MetadataFilter.All на MetadataFilter.Author в приведенном ниже коде. 
        * Вызов метода [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) с объектом [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        
      gisthash: "cef91d8d8f160aaf560218d1abd520e2"
      gistfile: "CleanMetadata.cs"

    - title_left: "Системные требования"
      content_left: |
        GroupDocs.Redaction для .NET поддерживает любую 32-битную или 64-битную операционную систему, в которой установлена платформа .NET. Он не требует установки какого-либо внешнего программного обеспечения или сторонних инструментов. Полное руководство по системным требованиям можно найти на странице [системные требования](https://docs.groupdocs.com/redaction/net/system-requirements).
        
      title_right: "Инструкция по установке"
      content_right: |
        Установите из командной строки как ```nuget install GroupDocs.Redaction``` или через консоль диспетчера пакетов Visual Studio с помощью ```Install-Package GroupDocs.Redaction```.
        Кроме того, вы можете получить автономный установщик MSI или DLL-файлы в ZIP-файле из [загрузок](https://downloads.groupdocs.com/redaction/net) и указать их в своем проекте вручную.

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