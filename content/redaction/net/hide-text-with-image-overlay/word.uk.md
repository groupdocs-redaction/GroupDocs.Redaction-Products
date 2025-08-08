
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: uk
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Використовуйте накладки для приховування тексту в WORD через C#"
head_description: "GroupDocs.Redaction for .NET спрощує приховування чутливого тексту в WORD за допомогою кольорових блоків. Зберігайте документ цілим, приховуючи те, що має значення."

############################# Header ############################
title: "Редагування тексту в файлах WORD з допомогою .NET" 
description: "Захистіть важливу інформацію у файлах WORD за допомогою квадратних накладок, написаних у C#. Ідеально підходить для безпеки та відповідності вимогам."
subtitle: "Дивіться, на що здатен GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Знайомтесь з GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       Розробники, які працюють з C#, можуть використовувати GroupDocs.Redaction for .NET для приховування або видалення частин документів WORD. Сховайте імена, цифри або інші дані всього за кілька рядків коду.

############################# Steps ############################
steps:
    enable: true
    title: "Редагуйте приватні дані в файлах Word"
    content: |
      GroupDocs.Redaction for .NET допомагає розробникам .NET швидко видаляти чутливий вміст. Дотримуйтеся цих кроків, щоб забезпечити ваші файли.
      
      1. Ініціалізуйте Redactor з шляхом до вашого файлу Word.
      2. Встановіть правила для редагування вмісту.
      3. Виберіть текстовий шаблон та колір для його закриття.
      4. Застосуйте редагування та збережіть відредагований файл.
   
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
        // Редагуйте текст у WORD за допомогою накладок зображень

        // Завантажте ваш файл за допомогою Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Визначте, що потрібно редагувати
            // Додайте відповідний текст і колір накладки
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Запустіть редагування та збережіть фінальний файл
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Додаткові інструменти редагування"
  description: "З GroupDocs.Redaction for .NET ви можете зберегти файли чистими, видаляючи як видимі, так і приховані дані, зберігаючи при цьому оформлення."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Чистий та безпечний вивід"
  features:
    # feature loop
    - title: "Замініть відображений текст"
      content: "Приховаючи слова або фрази, які можуть витікати важливі дані."

    # feature loop
    - title: "Закрити зображення"
      content: "Цілеспрямовано приховати чутливі візуали з допомогою суцільних блоків."

    # feature loop
    - title: "Стерти приховану інформацію"
      content: "Очистіть метадані для захисту файлів."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Сховати відповідний текст за допомогою regex"
      content: |
        Цей приклад показує, як використовувати регулярні висловлювання для знаходження та закриття чутливого вмісту
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Відкрийте документ для редагування
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Виберіть шаблон і кольори
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Запустіть правила редагування
              redactor.Apply(redaction);

              // Збережіть і перегляньте відредаговану копію
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
    title: "Захистіть свої файли WORD за допомогою .NET"
    exclude: "WORD"
    description: "З .NET ви можете приховати текст або стерти метадані у форматах WORD без порушення оформлення."
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