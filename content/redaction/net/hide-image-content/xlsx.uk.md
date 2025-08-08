
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: uk
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Сховати зображення у файлах XLSX за допомогою накладок у C#"
head_description: "З GroupDocs.Redaction for .NET ви можете замаскувати чутливий вміст зображень у файлах XLSX, застосовуючи кольорові накладки. Захищайте важливі дані, зберігаючи структуру документа незмінною."

############################# Header ############################
title: "Замаскуйте чутливі зображення у документах XLSX за допомогою .NET" 
description: "Забезпечте конфіденційність даних у файлах XLSX за допомогою C#. Наші інструменти призначені для швидкої та ефективної редагування зображень."
subtitle: "Ключові характеристики GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET надає C# розробникам прості інструменти для сховання або видалення вмісту з файлів XLSX. Захистіть документи, маскуючи чутливий текст, зображення та метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Захистіть приватні дані у документах Xlsx"
    content: |
      GroupDocs.Redaction for .NET: Допомагає вашим .NET додаткам безпечно захистити документи.
      
      1. Створіть екземпляр Redactor і завантажте файл Xlsx.
      2. Налаштуйте параметри редагування відповідно до ваших потреб.
      3. Визначте область зображення і виберіть колір накладки.
      4. Застосуйте редагування і збережіть вихідний файл.
   
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
        // Сховати чутливі частини зображення у XLSX

        // Ініціалізуйте Redactor за допомогою шляху до файлу
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Виберіть розмір і колір накладки
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Позначте область для редагування
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
  title: "Функції редагування документів"
  description: "З GroupDocs.Redaction for .NET ви можете видаляти або приховувати вміст у різних форматах файлів. Захищайте чутливі дані, зберігаючи при цьому чистий макет."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Потужні функції редагування"
  features:
    # feature loop
    - title: "Шукайте та замінюйте текст"
      content: "Швидко знаходьте та редагуйте конфіденційний текст для захисту чутливих даних."

    # feature loop
    - title: "Засліплюйте вміст зображень"
      content: "Накладайте накладки на цілі зображення або певні частини для приховування приватних візуалізацій."

    # feature loop
    - title: "Очищайте метадані"
      content: "Видаляйте або змініть приховані метадані, щоб уникнути випадкових витоків."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Приховати вміст зображення з накладками"
      content: |
        Дізнайтеся, як закривати чутливі зображення у ваших документах.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Відкрийте документ для редагування
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Визначте атрибути накладки: розмір, місце, колір
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Сфокусуйтесь на певній області зображення
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Застосуйте накладку на зображення
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
    title: "Замаскуйте вміст XLSX за допомогою редагування .NET"
    exclude: "XLSX"
    description: "Використовуйте .NET для редагування або видалення чутливих даних у файлах XLSX. Практичне рішення для захисту документів."
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