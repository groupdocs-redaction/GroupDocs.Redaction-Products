
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ru
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Редактирование текста в PPTX с использованием наложений и C#"
head_description: "Скрывайте личное содержимое в документах PPTX, закрывая его цветными квадратами с помощью GroupDocs.Redaction for .NET. Сохраняйте вашу разметку точно такой же."

############################# Header ############################
title: "Редактирование текста в PPTX с наложениями на .NET" 
description: "С помощью C# и GroupDocs.Redaction for .NET просто защитите конфиденциальные данные в файлах PPTX, скрыв их от просмотра."
subtitle: "Изучите GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Что такое GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET предоставляет вам возможность скрыть или удалить содержимое в документах PPTX с помощью C#. Скрывайте всё, от имен до заметок, всего за несколько шагов.

############################# Steps ############################
steps:
    enable: true
    title: "Скрытие конфиденциального содержимого в ваших файлах Pptx"
    content: |
      С GroupDocs.Redaction for .NET разработчики .NET могут защищать документы всего за несколько простых шагов.
      
      1. Запустите Redactor с путем к файлу, который хотите очистить.
      2. Выберите правила редактирования, которые соответствуют вашим потребностям.
      3. Выберите шаблон для совпадения и цвет для наложения изображения.
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
        // Используйте наложения для закрытия текста в PPTX

        // Инициализируйте Redactor с вашим файлом
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Определите, как должно работать редактирование
            // Укажите, что скрывать и цвет наложения
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Запустите и сохраните изменения
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Больше способов защитить ваши файлы"
  description: "GroupDocs.Redaction for .NET предоставляет вам инструменты для скрытия данных в различных форматах, не меняя разметку."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Функции, имеющие значение"
  features:
    # feature loop
    - title: "Замените текст по мере необходимости"
      content: "Меняйте текст, чтобы сохранить ключевую информацию в секрете от неавторизованных пользователей."

    # feature loop
    - title: "Скрыть области изображений"
      content: "Скрывайте полные изображения или определённые части, рисуя наложенные блоки."

    # feature loop
    - title: "Стирайте скрытые данные"
      content: "Удаляйте встроенные метаданные, которые могут раскрыть частные детали."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редактирование по регулярным выражениям"
      content: |
        Этот пример показывает, как искать и скрывать текст с помощью регулярных выражений.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Загрузите файл для редактирования
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Настройте правила редактирования: текст для поиска и цвет блока
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Примените логику редактирования
              redactor.Apply(redaction);

              // Сохраните отредактированный результат
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
    title: "Защитите текст в PPTX с помощью инструментов .NET"
    exclude: "PPTX"
    description: "Закрывайте личные области или удаляйте скрытые данные в файлах PPTX с помощью функций редактирования .NET."
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