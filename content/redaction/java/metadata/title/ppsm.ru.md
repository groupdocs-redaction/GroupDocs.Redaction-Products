
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "ru/redaction/java/metadata/title/ppsm"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Редактировать метаданные | Java"
ad_description: "Исправить заголовок из метаданных PPSM в Java"
############################# Head ############################
head_title: "Редактировать заголовок из файла PPSM в Java с использованием API GroupDocs.Redaction"
head_description: "GroupDocs.Redaction — это мощный API-интерфейс очистки, который позволяет удалять или редактировать конфиденциальную информацию из более чем 30 типов документов."

############################# Header ############################
title: "Редактировать заголовок из файла PPSM в Java с использованием API GroupDocs.Redaction"
description: "GroupDocs.Redaction — это мощный API-интерфейс очистки, который позволяет удалять или редактировать конфиденциальную информацию из более чем 30 типов документов."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Что такое редактирование метаданных?"
    content: |
        Для сохранения документа в исходном формате необходимо удалить или отредактировать его метаданные, чтобы удалить все конфиденциальные данные. Для этих целей GroupDocs.Redaction предоставляет API редактирования метаданных. API GroupDocs.Redaction позволяет сохранять отредактированные документы в формате PDF, преобразовывать все страницы в растровые изображения или сохранять отредактированный документ в исходном формате для дальнейшего редактирования. Все форматы файлов, включая PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX и другие, имеют некоторые свойства метаданных. Эти свойства включают имя автора, категорию, название компании, комментарии, время создания, последнее обновление и многое другое. Также есть некоторые скрытые данные, связанные с файлами, которые можно просматривать с помощью различных инструментов и методов. С помощью API GroupDocs.Redaction вы можете применять исправления метаданных к любому из этих свойств метаданных. Вы можете изменить или удалить их, отфильтровав нужные метаданные. В этом руководстве мы объясним, как вы можете отредактировать заголовок из файла PPSM в Java, используя API GroupDocs.Redaction.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Редактировать метаданные Title в Java"
      content_left: |
        Следующий код позволяет вам искать и редактировать конфиденциальные данные из документа PPSM. Вы можете установить область редактирования, установив фильтр, например. в MetadataFilter.Title. Это оставит совпадения регулярных выражений во всех элементах метаданных, кроме свойства "Title": 

      title_right: "Как редактировать метаданные PPSM"
      content_right: |
        * Создайте экземпляр класса [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) и загрузите файл PPSM.
        * Создайте экземпляр класса [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) для поиска и замены конфиденциальных данных из метаданных документа.
        * Установите область редактирования, установив фильтр, например. Используйте MetadataFilters.Title в приведенном ниже коде.
        * Вызвать метод save с объектом [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "c23f466bec11e0405e2a3e74be681d09"
      gistfile: "RedactTitleMetadata.java"
      
    - title_left: "Удалить метаданные PPSM в Java"
      content_left: |
        Вы можете заменить все или определенные метаданные в документе пустыми (пустыми или минимальными) значениями, используя класс EraseMetadataRedaction. Следующий код показывает, как вы можете отфильтровать, а затем удалить свойство метаданных из документа PPSM. В приведенном ниже примере все свойства документа пусты: 
        
      title_right: "Удалить метаданные заголовка из файла PPSM"
      content_right: |
        * Создайте экземпляр класса [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) и загрузите файл PPSM
        * Создайте экземпляр класса [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction), чтобы удалить метаданные документа.
        * Установите область редактирования, установив фильтр, например. Замените MetadataFilter.All на MetadataFilter.Title в приведенном ниже коде.
        * Вызвать метод save с объектом [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
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