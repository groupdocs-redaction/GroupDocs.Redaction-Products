
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: uk
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Видалення метаданих з файлів PPTX за допомогою C#"
head_description: "GroupDocs.Redaction for .NET допомагає вам видаляти або редагувати метадані у файлах PPTX. Захистіть свої документи, видаляючи приватні фондані дані."

############################# Header ############################
title: "Видалення метаданих у PPTX за допомогою інструментів .NET" 
description: "Приховуйте чутливі метадані у файлах PPTX за допомогою C#. Ідеально підходить для бізнесу та особистої конфіденційності."
subtitle: "Основні функції GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Познайомтеся з GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction створено для розробників C#, яким необхідно видалити дані з файлів PPTX. Швидко очищайте текст, зображення та метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Видалення прихованих метаданих зі файлів Pptx"
    content: |
      GroupDocs.Redaction допомагає вашій .NET рішенню очищувати приховані дані.
      
      1. Створіть екземпляр Redactor та завантажте файл Pptx.
      2. Налаштуйте правила редагування для полів метаданих.
      3. Застосуйте редагування, щоб видалити дані.
      4. Збережіть свій редагований файл.
   
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
        // Видалити метадані у PPTX

        // Відкрийте файл за допомогою Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Налаштуйте редагування для очищення метаданих
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Застосуйте та збережіть файл
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Додаткові інструменти редагування для будь-якого файлу"
  description: "GroupDocs.Redaction for .NET підтримує редагування вмісту в різних форматах. Забезпечте конфіденційність ваших даних та чистоту ваших файлів."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Вбудовані інструменти конфіденційності"
  features:
    # feature loop
    - title: "Знайти та видалити текст"
      content: "Швидко видаліть особисті текстові записи зі своїх файлів."

    # feature loop
    - title: "Приховати зображення за допомогою накладок"
      content: "Сховати область зображень, яка не повинна бути видна."

    # feature loop
    - title: "Видалити метадані"
      content: "Очистіть поля прихованих метаданих, які можуть містити дані автора, заголовка та більше."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Очищення полів метаданих"
      content: |
        Цей приклад показує, як безпечно очищати метадані з файлу PPTX.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Імпортуйте ваш файл PPTX
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Редагуйте поле автора
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Редагуйте поле заголовка
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Запустіть процес редагування
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Експортуйте очищений файл
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
    title: "Очистіть метадані у файлах PPTX за допомогою .NET"
    exclude: "PPTX"
    description: "Легко видаліть фонові метадані з файлів PPTX за допомогою .NET. Ідеальний варіант для безпеки документів."
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