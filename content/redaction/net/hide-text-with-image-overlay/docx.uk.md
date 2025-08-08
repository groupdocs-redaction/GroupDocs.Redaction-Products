
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: uk
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Приховати чутливий текст у DOCX за допомогою накладок та C#"
head_description: "Використовуйте GroupDocs.Redaction for .NET, щоб захистити приватний текст у файлах DOCX простими квадратними накладками. Залиште оформлення документа незмінним і ваші дані прихованими."

############################# Header ############################
title: "Приховати текст у DOCX за допомогою накладок з використанням .NET" 
description: "Сховати чутливий вміст у ваших документах DOCX за допомогою коду C#. Чудово підходить для захисту юридичних, бізнесових або особистих документів."
subtitle: "Можливості GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Що таке GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET допомагає розробникам C# приховувати або стирати приватний вміст у файлах DOCX. Використовуйте його для закриття тексту, зображень та метаданих у різних форматах файлів.

############################# Steps ############################
steps:
    enable: true
    title: "Видалити приватні дані з документів Docx"
    content: |
      GroupDocs.Redaction for .NET допомагає розробникам .NET очищати документи всього за кілька рядків коду.
      
      1. Створіть Redactor та вкажіть шлях до вашого файлу.
      2. Визначте, як має працювати редагування.
      3. Введіть текст для приховування та виберіть колір накладки.
      4. Редагуйте файл і збережіть його.
   
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
        // Сховати текст у DOCX за допомогою накладок

        // Створіть Redactor та завантажте файл
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Встановіть свої переваги редагування
            // Введіть текст та встановлюйте колір накладки
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Редагуйте та збережіть оновлений документ
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Більше способів очищення документів"
  description: "З GroupDocs.Redaction for .NET редагуйте різні типи файлів, щоб зберегти ваш вміст безпечним і професійним."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Розумне редагування вбудоване"
  features:
    # feature loop
    - title: "Редагувати або видалити текст"
      content: "Знайдіть конкретні фрази та приховайте або замініть їх."

    # feature loop
    - title: "Приховати зони зображень"
      content: "Закрийте чутливі місця на фотографіях чи сканах."

    # feature loop
    - title: "Стерти приховані метадані"
      content: "Видалити невидиму інформацію, яка може розкрити дані користувача чи системи."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex для редагування вмісту"
      content: |
        Подивіться, як регулярні вирази можуть знаходити та приховувати чутливі слова
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Відкрийте цільовий файл
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Встановіть шаблон і колір
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Застосуйте логіку редагування
              redactor.Apply(redaction);

              // Експортуйте відредагований документ
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
    title: "Сховати вміст у DOCX за допомогою .NET"
    exclude: "DOCX"
    description: "Захистіть чутливі дані у документах DOCX, закриваючи їх накладками або повністю видаляючи за допомогою інструментів .NET."
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