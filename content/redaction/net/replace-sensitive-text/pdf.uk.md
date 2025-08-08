
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: uk
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Редагуйте конфіденційну інформацію у PDF з C#"
head_description: "Захистіть приватну інформацію у ваших файлах PDF за допомогою GroupDocs.Redaction for .NET. Швидко шукайте та видаляйте чутливі дані."

############################# Header ############################
title: "Видалення чутливого тексту з документів PDF за допомогою .NET" 
description: "Використовуйте C# та GroupDocs.Redaction for .NET для повного контролю над вмістом у ваших файлах PDF. Редагуйте особисті, юридичні чи конфіденційні дані."
subtitle: "Що ви можете зробити за допомогою GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Що таке GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET надає розробникам C# все необхідне для редагування вмісту PDF. Очищуйте текст, зображення, анотації, коментарі та метадані у популярних форматах файлів.

############################# Steps ############################
steps:
    enable: true
    title: "Як редагувати вміст у файлах Pdf"
    content: |
      Захистіть свої документи в будь-якому додатку .NET за допомогою GroupDocs.Redaction for .NET. Швидко та точно редагуйте чутливий текст.
      
      1. Ініціалізуйте Redactor та завантажте файл Pdf.
      2. Налаштуйте варіанти редакції, які вам потрібні.
      3. Вкажіть текст для пошуку та текст для заміни.
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
        // Як редагувати текст у файлі PDF

        // Завантажте ваш файл за допомогою конструктора Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Встановіть свої уподобання редагування
            // Виберіть, що шукати і чим це замінити
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Застосуйте редагування та збережіть новий файл PDF
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Більше способів редагування документів"
  description: "GroupDocs.Redaction for .NET допомагає видаляти або приховувати чутливий вміст у кількох форматах файлів. Тримайте документи в чистоті та безпеці для обміну."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Інструменти та варіанти редагування"
  features:
    # feature loop
    - title: "Замінюйте конфіденційний текст"
      content: "Знаходьте та замінюйте відповідний текст в будь-якій частині вашого файлу. Підтримує regex та розумні варіанти пошуку."

    # feature loop
    - title: "Приховування чутливих зображень"
      content: "Прикривайте зображення або конкретні ділянки накладками. Налаштуйте параметри сторінки, кольори та ін."

    # feature loop
    - title: "Очищення прихованих метаданих"
      content: "Видаляйте приховані дані, такі як авторство, часові мітки або коментарі, щоб захистити конфіденційність."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редагування тексту з використанням Regex"
      content: |
        Використовуйте регулярні вирази для пошуку та редагування чутливих шаблонів тексту, таких як електронні адреси або ідентифікаційні номери.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Відкрийте документ, який потрібно очистити
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Визначте шаблон EMAIL regex та текст для заміни
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Застосуйте правила редагування
              redactor.Apply(redaction);

              // Збережіть фінальний відредагований файл
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
    title: "Редагуйте вміст у PDF за допомогою .NET"
    exclude: "PDF"
    description: "Захищайте офіційні та особисті дані шляхом редагування тексту у файлах PDF за допомогою інструментів .NET. Зберігайте документи в безпеці та приватності."
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