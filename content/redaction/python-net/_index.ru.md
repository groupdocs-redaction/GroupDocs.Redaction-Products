---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: ru
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

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
head_title: "Устраните конфиденциальную информацию из документов с помощью Python"
head_description: "Обеспечьте безопасность ваших файлов с помощью GroupDocs.Redaction for Python via .NET. Быстро редактируйте, скрывайте или удаляйте конфиденциальный контент в PDF, Word, Excel, PowerPoint и файлах изображений."

############################# Header ############################
title: "Сохраните ваши документы в безопасности с GroupDocs.Redaction"
description: "Удаляйте личные данные, редактируйте текст и очищайте скрытые метаданные из PDF, офисных файлов и изображений с помощью расширенного набора инструментов Python."
words:
  for: "для"

actions:
  main: "Скачать из PyPi"
  main_link: "https://pypi.org/project/groupdocs-redaction-net/"
  alt: "Лицензирование"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
  title: "Готовы начать?"
  description: "Попробуйте функции GroupDocs.Redaction бесплатно или запросите лицензию."

release:
  title: "Версия {0} выпущена"
  notes: "Смотрите что нового"
  downloads: "Скачать"

code:
  title: "Редактирование содержимого документа"
  more: "Больше примеров"
  more_link: ""
  install: "pip install groupdocs-redaction-net"
  content: |
    ```python {style=abap}
    import groupdocs.redaction as gr
    import groupdocs.redaction.redactions as grr

    def run():

        # Настройте параметры редактирования
        repl_opt = grr.ReplacementOptions("[redacted]")
        red = grr.ExactPhraseRedaction("Data", repl_opt)

        # Загрузите ваш файл в экземпляр Redactor
        with gr.Redactor("sample.pdf") as redactor:

            # Запустите процесс редактирования
            result = redactor.apply(red)
        
            # Экспортируйте очищенный файл
            result_path = redactor.save()
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction в Кратком Описании"
  description: "Интегрируйте мощные возможности редактирования в ваши проекты на Python"
  features:
    # feature loop
    - title: "Редактируйте конфиденциальный текст"
      content: "С помощью GroupDocs.Redaction for Python via .NET вы можете автоматически находить и скрывать конфиденциальные слова или фразы. Заменяйте или маскируйте текст цветными рамками для улучшенной защиты по всему PDF, Word-документам и другим форматам."

    # feature loop
    - title: "Маскировка изображений"
      content: "Наша технология может обнаруживать изображения и размывать, скрывать или блокировать их на основе выбранных вами критериев. Определяйте конкретные области или позволяйте автоматическому обнаружению для полного контроля."

    # feature loop
    - title: "Удаление скрытых метаданных"
      content: "Удаляйте личные или отслеживаемые данные, скрытые в метаданных, такие как авторство или информация об устройстве. GroupDocs.Redaction for Python via .NET обеспечивает полную очистку ваших документов, чтобы они были безопасны для обмена."

    # feature loop
    - title: "Редактирование специальных элементов"
      content: "Идите дальше текста, редактируя встроенные элементы, такие как комментарии, аннотации и другие специфические для файла элементы, чтобы достичь полной конфиденциальности."

############################# Platforms ############################
platforms:
  enable: true
  title: "Независимость платформы"
  description: "GroupDocs.Redaction for Python via .NET работает на всех основных операционных системах, поддерживает популярные фреймворки и интегрируется с общими менеджерами пакетов."
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
    GroupDocs.Redaction for Python via .NET поддерживает следующие [форматы файлов](https://docs.groupdocs.com/redaction/python-net/supported-document-formats/).
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
  title: "Ключевые функции GroupDocs.Redaction for Python via .NET"
  description: "Бесперебойно просматривайте, находите и редактируйте конфиденциальный контент в PDF, изображениях и офисных файлах."

  items:
    # feature loop
    - icon: "search"
      title: "Настраиваемый поиск"
      content: "Используйте гибкие режимы поиска, чтобы находить точные совпадения или ключевые слова для удаления."

    # feature loop
    - icon: "text"
      title: "Найдите, замените или удалите текст"
      content: "Найдите конфиденциальные данные и замените их безопасным текстом или вовсе удалите."

    # feature loop
    - icon: "image"
      title: "Визуальная маскировка"
      content: "Накладывайте цветные формы или узоры на визуальные участки редактирования."

    # feature loop
    - icon: "search"
      title: "Обнаружение на основе regex"
      content: "Используйте регулярные выражения для точности в продвинутых текстовых поисках."

    # feature loop
    - icon: "table"
      title: "Целевое редактирование"
      content: "Применяйте редактирование только к определенным страницам или зонам, чтобы сэкономить время и сосредоточиться на ключевых областях."

    # feature loop
    - icon: "template"
      title: "Санитария метаданных"
      content: "Легко очищайте поля метаданных, такие как автор, компания или отметки времени из ваших файлов."

    # feature loop
    - icon: "pdf"
      title: "Опции экспорта"
      content: "Сохраняйте обработанные документы в PDF или других совместимых форматах без потери целостности макета."

    # feature loop
    - icon: "template"
      title: "Полное удаление метаданных"
      content: "Удаляйте все встроенные метаданные одним щелчком мыши для максимальной защиты данных."

    # feature loop
    - icon: "hyperlink"
      title: "Повторяемые политики XML"
      content: "Сохраняйте свои произвольные конфигурации редактирования в виде шаблонов XML для автоматизации будущих задач."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Примеры кода"
  description: "Изучите, как GroupDocs.Redaction for Python via .NET упрощает задачи редактирования"
  items:
    # code sample loop
    - title: "Редактирование на основе regex"
      content: |
        Разработчики, использующие Python, могут применять [правила на основе regex](https://docs.groupdocs.com/redaction/python-net/text-redactions/#use-regular-expression) для поиска и маскировки конфиденциального текста:
        {{< landing/code title="Редактирование Word-документов с использованием регулярных выражений">}}
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        def run():

            # Определите правила редактирования с использованием регулярного выражения
            color = grd.Color.from_argb(255, 220, 20, 60)
            repl_opt = grr.ReplacementOptions(color)
            reg_red = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

            # Создайте экземпляр класса Redactor
            with gr.Redactor("source.docx") as redactor:

                # Замените весь соответствующий текст на синие квадратные накладки
                result = redactor.apply(reg_red)
        
                # Сохраните отредактированный Word-документ
                redactor.save()
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Удаление метаданных"
      content: |
        Используйте API, чтобы [стереть метаданные](https://docs.groupdocs.com/redaction/python-net/metadata-redactions/#clean-metadata) из нескольких типов файлов всего за несколько шагов:
        {{< landing/code title="Удаление всех метаданных из презентаций">}}
        ```python {style=abap}   
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # Настройте параметры редактирования
        red = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Передайте путь к презентации в Redactor
        with gr.Redactor("source.pptx") as redactor:

            # Удалите все метаданные из презентации
            result = redactor.apply(red)
        
            # Сохраните очищенный файл презентации
            redactor.save()
        ```
        {{< /landing/code >}}

---
