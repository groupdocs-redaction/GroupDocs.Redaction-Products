---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: uk
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
head_title: "Редагуйте чутливі дані у ваших документах за допомогою .NET"
head_description: "Захистіть свої бізнес-документи за допомогою GroupDocs.Redaction for .NET. Легко редагуйте, приховуйте або усувайте конфіденційний контент з PDF, Word, Excel, PowerPoint і зображень."

############################# Header ############################
title: "Забезпечте Ваш Контент за Допомогою GroupDocs.Redaction"
description: "Редагуйте, приховуйте або назавжди видаляйте чутливу інформацію та метадані з PDF, Word документів, таблиць, презентацій та зображень за допомогою нашого потужного рішення .NET."
words:
  for: "для"

actions:
  main: "Завантаження Nuget"
  main_link: "https://www.nuget.org/packages/GroupDocs.Redaction"
  alt: "Ліцензування"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/net/"
  title: "Готові Розпочати?"
  description: "Спробуйте функції GroupDocs.Redaction безкоштовно або запитайте ліцензію."

release:
  title: "Версія {0} випущена"
  notes: "Дивіться, що нового"
  downloads: "Скачування"

code:
  title: "Як Редагувати Контент Файлу"
  more: "Більше прикладів"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
  install: "dotnet add package GroupDocs.Redaction"
  content: |
    ```csharp {style=abap}   
    // Передайте вхідний файл екземпляру Redactor
    using (Redactor redactor = new Redactor("source.pdf"))
    {
        // Налаштуйте параметри редагування
        var repl_opt = new ReplacementOptions("[redacted]");
        var red = new ExactPhraseRedaction("Data", repl_opt);

        // Запустіть процес редагування
        RedactorChangeLog result = redactor.Apply(red);

        // Збережіть відредагований файл
        if (result.Status != RedactionStatus.Failed)
        {
            redactor.Save();
        }
    }  
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction на Перший Погляд"
  description: "Додайте професійний клас редагування до ваших .NET додатків"
  features:
    # feature loop
    - title: "Редагування Текстового Контенту"
      content: "GroupDocs.Redaction for .NET дозволяє вам знаходити та редагувати чутливий текст. Текст можна замінювати або приховувати за допомогою кольорових зображень для додаткової безпеки. Підтримується у величезній кількості форматів, включаючи PDF та Office документи, ця функція допомагає захистити приватні дані та спростити ділову відповідність."

    # feature loop
    - title: "Редагування Зображень"
      content: "Автоматично визначайте та редагуйте зображення — повністю або частково — на сторінках документів. Визначте критерії пошуку та цільові області для ефективного маскування чутливого візуального контенту."

    # feature loop
    - title: "Управління Метаданими Файлів"
      content: "Багато типів файлів містять приховані метадані, такі як імена авторів у Word файлах або EXIF дані в зображеннях. GroupDocs.Redaction for .NET спрощує виявлення та редагування цієї інформації для забезпечення повної конфіденційності даних."

    # feature loop
    - title: "Редагування Об'єктів Документів"
      content: "Забезпечте повний захист контенту шляхом редагування специфічних для документа елементів, таких як анотації, коментарі та вбудовані об'єкти в форматах, таких як PDF."

############################# Platforms ############################
platforms:
  enable: true
  title: "Платформна Незалежність"
  description: "GroupDocs.Redaction for .NET сумісний з широким спектром операційних систем, фреймворків розробки та менеджерів пакетів."
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
    GroupDocs.Redaction for .NET підтримує операції з наступними [форматами файлів](https://docs.groupdocs.com/redaction/net/supported-document-formats/).
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
  title: "Функції GroupDocs.Redaction for .NET"
  description: "Витягуйте та редагуйте дані з PDF, Office файлів та зображень з високою швидкістю та точністю."

  items:
    # feature loop
    - icon: "search"
      title: "Гнучкий Пошук"
      content: "Виконуйте чутливі або нечутливі пошуки для редагування певних фраз чи термінів."

    # feature loop
    - icon: "text"
      title: "Замініть або Видаліть Текст"
      content: "Легко знаходьте та замінюйте або видаляйте чутливий текст по всіх документах."

    # feature loop
    - icon: "image"
      title: "Приховати Текст за Допомогою Зображень"
      content: "Використовуйте кольорові накладки, щоб візуально замаскувати редагований контент замість заміни тексту."

    # feature loop
    - icon: "search"
      title: "Розширені Можливості Пошуку"
      content: "Використовуйте регулярні вирази для точного та гнучкого редагування контенту у складних наборах даних."

    # feature loop
    - icon: "table"
      title: "Обмежена Редакція"
      content: "Націлюйте конкретні сторінки або визначені області сторінок для обмеження редагування лише на релевантні секції."

    # feature loop
    - icon: "template"
      title: "Редакція Метаданих"
      content: "Знаходьте та редагуйте властивості метаданих, щоб захистити деталі власності та створення документів."

    # feature loop
    - icon: "pdf"
      title: "Гнучкі Формати Виходу"
      content: "Експортуйте відредаговані файли у PDF або будь-який підримуваний формат, зберігаючи цілісність формату."

    # feature loop
    - icon: "template"
      title: "Повне Стерти Метадані"
      content: "Стирайте всі метадані з документа в одноразовій дії для забезпечення абсолютної конфіденційності."

    # feature loop
    - icon: "hyperlink"
      title: "Правила Редакції на Основі XML"
      content: "Визначайте політики редагування у форматі XML для повторного, автоматизованого оброблення на кількох файлах."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Приклади Коду"
  description: "Типові приклади використання GroupDocs.Redaction for .NET в дії"
  items:
    # code sample loop
    - title: "Редагування з Регулярними Виразами"
      content: |
        GroupDocs.Redaction for .NET дозволяє розробникам C# редагувати текст за допомогою [регулярних виразів](https://docs.groupdocs.com/redaction/net/text-redactions/#use-regular-expression) та приховувати його за допомогою зображених накладок:
        {{< landing/code title="Редагуйте Word Документи за Допомогою Регулярних Виразів">}}
        ```csharp {style=abap}
        // Створіть екземпляр класу Redactor
        using (Redactor redactor = new Redactor("source.docx"))
        {
            // Визначте правила редагування за допомогою регулярного виразу
            var replacement = new ReplacementOptions(System.Drawing.Color.Blue);
            var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);
            
            // Затемніть весь відповідний текст синіми квадратами
            redactor.Apply(redaction);

            // Збережіть відредагований Word документ
            redactor.Save();
        }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Очищення Метаданих"
      content: |
        Використовуйте наше API, щоб легко [вилучити](https://docs.groupdocs.com/redaction/net/metadata-redactions/#clean-metadata) всі метадані з підтримуваних форматів файлів:
        {{< landing/code title="Видалення Всіх Метаданих з Презентацій">}}
        ```csharp {style=abap}   
        // Надайте шлях до презентації Redactor
        using (Redactor redactor = new Redactor("source.pptx"))
        {
            // Налаштуйте параметри редагування
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Стерти всі метадані з презентації
            redactor.Apply(redaction);

            // Збережіть очищений файл презентації
            redactor.Save();
        }
        ```
        {{< /landing/code >}}

---
