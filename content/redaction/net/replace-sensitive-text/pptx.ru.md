
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: ru
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Удалите частный текст из PPTX с помощью C#"
head_description: "Быстро скройте частное содержание в ваших PPTX презентациях с помощью GroupDocs.Redaction for .NET и C#. Быстрое редактирование и простая настройка."

############################# Header ############################
title: "Редактируйте или скрывайте конфиденциальный текст в документах PPTX с помощью .NET" 
description: "Сохраняйте ваши презентации чистыми и конфиденциальными. Используйте GroupDocs.Redaction for .NET и C# для удаления всего, что вы не хотите делиться."
subtitle: "Что вы можете сделать с GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Что такое GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET предоставляет разработчикам C# инструменты для удаления конфиденциального контента из файлов PPTX. Он работает с текстом, изображениями, комментариями и метаданными.

############################# Steps ############################
steps:
    enable: true
    title: "Шаги для очистки презентаций Pptx"
    content: |
      Используйте GroupDocs.Redaction for .NET в вашем приложении .NET, чтобы удалить или закрыть конфиденциальное содержание всего за несколько шагов.
      
      1. Создайте новый Redactor и загрузите ваш файл Pptx.
      2. Выберите правила редактирования, которые хотите применить.
      3. Установите текст для поиска и чем хотите его заменить.
      4. Запустите редактирование и сохраните ваш файл.
   
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
        // Редактирование презентации PPTX

        // Откройте файл с помощью Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Выберите настройки редактирования
            // Выберите текст для поиска и замены
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Примените изменения и сохраните обновленный файл
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Функции редактирования, которые вы можете использовать"
  description: "GroupDocs.Redaction for .NET помогает вам находить и скрывать конфиденциальный текст, изображения и скрытые данные в различных типах файлов. Отлично подходит для безопасного обмена файлами."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Доступные параметры редактирования"
  features:
    # feature loop
    - title: "Замените скрытый текст"
      content: "Ищите и заменяйте частные слова или фразы в любом месте файла. Поддержка regex также доступна."

    # feature loop
    - title: "Закрыть изображения"
      content: "Используйте блоки, чтобы скрыть изображения или области, которые хотите замаскировать. Контролируйте форму, размер и цвет."

    # feature loop
    - title: "Удалите скрытые детали"
      content: "Очистите метаданные, такие как имена авторов, даты последнего редактирования или комментарии, чтобы сделать файл чистым."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редактируйте с помощью шаблонов Regex"
      content: |
        Находите и очищайте данные, например, адреса электронной почты или идентификационные номера, используя regex. Отлично подходит для повторяющегося редактирования.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Откройте ваш файл
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Напишите регулярное выражение EMAIL и установите замену
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Примените ваши настройки редактирования
              redactor.Apply(redaction);

              // Сохраните отредактированную версию
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
    title: "Очистите файлы PPTX с помощью .NET"
    exclude: "PPTX"
    description: "Сделайте ваши документы PPTX безопаснее для обмена, скрывая частный текст с помощью .NET. Быстрые и надежные результаты."
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