---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "redaction/net/metadata/version/xls"
otherformats: PDF DOC DOT DOCX DOCM RTF XLSX XLSM XLTX XLTM XLS XLT PPTX PPT PPSX POT PPS PPTM 
############################# Head ############################
head_title: "Редактирование метаданных из документов на C#"
head_description: "Редактируйте конфиденциальные метаданные в C#, применяя фильтры для документов разных форматов."
############################# Header ############################
title: "Редактировать версию метаданных файла XLS в C#"
description: "API GroupDocs.Redactions позволяет искать, а затем обновлять или удалять любые конфиденциальные данные из метаданных документа."
######################### Download Button #######################
button:
    enable: true
############################# About ############################
about:
    enable: true
    title: "Что такое редактирование метаданных?"
    content: |
        В основном людей интересует редактирование текста документа. Но редактирование метаданных не менее важно. Метаданные — это скрытые данные документа, которые могут содержать конфиденциальную информацию, которой вы, возможно, не захотите делиться с другими. Редактирование метаданных относится к удалению нежелательной или конфиденциальной информации из электронных документов. Метаданные документа включают имя автора, категорию, название компании, комментарии, время создания, дату последнего обновления и многое другое. Иногда вам нужно полностью удалить ненужные поля метаданных или обновить их значения. С помощью API GroupDocs.Redaction вы можете применять исправления метаданных к любому из этих свойств метаданных. Вы можете изменить или удалить их, отфильтровав нужные метаданные. В этом руководстве мы объясним, как вы можете отредактировать версию метаданных файла XLS в C#.
############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Редактировать версию XLS-файла на C#"
      content_left: |
        Следующий код позволяет вам искать и редактировать конфиденциальные данные из документа XLS. Вы можете установить область редактирования, установив фильтр, например. в MetadataFilter.Version. - он оставит не выполненными совпадения регулярных выражений во всех элементах метаданных, кроме свойства «Версия»:
      title_right: "Как редактировать метаданные XLS"
      content_right: |
        * Создайте экземпляр класса [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) и загрузите файл XLS
        * Создайте экземпляр класса [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) для поиска и замены конфиденциальных данных из метаданных документа.
        * Set scope for redaction by setting filter, e.g. Use MetadataFilter.Version in below code 
        * Вызов метода [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) с объектом [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
      gisthash: "8f1996554c2bb9abf77d09315497308a"
      gistfile: "RedactVersionMetadata.cs"
    - title_left: "Удалить метаданные XLS в C#"
      content_left: |
        Вы можете заменить все или определенные метаданные в документе пустыми (пустыми или минимальными) значениями, используя класс EraseMetadataRedaction. В следующем коде показано, как можно отфильтровать, а затем удалить свойство метаданных из документа XLS. В приведенном ниже примере все свойства документа пусты:
      title_right: "Стереть метаданные XLS"
      content_right: |
        * Создайте экземпляр класса [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) и загрузите файл XLS
        * Создайте экземпляр [EraseMetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction), чтобы удалить метаданные документа.
        * Установите область редактирования, установив фильтр, например. Замените MetadataFilter.All на MetadataFilter.Version в приведенном ниже коде.
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
demos:
    enable: true
about_formats:
    enable: true
more_formats:
    enable: true
back_to_top:
    enable: true
---
