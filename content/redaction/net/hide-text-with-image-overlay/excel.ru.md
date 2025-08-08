
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ru
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Скрыть содержимое в EXCEL с помощью наложений и C#"
head_description: "Закройте текст в документах EXCEL, используя сплошные цветные блоки с помощью GroupDocs.Redaction for .NET. Простой способ защитить конфиденциальное содержимое."

############################# Header ############################
title: "Редактирование наложений для файлов EXCEL на .NET" 
description: "Используйте код C# для скрытия текста и защиты данных внутри ваших файлов EXCEL. Чистое решение для безопасности документов."
subtitle: "Что включает в себя GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Почему стоит выбрать GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET создан для разработчиков C#, которые хотят редактировать или удалять содержимое в файлах EXCEL. Используйте его для работы с текстом, метаданными и изображениями.

############################# Steps ############################
steps:
    enable: true
    title: "Редактирование конфиденциальной информации в формате Excel"
    content: |
      GroupDocs.Redaction for .NET — это простой инструмент для разработчиков .NET, чтобы очистить документы перед их передачей.
      
      1. Запустите Redactor и загрузите ваш файл Excel.
      2. Определите настройки редактирования для вашей задачи.
      3. Добавьте ключевое слово или фразу для редактирования и выберите цвет.
      4. Запустите инструмент и сохраните изменения.
   
    code:
      platform: "net"
      copy_title: "Копировать"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Примеры редактирования"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "нажмите для копирования"
        copy_done: "скопировано"
      links:
        #  loop
        - title: "Больше примеров"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "Документация"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // Используйте наложения для скрытия текста в EXCEL

        // Создайте Redactor и загрузите ваш файл
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Выберите правила редактирования
            // Введите, что скрыть, и выберите цвет
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Примените редактирование и сохраните файл
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ключевые функции для защиты данных"
  description: "GroupDocs.Redaction for .NET позволяет скрывать или удалять данные внутри ваших документов, не теряя разметки и значения."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Создан для безопасности документов"
  features:
    # feature loop
    - title: "Изменение содержимого текста"
      content: "Меняйте или скрывайте выбранные слова по всему файлу."

    # feature loop
    - title: "Редактирование визуала"
      content: "Скрывайте фотографии или области простыми блоками."

    # feature loop
    - title: "Очистка метаданных"
      content: "Избавьтесь от фоновых данных, таких как имена авторов или временные метки."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редактирование текста по регулярным выражениям"
      content: |
        Вот как использовать регулярные выражения для нахождения и скрытия содержимого в файле.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Загрузите документ для обработки
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Добавьте настройки шаблона и наложения
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Примените изменения
              redactor.Apply(redaction);

              // Сохраните и закройте отредактированный документ
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
          }
          ```
        platform: "net"
        copy_title: "Копировать"
        install:
          command: "dotnet add package GroupDocs.Redaction"
          copy_tip: "нажмите для копирования"
          copy_done: "скопировано"
        top_links:
          #  loop
          - title: "Скачать результат"
            icon: "download"
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
        links:
          #  loop
          - title: "Больше примеров"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "Документация"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "Готовы начать?"
  description: "Попробуйте функции GroupDocs.Redaction бесплатно или запросите лицензию"
  items:
    #  loop
    - title: "Скачать Nuget"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "Лицензирование"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Редактируйте файлы EXCEL с .NET"
    exclude: "EXCEL"
    description: "Закрывайте конфиденциальное содержимое в EXCEL с помощью квадратных наложений или чистых редактирований с функциями .NET."
    items: 
        # format loop 1
        - name: "Редактировать PDF"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редактировать Word"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "Документы MS Word и Open Office"
          
        # format loop 3
        - name: "Редактировать Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "Таблицы MS Excel и Open Office"

        # format loop 4
        - name: "Редактировать PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "Презентации MS PowerPoint и Open Office"

        # format loop 5
        - name: "Редактировать DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 6
        - name: "Редактировать XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "Электронная таблица Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Редактировать PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "Презентация PowerPoint Open XML"


---