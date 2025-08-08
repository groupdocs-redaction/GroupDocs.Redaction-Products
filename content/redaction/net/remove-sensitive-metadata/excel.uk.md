
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: uk
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Редагуйте та видаляйте метадані у EXCEL за допомогою C#"
head_description: "Забезпечте ваші документи EXCEL, видаляючи метадані за допомогою GroupDocs.Redaction for .NET. Уникайте прихованих даних, які можуть піддавати ризику конфіденційність."

############################# Header ############################
title: "Захист метаданих у файлах EXCEL за допомогою .NET" 
description: "Використовуючи C#, ви можете очищати чутливі дані з файлів EXCEL. Інструменти, розроблені для захисту вашої інформації."
subtitle: "Ключові переваги GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Що таке GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction пропонує надійний спосіб для розробників C# керувати редагуванням у файлах EXCEL. Він працює з текстом, зображеннями та метаданими.

############################# Steps ############################
steps:
    enable: true
    title: "Очищення метаданих у файлах Excel"
    content: |
      Використовуйте GroupDocs.Redaction у ваших проектах .NET для безпечного оброблення метаданих документів.
      
      1. Створіть об'єкт Redactor та завантажте цільовий файл Excel.
      2. Налаштуйте редагування для видалення прихованих метаданих.
      3. Запустіть процес очищення.
      4. Збережіть фінальну версію.
   
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
        // Очищайте метадані з EXCEL

        // Ініціалізуйте редагувач та завантажте файл
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Налаштуйте параметри видалення метаданих
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Редагуйте та зберігайте результат
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Видалення приватних даних з ваших файлів"
  description: "GroupDocs.Redaction for .NET дозволяє вам очищати текст, зображення та метадані у кількох форматах. Ідеально для особистих, юридичних та корпоративних документів."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Інструменти видалення метаданих"
  features:
    # feature loop
    - title: "Шукати та видаляти текст"
      content: "Знайдіть особистий або конфіденційний текст у документах та безпечно видаліть його."

    # feature loop
    - title: "Приховати візуальні елементи"
      content: "Додайте накладки на чутливі частини зображень, щоб уникнути перегляду."

    # feature loop
    - title: "Видалити метадані"
      content: "Видаляйте вбудовані дані, які можуть розкрити конфіденційну інформацію."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Націліть метадані для редагування"
      content: |
        Дізнайтеся, як знаходити та видаляти метадані, такі як Автор або Заголовок, з документа EXCEL.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Імпортуйте документ у редактор
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Націліть метадані Автора
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Націліть метадані Заголовка
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Застосуйте зміни
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Збережіть оновлений документ
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
    title: "Видалення метаданих у EXCEL за допомогою .NET"
    exclude: "EXCEL"
    description: "Позбудьтеся приватних метаданих у файлах EXCEL за допомогою .NET. Збережіть свої документи чистими та безпечними."
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