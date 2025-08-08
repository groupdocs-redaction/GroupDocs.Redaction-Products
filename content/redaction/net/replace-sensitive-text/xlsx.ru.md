
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: ru
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Удалите частный текст из XLSX с помощью C#"
head_description: "Быстро очистите частное содержание в ваших файлах XLSX с помощью GroupDocs.Redaction for .NET и C#. Быстрое и простое редактирование."

############################# Header ############################
title: "Редактируйте или скрывайте конфиденциальный текст в документах XLSX с помощью .NET" 
description: "С помощью GroupDocs.Redaction for .NET и C# вы можете удалить личную или коммерческую информацию из ваших файлов XLSX и сохранить их в безопасности."
subtitle: "Что вы можете сделать с GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Что такое GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET позволяет разработчикам C# искать и удалять конфиденциальные данные из файлов XLSX. Он работает с текстом, изображениями, заметками и данными файлами.

############################# Steps ############################
steps:
    enable: true
    title: "Как редактировать текст в файлах Xlsx"
    content: |
      Используйте GroupDocs.Redaction for .NET в проекте .NET для скрытия или удаления конфиденциальной информации всего за несколько шагов.
      
      1. Создайте Redactor и загрузите файл Xlsx.
      2. Выберите параметры редактирования, которые соответствуют вашим требованиям.
      3. Введите текст для поиска и чем хотите его заменить.
      4. Запустите процесс редактирования и сохраните ваш обновленный файл.
   
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
        // Редактирование текста из файла XLSX

        // Используйте Redactor для открытия файла
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Выберите ваши параметры редактирования
            // Установите текст для поиска и замены
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Примените редактирование и сохраните очищенный файл
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Больше инструментов для редактирования"
  description: "GroupDocs.Redaction for .NET помогает очистить разные типы контента — текст, изображения или метаданные, чтобы ваши файлы были готовы к безопасному обмену."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Показаны опции редактирования"
  features:
    # feature loop
    - title: "Замените конфиденциальный текст"
      content: "Искать в файле и заменить любую конфиденциальную информацию. Поддержка простого текста и шаблонов."

    # feature loop
    - title: "Закрыть области изображения"
      content: "Используйте наложения, чтобы скрыть визуальные данные. Выберите цвет, размер области и макет страницы."

    # feature loop
    - title: "Удалите лишние данные"
      content: "Удалите метаданные, такие как имена авторов, временные метки или внутренние заметки, чтобы избежать утечек."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редактируйте с помощью правил Regex"
      content: |
        Используйте regex, чтобы найти и очистить шаблоны, такие как номера телефонов, электронные адреса или другие личные данные.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Откройте файл, чтобы начать
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Напишите правило регулярного выражения EMAIL и выберите замену
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Запустите редактирование на основе вашего шаблона
              redactor.Apply(redaction);

              // Сохраните отредактированный файл
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
    title: "Скрыть информацию в XLSX с помощью .NET"
    exclude: "XLSX"
    description: "Очистите ваши документы XLSX, удаляя личный или конфиденциальный текст с помощью инструментов .NET. Держите ваши данные в безопасности."
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