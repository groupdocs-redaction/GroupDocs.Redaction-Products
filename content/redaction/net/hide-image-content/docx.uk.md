
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: uk
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Закривайте зображення у DOCX за допомогою накладок у C#"
head_description: "Використовуйте GroupDocs.Redaction for .NET для закриття чутливих зображень у файлах DOCX кольоровими накладками. Захищайте особисті дані, зберігаючи макет документа без змін."

############################# Header ############################
title: "Закривайте чутливі зображення у документах DOCX за допомогою накладок у .NET" 
description: "Забезпечуйте безпеку особистої та бізнес-інформації у файлах DOCX за допомогою C#. Наші інструменти роблять захист даних простим і надійним."
subtitle: "Особливості GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Дізнайтеся про GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET надає розробникам C# інструменти для приховування або видалення вмісту в файлах DOCX. Захистіть документи, закриваючи текст, зображення та метадані у різних форматах.

############################# Steps ############################
steps:
    enable: true
    title: "Захистіть дані у файлах Docx"
    content: |
      GroupDocs.Redaction for .NET: Створено для допомоги вашим .NET додаткам захистити документи. Швидко редагуйте чутливу інформацію за кілька кроків.
      
      1. Ініціалізуйте Redactor та надайте шлях до вашого файлу Docx.
      2. Налаштуйте параметри редагування для задоволення ваших потреб.
      3. Виберіть область зображення та підіть колір накладки.
      4. Запустіть редагування та збережіть файл.
   
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
        // Закрийте чутливі області зображень у DOCX

        // Завантажте файл через конструктор Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Встановіть колір і розмір накладки
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Визначте область для редагування
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
  title: "Редагуйте вміст у файлах"
  description: "З GroupDocs.Redaction for .NET ви можете приховувати або видаляти чутливий вміст у багатьох типах файлів. Захищайте документи, зберігаючи їх у безпеці, зберігаючи при цьому читабельність."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Гнучкі параметри редагування"
  features:
    # feature loop
    - title: "Легко редагуйте текст"
      content: "Знайдіть та замініть приватний текст у всьому документі для покращення захисту даних."

    # feature loop
    - title: "Закривайте області зображень"
      content: "Накладайте накладки на цілі зображення або вибрані частини для захисту візуальної інформації."

    # feature loop
    - title: "Очищайте метадані"
      content: "Видаляйте або змінюйте приховані метадані, щоб уникнути ненавмисних витоків даних."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Застосуйте накладки, щоб приховати деталі зображення"
      content: |
        Цей приклад демонструє, як приховати чутливі області в зображеннях документів.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Завантажте документ, який потрібно відредагувати
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Задайте параметри накладки: розмір, позиція, колір
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Сфокусуйтесь на конкретній області на першій сторінці
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Розмістіть накладку на зображення
              redactor.Apply(redaction);

              // Збережіть оновлений файл
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
    title: "Захистіть файли DOCX з редагуванням .NET"
    exclude: "DOCX"
    description: "Використовуйте .NET для закриття чи видалення чутливих даних у файлах DOCX. Ідеально підходить для захисту конфіденційних документів."
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