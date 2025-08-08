
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: uk
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Видалення метаданих з DOCX за допомогою C#"
head_description: "Використовуйте GroupDocs.Redaction for .NET для видалення або зміни прихованих метаданих у файлах DOCX. Захистіть свої документи від розкриття приватних деталей."

############################# Header ############################
title: "Видалення метаданих у файлах DOCX за допомогою .NET" 
description: "Використовуйте C# для очищення чутливих метаданих у файлах DOCX. Захистіть свої бізнесові та особисті дані."
subtitle: "Кращі функції GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Що таке GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction надає розробникам C# інструменти для приховування або видалення вмісту в файлах DOCX. Швидко очищуйте текст, зображення та метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Очищення прихованих даних у файлах Docx"
    content: |
      GroupDocs.Redaction допомагає вашим проектам .NET швидко видалити небажані метадані.
      
      1. Створіть екземпляр Redactor та відкрийте свій файл Docx.
      2. Налаштуйте редагування для цілей записів метаданих.
      3. Застосуйте зміни для очищення документа.
      4. Збережіть очищений файл.
   
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
        // Стирайте метадані з документів DOCX

        // Завантажте файл, використовуючи Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Налаштуйте параметри видалення метаданих
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Застосуйте та збережіть зміни
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Приховати чутливу інформацію в будь-якому документі"
  description: "GroupDocs.Redaction for .NET дозволяє очищувати чутливий вміст у багатьох типах файлів. Зробіть свої документи безпечнішими для обробки або зберігання."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Розумні опції редагування"
  features:
    # feature loop
    - title: "Видалити чутливий текст"
      content: "Шукайте та видаляйте особистий чи бізнес-текст зі своїх файлів."

    # feature loop
    - title: "Маскувати зображення"
      content: "Приховуйте зображення або вибрані області для захисту конфіденційного вмісту."

    # feature loop
    - title: "Стирайте метадані"
      content: "Видаляйте приховані записи метаданих, щоб уникнути витоку фонових даних."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Очищення полів метаданих"
      content: |
        Цей приклад демонструє, як видалити приховані дані з файлів DOCX.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Завантажте ваш файл DOCX
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Цілеспрямовано видаліть поле автора
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Цілеспрямовано видаліть поле заголовка
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Запустіть процес редагування
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Збережіть оновлений файл
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
    title: "Видаліть метадані у DOCX за допомогою .NET"
    exclude: "DOCX"
    description: "Видаліть небажані метадані у файлах DOCX за допомогою .NET. Простой спосіб захистити приховані деталі вашого файлу."
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