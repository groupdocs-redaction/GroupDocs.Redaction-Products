













---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "ru/redaction/net/metadata/title/dotm"
otherformats: BMP DOC DOCM DOCX DOT DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  


############################# Head ############################
head_title: "Редактирование метаданных из документов на C#"
head_description: "Редактируйте конфиденциальные метаданные в C#, применяя фильтры для документов разных форматов."

############################# Header ############################
title: "Редактировать метаданные заголовка из документа DOTM в C#"
description: "API GroupDocs.Redactions позволяет искать, а затем обновлять или удалять любые конфиденциальные данные из метаданных документа."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Что такое редактирование метаданных?"
    content: |
        В основном людей интересует редактирование текста документа. Но редактирование метаданных не менее важно. Метаданные — это скрытые данные документа, которые могут содержать конфиденциальную информацию, которой вы, возможно, не захотите делиться с другими. Редактирование метаданных относится к удалению нежелательной или конфиденциальной информации из электронных документов. Метаданные документа включают имя автора, категорию, название компании, комментарии, время создания, дату последнего обновления и многое другое. Иногда вам нужно полностью удалить ненужные поля метаданных или обновить их значения. С помощью API GroupDocs.Redaction вы можете применять исправления метаданных к любому из этих свойств метаданных. Вы можете изменить или удалить их, отфильтровав нужные метаданные. В этом руководстве мы объясним, как вы можете редактировать метаданные заголовка из документа DOTM в C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Редактировать заголовок из документа DOTM"
      content_left: |
        Следующий код позволяет вам искать и редактировать конфиденциальные данные из документа DOTM. Вы можете установить область редактирования, установив фильтр, например. в MetadataFilter.Title. Это оставит не выполненными совпадения регулярных выражений во всех элементах метаданных, кроме свойства "Заголовок":
        

      title_right: "Как редактировать метаданные DOTM"
      content_right: |
        * Создайте экземпляр класса [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) и загрузите файл DOTM.
        * Создайте экземпляр класса [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) для поиска и замены конфиденциальных данных из метаданных документа.
        * Установите область редактирования, установив фильтр. Например, используйте MetadataFilters.Title в приведенном ниже коде.
        * Вызов метода [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) с объектом [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        
      gisthash: "78fca6b6facd4e3ea79038d7abcb092f"
      gistfile: "RedactTitleMetadata.cs"

    - title_left: "Удалить метаданные DOTM в C#"
      content_left: |
        Вы можете заменить все или определенные метаданные в документе пустыми (пустыми или минимальными) значениями, используя класс EraseMetadataRedaction. Следующий код показывает, как вы можете отфильтровать, а затем удалить свойство метаданных из документа DOTM. В приведенном ниже примере все свойства документа пусты:
        
        
      title_right: "Удалить метаданные DOTM"
      content_right: |
        * Создайте экземпляр класса [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) и загрузите файл DOTM.
        * Создайте экземпляр [EraseMetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction), чтобы удалить метаданные документа.
        * Установите область редактирования, установив фильтр, например. Замените MetadataFilter.All на MetadataFilter.Title в приведенном ниже коде. 
        * Вызов метода [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) с объектом [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        
      gisthash: "cef91d8d8f160aaf560218d1abd520e2"
      gistfile: "CleanMetadata.cs"

    - title_left: "Системные требования"
      content_left: |
        GroupDocs.Redaction для .NET поддерживает любую 32-битную или 64-битную операционную систему, в которой установлена платформа .NET. Он не требует установки какого-либо внешнего программного обеспечения или сторонних инструментов. Полное руководство по системным требованиям можно найти на странице [системные требования](https://docs.groupdocs.com/redaction/net/system-requirements).
        
      title_right: "инструкции по установке"
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