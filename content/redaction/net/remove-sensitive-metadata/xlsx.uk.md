
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: uk
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Очищення метаданих у файлах XLSX за допомогою C#"
head_description: "За допомогою GroupDocs.Redaction for .NET ви можете безпечно видалити метадані з файлів XLSX. Очистіть приховану інформацію, яка може розкрити приватні дані."

############################# Header ############################
title: "Стирайте метадані з файлів XLSX за допомогою .NET" 
description: "Захистіть чутливі деталі у ваших файлах XLSX за допомогою C#. Просте редагування для особистих і робочих документів."
subtitle: "Досліджуйте, що може GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Дізнайтеся більше про GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction надає розробникам C# інструменти для очищення вмісту в документах XLSX. Маскуйте або видаляйте текст, зображення та метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Очищення метаданих у файлах Xlsx"
    content: |
      З GroupDocs.Redaction ваші .NET додатки можуть швидко видаляти приховані дані.
      
      1. Налаштуйте Redactor та відкрийте файл Xlsx.
      2. Визначте, які метадані ви хочете видалити.
      3. Застосуйте правила редагування.
      4. Збережіть фінальний файл.
   
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
        // Очищайте приховані метадані у XLSX

        // Відкрийте файл за допомогою Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Визначте метадані для видалення
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Застосуйте редагування та збережіть
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Захистіть чутливу інформацію у документах"
  description: "Використовуйте GroupDocs.Redaction for .NET для видалення або приховування вмісту у багатьох форматах файлів. Зберігайте файли приватними та готовими до обробки."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Всі в одному інструменти редагування"
  features:
    # feature loop
    - title: "Заміна або видалення тексту"
      content: "Захищайте особисті дані, знаходячи та видаляючи чутливий текст."

    # feature loop
    - title: "Сховати частини зображень"
      content: "Використовуйте накладки для блокування зображень з приватними візуальними даними."

    # feature loop
    - title: "Видалити метадані"
      content: "Очистіть приховані записи метаданих, які можуть містити особисті або бізнес-дані."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Як видалити метадані"
      content: |
        Цей зразок коду видаляє властивості метаданих у документі XLSX.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Відкрийте документ
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Цілеспрямовано видаліть автора метаданих
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Цілеспрямовано видаліть заголовок метаданих
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
    title: "Редагуйте метадані у XLSX за допомогою .NET"
    exclude: "XLSX"
    description: ".NET спрощує процес очищення метаданих з файлів XLSX. Зберігайте чистими та безпечними свої файли."
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