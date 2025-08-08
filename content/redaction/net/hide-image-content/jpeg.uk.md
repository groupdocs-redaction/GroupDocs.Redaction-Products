
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: uk
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Сховати зображення у JPEG за допомогою накладок в C#"
head_description: "Захистіть приватні зображення у файлах JPEG з GroupDocs.Redaction for .NET, додаючи кольорові накладки. Зберігайте чутливу інформацію в безпеці, не змінюючи макет файлу."

############################# Header ############################
title: "Закривайте чутливі зображення у файлах JPEG за допомогою накладок у .NET" 
description: "Зберігайте свої особисті та бізнес-зображення в безпеці у файлах JPEG за допомогою C#. Наші прості інструменти роблять захист файлів надійним."
subtitle: "Основні функції GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET надає C# розробникам інструменти для приховування або видалення вмісту з файлів JPEG. Сховати текст, зображення та метадані для захисту документів.

############################# Steps ############################
steps:
    enable: true
    title: "Захистіть чутливі дані у файлах Jpeg"
    content: |
      GroupDocs.Redaction for .NET призначений для допомоги вашим .NET додаткам швидко приховувати особистий вміст.
      
      1. Створіть об'єкт Redactor і визначте шлях до файлу Jpeg.
      2. Встановіть параметри редагування у відповідності до ваших потреб.
      3. Визначте область зображення та виберіть колір накладки.
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
        // Закрийте вміст зображень у файлах JPEG

        // Відкрийте файл за допомогою Redactor
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // Визначте розмір і колір накладки
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Оберіть область для накладки
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Застосуйте накладку та збережіть файл
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Сховати будь-який вміст у документах"
  description: "GroupDocs.Redaction for .NET спрощує приховування або видалення вмісту в різних форматах файлів. Захистіть чутливу інформацію, зберігаючи ваші файли акуратними і простими для обміну."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Інструменти редагування для повного контролю"
  features:
    # feature loop
    - title: "Редагуйте текст будь-де"
      content: "Шукайте та замінюйте чутливий текст у документах, щоб захистити приватні дані."

    # feature loop
    - title: "Засліплюйте зображення"
      content: "Застосовуйте накладки до зображень чи конкретних областей, щоб зберегти чутливі зображення прихованими."

    # feature loop
    - title: "Очистити метадані"
      content: "Видаляйте або оновлюйте приховані метадані, щоб запобігти випадковим витокам."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Сховати дані зображень за допомогою накладок"
      content: |
        Цей приклад демонструє, як закрити чутливі зображення.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Відкрийте файл для редагування
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // Налаштуйте розмір, позицію та колір накладки
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Виберіть конкретну область зображення на сторінці один
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Застосуйте накладку для замаскування зображення
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
    title: "Захистіть файли JPEG за допомогою редагування .NET"
    exclude: "JPEG"
    description: "Використовуючи .NET, ви можете легше сховати або видалити чутливий вміст у файлах JPEG. Надійне рішення для підтримки безпеки ваших документів."
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