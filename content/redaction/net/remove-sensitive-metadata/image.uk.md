
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: uk
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Видалення прихованих метаданих у IMAGE за допомогою C#"
head_description: "Використовуйте GroupDocs.Redaction for .NET для очищення метаданих у ваших файлах IMAGE. Переконайтеся, що приватні деталі залишаються приватними."

############################# Header ############################
title: "Видалення метаданих у файлах IMAGE за допомогою .NET" 
description: "Зберігайте ваші файли IMAGE безпечними, використовуючи C#. Захистіть бізнес дані та особисті дані простим способом."
subtitle: "Що ви отримуєте з GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction допомагає користувачам C# очищати файли, видаляючи небажаний текст, частини зображень і метадані у файлах IMAGE.

############################# Steps ############################
steps:
    enable: true
    title: "Очищення метаданих у файлах Image"
    content: |
      Почніть з GroupDocs.Redaction у ваших додатках .NET для очищення метаданих файлу.
      
      1. Створіть Redactor та відкрийте ваш файл Image.
      2. Виберіть опції для видалення прихованих записів метаданих.
      3. Застосуйте налаштування редагування.
      4. Збережіть результат.
   
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
        // Видаліть приховані метадані з файлів IMAGE

        // Відкрийте файл за допомогою Redactor
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // Додайте правила редагування для метаданих
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Виконайте обробку і збережіть
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Очищення вмісту у будь-якому документі"
  description: "GroupDocs.Redaction for .NET видаляє приватний текст, частини зображень або приховані поля. Зробіть документи безпечними для обробки."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Основні функції"
  features:
    # feature loop
    - title: "Редагування тексту"
      content: "Знайдіть і видаліть приватні слова та числа."

    # feature loop
    - title: "Приховування зображень"
      content: "Додайте маски зображень для приховування візуальної інформації."

    # feature loop
    - title: "Редагування метаданих"
      content: "Очистіть поля метаданих, які можуть піддавати ризику важливу інформацію."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Видалення чутливих метаданих"
      content: |
        Цей зразок пояснює, як видалити конкретні записи метаданих у документі IMAGE.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Відкрийте IMAGE з редагувачем
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // Націлюйте на поле автора
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Націлюйте на поле заголовка
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Редагуйте поля
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Збережіть ваш документ
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
    title: "Видалення метаданих з IMAGE за допомогою .NET"
    exclude: "IMAGE"
    description: "Стерти чутливі дані з файлів IMAGE за допомогою редагування .NET. Продовжте безпечність ваших файлів для обробки або зберігання."
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