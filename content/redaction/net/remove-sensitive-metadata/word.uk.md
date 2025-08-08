
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: uk
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Видалення метаданих з WORD за допомогою C#"
head_description: "Використовуйте GroupDocs.Redaction for .NET для пошуку та видалення прихованих метаданих у файлах WORD. Зберігайте ваші документи приватними та захищеними від небажаного розкриття."

############################# Header ############################
title: "Видалення метаданих у файлах WORD за допомогою .NET" 
description: "Захистіть особисті та корпоративні дані у файлах WORD за допомогою C#. Прості інструменти для надійної приватності файлів."
subtitle: "Що ви можете зробити з GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction допомагає розробникам C# захищати вміст у файлах WORD. Швидко очищуйте текст, зображення та метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Видалити метадані з файлів Word"
    content: |
      За допомогою GroupDocs.Redaction просто очистіть метадані документів у вашому середовищі .NET.
      
      1. Ініціалізуйте об'єкт Redactor та відкрийте свій документ Word.
      2. Налаштуйте правила для видалення всіх прихованих метаданих.
      3. Запустіть редагування, щоб видалити чутливі тегів.
      4. Збережіть свій очищений документ.
   
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
        // Стирайте метадані з файлів WORD

        // Відкрийте документ за допомогою Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Налаштуйте опції видалення метаданих
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Редагуйте та збережіть очищений файл
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Редагування конфіденційних даних у документах"
  description: "З GroupDocs.Redaction for .NET ви можете видалити приватний вміст різних форматів. Зберігайте ваші файли в безпеці, зберігаючи їх структуру."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Інструменти редагування метаданих та вмісту"
  features:
    # feature loop
    - title: "Замінити чутливий текст"
      content: "Знайдіть текст у документах та безпечно видаліть або змініть його для захисту приватної інформації."

    # feature loop
    - title: "Маскувати зображення"
      content: "Приховуйте чутливі області зображень за допомогою накладок, щоб уникнути витоку інформації."

    # feature loop
    - title: "Стирайте метадані"
      content: "Знаходьте та очищуйте приховані дані, щоб уникнути витоку інформації."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редагувати або видалити приховані метадані"
      content: |
        Цей приклад показує, як націлюватися та очищати записи метаданих у документі WORD.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Завантажте файл для редагування
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Видаліть авторські метадані
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Видаліть заголовкові метадані
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Запустіть процес редагування
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Експортуйте очищений документ
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
    title: "Редагування метаданих у WORD за допомогою .NET"
    exclude: "WORD"
    description: "Використовуйте .NET для очищення прихованих метаданих з файлів WORD. Прості інструменти для зберігання чутливих даних у безпеці."
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