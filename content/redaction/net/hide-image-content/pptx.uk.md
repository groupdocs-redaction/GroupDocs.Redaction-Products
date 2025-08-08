
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: uk
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Редагуйте зображення у PPTX з накладками в C#"
head_description: "З GroupDocs.Redaction for .NET ви можете приховати чутливі зображення у файлах PPTX, застосовуючи кольорові накладки. Захистіть конфіденційні дані без зміни структури документа."

############################# Header ############################
title: "Захистіть чутливі зображення у документах PPTX за допомогою .NET" 
description: "Захистіть приватні та бізнес-дані у файлах PPTX за допомогою C#. Наші інструменти роблять редагування зображень швидким та надійним."
subtitle: "Що пропонує GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET надає розробникам C# прості у використанні інструменти для сховання або видалення вмісту в файлах PPTX. Захищайте ваші документи, редагуючи текст, зображення та метадані в різних форматах.

############################# Steps ############################
steps:
    enable: true
    title: "Захистіть бізнес-дані у документах Pptx"
    content: |
      GroupDocs.Redaction for .NET: Допомагає .NET додаткам захистити документи шляхом приховання чутливої інформації.
      
      1. Налаштуйте екземпляр Redactor та завантажте файл Pptx.
      2. Налаштуйте параметри редагування так, щоб відповісти вашим вимогам.
      3. Виберіть зображення та призначте кольори накладки.
      4. Обробіть редагування і збережіть файл.
   
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
        // Редагуйте чутливі зображення в PPTX

        // Відкрийте файл за допомогою Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Визначте колір та розмір накладки
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Виберіть область для редагування
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
  title: "Інструменти редагування документів"
  description: "GroupDocs.Redaction for .NET дозволяє приховувати або видаляти чутливий вміст у різних типах файлів. Захищайте інформацію, зберігаючи документи чистими та зручними для спільного використання."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Потужні інструменти редагування"
  features:
    # feature loop
    - title: "Знайдіть та замініть текст"
      content: "Локалізуйте і редагуйте приватний текст для підвищення безпеки документів."

    # feature loop
    - title: "Редагуйте вміст зображень"
      content: "Прикривайте цілі зображення або вибрані області накладками для приховання приватних візуальних елементів."

    # feature loop
    - title: "Видалення метаданих"
      content: "Стирайте або змініть приховані метадані, щоб запобігти витокам даних."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Сховати дані зображень за допомогою накладок"
      content: |
        Цей приклад демонструє, як редагувати чутливі зображення у документах.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Завантажте документ
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Визначте розмір, позицію та колір накладки
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Сфокусуйтесь на області редагування на першій сторінці
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Застосуйте накладку
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
    title: "Редагуйте вміст PPTX за допомогою .NET"
    exclude: "PPTX"
    description: "Використовуйте .NET для сховання або видалення чутливого вмісту в файлах PPTX. Надійне рішення для забезпечення документів."
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