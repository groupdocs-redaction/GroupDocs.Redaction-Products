---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "redaction/java/metadata/description/ppsm"
otherformats: PDF DOC DOT DOCX DOCM RTF XLSX XLSM XLTX XLTM XLS XLT PPTX PPT PPSX POT PPS PPTM 
ad_headline: "Редактировать метаданные | Java"
ad_description: "Редактировать метаданные описания из файла PPSM в Java"
############################# Head ############################
head_title: "Редактировать метаданные описания из файла PPSM в Java"
head_description: "GroupDocs.Redactions предоставляет гибкий API, который позволяет искать и заменять/удалять любое свойство метаданных с помощью фильтров."
############################# Header ############################
title: "Редактировать метаданные описания из файла PPSM в Java"
description: "GroupDocs.Redactions предоставляет гибкий API, который позволяет искать и заменять/удалять любое свойство метаданных с помощью фильтров."
######################### Download Button #######################
button:
    enable: true
############################# About ############################
about:
    enable: true
    title: "О GroupDocs.Redaction для Java"
    content: |
        Под редакцией понимается удаление нежелательной или конфиденциальной информации из электронных документов. Все форматы файлов, включая PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX и другие, имеют некоторые свойства метаданных. Эти свойства включают имя автора, категорию, название компании, комментарии, время создания, последнее обновление и многое другое. Иногда вам нужно полностью удалить ненужные поля метаданных или обновить их значения. Есть также некоторые скрытые данные, связанные с файлами, которые можно просмотреть с помощью различных инструментов и методов. Есть много случаев, когда вы не хотите, чтобы эти данные были доступны кому-либо. С помощью API GroupDocs.Redaction вы можете применять исправления метаданных к любому из этих свойств метаданных. Вы можете изменить или удалить их, отфильтровав нужные метаданные. В этом руководстве мы объясним, как вы можете отредактировать имя описания из метаданных PPSM в Java.
############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Обновление поля метаданных описания"
      content_left: |
        Следующий код позволяет вам искать и редактировать конфиденциальные данные из документа PPSM. Вы можете установить область редактирования, установив фильтр, например. в MetadataFilter.Description. Это оставит совпадения регулярных выражений во всех элементах метаданных, кроме свойства «Описание»:
      title_right: "Как редактировать в Java"
      content_right: |
        * Создайте экземпляр класса [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) и загрузите файл PPSM.
        * Создайте экземпляр класса [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) для поиска и замены конфиденциальных данных из метаданных документа.
        * Установите область редактирования, установив фильтр, например. Используйте MetadataFilters.Description в приведенном ниже коде. 
        * Метод сохранения вызова с объектом [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction)
      gisthash: "9faf1affc732aa746e8d34ca813621b2"
      gistfile: "RedactDescriptionrMetadata.java"
    - title_left: "Удалить поле метаданных в Java"
      content_left: |
        Вы можете заменить все или определенные метаданные в документе пустыми (пустыми или минимальными) значениями, используя класс EraseMetadataRedaction. В следующем коде показано, как можно отфильтровать, а затем удалить свойство метаданных из документа PPSM. В приведенном ниже примере все свойства документа пусты:
      title_right: "Удалить поле метаданных PPSM"
      content_right: |
        * Создайте экземпляр класса [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) и загрузите файл PPSM.
        * Создайте экземпляр класса [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction), чтобы удалить метаданные документа.
        * Установите область редактирования, установив фильтр, например. Замените MetadataFilter.All на MetadataFilter.Description в приведенном ниже коде.
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
      title_right: "Зачем использовать GroupDocs.Redaction?"
      content_right: |
        * Разрешить пользователям добавлять пользовательские форматы документов и типы редакций
        * Простой способ редактирования различных типов метаданных: имя автора, версия, название, тема, описание и многое другое.
        * Возможность установить документ рендеринга диапазона страниц в формате PDF
        * Для удаления конфиденциальной информации не требуется дополнительное программное обеспечение.
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
