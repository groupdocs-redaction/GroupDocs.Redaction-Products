
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: uk
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Захистіть зображення у IMAGE, додаючи накладки за допомогою C#"
head_description: "За допомогою GroupDocs.Redaction for .NET ви можете приховати чутливі дані зображень у файлах IMAGE з використанням кольорових накладок. Захищайте важливу інформацію, зберігаючи оригінальний дизайн файлу."

############################# Header ############################
title: "Сховати приватні зображення у файлах IMAGE за допомогою накладок з .NET" 
description: "Зберігайте бізнесові та особисті зображення в безпеці у файлах IMAGE за допомогою C#. Простощі у використанні для швидкого та ефективного захисту контенту."
subtitle: "Ключові характеристики GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Що таке GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET надає розробникам C# потужні інструменти для спрямунення на маскування або видалення контенту у файлах IMAGE. Захистіть свої документи, маскуючи чутливий текст, зображення та метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Захистіть дані у файлах Image за допомогою накладок"
    content: |
      Використовуйте GroupDocs.Redaction for .NET для швидкого закриття приватного вмісту в ваших додатках .NET.
      
      1. Створіть екземпляр Redactor та надайте шлях до файлу Image.
      2. Налаштуйте параметри редагування за необхідності.
      3. Оберіть області зображення та визначте кольори накладок.
      4. Обробіть файл та збережіть безпечну версію.
   
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
        // Захистіть вміст зображення у IMAGE

        // Відкрийте файл за допомогою Redactor
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // Визначте розміри і кольори накладок
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Оберіть область, яку потрібно приховати
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Застосуйте накладку та збережіть результат
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Приховати вміст у різних форматах файлів"
  description: "З GroupDocs.Redaction for .NET ви можете сховати або видалити вміст у різних форматах файлів. Захищайте чутливі дані, зберігаючи чистий, читабельний формат."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Повний контроль над редагуванням"
  features:
    # feature loop
    - title: "Шукати та замінювати текст"
      content: "Шукайте в документах та замініть чутливий текст, щоб захистити приватну інформацію."

    # feature loop
    - title: "Накладати на зображення"
      content: "Застосовуйте кольорові накладки для маскування цілого зображення або вибраних частин."

    # feature loop
    - title: "Редагувати метадані"
      content: "Видаляйте або змінюйте приховані поля метаданих, щоб уникнути розкриття інформації."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Закриваємо вміст зображення за допомогою накладок"
      content: |
        Цей кодовий приклад показує, як застосовувати накладки для приховування чутливого вмісту зображення.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Завантажте файл для редагування
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // Відрегулюйте розмір накладки, колір та позицію
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Оберіть область зображення на сторінці один
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Додайте накладку для приховання вмісту зображення
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
    title: "Сховати вміст у файлах IMAGE за допомогою редагування .NET"
    exclude: "IMAGE"
    description: "Використовуйте .NET для приховування або видалення чутливих даних у файлах IMAGE. Надійний метод для забезпечення офіційних файлів і захисту конфіденційної інформації."
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