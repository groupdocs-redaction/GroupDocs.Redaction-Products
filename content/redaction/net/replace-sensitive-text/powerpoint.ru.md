
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: ru
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Удалите частный текст из POWERPOINT с помощью C#"
head_description: "Сохраняйте ваши файлы POWERPOINT конфиденциальными с помощью GroupDocs.Redaction for .NET и C#. Быстрый и простая способ редактирования текста."

############################# Header ############################
title: "Найдите и удалите конфиденциальный текст в файлах POWERPOINT с помощью .NET" 
description: "Используйте C# и GroupDocs.Redaction for .NET, чтобы защитить ваши личные или рабочие файлы. Ваша личная информация остается скрытой."
subtitle: "Ключевые особенности GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Что такое GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET предоставляет пользователям C# инструменты для очистки документов POWERPOINT. Редактируйте текст, изображения, заметки и фоновую информацию.

############################# Steps ############################
steps:
    enable: true
    title: "Как редактировать файлы Powerpoint"
    content: |
      С помощью GroupDocs.Redaction for .NET легко находить и заменять частное содержание в приложениях .NET.
      
      1. Создайте Redactor и откройте ваш файл Powerpoint.
      2. Выберите ваши настройки редактирования.
      3. Укажите, что искать и какой текст использовать в качестве замены.
      4. Запустите редактирование и сохраните ваш обновленный файл.
   
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
        // Шаги для редактирования содержимого в документе POWERPOINT

        // Откройте файл с помощью Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Настройте ваши параметры редактирования
            // Выберите, что искать и чем заменять
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Запустите редактирование и сохраните ваш новый файл POWERPOINT
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Больше инструментов редактирования"
  description: "GroupDocs.Redaction for .NET предоставляет мощные способы скрытия или стирания личной информации в различных типах файлов. Отлично подходит для безопасного обмена."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Доступные инструменты и настройки редактирования"
  features:
    # feature loop
    - title: "Заменить частный текст"
      content: "Ищите и заменяйте точные совпадения с помощью умных текстовых опций, включая поддержку regex."

    # feature loop
    - title: "Скрыть частные изображения"
      content: "Закройте полные изображения или только части страницы. Вы можете настроить цвет и размер наложения."

    # feature loop
    - title: "Стирание скрытых метаданных"
      content: "Удалите информацию, такую как имена авторов, история редактирования и комментарии, чтобы защитить свою личность."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Используйте Regex для более умных редактирований"
      content: |
        Находите и удаляйте шаблоны данных, такие как электронные адреса или идентификационные номера, с помощью регулярных выражений.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Откройте файл, который хотите очистить
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Установите регулярное выражение EMAIL и выберите текст для замены
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Запустите процесс редактирования
              redactor.Apply(redaction);

              // Сохраните свой окончательный отредактированный файл
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
    title: "Как редактировать POWERPOINT с помощью .NET"
    exclude: "POWERPOINT"
    description: "Используйте .NET для очистки файлов POWERPOINT. Держите ваш контент конфиденциальным и защищенным от утечек."
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