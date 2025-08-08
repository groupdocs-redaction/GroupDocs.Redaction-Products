
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: uk
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Очищення метаданих у POWERPOINT за допомогою C#"
head_description: "Видаліть небажані метадані з файлів POWERPOINT за допомогою GroupDocs.Redaction for .NET. Захистіть свою конфіденційність, очищаючи приховані дані."

############################# Header ############################
title: "Видаліть метадані в POWERPOINT через .NET" 
description: "Захистіть дані документів у файлах POWERPOINT з простими інструментами, створеними для C#. Видаляйте метадані всього в кілька кроків."
subtitle: "Функції GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Дізнайтеся більше про GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction — це набір інструментів редагування для розробників C#, що допомагає вам працювати з текстовими, зображеневими та метаданими у файлах POWERPOINT.

############################# Steps ############################
steps:
    enable: true
    title: "Очищення метаданих з документів Powerpoint"
    content: |
      З GroupDocs.Redaction ваші .NET додатки можуть легко видаляти метадані з документів.
      
      1. Розпочніть з об'єкта Redactor та завантажте свій файл.
      2. Виберіть поля метаданих для видалення.
      3. Застосуйте налаштування редагування.
      4. Експортуйте готовий очищений документ.
   
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
        // Позбудьтеся метаданих у POWERPOINT

        // Відкрийте документ за допомогою редактора
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Встановіть параметри очищення метаданих
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Застосуйте редагування та збережіть
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Захистіть документи за допомогою редагування"
  description: "GroupDocs.Redaction for .NET допомагає видаляти прихований вміст з документів, щоб ви могли безпечно їх ділитися. Підходить для багатьох форматів та типів вмісту."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Можливості редагування"
  features:
    # feature loop
    - title: "Видалити приватний текст"
      content: "Знайдіть чутливі слова або фрази та видаліть їх з вашого документа."

    # feature loop
    - title: "Маскувати дані зображення"
      content: "Використовуйте накладки для покриття зон у зображеннях, які повинні залишатися прихованими."

    # feature loop
    - title: "Видалити метадані"
      content: "Очистіть поля метаданих, які можуть нести приховану інформацію."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Очищення прихованих полів метаданих"
      content: |
        Цей приклад проводить вас через процес видалення вбудованих даних, таких як Автор і Заголовок, з файлу POWERPOINT.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Імпортуйте файл у редактор
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Видаліть дані автора
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Видаліть дані заголовка
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Запустіть редагування
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Збережіть очищену версію
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
    title: "Очистіть файли POWERPOINT за допомогою .NET"
    exclude: "POWERPOINT"
    description: "Використовуйте .NET для видалення прихованих даних у файлах POWERPOINT. Ідеально для очищення конфіденційних документів."
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