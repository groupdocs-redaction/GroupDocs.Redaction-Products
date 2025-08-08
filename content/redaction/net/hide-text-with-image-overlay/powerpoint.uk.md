
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: uk
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Приховати чутливий текст у POWERPOINT з накладками C#"
head_description: "GroupDocs.Redaction for .NET дає змогу приховувати частини файлів POWERPOINT за допомогою простих накладок. Захистіть документи, не змінюючи структуру."

############################# Header ############################
title: "Редагування тексту у POWERPOINT з накладками за допомогою .NET" 
description: "Захистіть вміст у ваших файлах POWERPOINT, розміщуючи накладні блоки за допомогою C# та GroupDocs.Redaction for .NET."
subtitle: "Інструменти всередині GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Про цей інструмент"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET допомагає користувачам C# очищати документи POWERPOINT шляхом покриття або видалення тексту, метаданих або зображень за потреби.

############################# Steps ############################
steps:
    enable: true
    title: "Забезпечте вміст у документах Powerpoint"
    content: |
      Використовуйте GroupDocs.Redaction for .NET у ваших додатках .NET для очищення файлів перед розповсюдженням.
      
      1. Передайте шлях до файлу новому екземпляру Redactor.
      2. Встановіть, що і як ви хочете редагувати.
      3. Визначте текстовий шаблон та встановіть колір накладки.
      4. Редагуйте та збережіть оновлений файл.
   
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
        // Накладайте текст у POWERPOINT для приховування деталей

        // Використовуйте Redactor, щоб відкрити ваш файл
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Коректуйте налаштування редагування
            // Виберіть текст та блокуючий колір
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Запустіть і збережіть ваш відредагований файл
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Легко сховати чутливі дані"
  description: "Використовуйте GroupDocs.Redaction for .NET для видалення або закриття вмісту за різними типами документів — чудово підходить для захисту даних у юридичних, бізнесових або особистих файлах."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Гнучке редагування документів"
  features:
    # feature loop
    - title: "Замініть текст"
      content: "Знайдіть слова або цифри та замініть або сховайте їх."

    # feature loop
    - title: "Редагувати фотографії або секції"
      content: "Додавайте накладки до зображень або вибраних місць на сторінці."

    # feature loop
    - title: "Видалити зайві дані"
      content: "Очистіть метадані, які можуть розкрити приховану інформацію."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Знайти та редагувати за допомогою regex"
      content: |
        Це показує, як regex може допомогти ідентифікувати та приховувати текст
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Відкрийте файл, що підлягає редагуванню
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Встановіть правила за допомогою regex
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Запустіть процес редагування
              redactor.Apply(redaction);

              // Збережіть очищену версію
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
    title: "Сховати вміст у POWERPOINT за допомогою .NET"
    exclude: "POWERPOINT"
    description: "Додавайте накладки або очищайте дані з ваших файлів POWERPOINT, щоб зберегти чутливий вміст приватним за допомогою .NET."
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