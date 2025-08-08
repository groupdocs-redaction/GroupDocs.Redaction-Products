
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ru
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Используйте наложения для скрытия текста в WORD через C#"
head_description: "GroupDocs.Redaction for .NET упрощает покрытие конфиденциального текста в WORD блоками цвета. Сохраните документ целым, скрывая то, что важно."

############################# Header ############################
title: "Редактирование текста в файлах WORD с наложениями на .NET" 
description: "Защитите важную информацию в файлах WORD, используя квадратные наложения, записанные на C#. Идеально для безопасности и соблюдения норм."
subtitle: "Посмотрите, что может GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Познакомьтесь с GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       Разработчики, работающие с C#, могут использовать GroupDocs.Redaction for .NET для скрытия или удаления частей документов WORD. Скрывайте имена, числа или другие данные всего за несколько строк кода.

############################# Steps ############################
steps:
    enable: true
    title: "Редактирование личных данных в файлах Word"
    content: |
      GroupDocs.Redaction for .NET помогает разработчикам .NET быстро удалять конфиденциальные данные. Следуйте этим шагам, чтобы защитить файлы.
      
      1. Инициализируйте Redactor с путем к вашему файлу Word.
      2. Установите правила для редактирования содержимого.
      3. Выберите текстовый шаблон и цвет, чтобы его скрыть.
      4. Примените редактирование и сохраните свой отредактированный файл.
   
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
        // Редактируйте текст в WORD с помощью изображений наложения

        // Загрузите ваш файл с Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Определите, что необходимо редактировать
            // Добавьте соответствующий текст и цвет наложения
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Запустите редактирование и сохраните окончательный файл
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Дополнительные инструменты редактирования"
  description: "С помощью GroupDocs.Redaction for .NET вы можете сохранять файлы чистыми, удаляя видимую и скрытую информацию, сохраняя при этом разметку."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Чистый и безопасный вывод"
  features:
    # feature loop
    - title: "Заменить открытый текст"
      content: "Скрывайте слова или фразы, которые могут раскрыть важные данные."

    # feature loop
    - title: "Закрыть изображения"
      content: "Замаскируйте чувствительные визуальные данные с помощью сплошных блоков."

    # feature loop
    - title: "Стереть скрытую информацию"
      content: "Очистите метаданные фона, чтобы сохранить файлы конфиденциальными."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Скрыть совпадающий текст с помощью регулярных выражений"
      content: |
        Этот пример показывает, как использовать регулярные выражения для поиска и закрытия конфиденциального содержимого.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Откройте документ для редактирования
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Выберите шаблон и цвет
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Запустите правила редактирования
              redactor.Apply(redaction);

              // Сохраните и просмотрите отредактированную копию
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
    title: "Защитите ваши файлы WORD с помощью .NET"
    exclude: "WORD"
    description: "С помощью .NET вы можете скрыть текст или удалить метаданные в форматах WORD, не нарушая разметку или форматы."
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