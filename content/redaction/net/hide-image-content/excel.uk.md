
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: uk
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Замаскуйте зображення у EXCEL з накладками у C#"
head_description: "Сховати приватні зображення у EXCEL файлах за допомогою GroupDocs.Redaction for .NET. Додайте кольорові накладки, щоб захистити чутливі дані, зберігаючи макет документа."

############################# Header ############################
title: "Закривайте чутливі зображення у файлах EXCEL за допомогою накладок у .NET" 
description: "Захистіть особисті та бізнес-дані у файлах EXCEL за допомогою C#. Швидкий та надійний захист даних за допомогою наших інструментів."
subtitle: "Досліджуйте функції GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET забезпечує розробників C# інструментами для приховування або видалення чутливого вмісту у файлах EXCEL. Закрийте текст, зображення та метадані, щоб захистити документи.

############################# Steps ############################
steps:
    enable: true
    title: "Зберігайте свої дані в безпеці у файлах Excel"
    content: |
      GroupDocs.Redaction for .NET допомагає вашим .NET додаткам безпечно захистити документи, ховаючи чутливий вміст.
      
      1. Створіть екземпляр Redactor та надайте шлях до файлу Excel.
      2. Налаштуйте параметри редагування для досягнення бажаних результатів.
      3. Виберіть область зображення та накладку кольору.
      4. Застосуйте редагування і збережіть файл.
   
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
        // Закрийте вміст зображення у EXCEL

        // Завантажте документ за допомогою Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Встановіть розмір та колір накладки
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Обратьте область для приховування
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Застосуйте та збережіть зміни
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Редагуйте будь-який вміст у документах"
  description: "GroupDocs.Redaction for .NET допомагає вам ховати або видаляти чутливий вміст у різних форматах документів. Захищайте дані, зберігаючи документи простими у використанні."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Потужні опції редагування"
  features:
    # feature loop
    - title: "Шукайте та редагуйте текст"
      content: "Знайдіть чутливий текст і замініть його, щоб захистити приватні дані у ваших документах."

    # feature loop
    - title: "Накладайте області зображень"
      content: "Закривайте цілі зображення або вибрані частини накладками, щоб зберегти візуалізацію приватною."

    # feature loop
    - title: "Видалити метадані"
      content: "Стирайте приховані поля метаданих, щоб уникнути ненавмисних витоків."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Замаскуйте зображення за допомогою накладок"
      content: |
        Цей приклад показує, як закрити чутливу інформацію у зображеннях документів.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Відкрийте файл для редагування
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Визначте розмір, колір та розташування накладки
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Орієнтуйтеся на певну область зображення на першій сторінці
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Застосуйте накладку для замаскування зображення
              redactor.Apply(redaction);

              // Збережіть кінцевий документ
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
    title: "Захистіть файли EXCEL за допомогою інструментів редагування .NET"
    exclude: "EXCEL"
    description: "Використовуйте .NET для ховання або видалення чутливих даних у файлах EXCEL. Надійне рішення для забезпечення документів."
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