
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: uk
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Додайте накладки для приховання зображень у PHOTO за допомогою C#"
head_description: "Сховати чутливий вміст зображень у файлах PHOTO з GroupDocs.Redaction for .NET шляхом застосування накладок. Залишайте приватні дані в секретаці, зберігаючи макет документа незмінним."

############################# Header ############################
title: "Сховати вміст зображень у файлах PHOTO за допомогою накладок з .NET" 
description: "Захистіть особисті та бізнес-зображення у файлах PHOTO з C#. Легкі у використанні інструменти для ефективного захисту вмісту."
subtitle: "Основні характеристики GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET надає розробникам C# потужні засоби для закриття або видалення вмісту у файлах PHOTO. Захистіть документи, закриваючи чутливий текст, зображення та метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Захистіть вміст у файлах Photo"
    content: |
      GroupDocs.Redaction for .NET спрощує приховування вмісту у ваших додатках .NET.
      
      1. Створіть об'єкт Redactor і вкажіть путь до файлу Photo.
      2. Налаштуйте настройки редагування для ваших потреб.
      3. Виберіть області зображення та змініть колір накладок.
      4. Запустіть редагування та збережіть захищений файл.
   
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
        // Додайте накладки для закриття зображень у PHOTO

        // Завантажте файл через Redactor
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // Визначте величину та кольори накладок
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Виберіть область для закриття
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Застосуйте накладку та збережіть зміни
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Легко видаляти чутливий вміст"
  description: "GroupDocs.Redaction for .NET допомагає вам сховати або видалити чутливий вміст у багатьох форматах. Захищайте приватні дані, зберігаючи ваші документи чистими та простими для читання."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Універсальні інструменти редагування"
  features:
    # feature loop
    - title: "Редагуйте текст у документах"
      content: "Шукайте та замінюйте особистий текст у ваших документах для захисту інформації."

    # feature loop
    - title: "Сховати область зображення"
      content: "Додайте накладки до зображень або вибраних частин, щоб закрити приватні візуали."

    # feature loop
    - title: "Очистити метадані"
      content: "Видаляйте приховані метадані для уникнення ненавмисних витоків."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Приховати дані зображення за допомогою накладок"
      content: |
        Цей приклад показує, як закривати область зображення у документі накладками.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Завантажте файл
          using (Redactor redactor  = new Redactor("source.jpeg"))
          {
              // Визначте розмір накладки, колір та розташування
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Орієнтуйтеся на конкретну область зображення на першій сторінці
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Застосуйте накладку для маскування вмісту
              redactor.Apply(redaction);

              // Збережіть відредагований файл
              var save_options = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_options);
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Захистіть файли PHOTO за допомогою редагування .NET"
    exclude: "PHOTO"
    description: "Використовуйте .NET для приховування або видалення приватних даних у файлах PHOTO. Простий і ефективний спосіб забезпечити офіційні документи."
    items: 
        # format loop 1
        - name: "Редагувати PDF"
          format: "PDF"
          link: "/redaction/net/hide-image-content//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редагувати Word"
          format: "WORD"
          link: "/redaction/net/hide-image-content//word/"
          description: "Документи MS Word та Open Office"
          
        # format loop 3
        - name: "Редагувати Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-image-content//excel/"
          description: "Таблиці MS Excel та Open Office"

        # format loop 4
        - name: "Редагувати PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-image-content//powerpoint/"
          description: "Презентації MS PowerPoint та Open Office"

        # format loop 5
        - name: "Редагувати Зображення"
          format: "IMAGE"
          link: "/redaction/net/hide-image-content//image/"
          description: "Популярні формати зображень"

        # format loop 6
        - name: "Редагувати Фото"
          format: "PHOTO"
          link: "/redaction/net/hide-image-content//photo/"
          description: "Формати фото"

        # format loop 7
        - name: "Редагувати DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-image-content//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 8
        - name: "Редагувати XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-image-content//xlsx/"
          description: "Електронна таблиця Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Редагувати PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-image-content//pptx/"
          description: "Презентація PowerPoint Open XML"

        # format loop 10
        - name: "Редагувати JPEG"
          format: "JPEG"
          link: "/redaction/net/hide-image-content//jpeg/"
          description: "Зображення JPEG"


---