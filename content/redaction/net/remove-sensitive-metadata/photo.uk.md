
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: uk
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Видалення метаданих у PHOTO за допомогою C#"
head_description: "GroupDocs.Redaction for .NET допомагає вам видалити приховані дані у PHOTO файлах, які можуть розкрити особисту або бізнесову інформацію."

############################# Header ############################
title: "Видалення метаданих з PHOTO за допомогою .NET" 
description: "Легка захист ваших документів, видаляючи приховану інформацію з файлів PHOTO за допомогою C#."
subtitle: "Основні моменти GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction допомагає розробникам C# приховувати закритий контент у файлах PHOTO, включаючи текст, частини зображень і метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Видалення метаданих у файлах Photo"
    content: |
      Використовуйте GroupDocs.Redaction у вашому проекті .NET для очищення метаданих документів.
      
      1. Запустіть Redactor та відкрийте файл Photo.
      2. Встановіть правила для видалення метаданих.
      3. Застосуйте редагування та очистіть файл.
      4. Збережіть результуючий файл.
   
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
        // Видалить метадані з документів PHOTO

        // Використовуйте Redactor для завантаження документа
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // Встановіть метадані для редагування
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Очистіть документ і збережіть
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Видалення конфіденційної інформації з файлів"
  description: "GroupDocs.Redaction for .NET дає можливість видаляти особисті дані з текстових документів, зображень і метаданих. Ідеально для захисту даних."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Корисні функції редагування"
  features:
    # feature loop
    - title: "Очищення тексту"
      content: "Скануйте та видаляйте будь-який текст, який не слід ділити."

    # feature loop
    - title: "Приховування областей зображення"
      content: "Додайте накладки до частин зображення з приватними даними."

    # feature loop
    - title: "Видалення метаданих"
      content: "Видаліть приховані дані з файлів перед їх спільним користуванням."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Видалення прихованих полів метаданих"
      content: |
        Цей приклад проводить вас через процес видалення метаданих у документі PHOTO.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Завантажте файл PHOTO у редактор
          using (Redactor redactor  = new Redactor("source.jpeg"))
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

              // Обробляйте документ
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
    title: "Використовуйте .NET для редагування метаданих PHOTO"
    exclude: "PHOTO"
    description: "Зберігайте документи PHOTO безпечними, очищаючи метадані за допомогою .NET."
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