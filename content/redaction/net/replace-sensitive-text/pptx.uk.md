
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: uk
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Видалення приватного тексту з PPTX за допомогою C#"
head_description: "Швидко приховуйте приватний вміст у ваших презентаціях PPTX за допомогою GroupDocs.Redaction for .NET та C#. Швидка редакція, просте налаштування."

############################# Header ############################
title: "Редагуйте або приховайте чутливий текст у документах PPTX з .NET" 
description: "Тримайте ваші презентації чистими та приватними. Використовуйте GroupDocs.Redaction for .NET та C#, щоб видалити все, що не хочете ділити."
subtitle: "Що ви можете зробити за допомогою GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Що таке GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET надає розробникам C# все необхідне для видалення чутливого вмісту з файлів PPTX. Це справляється з текстом, візуалізаціями, коментарями та метаданими.

############################# Steps ############################
steps:
    enable: true
    title: "Кроки для очищення презентацій Pptx"
    content: |
      Використовуйте GroupDocs.Redaction for .NET у вашому додатку .NET для видалення або приховування чутливого вмісту всього за кілька кроків.
      
      1. Почніть новий Redactor та завантажте файл Pptx.
      2. Виберіть правила редагування, які ви хочете застосувати.
      3. Встановіть текст для пошуку та чим його замінити.
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
        // Редагування презентації PPTX

        // Відкрийте файл за допомогою Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Виберіть параметри редагування
            // Виберіть текст для пошуку та заміни
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Застосуйте зміни та збережіть оновлений файл
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Функції редагування, які ви можете використовувати"
  description: "GroupDocs.Redaction for .NET допомагає вам знаходити та приховувати чутливий текст, зображення та приховані дані в різних типах файлів. Ідеально для безпечного обміну файлами."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Доступні опції редагування"
  features:
    # feature loop
    - title: "Замінюйте прихований текст"
      content: "Шукайте та замінюйте приватні слова або фрази в будь-якому місці файлу. Також підтримується regex."

    # feature loop
    - title: "Прикривайте зображення"
      content: "Використовуйте блоки, щоб приховати зображення або ділянки, які потрібно замаскувати. Керуйте формою, розміром та кольором."

    # feature loop
    - title: "Видалення прихованих деталей"
      content: "Очищайте метадані, такі як ім'я автора, дати останнього редагування або коментарі, щоб зробити ваш файл чистим."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редагування з використанням шаблонів Regex"
      content: |
        Знаходьте та очищайте дані, такі як електронні адреси чи ідентифікаційні номери, використовуючи regex. Ідеально для повторюваного редагування.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Відкрийте ваш файл
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Напишіть шаблон EMAIL regex та налаштуйте заміну
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Застосуйте свої налаштування редагування
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
    title: "Усуньте PPTX файли з .NET"
    exclude: "PPTX"
    description: "зробіть ваші документи PPTX безпечнішими для обміну, приховуючи приватний текст за допомогою .NET. Швидкі, надійні результати."
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