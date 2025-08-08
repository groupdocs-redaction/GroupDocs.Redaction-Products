
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: uk
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Сховати вміст у EXCEL з накладними редагуваннями та C#"
head_description: "Закрийте текст у документах EXCEL за допомогою суцільних кольорових блоків з GroupDocs.Redaction for .NET. Простий спосіб захистити приватний вміст."

############################# Header ############################
title: "Накладні редагування для файлів EXCEL в .NET" 
description: "Використовуйте код C#, щоб приховати текст і захистити дані у ваших файлах EXCEL. Чисте рішення для безпеки документів."
subtitle: "Що включає GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Чому обрати GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET створено для розробників C#, які хочуть редагувати або видаляти вміст у файлах EXCEL. Використовуйте його для роботи з текстом, метаданими та зображеннями.

############################# Steps ############################
steps:
    enable: true
    title: "Редагуйте чутливу інформацію у форматі Excel"
    content: |
      GroupDocs.Redaction for .NET - простий інструмент для розробників .NET, щоб очищати документи перед обміном.
      
      1. Розпочніть Redactor та завантажте ваш файл Excel.
      2. Визначте налаштування редагування для вашого завдання.
      3. Додайте ключове слово або фразу для редагування та виберіть колір.
      4. Запустіть інструмент та збережіть зміни.
   
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
        // Використовуйте накладки для приховування тексту у EXCEL

        // Створіть Redactor та завантажте ваш файл
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Виберіть правила редагування
            // Введіть, що потрібно закрити, і виберіть колір
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Застосуйте редагування та збережіть файл
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ключові функції для захисту даних"
  description: "GroupDocs.Redaction for .NET дозволяє вам приховувати або видаляти дані в середині ваших документів без втрати оформлення чи змісту."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Розроблено для безпеки документів"
  features:
    # feature loop
    - title: "Змінити текстовий вміст"
      content: "Замініть або приховайте обрані слова у файлі."

    # feature loop
    - title: "Редагувати візуали"
      content: "Сховати фотографії або області простими блоками."

    # feature loop
    - title: "Очистити метадані"
      content: "Видаліть фонові дані, такі як імена авторів або мітки часу."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редагування тексту за допомогою regex"
      content: |
        Ось як використовувати regex для знаходження та приховування вмісту у файлі
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Завантажте документ для обробки
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Додайте шаблон і налаштування накладки
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Застосуйте зміни
              redactor.Apply(redaction);

              // Збережіть і закрийте відредагований документ
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
    title: "Редагувати файли EXCEL з .NET"
    exclude: "EXCEL"
    description: "Закривайте чутливий вміст у EXCEL за допомогою квадратних накладок або чітких редагувань за допомогою функцій .NET."
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