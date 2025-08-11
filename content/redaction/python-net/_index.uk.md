---
############################# Static ############################
layout: "landing"
date: 2025-08-11T19:33:04
draft: false

lang: uk
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
head_title: "Стирайте конфіденційну інформацію з документів за допомогою Python"
head_description: "Забезпечте свої файли захищеними за допомогою GroupDocs.Redaction for Python via .NET. Швидко редагуйте, приховуйте або видаляйте чутливий контент у PDF, Word, Excel, PowerPoint та зображеннях."

############################# Header ############################
title: "Забезпечте Ваші Документи за Допомогою GroupDocs.Redaction"
description: "Легко видаліть приватні дані, редагуйте текст та очищайте приховані метадані з PDF, офісних файлів та зображень, використовуючи розширений набір інструментів Python."
words:
  for: "для"

actions:
  main: "Завантаження PyPi"
  main_link: "https://pypi.org/project/groupdocs-redaction-net/"
  alt: "Ліцензування"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
  title: "Готові Розпочати?"
  description: "Спробуйте функції GroupDocs.Redaction безкоштовно або запитайте ліцензію."

release:
  title: "Версія {0} випущена"
  notes: "Дивіться, що нового"
  downloads: "Скачування"

code:
  title: "Редагування Контенту Документа"
  more: "Більше прикладів"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
  install: "pip install groupdocs-redaction-net"
  content: |
    ```python {style=abap}
    import groupdocs.redaction as gr
    import groupdocs.redaction.redactions as grr

    def run():

        # Налаштуйте параметри редагування
        repl_opt = grr.ReplacementOptions("[redacted]")
        red = grr.ExactPhraseRedaction("Data", repl_opt)

        # Завантажте файл у екземпляр Redactor
        with gr.Redactor("sample.pdf") as redactor:

            # Запустіть процес редагування
            result = redactor.apply(red)
        
            # Експортуйте очищений файл
            result_path = redactor.save()
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction на Перший Погляд"
  description: "Інтегруйте потужні можливості редагування у ваші Python проекти"
  features:
    # feature loop
    - title: "Редагування Чутливого Тексту"
      content: "З GroupDocs.Redaction for Python via .NET ви можете автоматично знаходити та закривати чутливі слова або фрази. Заміна або маскування тексту кольоровими коробками для підвищення захисту в PDF, Word документах та інших форматах."

    # feature loop
    - title: "Маскування Зображень"
      content: "Наша технологія може виявляти зображення і розмивати, приховувати або блокувати їх на основі ваших критеріїв. Визначте конкретні області або дозволяйте автоматичне виявлення для повного контролю."

    # feature loop
    - title: "Видалення Прихованих Метаданих"
      content: "Уникайте особистої або відстежувальної інформації, що прихована в метаданих, таких як авторство або дані пристрою. GroupDocs.Redaction for Python via .NET гарантирует, что ваши документы полностью очищены и безопасны для обмена."

    # feature loop
    - title: "Редагування Спеціальних Елементів"
      content: "Перейдіть за межі тексту, редагуючи вбудовані елементи, такі як коментарі, анотації та інші специфічні для файлу елементи, щоб досягти повної конфіденційності."

############################# Platforms ############################
platforms:
  enable: true
  title: "Платформна Незалежність"
  description: "GroupDocs.Redaction for Python via .NET працює на всіх основних операційних системах, підтримує популярні фреймворки та інтегрується з розповсюдженими менеджерами пакетів."
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
  title: "Підтримувані Формати Файлів"
  description: |
    GroupDocs.Redaction for Python via .NET підтримує наступні [формати файлів](https://docs.groupdocs.com/redaction/python-net/supported-document-formats/).
  groups:
    # group loop
    - color: "green"
      content: |
        ### Формати MS Office
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### Інші Офісні Формати
        * **Портативний:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **Текстові Формати:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### Інші Формати
        * **Веб:** HTM, HTML, MD
        * **Зображення:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **Електронні Книги:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "Ключові Функції GroupDocs.Redaction for Python via .NET"
  description: "Легко скануйте, знаходьте та редагуйте чутливий контент у PDF, зображеннях та офісних файлах."

  items:
    # feature loop
    - icon: "search"
      title: "Налаштовуваний Пошук"
      content: "Використовуйте гнучкі режими пошуку, щоб знайти точні збіги або ключові слова для видалення."

    # feature loop
    - icon: "text"
      title: "Знаходьте, Заміщуйте чи Видаляйте Текст"
      content: "Знайдіть чутливі дані та підмініть їх безпечним текстом або повністю видаліть."

    # feature loop
    - icon: "image"
      title: "Візуальне Маскування"
      content: "Крекленйте кольорові форми чи зображення, щоб візуально закрити редаговані секції."

    # feature loop
    - icon: "search"
      title: "Виявлення на Основі Regex"
      content: "Використовуйте регулярні вирази для точної точності під час просунутого текстового пошуку."

    # feature loop
    - icon: "table"
      title: "Цілеспрямована Редакція"
      content: "Наносьте редагування лише на певні сторінки або визначені регіони, щоб зекономити час і зосередитися на ключових областях."

    # feature loop
    - icon: "template"
      title: "Очистка Метаданих"
      content: "Швидко очищайте поля метаданих, такі як творець, компанія або мітки часу з ваших файлів."

    # feature loop
    - icon: "pdf"
      title: "Опції Експорту"
      content: "Зберігайте оброблені документи в PDF або інших сумісних форматах без втрати цілісності макета."

    # feature loop
    - icon: "template"
      title: "Компануй з Метаданими"
      content: "Залиште всі вбудовані метадані за один клацання для максимального захисту даних."

    # feature loop
    - icon: "hyperlink"
      title: "Повторювані XML Політики"
      content: "Зберігайте свої налаштовані конфігурації редагування у вигляді XML-шаблонів для автоматизації майбутніх завдань."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Приклади Коду"
  description: "Досліджуйте, як GroupDocs.Redaction for Python via .NET спрощує завдання редагування"
  items:
    # code sample loop
    - title: "Редагування на Основі Regex"
      content: |
        Розробники, що використовують Python, можуть застосовувати [правила на основі regex](https://docs.groupdocs.com/redaction/python-net/text-redactions/#use-regular-expression) для знаходження та закриття чутливого тексту з маскуванням зображень:
        {{< landing/code title="Редагуйте Word Документи за Допомогою Регулярних Виразів">}}
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        def run():

            # Визначте правила редагування за допомогою регулярного виразу
            color = grd.Color.from_argb(255, 220, 20, 60)
            repl_opt = grr.ReplacementOptions(color)
            reg_red = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

            # Створіть екземпляр класу Redactor
            with gr.Redactor("source.docx") as redactor:

                # Затемніть весь відповідний текст синіми квадратами
                result = redactor.apply(reg_red)
        
                # Збережіть відредагований Word документ
                redactor.save()
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Видалення Метаданих"
      content: |
        Використовуйте API, щоб [очистити метадані](https://docs.groupdocs.com/redaction/python-net/metadata-redactions/#clean-metadata) з кількох типів файлів всього за кілька кроків:
        {{< landing/code title="Видалення Всіх Метаданих з Презентацій">}}
        ```python {style=abap}   
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # Налаштуйте параметри редагування
        red = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Надайте шлях до презентації Redactor
        with gr.Redactor("source.pptx") as redactor:

            # Стерти всі метадані з презентації
            result = redactor.apply(red)
        
            # Збережіть очищений файл презентації
            redactor.save()
        ```
        {{< /landing/code >}}

---
