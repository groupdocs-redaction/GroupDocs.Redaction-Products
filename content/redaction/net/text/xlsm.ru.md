---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "ru/redaction/net/text"
otherformats: PDF DOC DOT DOCX DOCM DOTX DOTM RTF XLSX XLTX XLTM XLS XLT CSV PPT PPTX  PPS POT PPSX PPTM PPSM POTM 

############################# Head ############################
head_title: "Редактируйте конфиденциальную информацию из документов через .NET Core"
head_description: "Применяйте редактирование текста с использованием точной фразы или регулярного выражения для документов разных форматов."

############################# Header ############################
title: "Редактировать файлы XLSM с помощью C# в приложениях .NET Core"
description: "Поиск и замена текста в документах, электронных таблицах и презентациях Office и OpenOffice, а также xlsm_ UPPER в Windows, Linux и macOS"

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Редактирование документов для .NET API"
    content: |
        Единый независимый от формата интерфейс для редактирования конфиденциальной и секретной информации из документов и изображений PDF, Word, Excel, PowerPoint, включая возможность изменения метаданных и удаления комментариев. С помощью инструмента GroupDocs.Redaction вы можете отредактировать текст и сохранить отредактированный документ в формате PDF, преобразовав все страницы в растровые изображения или сохранить документ в исходном формате для дальнейшего редактирования.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Редактировать точный текст из XLSM с помощью C#"
      content_left: |
        [GroupDocs.Redaction](/redaction/net/) позволяет разработчикам .NET добавить функцию редактирования файлов XLSM, выполнив несколько простых действий.

        * Создайте экземпляр класса [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) и загрузите файл XLSM
        * Создайте экземпляр класса [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/exactphraseredaction) для поиска и замены текста.
        * Вызов метода [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) с объектом ExactPhraseRedaction

      title_right: "Начните работу с Redaction API"
      content_right: |
        Установите из командной строки как ```nuget install GroupDocs.Redaction``` или через консоль диспетчера пакетов Visual Studio с помощью ```Install-Package GroupDocs.Redaction```.
         Кроме того, вы можете получить автономный установщик MSI или DLL-файлы в ZIP-файле из [загрузок](https://downloads.groupdocs.com/redaction/net) и указать их в своем проекте вручную.  
        
      code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.csv"))
        {
        	redactor.Apply(new ExactPhraseRedaction("John Doe", new ReplacementOptions("[personal]")));
        	redactor.Save();
        }
        ```

    - title_left: "Системные Требования"
      content_left: |
       API GroupDocs.Redaction для .NET поддерживаются на всех основных платформах и операционных системах. Полное руководство по системным требованиям можно найти на странице [системные требования](https://docs.groupdocs.com/redaction/net/system-requirements/). Перед выполнением приведенного ниже кода убедитесь, что на вашем компьютере установлены следующие предварительные компоненты. система:
        * Операционные системы: Microsoft Windows, Linux, MacOS
        * Среда разработки: Visual Studio, Xamarin, MonoDevelop и т. д.
        * Фреймворки: .NET Framework, .NET Standard, .NET Core, Mono
        * Получите последнюю версию API GroupDocs.Assembly .NET из [NuGet](https://www.nuget.org/packages/GroupDocs.Redaction/)
        
      title_right: "Зачем использовать GroupDocs.Redaction"
      content_right: |
        * Разрешить пользователям добавлять пользовательские форматы документов и типы редакций
        * Для удаления конфиденциальной информации не требуется дополнительное программное обеспечение.
        * Возможность установить документ рендеринга диапазона страниц в формате PDF
        * Простой способ редактирования различных типов метаданных: имя автора, версия, название, тема, описание и многое другое.
        * Извлечение информации о документе — тип файла, количество страниц и т. д.
        * Полная поддержка нескольких форматов данных

demos:
    enable: true
        

more_formats:
    enable: true


back_to_top:
    enable: true
---