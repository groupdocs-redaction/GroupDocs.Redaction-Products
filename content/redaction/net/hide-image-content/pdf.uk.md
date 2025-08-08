
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: uk
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Сховати зображення у PDF за допомогою накладок в C#"
head_description: "З GroupDocs.Redaction for .NET ви можете захистити чутливі зображення у файлах PDF, додавши кольорові накладки. Забезпечте конфіденційність даних без зміни макета документа."

############################# Header ############################
title: "Захистіть чутливі зображення у документах PDF за допомогою накладок у .NET" 
description: "Зберігайте безпеку бізнесових і особистих даних у файлах PDF за допомогою C#. Наші інструменти допоможуть вам досягти надійного захисту даних."
subtitle: "Особливості GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET надає розробникам C# потужні інструменти для приховування або видалення вмісту з файлів PDF. Захищайте документи, закриваючи текст, зображення та метадані у різних форматах.

############################# Steps ############################
steps:
    enable: true
    title: "Захистіть бізнес-дані у документах Pdf"
    content: |
      GroupDocs.Redaction for .NET: Розроблений для допомоги вашим .NET додаткам захистити документи. Швидко та безпечно видаляйте чутливу інформацію.
      
      1. Створіть екземпляр Redactor та надайте шлях до файлу Pdf, який потрібно захистити.
      2. Налаштуйте параметри редагування для досягнення необхідного результату.
      3. Виберіть область зображення та визначте колір накладки.
      4. Обробіть файл та збережіть відредагований документ.
   
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
        // Сховати чутливі зображення у PDF

        // Завантажте файл за допомогою конструктора Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Налаштуйте колір і розмір накладки
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Виберіть область для редагування
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Застосуйте накладку до зображення та збережіть файл
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Редагуйте вміст документів"
  description: "З GroupDocs.Redaction for .NET ви можете приховувати або видаляти вміст у широкому діапазоні форматів файлів. Захищайте конфіденційні дані, зберігаючи документи зручними для читання та обміну."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Розширені функції редагування"
  features:
    # feature loop
    - title: "Редагуйте текст будь-де"
      content: "Шукайте та замінюйте чутливий текст у всьому документі, щоб зберегти конфіденційність."

    # feature loop
    - title: "Закривайте зображення"
      content: "Застосовуйте накладки до цілих зображень або вибраних областей, щоб приховати чутливі візуальні дані."

    # feature loop
    - title: "Обробка метаданих"
      content: "Видаляйте або змінюйте приховані метадані, щоб запобігти випадковому витоку даних."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Використовуйте накладки для сховання даних зображень"
      content: |
        Цей приклад демонструє, як закрити чутливу інформацію в зображеннях документів.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Завантажте документ для редагування
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Встановіть параметри накладки: розмір, позиція, колір
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Орієнтуйтеся на певну область зображення на першій сторінці
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Застосуйте накладку, щоб сховати зображення
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
    title: "Захистіть вміст PDF з редагуванням .NET"
    exclude: "PDF"
    description: "Використовуйте .NET для приховування або видалення чутливого вмісту в файлах PDF. Ефективне рішення для забезпечення офіційних і конфіденційних документів."
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