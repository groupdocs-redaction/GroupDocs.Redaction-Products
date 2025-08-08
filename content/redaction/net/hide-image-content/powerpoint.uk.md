
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: uk
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Сховати чутливі зображення у POWERPOINT за допомогою накладок в C#"
head_description: "Використовуйте GroupDocs.Redaction for .NET для додавання накладок на зображення у файлах POWERPOINT, зберігаючи приватну інформацію прихованою та при цьому називаючи структуру документа незмінною."

############################# Header ############################
title: "Сховати приватні зображення у документах POWERPOINT за допомогою накладок у .NET" 
description: "Захистіть особисті та корпоративні дані у файлах POWERPOINT за допомогою C#. Прості інструменти для надійної конфіденційності документів."
subtitle: "Основні характеристики GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Що таке GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET надає розробникам C# прості інструменти для приховування або видалення вмісту з файлів POWERPOINT. Захищайте документи, закриваючи чутливий текст, зображення та метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Захистіть чутливу інформацію у документах Powerpoint"
    content: |
      GroupDocs.Redaction for .NET створено для допомоги вашим .NET додаткам швидко захищати вміст документа.
      
      1. Створіть об'єкт Redactor та вкажіть файл Powerpoint.
      2. Отрегулюйте параметри редагування для ваших потреб.
      3. Виберіть область зображення та виберіть колір накладки.
      4. Застосуйте редагування та збережіть документ.
   
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
        // Закривайте дані зображення у файлах POWERPOINT

        // Завантажте файл за допомогою Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Визначте колір накладки та розміри
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Оберіть область для редагування
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Застосуйте накладку та збережіть документ
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Редагуйте чутливі дані у документах"
  description: "GroupDocs.Redaction for .NET дозволяє ховати або видаляти вміст у багатьох типах документів. Захищайте приватні дані, зберігаючи файли простими у використанні та обміні."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Інструменти редагування з великою кількістю функцій"
  features:
    # feature loop
    - title: "Знайдіть та редагуйте текст"
      content: "Шукайте чутливий текст у документах та замініть його, щоб захистити приватні дані."

    # feature loop
    - title: "Закривайте вміст зображень"
      content: "Використовуйте накладки для замаскування зображень або вибраних частин, щоб гарантовано зберегти приватні візуали."

    # feature loop
    - title: "Очистити метадані"
      content: "Стирайте або змініть метадані, щоб уникнути витоків даних."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Захистіть дані зображень за допомогою накладок"
      content: |
        Цей приклад демонструє, як приховати чутливі вмісти у документах.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Завантажте файл для редагування
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Визначте розмір, позицію та колір накладки
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Позначте область зображення на першій сторінці
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Застосуйте накладку для прикриття зображення
              redactor.Apply(redaction);

              // Збережіть відредагований документ
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
    title: "Захистіть вміст POWERPOINT за допомогою .NET"
    exclude: "POWERPOINT"
    description: "Використовуйте .NET для приховування або видалення приватного вмісту у файлах POWERPOINT. Надійне рішення для захисту чутливих документів."
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