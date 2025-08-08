
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: uk
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Редагувати текст у PPTX за допомогою накладок та C#"
head_description: "Приховуйте приватний вміст у документах PPTX, закриваючи його кольоровими квадратами за допомогою GroupDocs.Redaction for .NET. Залишайте ваше оформлення незмінним."

############################# Header ############################
title: "Редагування тексту у PPTX з накладками за допомогою .NET" 
description: "За допомогою C# та GroupDocs.Redaction for .NET захистіть чутливі дані у файлах PPTX, приховуючи їх від перегляду."
subtitle: "Досліджуйте GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Що робить GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET надає вам можливість закрити або видалити вміст у документах PPTX за допомогою C#. Приховуйте все — від імен до нотаток, всього за кілька кроків.

############################# Steps ############################
steps:
    enable: true
    title: "Сховати приватний вміст у ваших файлах Pptx"
    content: |
      З GroupDocs.Redaction for .NET розробники .NET можуть захищати документи всього за кілька простих кроків.
      
      1. Розпочніть Redactor з шляху до файлу, який потрібно очистити.
      2. Виберіть правила редагування, які відповідають вашим потребам.
      3. Виберіть шаблон для пошуку та колір накладки.
      4. Запустіть редагування та збережіть оновлений файл.
   
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
        // Використовуйте накладки, щоб закрити текст у PPTX

        // Ініціалізуйте Redactor з вашим файлом
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Визначте, як має працювати редагування
            // Встановіть, що потрібно приховати, та колір накладки
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Запустіть та збережіть зміни
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Більше шляхів для захисту ваших файлів"
  description: "GroupDocs.Redaction for .NET надає вам інструменти для приховування даних в різних форматах без зміни оформлення."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Функції, які мають значення"
  features:
    # feature loop
    - title: "Замініть текст за потребою"
      content: "Переважайте текст, щоб зберегти ключову інформацію подалі від несанкціонованих користувачів."

    # feature loop
    - title: "Приховати зображення або візуали"
      content: "Приховувати цілі зображення чи конкретні частини, малюючи накладні блоки."

    # feature loop
    - title: "Затирати приховані дані"
      content: "Видалити вбудовані метадані, які можуть розкрити приватні деталі."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редагування регулярних виразів"
      content: |
        Цей приклад показує, як шукати та приховувати текст за допомогою регулярних виразів
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Завантажте файл для редагування
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Встановіть правила редагування: текст для пошуку та колір блокування
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Застосуйте логіку редагування
              redactor.Apply(redaction);

              // Збережіть відредагований результат
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
    title: "Забезпечте вміст PPTX за допомогою інструментів .NET"
    exclude: "PPTX"
    description: "Приховайте приватні зони або видаліть приховані дані у файлах PPTX за допомогою функцій редагування .NET."
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