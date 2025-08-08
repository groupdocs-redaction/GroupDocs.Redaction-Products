
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: uk
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Редагуйте метадані у JPEG за допомогою C#"
head_description: "З GroupDocs.Redaction for .NET ви можете очищати або змінювати метадані у своїх файлах JPEG. Вилучайте приховані деталі, які можуть містити приватні дані."

############################# Header ############################
title: "Видалення метаданих з файлів JPEG за допомогою .NET" 
description: "Захищайте приватні деталі у ваших файлах JPEG за допомогою C#. Простій інструменти для кращої безпеки документів."
subtitle: "Основні функції GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction допомагає розробникам C# видаляти текст, зображення та метадані з файлів JPEG за допомогою простих інструментів.

############################# Steps ############################
steps:
    enable: true
    title: "Очищення метаданих у документах Jpeg"
    content: |
      GroupDocs.Redaction спрощує видалення метаданих у ваших програмах .NET.
      
      1. Налаштуйте Redactor та завантажте файл Jpeg, який ви хочете очистити.
      2. Виберіть параметри для очищення всіх метаданих.
      3. Запустіть редагування для очищення файл.
      4. Збережіть свій файл з очищеними метаданими.
   
    code:
      platform: "net"
      copy_title: "Копіювати"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Приклад редагувань"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "натисніть, щоб скопіювати"
        copy_done: "скопійовано"
      links:
        #  loop
        - title: "Більше прикладів"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "Документація"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // Видаляйте метадані з файлів JPEG

        // Використовуйте Redactor для завантаження файлу
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // Конфігуруйте редагування метаданих
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Застосуйте та збережіть
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Видалення чутливих даних з документів"
  description: "GroupDocs.Redaction for .NET дозволяє приховувати або очищати приватний вміст у багатьох форматах. Захистіть чутливі дані, зберігаючи свої файли корисними та чистими."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Ключові функції редагування"
  features:
    # feature loop
    - title: "Шукати та видаляти текст"
      content: "Знайдіть чутливі слова чи фрази у ваших файлах та видаліть їх."

    # feature loop
    - title: "Приховати район зображень"
      content: "Використовуйте накладки, щоб приховати приватні частини зображень."

    # feature loop
    - title: "Редагувати метадані"
      content: "Видаляйте або змінюйте метадані, щоб уникнути спільного використання приватних даних."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Очищення прихованих полів метаданих"
      content: |
        Цей приклад показує, як видалити або редагувати приховані метадані у документах JPEG.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Відкрийте файл JPEG з редагувачем
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // Додайте редагування для поля автора
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Додайте редагування для поля заголовка
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Запустіть процес редагування
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Збережіть очищений документ
              var saveOptions = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(saveOptions);
          }
          ```
        platform: "net"
        copy_title: "Копіювати"
        install:
          command: "dotnet add package GroupDocs.Redaction"
          copy_tip: "натисніть, щоб скопіювати"
          copy_done: "скопійовано"
        top_links:
          #  loop
          - title: "Завантажити результат"
            icon: "download"
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
        links:
          #  loop
          - title: "Більше прикладів"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "Документація"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "Готові почати?"
  description: "Спробуйте можливості GroupDocs.Redaction безкоштовно або запитайте ліцензію"
  items:
    #  loop
    - title: "Завантаження Nuget"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "Ліцензування"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Очищення метаданих JPEG за допомогою .NET"
    exclude: "JPEG"
    description: "Використовуйте .NET для видалення прихованих даних з ваших документів JPEG. Чудовий спосіб захистити чутливі деталі."
    items: 
        # format loop 1
        - name: "Редагувати PDF"
          format: "PDF"
          link: "/redaction/net/remove-sensitive-metadata//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редагувати Word"
          format: "WORD"
          link: "/redaction/net/remove-sensitive-metadata//word/"
          description: "Документи MS Word та Open Office"
          
        # format loop 3
        - name: "Редагувати Excel"
          format: "EXCEL"
          link: "/redaction/net/remove-sensitive-metadata//excel/"
          description: "Таблиці MS Excel та Open Office"

        # format loop 4
        - name: "Редагувати PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/remove-sensitive-metadata//powerpoint/"
          description: "Презентації MS PowerPoint та Open Office"

        # format loop 5
        - name: "Редагувати Зображення"
          format: "IMAGE"
          link: "/redaction/net/remove-sensitive-metadata//image/"
          description: "Популярні формати зображень"

        # format loop 6
        - name: "Редагувати Фото"
          format: "PHOTO"
          link: "/redaction/net/remove-sensitive-metadata//photo/"
          description: "Формати фото"

        # format loop 7
        - name: "Редагувати DOCX"
          format: "DOCX"
          link: "/redaction/net/remove-sensitive-metadata//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 8
        - name: "Редагувати XLSX"
          format: "XLSX"
          link: "/redaction/net/remove-sensitive-metadata//xlsx/"
          description: "Електронна таблиця Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Редагувати PPTX"
          format: "PPTX"
          link: "/redaction/net/remove-sensitive-metadata//pptx/"
          description: "Презентація PowerPoint Open XML"

        # format loop 10
        - name: "Редагувати JPEG"
          format: "JPEG"
          link: "/redaction/net/remove-sensitive-metadata//jpeg/"
          description: "Зображення JPEG"


---