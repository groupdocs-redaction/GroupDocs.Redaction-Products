
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ru
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Скрыть текст в XLSX с помощью наложений C#"
head_description: "GroupDocs.Redaction for .NET помогает скрывать текст в файлах XLSX с помощью цветных блоков. Сохраняйте информацию в безопасности, не изменяя формат вашего документа."

############################# Header ############################
title: "Закрытие текста в XLSX с помощью наложений и .NET" 
description: "Используйте C# и GroupDocs.Redaction for .NET для добавления простых наложений, которые блокируют конфиденциальный текст в ваших файлах XLSX."
subtitle: "Особенности GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Как GroupDocs.Redaction for .NET помогает"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET позволяет разработчикам, использующим C#, скрывать нежелательное содержимое в файлах XLSX. Закрывайте всё — от слов до изображений — по различным типам файлов.

############################# Steps ############################
steps:
    enable: true
    title: "Сохраните конфиденциальную информацию в документах Xlsx"
    content: |
      GroupDocs.Redaction for .NET помогает разработчикам .NET защищать файлы. Скрывайте личное содержимое всего за несколько строк кода.
      
      1. Создайте новый объект Redactor с путем к вашему файлу Xlsx.
      2. Отрегулируйте параметры редактирования по мере необходимости.
      3. Добавьте шаблон поиска и выберите цвет для блока наложения.
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
        // Закройте личный текст в XLSX с помощью наложений

        // Загрузите файл с Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Выберите, как будет работать редактирование
            // Введите текст для скрытия и выберите цвет наложения
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Обработайте файл и сохраните изменения
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Умные функции редактирования"
  description: "Используйте GroupDocs.Redaction for .NET для стирания или скрытия содержимого в различных типах файлов. Держите личные данные вдали от посторонних глаз."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Практичные инструменты редактирования"
  features:
    # feature loop
    - title: "Измените любой текст"
      content: "Ищите и обновляйте любую строку в документе для защиты данных."

    # feature loop
    - title: "Скрывать содержимое изображений"
      content: "Добавляйте квадраты или прямоугольники, чтобы закрыть чувствительные части изображений."

    # feature loop
    - title: "Очистка метаданных"
      content: "Удаляйте или перезаписывайте данные фона файла перед обменом."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Совпадение и скрытие с помощью regex"
      content: |
        Узнайте, как обнаружить и отредактировать содержимое с помощью регулярных выражений.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Откройте целевой документ
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Настройте шаблон и цвет наложения
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Примените правила редактирования
              redactor.Apply(redaction);

              // Экспортируйте отредактированную версию
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
    title: "Используйте .NET для скрытия информации в файлах XLSX"
    exclude: "XLSX"
    description: "Добавляйте наложения или удаляйте части ваших документов XLSX, чтобы защитить конфиденциальные детали с помощью .NET."
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