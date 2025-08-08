
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: ru
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Удалите частный текст из DOCX с помощью C#"
head_description: "Быстро защитите частное содержание в ваших файлах DOCX с помощью GroupDocs.Redaction for .NET и C#. Быстрые результаты."

############################# Header ############################
title: "Найдите и скройте конфиденциальный текст в документах DOCX с помощью .NET" 
description: "И для личного, и для коммерческого использования, GroupDocs.Redaction for .NET и C# помогут держать личную информацию вне поля зрения."
subtitle: "Как GroupDocs.Redaction for .NET помогает вам" 

############################# About ############################
about:
    enable: true
    title: "Что такое GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET предоставляет разработчикам C# инструменты для поиска и очистки конфиденциального контента в файлах DOCX. Работает с текстами, изображениями, заметками и т.д.

############################# Steps ############################
steps:
    enable: true
    title: "Как редактировать содержание в файлах Docx"
    content: |
      Следуйте этим простым шагам в проекте .NET, чтобы очистить частный текст с помощью GroupDocs.Redaction for .NET.
      
      1. Создайте новый Redactor и загрузите файл Docx.
      2. Выберите параметры редактирования, которые вам нужны.
      3. Введите текст для поиска и чем хотите его заменить.
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
        // Редактирование текста в файле DOCX

        // Загрузите ваш файл с помощью Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Выберите нужные параметры редактирования
            // Установите, что искать и чем заменить
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Запустите инструмент и сохраните свой отредактированный файл
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Другие функции редактирования"
  description: "С помощью GroupDocs.Redaction for .NET легко удалить скрытое или видимое содержание из разных типов файлов. Отлично подходит для безопасного обмена."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Обзор инструментов редактирования"
  features:
    # feature loop
    - title: "Замените частный текст"
      content: "Ищите конкретный текст в любом месте файла и заменяйте его. Работает с обычным текстом или шаблонами."

    # feature loop
    - title: "Скрыть конфиденциальные изображения"
      content: "Закройте части изображения или целые страницы наложениями. Вы контролируете цвета, размеры и позиции."

    # feature loop
    - title: "Стереть скрытые данные"
      content: "Удалите метаданные, такие как имена, комментарии или временные метки, чтобы ничего не осталось."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Найдите и редактируйте шаблоны с помощью Regex"
      content: |
        Используйте regex для поиска специфических типов данных, таких как адреса электронной почты или номера идентификационных карт.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Откройте файл, который нужно очистить
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Создайте правило регулярного выражения EMAIL и строку замены
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Запустите редактирование с использованием ваших настроек
              redactor.Apply(redaction);

              // Сохраните обновленный файл
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
    title: "Редактировать данные в DOCX с помощью .NET"
    exclude: "DOCX"
    description: "Защищайте личную или официальную информацию, скрывая ее в документах DOCX с помощью .NET. Это просто и эффективно."
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