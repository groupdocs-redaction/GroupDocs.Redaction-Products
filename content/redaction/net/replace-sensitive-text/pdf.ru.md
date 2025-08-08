
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: ru
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Редактирование конфиденциального текста в PDF с помощью C#"
head_description: "Защитите личную информацию в ваших файлах PDF с помощью GroupDocs.Redaction for .NET. Быстро ищите и редактируйте конфиденциальные данные."

############################# Header ############################
title: "Удалите конфиденциальный текст из документов PDF с помощью .NET" 
description: "Используйте C# и GroupDocs.Redaction for .NET, чтобы полностью контролировать содержание ваших файлов PDF. Редактируйте личные, юридические или конфиденциальные данные."
subtitle: "Что вы можете сделать с GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Что такое GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET предоставляет разработчикам C# все необходимое для редактирования содержания PDF. Устраните текст, изображения, аннотации, комментарии и метаданные в популярных форматах файлов.

############################# Steps ############################
steps:
    enable: true
    title: "Как редактировать содержание в файлах Pdf"
    content: |
      Защитите свои документы в любом приложении .NET с помощью GroupDocs.Redaction for .NET. Быстро и точно редактируйте конфиденциальный текст.
      
      1. Инициализируйте Redactor и загрузите ваш файл Pdf.
      2. Установите необходимые параметры редактирования.
      3. Укажите текст для поиска и текст для замены.
      4. Запустите редактирование и сохраните файл.
   
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
        // Как редактировать текст в файле PDF

        // Загрузите ваш файл с помощью конструктора Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Установите ваши предпочтения редактирования
            // Выберите, что искать и чем заменять
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Примените редактирование и сохраните новый файл PDF
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Другие способы редактирования документов"
  description: "GroupDocs.Redaction for .NET помогает удалить или скрыть конфиденциальное содержание в различных форматах файлов. Сохраняйте документы чистыми и безопасными для обмена."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Инструменты и параметры редактирования"
  features:
    # feature loop
    - title: "Заменить конфиденциальный текст"
      content: "Ищите и заменяйте совпадающий текст в любом месте вашего файла. Поддерживает regex и умные параметры поиска."

    # feature loop
    - title: "Скрыть конфиденциальные изображения"
      content: "Закройте изображения или конкретные области наложениями. Настройте параметры страницы, цвета и многое другое."

    # feature loop
    - title: "Очистить скрытые метаданные"
      content: "Удалите скрытые данные, такие как авторство, временные метки или комментарии, чтобы защитить свою личность."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редактирование текста с помощью Regex"
      content: |
        Используйте регулярные выражения для поиска и редактирования конфиденциальных текстовых шаблонов, таких как электронные адреса или идентификационные номера.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Откройте документ, который хотите очистить
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Определите регулярное выражение EMAIL и текст для замены
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Примените правила редактирования
              redactor.Apply(redaction);

              // Сохраните окончательный отредактированный файл
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Редактирование содержания в PDF с использованием .NET"
    exclude: "PDF"
    description: "Защищайте официальные и личные данные, редактируя текст в файлах PDF с помощью инструментов .NET. Держите документы в безопасности и конфиденциальности."
    items: 
        # format loop 1
        - name: "Редактировать PDF"
          format: "PDF"
          link: "/redaction/net/replace-sensitive-text//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редактировать Word"
          format: "WORD"
          link: "/redaction/net/replace-sensitive-text//word/"
          description: "Документы MS Word и Open Office"
          
        # format loop 3
        - name: "Редактировать Excel"
          format: "EXCEL"
          link: "/redaction/net/replace-sensitive-text//excel/"
          description: "Таблицы MS Excel и Open Office"

        # format loop 4
        - name: "Редактировать PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/replace-sensitive-text//powerpoint/"
          description: "Презентации MS PowerPoint и Open Office"

        # format loop 5
        - name: "Редактировать DOCX"
          format: "DOCX"
          link: "/redaction/net/replace-sensitive-text//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 6
        - name: "Редактировать XLSX"
          format: "XLSX"
          link: "/redaction/net/replace-sensitive-text//xlsx/"
          description: "Электронная таблица Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Редактировать PPTX"
          format: "PPTX"
          link: "/redaction/net/replace-sensitive-text//pptx/"
          description: "Презентация PowerPoint Open XML"


---