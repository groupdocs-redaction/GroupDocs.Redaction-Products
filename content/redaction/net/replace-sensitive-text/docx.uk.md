
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: uk
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Видалення приватного тексту з DOCX за допомогою C#"
head_description: "Швидко захищайте приватний вміст у ваших файлах DOCX за допомогою GroupDocs.Redaction for .NET та C#. Простий у використанні, швидкі результати."

############################# Header ############################
title: "Знайдіть та приховайте чутливий текст у документах DOCX з .NET" 
description: "Чи для особистого, чи для бізнесового використання, GroupDocs.Redaction for .NET і C# допомагають тримати приватну інформацію поза досяжністю."
subtitle: "Як GroupDocs.Redaction for .NET допомагає вам" 

############################# About ############################
about:
    enable: true
    title: "Що таке GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET надає розробникам C# інструменти для пошуку та очистки чутливого вмісту в файлах DOCX. Працює з текстом, зображеннями, нотатками та більше.

############################# Steps ############################
steps:
    enable: true
    title: "Як редагувати вміст у файлах Docx"
    content: |
      Слідуйте цим швидким крокам у вашому проекті .NET, щоб очистити приватний текст за допомогою GroupDocs.Redaction for .NET.
      
      1. Почніть новий Redactor та завантажте файл Docx.
      2. Виберіть налаштування редагування, які вам потрібні.
      3. Введіть текст для пошуку та що ви хочете ним замінити.
      4. Виконайте редагування та збережіть файл.
   
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
        // Редагування тексту в файлі DOCX

        // Завантажте ваш файл за допомогою Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Виберіть параметри редагування, які підходять вам
            // Встановіть, що шукати і чим замінити
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Запустіть інструмент та збережіть відредагований файл
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Більше функцій редагування"
  description: "З GroupDocs.Redaction for .NET просто видалити прихований або видимий контент з різних видів файлів. Прекрасно для безпечного обміну."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Огляд інструментів редагування"
  features:
    # feature loop
    - title: "Замініть приватний текст"
      content: "Шукайте специфічний текст в будь-якій частині файлу і замініть його. Працює з простим текстом або шаблонами."

    # feature loop
    - title: "Прикрийте чутливі зображення"
      content: "Замаскуйте частини зображення або повні сторінки накладками. Ви контролюєте кольори, розміри та позиції."

    # feature loop
    - title: "Скинути приховані дані"
      content: "Видаляйте метадані, такі як імена, коментарі або часові мітки, щоб нічого не залишалося."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Пошук і редагування шаблонів з використанням Regex"
      content: |
        Використовуйте regex для пошуку специфічних типів даних, наприклад, електронних адрес або номерів ID, та очищайте їх автоматично.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Відкрийте файл, який потрібно очистити
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Створіть правило EMAIL regex та рядок для заміни
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Запустіть редагування, використовуючи ваші налаштування
              redactor.Apply(redaction);

              // Збережіть оновлений файл
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
    title: "Редагування даних у DOCX за допомогою .NET"
    exclude: "DOCX"
    description: "Захистіть особисту або офіційну інформацію, приховуючи її у документах DOCX за допомогою .NET. Це просто та ефективно."
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