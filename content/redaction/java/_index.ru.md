---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: ru
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

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
head_title: "Удалите конфиденциальные данные из документов с помощью Java"
head_description: "Защитите свою конфиденциальную информацию с помощью GroupDocs.Redaction for Java. Просто скрывайте, редактируйте или удаляйте личный контент в PDF, офисных файлах и изображениях."

############################# Header ############################
title: "Защитите конфиденциальные данные с GroupDocs.Redaction"
description: "Удаляйте личные данные, редактируйте текст и очищайте метаданные из PDF, Word, Excel, PowerPoint и форматов изображений с помощью надежного инструмента Java."
words:
  for: "для"

actions:
  main: "Скачать из Maven"
  main_link: "https://releases.groupdocs.com/java/repo/com/groupdocs/groupdocs-redaction/"
  alt: "Лицензирование"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/java/"
  title: "Готовы начать?"
  description: "Попробуйте функции GroupDocs.Redaction бесплатно или запросите лицензию."

release:
  title: "Версия {0} выпущена"
  notes: "Смотрите что нового"
  downloads: "Скачать"

code:
  title: "Этапы редактирования содержимого документа"
  more: "Больше примеров"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
  install: |
    <dependency>
      <groupId>com.groupdocs</groupId>
      <artifactId>groupdocs-redaction</artifactId>
      <version>{0}</version>
    </dependency>
  content: |
    ```java {style=abap}  
    // Загрузите ваш исходный файл с помощью экземпляра Redactor
    final Redactor redactor = new Redactor("sample.pdf");
    try
    {
        // Определите критерии и параметры редактирования
        ReplacementOptions ro = new ReplacementOptions("[redacted]");
        ExactPhraseRedaction red = new ExactPhraseRedaction("Data", ro);

        // Выполните операцию редактирования
        RedactorChangeLog result = redactor.apply(red);

        // Сохраните файл с примененными редактированиями
        redactor.save();
    }
    finally { redactor.close(); }
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction в Кратком Описании"
  description: "Улучшите свои приложения на Java профессиональными инструментами редактирования"
  features:
    # feature loop
    - title: "Удаление конфиденциального текста"
      content: "С помощью GroupDocs.Redaction for Java вы можете искать и скрывать личный текст, используя настраиваемые накладки или замены. Совместим с PDF, Word, Excel и другими форматами, идеально подходит для соблюдения нормативных требований и безопасного обмена документами."

    # feature loop
    - title: "Скрытие изображений"
      content: "Автоматически определяйте и маскируйте изображения полностью или частично в зависимости от ваших требований. Определяйте правила обнаружения и координаты областей для эффективного скрытия визуальных данных."

    # feature loop
    - title: "Удаление встроенных метаданных"
      content: "Файлы могут содержать скрытую информацию, такую как имена авторов, инструменты создания или детали устройства. GroupDocs.Redaction for Java позволяет вам обнаружить и очистить метаданные в Word, Excel, изображениях и других форматах."

    # feature loop
    - title: "Редактирование встроенных объектов"
      content: "Тщательно очищайте документы, редактируя объекты, такие как аннотации PDF, комментарии или другие встроенные элементы, чтобы устранить любые следы конфиденциальной информации."

############################# Platforms ############################
platforms:
  enable: true
  title: "Независимость платформы"
  description: "GroupDocs.Redaction for Java работает на основных операционных системах, фреймворках и платформах разработки."
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
    - title: "Eclipse"
      image: "eclipse"
    # platform loop
    - title: "IntelliJ"
      image: "intellij"
    # platform loop
    - title: "Windows"
      image: "windows"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "Maven"
      image: "maven"

############################# File formats ############################
formats:
  enable: true
  title: "Поддерживаемые форматы файлов"
  description: |
    GroupDocs.Redaction for Java поддерживает работу с [форматами файлов](https://docs.groupdocs.com/redaction/java/supported-document-formats/).
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
  title: "Что вы можете сделать с GroupDocs.Redaction"
  description: "Быстро находите и редактируйте контент в PDF, офисных документах и изображениях с точностью."

  items:
    # feature loop
    - icon: "search"
      title: "Поиск с точностью"
      content: "Используйте режимы поиска, чувствительные и нечувствительные к регистру, чтобы находить и редактировать точные совпадения."

    # feature loop
    - icon: "text"
      title: "Найдите и замените текст"
      content: "Автоматически определяйте и заменяйте или удаляйте конфиденциальный текст по всему документу."

    # feature loop
    - icon: "image"
      title: "Накладывание с использованием пользовательских изображений"
      content: "Используйте блоки изображений, чтобы скрыть редактируемый текст, сохраняя макет и скрывая детали."

    # feature loop
    - icon: "search"
      title: "Использование регулярных выражений для расширенного редактирования"
      content: "Используйте регулярные выражения, чтобы обнаруживать сложные шаблоны и редактировать содержимо."

    # feature loop
    - icon: "table"
      title: "Редактирование конкретных областей"
      content: "Ограничьте редактирование только определенными страницами или зонами, определяя конкретные области для нацеливания."

    # feature loop
    - icon: "template"
      title: "Очистка полей метаданных"
      content: "Идентифицируйте и очищайте метаданные документа, включая автора, компанию или данные отслеживания."

    # feature loop
    - icon: "pdf"
      title: "Экспорт в желаемом формате"
      content: "Сохраняйте отредактированные файлы в PDF или другом поддерживаемом формате без потери целостности макета."

    # feature loop
    - icon: "template"
      title: "Полное удаление метаданных"
      content: "Полностью удаляйте метаданные из поддерживаемых файлов всего за одну команду."

    # feature loop
    - icon: "hyperlink"
      title: "Автоматизированные политики редактирования"
      content: "Создавайте повторно используемые конфигурации редактирования, хранящиеся в формате XML для последовательного пакетного редактирования."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Примеры кода"
  description: "Распространенные примеры использования GroupDocs.Redaction for Java"
  items:
    # code sample loop
    - title: "Редактирование с использованием регулярных выражений"
      content: |
        GroupDocs.Redaction for Java дает возможность разработчикам на Java применять [редактирование на основе regex](https://docs.groupdocs.com/redaction/java/text-redactions/#use-regular-expression) с опциональным изображением для маскирования:
        {{< landing/code title="Редактирование Word-документов с использованием регулярных выражений">}}
        ```java {style=abap}
        // Создайте экземпляр класса Redactor
        final Redactor redactor = new Redactor("source.docx");
        try
        {
            // Определите правила редактирования с использованием регулярного выражения
            ReplacementOptions replacement = new ReplacementOptions(java.awt.Color.BLUE);
            RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);

            // Замените весь соответствующий текст на синие квадратные накладки
            redactor.apply(redaction);

            // Сохраните отредактированный Word-документ
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Удаление всех метаданных"
      content: |
        С помощью нашего API вы можете [удалить метаданные](https://docs.groupdocs.com/redaction/java/metadata-redactions/#clean-metadata) из нескольких типов файлов за один шаг:
        {{< landing/code title="Удаление всех метаданных из презентаций">}}
        ```java {style=abap}   
        // Передайте путь к презентации в Redactor
        final Redactor redactor  = new Redactor("source.pptx");
        try 
        {
            // Настройте параметры редактирования
            EraseMetadataRedaction red = new EraseMetadataRedaction(MetadataFilters.All);

            // Удалите все метаданные из презентации
            redactor.apply(red);

            // Сохраните очищенный файл презентации
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}

---
