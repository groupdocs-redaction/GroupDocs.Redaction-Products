---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: ru
product: "Redaction"
product_tag: "redaction"
platform: "Net"
platform_tag: "net"

############################# Drop-down ############################
supported_platforms:
  items:
    # supported_platforms loop
    - title: ".NET"
      tag: "net"
    # supported_platforms loop
    - title: "Java"
      tag: "java"
    # supported_platforms loop
    - title: "Python"
      tag: "python-net"

############################# Head ############################
head_title: "Редактируйте конфиденциальные данные в ваших документах с помощью .NET"
head_description: "Защитите свои бизнес-документы с помощью GroupDocs.Redaction for .NET. Редактируйте, скрывайте или удаляйте конфиденциальный контент из PDF, Word, Excel, PowerPoint и файлов изображений."

############################# Header ############################
title: "Защитите ваш контент с помощью GroupDocs.Redaction"
description: "Редактируйте, скрывайте или окончательно удаляйте конфиденциальную информацию и метаданные из PDF, Word-документов, таблиц, презентаций и изображений с помощью нашего мощного решения на .NET."
words:
  for: "для"

actions:
  main: "Скачать из Nuget"
  main_link: "https://www.nuget.org/packages/GroupDocs.Redaction"
  alt: "Лицензирование"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/net/"
  title: "Готовы начать?"
  description: "Попробуйте функции GroupDocs.Redaction бесплатно или запросите лицензию."

release:
  title: "Версия {0} выпущена"
  notes: "Смотрите что нового"
  downloads: "Скачать"

code:
  title: "Как редактировать содержимое файла"
  more: "Больше примеров"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
  install: "dotnet add package GroupDocs.Redaction"
  content: |
    ```csharp {style=abap}   
    // Передайте входной файл экземпляру Redactor
    using (Redactor redactor = new Redactor("source.pdf"))
    {
        // Настройте параметры редактирования
        var repl_opt = new ReplacementOptions("[redacted]");
        var red = new ExactPhraseRedaction("Data", repl_opt);

        // Запустите процесс редактирования
        RedactorChangeLog result = redactor.Apply(red);

        // Сохраните отредактированный файл
        if (result.Status != RedactionStatus.Failed)
        {
            redactor.Save();
        }
    }  
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction в Кратком Описании"
  description: "Добавьте профессиональную редакцию контента в свои приложения на .NET"
  features:
    # feature loop
    - title: "Редактируйте текстовый контент"
      content: "GroupDocs.Redaction for .NET позволяет находить и редактировать конфиденциальный текст. Текст можно заменить или скрыть с помощью цветных изображений для повышенной безопасности. Поддерживается на широком разнообразии форматов, включая PDF и офисные документы, эта функция помогает защитить личные данные и упростить соблюдение норм."

    # feature loop
    - title: "Редактирование изображений"
      content: "Автоматически обнаруживайте и редактируйте изображения — полностью или частично — на страницах документов. Указывайте критерии поиска и целевые области для эффективного маскирования конфиденциального визуального контента."

    # feature loop
    - title: "Управление метаданными файлов"
      content: "Многие типы файлов содержат скрытые метаданные, такие как имена авторов в файлах Word или EXIF-данные в изображениях. GroupDocs.Redaction for .NET позволяет легко находить и редактировать эту информацию, чтобы обеспечить полную конфиденциальность данных."

    # feature loop
    - title: "Редактирование объектов документа"
      content: "Обеспечьте полную защиту контента, редактируя элементы документа, такие как аннотации, комментарии и встроенные объекты в форматах, таких как PDF."

############################# Platforms ############################
platforms:
  enable: true
  title: "Независимость платформы"
  description: "GroupDocs.Redaction for .NET совместим с широким спектром операционных систем, фреймворков разработки и менеджеров пакетов."
  items:
    # platform loop
    - title: "Amazon"
      image: "amazon"
    # platform loop
    - title: "Docker"
      image: "docker"
    # platform loop
    - title: "Azure"
      image: "azure"
    # platform loop
    - title: "VS Code"
      image: "vs_code"
    # platform loop
    - title: "ReSharper"
      image: "resharper"
    # platform loop
    - title: "macOS"
      image: "finder"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "NuGet"
      image: "nuget"

############################# File formats ############################
formats:
  enable: true
  title: "Поддерживаемые форматы файлов"
  description: |
    GroupDocs.Redaction for .NET поддерживает операции с [форматами файлов](https://docs.groupdocs.com/redaction/net/supported-document-formats/).
  groups:
    # group loop
    - color: "green"
      content: |
        ### Форматы MS Office
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### Другие офисные форматы
        * **Портативный:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **Текстовые форматы:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### Другие форматы
        * **Веб:** HTM, HTML, MD
        * **Изображения:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **Электронные книги:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "GroupDocs.Redaction for .NET Функции"
  description: "Извлекайте и редактируйте данные из PDF, офисных файлов и изображений с высокой скоростью и точностью."

  items:
    # feature loop
    - icon: "search"
      title: "Гибкий поиск"
      content: "Выполняйте чувствительные к регистру или нечувствительные к регистру поиски, чтобы редактировать конкретные фразы или термины."

    # feature loop
    - icon: "text"
      title: "Заменять или удалять текст"
      content: "Находите и заменяйте или удаляйте конфиденциальный текст во всех ваших документах."

    # feature loop
    - icon: "image"
      title: "Скрытие текста с помощью изображений"
      content: "Используйте цветные изображения для визуального маскирования редактируемого контента вместо замены текста."

    # feature loop
    - icon: "search"
      title: "Расширенные возможности поиска"
      content: "Используйте регулярные выражения для точного и гибкого редактирования контента в сложных наборах данных."

    # feature loop
    - icon: "table"
      title: "Ограниченное редактирование"
      content: "Указывайте конкретные страницы или определенные области на страницах, чтобы ограничить редактирование только к соответствующим разделам."

    # feature loop
    - icon: "template"
      title: "Редактирование метаданных"
      content: "Находите и редактируйте свойства метаданных для защиты прав собственности и деталей создания документов."

    # feature loop
    - icon: "pdf"
      title: "Гибкие форматы вывода"
      content: "Экспортируйте отредактированные файлы в PDF или любой поддерживаемый формат, сохраняя целостность макета."

    # feature loop
    - icon: "template"
      title: "Полное уничтожение метаданных"
      content: "Удалите все метаданные из документа в одном действии, чтобы гарантировать абсолютную конфиденциальность."

    # feature loop
    - icon: "hyperlink"
      title: "Правила редактирования на основе XML"
      content: "Определяйте политики редактирования в формате XML для повторяемой и автоматизированной обработки нескольких файлов."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Примеры кода"
  description: "Типичные примеры использования GroupDocs.Redaction for .NET в действии"
  items:
    # code sample loop
    - title: "Редактирование с использованием регулярных выражений"
      content: |
        GroupDocs.Redaction for .NET дает возможность разработчикам на C# редактировать текст, используя [регулярные выражения](https://docs.groupdocs.com/redaction/net/text-redactions/#use-regular-expression) и скрывать его с помощью изображения:
        {{< landing/code title="Редактирование Word-документов с использованием регулярных выражений">}}
        ```csharp {style=abap}
        // Создайте экземпляр класса Redactor
        using (Redactor redactor = new Redactor("source.docx"))
        {
            // Определите правила редактирования с использованием регулярного выражения
            var replacement = new ReplacementOptions(System.Drawing.Color.Blue);
            var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);
            
            // Замените весь соответствующий текст на синие квадратные накладки
            redactor.Apply(redaction);

            // Сохраните отредактированный Word-документ
            redactor.Save();
        }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Очистка метаданных"
      content: |
        Используйте наш API, чтобы легко [удалить](https://docs.groupdocs.com/redaction/net/metadata-redactions/#clean-metadata) все метаданные из поддерживаемых форматов файлов:
        {{< landing/code title="Удаление всех метаданных из презентаций">}}
        ```csharp {style=abap}   
        // Передайте путь к презентации в Redactor
        using (Redactor redactor = new Redactor("source.pptx"))
        {
            // Настройте параметры редактирования
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Удалите все метаданные из презентации
            redactor.Apply(redaction);

            // Сохраните очищенный файл презентации
            redactor.Save();
        }
        ```
        {{< /landing/code >}}

---
