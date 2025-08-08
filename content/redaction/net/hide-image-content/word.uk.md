
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: uk
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Закривайте зображення у WORD за допомогою накладок у C#"
head_description: "Сховати чутливі зображення у WORD файлах за допомогою GroupDocs.Redaction for .NET. Додайте кольорові накладки, щоб захистити особисті дані, зберігаючи при цьому оригінальний макет документа."

############################# Header ############################
title: "Сховати приватні зображення у файлах WORD за допомогою накладок у .NET" 
description: "Захистіть свої особисті та бізнес-дані у файлах WORD з C#. Досягайте надійного захисту вмісту за допомогою наших простих інструментів."
subtitle: "Основні характеристики GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET надає C# розробникам інструменти для маскування або видалення вмісту з файлів WORD. Захистіть документи, маскуючи чутливий текст, зображення та метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Захистіть чутливі дані у файлах Word"
    content: |
      GroupDocs.Redaction for .NET допомагає вашим .NET додаткам швидко маскувати приватний вміст у документах.
      
      1. Створіть об'єкт Redactor і вкажіть шлях до файлу Word.
      2. Налаштуйте параметри редагування відповідно до ваших вимог.
      3. Ознайомтеся із зображенням і визначте колір накладки.
      4. Обробіть і збережіть відредагований файл.
   
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
        // Закривайте чутливі зображення у WORD

        // Завантажте файл через конструктор Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Визначте колір та розмір накладки
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
  title: "Сховати або видалити вміст документа"
  description: "GroupDocs.Redaction for .NET дозволяє легко сховати чи видалити дані у різних форматах файлів. Захищайте чутливу інформацію, зберігаючи документи чистими та читабельними."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Докладні інструменти редагування"
  features:
    # feature loop
    - title: "Змінюйте текст будь-де"
      content: "Шукайте та замінюйте чутливий текст у ваших документах, щоб захистити приватні дані."

    # feature loop
    - title: "Замаскуйте зображення"
      content: "Застосуйте накладки до певних частин або до цілих зображень, щоб приховати особисті візуали."

    # feature loop
    - title: "Очистити метадані"
      content: "Видаляйте або редагуйте приховані метадані, щоб уникнути випадкових витоків даних."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Додайте накладки, щоб приховати вміст зображення"
      content: |
        Цей приклад демонструє, як захистити чутливі дані в зображеннях документів за допомогою накладок.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Завантажте документ для редагування
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Встановіть розмір, місце та колір накладки
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Сфокусуйтесь на конкретному зображенні на сторінці один
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Застосуйте накладку
              redactor.Apply(redaction);

              // Збережіть зміни у файлі
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
    title: "Захистіть вміст WORD за допомогою редагування .NET"
    exclude: "WORD"
    description: ".NET дозволяє ховати або видаляти чутливий вміст у файлах WORD. Надійний спосіб захисту конфіденційних і офіційних документів."
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