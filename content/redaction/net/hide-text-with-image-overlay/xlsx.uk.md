
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: uk
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Приховати текст у XLSX за допомогою накладок C#"
head_description: "GroupDocs.Redaction for .NET допомагає приховати текст у файлах XLSX за допомогою кольорових блоків. Зберігайте інформацію в безпеці, не змінюючи формат вашого документа."

############################# Header ############################
title: "Сховати текст у файлах XLSX за допомогою накладок та .NET" 
description: "Використовуйте C# та GroupDocs.Redaction for .NET для додавання простих накладок, які блокують чутливий текст у ваших файлах XLSX."
subtitle: "Можливості GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Як GroupDocs.Redaction for .NET допомагає"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET дозволяє розробникам, що використовують C#, приховувати небажаний вміст у файлах XLSX. Закрийте все — від слів до зображень — у різних типах файлів.

############################# Steps ############################
steps:
    enable: true
    title: "Зберігайте чутливу інформацію в безпеці в документах Xlsx"
    content: |
      GroupDocs.Redaction for .NET допомагає розробникам .NET захищати файли. Сховати приватний вміст лише за кілька рядків коду.
      
      1. Створіть новий об'єкт Redactor з шляхом до вашого Xlsx файлу.
      2. Налаштуйте параметри редагування відповідно до потреб.
      3. Додайте шаблон для пошуку та виберіть колір для накладки.
      4. Запустіть редагування та збережіть ваш файл.
   
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
        // Приховати приватний текст у XLSX за допомогою накладок

        // Завантажте файл за допомогою Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Виберіть, як буде працювати редагування
            // Введіть текст для приховування та виберіть колір накладки
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Обробіть файл і збережіть зміни
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Розумні функції редагування"
  description: "Використовуйте GroupDocs.Redaction for .NET для стирання або приховування вмісту у різних типах файлів. Утримуйте приватні деталі подалі від публічного перегляду."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Практичні інструменти редагування"
  features:
    # feature loop
    - title: "Змінити будь-який текст"
      content: "Шукайте та оновлюйте будь-яку строку в документі для захисту даних."

    # feature loop
    - title: "Приховати зображення"
      content: "Додайте квадрати чи прямокутники, щоб закрити чутливі частини зображень."

    # feature loop
    - title: "Очищення метаданих"
      content: "Видалити або перезаписати фонові деталі файлу перед обміном."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Співвідношення та приховування за допомогою regex"
      content: |
        Дізнайтеся, як виявити та редагувати вміст за допомогою регулярних виразів
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Відкрийте цільовий документ
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Налаштуйте шаблон та колір накладки
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Застосуйте правила редагування
              redactor.Apply(redaction);

              // Експортуйте відредаговану версію
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
    title: "Використовуйте .NET для приховування інформації у файлах XLSX"
    exclude: "XLSX"
    description: "Додавайте накладки або видаляйте частини ваших документів XLSX, щоб захистити чутливі деталі за допомогою .NET."
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