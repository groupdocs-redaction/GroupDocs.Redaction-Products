
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ru
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Закрытие конфиденциального текста в DOCX с помощью наложений и C#"
head_description: "Используйте GroupDocs.Redaction for .NET для защиты личного текста в файлах DOCX с простыми квадратными наложениями. Сохраните разметку вашего документа неизменной и ваши данные скрытыми."

############################# Header ############################
title: "Закрытие текста в DOCX с помощью наложений на .NET" 
description: "Скрывайте конфиденциальное содержимое в ваших документах DOCX, используя код C#. Отлично подходит для защиты юридических, бизнесовых и личных документов."
subtitle: "Особенности GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Что такое GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET помогает разработчикам C# скрывать или стирать личное содержимое в файлах DOCX. Используйте его для блокировки текста, изображений и метаданных в различных форматах файлов.

############################# Steps ############################
steps:
    enable: true
    title: "Удаление личных данных из документов Docx"
    content: |
      GroupDocs.Redaction for .NET помогает разработчикам .NET очищать документы всего за несколько строк кода.
      
      1. Создайте Redactor и укажите путь к вашему файлу.
      2. Определите, как должно работать редактирование.
      3. Введите текст для скрытия и выберите цвет наложения.
      4. Отредактируйте файл и сохраните его.
   
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
        // Скрыть текст в DOCX с помощью блоков наложения

        // Создайте Redactor и загрузите файл
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Настройте ваши предпочтения редактирования
            // Введите текст и установите цвет блока
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Отредактируйте и сохраните обновленный документ
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Другие способы очистки документов"
  description: "С помощью GroupDocs.Redaction for .NET редактируйте различные типы файлов, чтобы сохранить вашу информацию в безопасности и профессиональном виде."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Умное редактирование встроено"
  features:
    # feature loop
    - title: "Редактировать или удалить текст"
      content: "Находите конкретные фразы и скрывайте или заменяйте их."

    # feature loop
    - title: "Скрыть области изображения"
      content: "Закрывайте чувствительные места на картинках или сканированных страницах."

    # feature loop
    - title: "Стереть скрытые метаданные"
      content: "Удалите невидимую информацию, которая может раскрыть данные пользователя или системы."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Регулярные выражения для редактирования содержимого"
      content: |
        Посмотрите, как регулярные выражения могут находить и скрывать конфиденциальные слова.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Откройте целевой файл
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Установите шаблон и цвет
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Примените логику редактирования
              redactor.Apply(redaction);

              // Экспортируйте отредактированный документ
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
    title: "Скрыть содержимое в DOCX с помощью .NET"
    exclude: "DOCX"
    description: "Защитите конфиденциальные данные в документах DOCX, закрыв их наложениями или полностью удалив с помощью инструментов .NET."
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