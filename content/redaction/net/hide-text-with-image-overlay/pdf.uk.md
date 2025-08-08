
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: uk
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Сховати чутливий текст у PDF за допомогою накладок з використанням C#"
head_description: "З GroupDocs.Redaction for .NET ви можете приховати чутливий текст у файлах PDF, розміщуючи кольорові квадратні накладки. Захистіть приватні дані, не змінюючи оригінальне оформлення."

############################# Header ############################
title: "Сховати чутливий текст у документах PDF за допомогою накладок з використанням .NET" 
description: "Контролюйте вміст файлів PDF за допомогою C#. Використовуйте редації для захисту юридичної, фінансової та особистої інформації."
subtitle: "Можливості GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET надає розробникам C# інструменти для приховування або видалення вмісту з файлів PDF. Це простий спосіб зберегти документи в безпеці. Ви можете закривати текст, зображення або метадані у багатьох типах файлів.

############################# Steps ############################
steps:
    enable: true
    title: "Захистіть бізнес-дані в документах Pdf"
    content: |
      GroupDocs.Redaction for .NET: створено, щоб допомогти вашим додаткам .NET зберігати документи в безпеці. Швидко редагуйте особисту інформацію.
      
      1. Створіть екземпляр Redactor та вкажіть шлях до файлу Pdf, який потрібно редагувати.
      2. Налаштуйте параметри редагування, щоб отримати потрібний результат.
      3. Просто вкажіть текстовий шаблон для пошуку та виберіть колір накладки.
      4. Редагуйте документ і збережіть зміни.
   
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
        // Сховати чутливий текст у PDF з накладками зображень

        // Передайте шлях до файлу конструктору Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Налаштуйте параметри редагування
            // Визначте текстовий шаблон і колір накладки
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Редагуйте та збережіть оновлений файл PDF
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Редагуйте вміст у документах"
  description: "З GroupDocs.Redaction for .NET ви можете видаляти або приховувати вміст у багатьох типах файлів. Захистіть чутливу інформацію, зберігаючи ваші документи легкими для читання та обміну."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Розширені параметри редагування"
  features:
    # feature loop
    - title: "Редагувати текст в будь-якому місці"
      content: "Шукайте та замінюйте будь-який співпадний текст у вашому документі, щоб допомогти захистити конфіденційні дані."

    # feature loop
    - title: "Приховувати зображення"
      content: "Розміщуйте накладки на повні зображення або вибрані області, щоб приховати приватні візуальні дані."

    # feature loop
    - title: "Управляти метаданими"
      content: "Стирайте або змінюйте приховані метадані, щоб запобігти небажаним витоку даних."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Використання регулярних виразів для приховування тексту"
      content: |
        Цей приклад демонструє, як знаходити та приховувати текст за допомогою регулярних виразів
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Завантажте документ, який потрібно редагувати
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Визначте параметри редагування: текстовий шаблон та колір
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Застосуйте редагування до вмісту
              redactor.Apply(redaction);

              // Збережіть відредаговану версію
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Захистити вміст PDF з редаціями .NET"
    exclude: "PDF"
    description: "Використовуйте .NET, щоб закрити або стерти вміст у файлах PDF. Це розумний вибір для збереження чутливих або офіційних документів в безпеці."
    items: 
        # format loop 1
        - name: "Редагувати PDF"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редагувати Word"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "Документи MS Word та Open Office"
          
        # format loop 3
        - name: "Редагувати Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "Таблиці MS Excel та Open Office"

        # format loop 4
        - name: "Редагувати PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "Презентації MS PowerPoint та Open Office"

        # format loop 5
        - name: "Редагувати DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 6
        - name: "Редагувати XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "Електронна таблиця Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Редагувати PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "Презентація PowerPoint Open XML"


---