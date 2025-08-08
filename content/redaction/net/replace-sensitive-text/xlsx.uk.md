
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: uk
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Видалення приватного тексту з XLSX за допомогою C#"
head_description: "Швидко очищайте приватний вміст у ваших файлах XLSX за допомогою GroupDocs.Redaction for .NET та C#. Швидка та проста редакція."

############################# Header ############################
title: "Редагуйте або приховайте чутливий текст у документах XLSX з .NET" 
description: "За допомогою GroupDocs.Redaction for .NET та C# ви можете видаляти особисту або бізнесову інформацію з ваших файлів XLSX і зберігати їх у безпеці."
subtitle: "Що ви можете зробити за допомогою GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Що таке GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET дозволяє користувачам C# шукати та видаляти чутливу інформацію з файлів XLSX. Працює з текстом, зображеннями, нотатками та даними файлів.

############################# Steps ############################
steps:
    enable: true
    title: "Як редагувати текст у файлах Xlsx"
    content: |
      Використовуйте GroupDocs.Redaction for .NET у вашому проекті .NET для приховування або видалення чутливої інформації всього за кілька кроків.
      
      1. Створіть Redactor та завантажте файл Xlsx.
      2. Виберіть налаштування редагування, які вам підходять.
      3. Введіть текст для пошуку та чим його замінити.
      4. Запустіть процес редагування та збережіть ваш файл.
   
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
        // Редагування тексту з файлу XLSX

        // Використовуйте Redactor для відкриття файлу
        using (Redactor redactor  = new Redactor("input.xlsx"))
        {
            // Виберіть ваші параметри редагування
            // Встановіть текст для пошуку та заміни
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Застосуйте редагування та збережіть очищений файл
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Більше інструментів для редагування"
  description: "GroupDocs.Redaction for .NET допомагає очищати різні типи вмісту — текст, зображення або метадані — щоб ваші файли були готові до безпечного обміну."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Показані опції редагування"
  features:
    # feature loop
    - title: "Замініть чутливий текст"
      content: "Шукайте через файл та замінюйте будь-яке конфіденційне. Підтримує простий текст та шаблони."

    # feature loop
    - title: "Прикрийте ділянки зображень"
      content: "Використовуйте накладки, щоб приховати візуальні дані. Виберіть колір, розмір області та макет сторінки."

    # feature loop
    - title: "Видалити додаткові дані"
      content: "Видаліть метадані, такі як імена авторів, часові мітки або внутрішні примітки, щоб уникнути витоків."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редагування за допомогою правил Regex"
      content: |
        Використовуйте regex, щоб знаходити та очищати шаблони, такі як номери телефонів, електронні адреси або інші особисті дані.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Відкрийте файл для початку
          using (Redactor redactor  = new Redactor("source.xlsx"))
          {
              // Напишіть правило EMAIL regex та виберіть заміну
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Запустіть редагування на основі вашого шаблона
              redactor.Apply(redaction);

              // Збережіть відредагований файл
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Приховування інформації у XLSX за допомогою .NET"
    exclude: "XLSX"
    description: "Очищайте ваші документи XLSX, видаляючи особистий або чутливий текст за допомогою інструментів .NET. Тримайте свої дані приватними."
    items: 
        # format loop 1
        - name: "Редагувати PDF"
          format: "PDF"
          link: "/redaction/net/replace-sensitive-text//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редагувати Word"
          format: "WORD"
          link: "/redaction/net/replace-sensitive-text//word/"
          description: "Документи MS Word та Open Office"
          
        # format loop 3
        - name: "Редагувати Excel"
          format: "EXCEL"
          link: "/redaction/net/replace-sensitive-text//excel/"
          description: "Таблиці MS Excel та Open Office"

        # format loop 4
        - name: "Редагувати PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/replace-sensitive-text//powerpoint/"
          description: "Презентації MS PowerPoint та Open Office"

        # format loop 5
        - name: "Редагувати DOCX"
          format: "DOCX"
          link: "/redaction/net/replace-sensitive-text//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 6
        - name: "Редагувати XLSX"
          format: "XLSX"
          link: "/redaction/net/replace-sensitive-text//xlsx/"
          description: "Електронна таблиця Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Редагувати PPTX"
          format: "PPTX"
          link: "/redaction/net/replace-sensitive-text//pptx/"
          description: "Презентація PowerPoint Open XML"


---