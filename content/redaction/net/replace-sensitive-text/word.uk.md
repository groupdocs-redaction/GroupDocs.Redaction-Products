
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: uk
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Видалення приватного тексту з WORD за допомогою C#"
head_description: "Тримайте ваші файли WORD приватними за допомогою GroupDocs.Redaction for .NET та C#. Швидкий і простий спосіб редагування тексту."

############################# Header ############################
title: "Знайдіть та видаліть чутливий текст у файлах WORD за допомогою .NET" 
description: "Використовуйте C# та GroupDocs.Redaction for .NET для захисту своїх особистих чи робочих файлів. Ваша приватна інформація залишається прихованою."
subtitle: "Ключові функції GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Що таке GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET надає користувачам C# інструменти для очищення документів WORD. Редагуйте текст, зображення, нотатки та дані.

############################# Steps ############################
steps:
    enable: true
    title: "Як редагувати Word файли"
    content: |
      З GroupDocs.Redaction for .NET легко знайти та замінити приватний вміст у додатках .NET.
      
      1. Створіть Redactor та відкрийте файл Word.
      2. Виберіть налаштування редагування.
      3. Скажіть, що шукати і який текст використовувати як заміну.
      4. Запустіть редагування та збережіть ваш оновлений файл.
   
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
        // Кроки для редагування вмісту в документі WORD

        // Відкрийте файл за допомогою Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Налаштуйте свої параметри редагування
            // Виберіть, що шукати і чим замінити
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Запустіть редагування та збережіть новий файл WORD
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Більше інструментів редагування"
  description: "GroupDocs.Redaction for .NET надає потужні способи приховати або видалити приватну інформацію у багатьох форматах файлів. Прекрасно для безпечного обміну."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Доступні інструменти та налаштування редагування"
  features:
    # feature loop
    - title: "Замініть приватний текст"
      content: "Шукайте та замінюйте точні відповідності з розумними текстовими опціями, включаючи підтримку regex."

    # feature loop
    - title: "Прикрийте приватні зображення"
      content: "Закрийте повні зображення або лише частини сторінки. Ви можете настроїти колір накладки і розмір."

    # feature loop
    - title: "Стирайте приховані метадані"
      content: "Видаляйте таку інформацію, як імена авторів, історія редагування та коментарі, щоб захистити вашу особистість."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Використовуйте Regex для розумніших редагувань"
      content: |
        Знайдіть і видаліть шаблони даних, такі як електронні адреси або ID, за допомогою регулярних виразів.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Відкрийте файл, який ви хочете очистити
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Встановіть шаблон EMAIL regex і виберіть текст для заміни
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Запустіть процес редагування
              redactor.Apply(redaction);

              // Збережіть ваш фінальний відредагований файл
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
    title: "Як редагувати WORD за допомогою .NET"
    exclude: "WORD"
    description: "Використовуйте .NET, щоб очистити файли WORD. Захищайте свій контент приватним і безпечним від витоків."
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