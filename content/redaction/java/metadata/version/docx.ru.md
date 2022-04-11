---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "redaction/java/metadata/version/docx"
otherformats: PDF DOC DOT DOCX DOCM RTF XLSX XLSM XLTX XLTM XLS XLT PPTX PPT PPSX POT PPS PPTM 
ad_headline: "Редактировать метаданные | Java"
ad_description: "Редактировать версию из метаданных DOCX в Java"
############################# Head ############################
head_title: "Редактировать метаданные версии из документа DOCX в Java"
head_description: "GroupDocs.Redaction — это мощный API-интерфейс очистки, который позволяет удалять или редактировать конфиденциальную информацию из более чем 30 типов документов."
############################# Header ############################
title: "Редактировать метаданные версии из документа DOCX в Java"
description: "GroupDocs.Redaction — это мощный API-интерфейс очистки, который позволяет удалять или редактировать конфиденциальную информацию из более чем 30 типов документов."
######################### Download Button #######################
button:
    enable: true
############################# About ############################
about:
    enable: true
    title: "Что такое редактирование метаданных?"
    content: |
        Для сохранения документа в исходном формате необходимо удалить или отредактировать его метаданные, чтобы удалить все конфиденциальные данные. Для этих целей GroupDocs.Redaction предоставляет API редактирования метаданных. API GroupDocs.Redaction позволяет сохранять отредактированные документы в формате PDF, преобразовывать все страницы в растровые изображения или сохранять отредактированный документ в исходном формате для дальнейшего редактирования. Все форматы файлов, включая PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX и другие, имеют некоторые свойства метаданных. Эти свойства включают имя автора, категорию, название компании, комментарии, время создания, последнее обновление и многое другое. Также есть некоторые скрытые данные, связанные с файлами, которые можно просматривать с помощью различных инструментов и методов. С помощью API GroupDocs.Redaction вы можете применять исправления метаданных к любому из этих свойств метаданных. Вы можете изменить или удалить их, отфильтровав нужные метаданные. В этом руководстве мы объясним, как вы можете редактировать метаданные версии из документа DOCX в Java.
############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Редактировать метаданные DOCX в Java"
      content_left: |
        Следующий код позволяет вам искать и редактировать конфиденциальные данные из документа DOCX. Вы можете установить область редактирования, установив фильтр, например. в MetadataFilter.Version. Это оставит совпадения регулярных выражений во всех элементах метаданных, кроме свойства «Версия»:
      title_right: "Как редактировать метаданные DOCX"
      content_right: |
        * Создайте экземпляр класса [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) и загрузите файл DOCX.
        * Создайте экземпляр класса [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) для поиска и замены конфиденциальных данных из метаданных документа.
        * Установите область редактирования, установив фильтр, например. Используйте MetadataFilters.Version в приведенном ниже коде. 
        * Метод сохранения вызова с объектом [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction)
      gisthash: "aef660cb45245aebaae5c5eaa8054769"
      gistfile: "RedactVersionMetadata.java"
    - title_left: "Удалить метаданные DOCX в Java"
      content_left: |
        Вы можете заменить все или определенные метаданные в документе пустыми (пустыми или минимальными) значениями, используя класс EraseMetadataRedaction. Следующий код показывает, как вы можете отфильтровать, а затем удалить свойство метаданных из документа DOCX. В приведенном ниже примере все свойства документа пусты:
      title_right: "Как стереть метаданные версии"
      content_right: |
        * Создайте экземпляр класса [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) и загрузите файл DOCX.
        * Создайте экземпляр класса [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction), чтобы удалить метаданные документа.
        * Установите область редактирования, установив фильтр, например. Замените MetadataFilter.All на MetadataFilter.Version в приведенном ниже коде.
        * Метод сохранения вызова с объектом [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction)
      gisthash: "84586804ee996134fd12f2061f989fd5"
      gistfile: "CleanMetadata.java"
    - title_left: "Системные требования"
      content_left: |
        API GroupDocs.Redaction для Java поддерживаются на всех основных платформах и операционных системах. Чтобы ознакомиться с полным руководством по системным требованиям, посетите [системные требования](https://docs.groupdocs.com/redaction/java/system-requirements). Перед выполнением приведенного ниже кода убедитесь, что в вашей системе установлены следующие предварительные компоненты. :
        * Операционные системы: Microsoft Windows, Linux, MacOS
        * Среда разработки: NetBeans, Intellij IDEA, Eclipse и т. д.
        * Среда выполнения Java: J2SE 6.0 и выше
        * Получите последнюю версию GroupDocs.Redaction для Java от [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)
      title_right: "Зачем использовать GroupDocs.Redaction"
      content_right: |
        * Разрешить пользователям добавлять пользовательские форматы документов и типы редакций
        * Для удаления конфиденциальной информации не требуется дополнительное программное обеспечение.
        * Возможность установить документ рендеринга диапазона страниц в формате PDF
        * Простой способ редактирования различных типов метаданных: имя автора, версия, название, тема, описание и многое другое.
        * Извлечение информации о документе — тип файла, количество страниц и т. д.
demos:
    enable: true
about_formats:
    enable: true
more_formats:
    enable: true
back_to_top:
    enable: true
---
