---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: uk
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
head_title: "Видаліть конфіденційні дані з документів за допомогою Java"
head_description: "Захистіть свою чутливу інформацію за допомогою GroupDocs.Redaction for Java. Легко приховуйте, редагуйте або видаляйте приватний контент у PDF, Office файлах та зображеннях."

############################# Header ############################
title: "Захистіть Конфіденційні Дані за Допомогою GroupDocs.Redaction"
description: "Легко видаліть приватні дані, редагуйте текст та очищайте метадані з PDF, Word, Excel, PowerPoint та зображень, використовуючи надійний набір інструментів Java."
words:
  for: "для"

actions:
  main: "Завантаження Maven"
  main_link: "https://releases.groupdocs.com/java/repo/com/groupdocs/groupdocs-redaction/"
  alt: "Ліцензування"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/java/"
  title: "Готові Розпочати?"
  description: "Спробуйте функції GroupDocs.Redaction безкоштовно або запитайте ліцензію."

release:
  title: "Версія {0} випущена"
  notes: "Дивіться, що нового"
  downloads: "Скачування"

code:
  title: "Кроки для Редагування Контенту Документа"
  more: "Більше прикладів"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
  install: |
    <dependency>
      <groupId>com.groupdocs</groupId>
      <artifactId>groupdocs-redaction</artifactId>
      <version>{0}</version>
    </dependency>
  content: |
    ```java {style=abap}  
    // Завантажте ваш вихідний файл за допомогою екземпляра Redactor
    final Redactor redactor = new Redactor("sample.pdf");
    try
    {
        // Визначте критерії та налаштування редагування
        ReplacementOptions ro = new ReplacementOptions("[redacted]");
        ExactPhraseRedaction red = new ExactPhraseRedaction("Data", ro);

        // Виконайте операцію редагування
        RedactorChangeLog result = redactor.apply(red);

        // Збережіть файл з внесеними змінами
        redactor.save();
    }
    finally { redactor.close(); }
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction на Перший Погляд"
  description: "Поліпште свої додатки Java професійними інструментами редагування"
  features:
    # feature loop
    - title: "Видалення Чутливого Тексту"
      content: "За допомогою GroupDocs.Redaction for Java ви можете шукати та приховувати приватний текст, використовуючи налаштовувані накладки або заміни. Сумісний з PDF, Word, Excel та іншими, він ідеальний для ділової відповідності та безпечного обміну документами."

    # feature loop
    - title: "Приховування Зображень"
      content: "Визначайте та маскуйте зображення повністю або частково відповідно до ваших вимог. Визначайте правила виявлення та координати області, щоб ефективно захистити візуальні дані."

    # feature loop
    - title: "Очищення Прихованих Метаданих"
      content: "Файли можуть містити приховану інформацію, таку як імена авторів, інструменти створення або дані про пристрій. GroupDocs.Redaction for Java дозволяє вам виявляти та очищати метадані в Word, Excel, зображеннях та інших форматах."

    # feature loop
    - title: "Редагування Вбудованих Об'єктів"
      content: "Грунтовно очищайте документи, редагуючи об'єкти, такі як анотації PDF, коментарі або інші вбудовані елементи, щоб усунути будь-які сліди конфіденційної інформації."

############################# Platforms ############################
platforms:
  enable: true
  title: "Платформна Незалежність"
  description: "GroupDocs.Redaction for Java працює на основних операційних системах, фреймворках та платформах розробки."
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
  title: "Підтримувані Формати Файлів"
  description: |
    GroupDocs.Redaction for Java підтримує роботу з наступними [форматами файлів](https://docs.groupdocs.com/redaction/java/supported-document-formats/).
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
  title: "Що Ви Можете Зробити з GroupDocs.Redaction"
  description: "Швидко знаходьте та редагуйте контент з PDF, Office документів та зображень з точністю."

  items:
    # feature loop
    - icon: "search"
      title: "Пошук з Точністю"
      content: "Використовуйте регістрові та нерегістрові режими пошуку, щоб знайти та редагувати точні збіги."

    # feature loop
    - icon: "text"
      title: "Знайти та Замінити Текст"
      content: "Автоматично виявляйте та підміняйте або видаляйте конфіденційний текст протягом документа."

    # feature loop
    - icon: "image"
      title: "Накладка з Налаштованими Зображеннями"
      content: "Використовуйте блоки зображень, щоб затемнити редагований текст, зберігаючи макет, одночасно приховуючи деталі."

    # feature loop
    - icon: "search"
      title: "Використовуйте Regex для Розширеного Редагування"
      content: "Використовуйте регулярні вирази для виявлення складних патернів та інтелектуального редагування."

    # feature loop
    - icon: "table"
      title: "Редагуйте Конкретні Області"
      content: "Обмежте редагування вибраними сторінками або зонами, визначивши точні області для націлювання."

    # feature loop
    - icon: "template"
      title: "Очистка Полів Метаданих"
      content: "Визначайте та очищайте метадані документа, включаючи автора, компанію або дані трасування."

    # feature loop
    - icon: "pdf"
      title: "Експорт у Бажаному Форматі"
      content: "Зберігайте ваші відредаговані файли у PDF або інший підтримуваний формат без втрати цілісності макета."

    # feature loop
    - icon: "template"
      title: "Стирайте Всі Метадані"
      content: "Повністю видаляйте метадані з підтримуваних файлів за допомогою однієї команди."

    # feature loop
    - icon: "hyperlink"
      title: "Автоматизовані Політики Редагування"
      content: "Створюйте повторно використовувані конфігурації редагування, збережені у XML для послідовного, пакетного редагування."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Приклади Коду"
  description: "Загальні приклади використання GroupDocs.Redaction for Java"
  items:
    # code sample loop
    - title: "Редагування за Допомогою Regex"
      content: |
        GroupDocs.Redaction for Java надає розробникам Java можливість застосовувати [редагування на базі regex](https://docs.groupdocs.com/redaction/java/text-redactions/#use-regular-expression) з додатковим маскуванням зображень:
        {{< landing/code title="Редагуйте Word Документи за Допомогою Регулярних Виразів">}}
        ```java {style=abap}
        // Створіть екземпляр класу Redactor
        final Redactor redactor = new Redactor("source.docx");
        try
        {
            // Визначте правила редагування за допомогою регулярного виразу
            ReplacementOptions replacement = new ReplacementOptions(java.awt.Color.BLUE);
            RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);

            // Затемніть весь відповідний текст синіми квадратами
            redactor.apply(redaction);

            // Збережіть відредагований Word документ
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Видалення Всіх Метаданих"
      content: |
        За допомогою нашого API ви можете [видалити метадані](https://docs.groupdocs.com/redaction/java/metadata-redactions/#clean-metadata) з кількох типів файлів за один крок:
        {{< landing/code title="Видалення Всіх Метаданих з Презентацій">}}
        ```java {style=abap}   
        // Надайте шлях до презентації Redactor
        final Redactor redactor  = new Redactor("source.pptx");
        try 
        {
            // Налаштуйте параметри редагування
            EraseMetadataRedaction red = new EraseMetadataRedaction(MetadataFilters.All);

            // Стерти всі метадані з презентації
            redactor.apply(red);

            // Збережіть очищений файл презентації
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}

---
