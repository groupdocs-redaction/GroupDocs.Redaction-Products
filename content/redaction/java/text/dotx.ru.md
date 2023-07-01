---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "ru/redaction/java/text/dotx"
otherformats: CSV DOC DOCM DOCX DOT DOTM PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Редактировать текст DOTX с помощью точной фразы/регулярного выражения в Java"
head_description: "Java API GroupDocs.Redactions позволяет разработчикам редактировать текст из PDF, DOC, DOCX, RTF, XLSX, CSV, PPT, PPTX и изображений с помощью точной фразы или регулярного выражения в Java."

############################# Header ############################
title: "Как отредактировать, скрыть или удалить текст из файлов DOTX с помощью Java"
description: "Java API GroupDocs.Redactions позволяет редактировать, скрывать или удалять конфиденциальный текст из текстовых документов, рабочих листов, презентаций, PDF-файлов и изображений."

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Что такое редактирование текста?"
    content: |
        Редактирование текста — это процесс удаления конфиденциального или нежелательного текста или информации из цифровых документов, при этом остальная часть документа или параграфа, содержащего его, остается нетронутой. Редактирование помогает пользователям, а также организациям защитить свою конфиденциальную информацию, скрывая или удаляя ее без возможности восстановления. С помощью Java API GroupDocs.Redaction пользователи теперь могут редактировать, скрывать или удалять конфиденциальный текст из текстовых документов, рабочих листов, презентаций, файлов PDF и растровых изображений. API предоставляет широкий спектр возможностей и методов для редактирования частной информации в документах. Он поддерживает поиск и редактирование с использованием точного соответствия или регулярных выражений, использование текстовых (коды исключений) или графических (цветные прямоугольники) исправлений и многое другое. Так почему бы не попробовать автоматизировать процесс редактирования документов, загрузив API и изучив его основные и расширенные функции.

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "Изменить DOTX точную фразу в Java"
      content_left: |
        GroupDocs.Redaction позволяет легко редактировать данные конфиденциального или частного характера из ваших документов. Самый популярный случай редактирования — удаление текста из документа. 

        Следующий код можно использовать для применения текстового редактирования к определенной части документа с помощью точной фразы. Это позволяет пользователям заменять личную точную фразу «Михал Кларк» личным (или любым кодом исключения).

      title_right: "Удалить конфиденциальные данные из DOTX"
      content_right: |
        * Создайте экземпляр класса [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) и загрузите файл DOTX
        * Вызвать метод Redactor.apply с новым экземпляром класса ExactPhraseRedaction.
        * Вызвать метод redactor.save с объектом [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Вызвать метод redactor.save для сохранения изменений 

      gisthash: "3202859fc19b5dfd14e8f073b70a18f8"
      gistfile: "redact_exact_phrase.java"
      
    - title_left: "Редактирование текста с учетом регистра в DOTX"
      content_left: |
        В следующем примере пользователи могут выполнить точную фазу редактирования с учетом регистра, чтобы удалить или скрыть определенный фрагмент текста внутри документа. По умолчанию при поиске точной фазы не учитывается регистр. 
        
      title_right: "Выполнение редактирования с учетом регистра через Java"
      content_right: |
        * Создайте экземпляр класса [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) и загрузите файл DOTX
        * Вызвать метод Redactor.apply с новым экземпляром класса ExactPhraseRedaction.
        * Вызвать метод redactor.save с объектом [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Вызвать метод redactor.save для сохранения изменений 
        
      gisthash: "a43e3ce358f93df92373b5441bc579fb"
      gistfile: "case_sensitive_redaction.java"

    - title_left: "Редактировать текст в DOTX с помощью Color Box"
      content_left: |
        Вместо того, чтобы удалять отредактированный текст или помещать туда строку, также можно поместить цветную рамку над отредактированным текстом. В этом случае совпадающий текст будет удален, а поверх отредактированного текста будет помещен цветной прямоугольник.
        
      title_right: "Используйте Color Box для удаления текста в Java"
      content_right: |
        * Создайте экземпляр класса [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) и загрузите файл DOTX
        * Вызвать метод Redactor.apply с новым экземпляром класса ExactPhraseRedaction.
        * Вызвать метод redactor.save с объектом [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Вызвать метод redactor.save для сохранения изменений 
        
      gisthash: "6d83e791388b6834a372dc90f4b455f6"
      gistfile: "redact_text_using_color_box.java"

    - title_left: "Системные Требования"
      content_left: |
        API GroupDocs.Redaction для Java поддерживаются на всех основных платформах и операционных системах. Чтобы ознакомиться с полным руководством по системным требованиям, посетите [системные требования](https://docs.groupdocs.com/redaction/java/system-requirements). Перед выполнением приведенного ниже кода убедитесь, что в вашей системе установлены следующие предварительные условия:
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