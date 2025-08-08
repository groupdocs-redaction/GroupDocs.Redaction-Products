
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ru
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Скрыть конфиденциальный текст в POWERPOINT с помощью наложений C#"
head_description: "GroupDocs.Redaction for .NET позволяет скрывать части файлов POWERPOINT с помощью простых наложений. Сохраняйте документы в безопасности, не изменяя структуру."

############################# Header ############################
title: "Редактирование текста в POWERPOINT с наложениями на .NET" 
description: "Защитите содержимое в ваших файлах POWERPOINT, помещая наложенные блоки с помощью C# и GroupDocs.Redaction for .NET."
subtitle: "Инструменты внутри GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Об этом инструменте"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET помогает пользователям C# очищать документы POWERPOINT, скрывая или удаляя текст, метаданные или изображения по мере необходимости.

############################# Steps ############################
steps:
    enable: true
    title: "Обезопасьте содержимое в документах Powerpoint"
    content: |
      Используйте GroupDocs.Redaction for .NET в своих приложениях .NET для очистки файлов перед распространением.
      
      1. Передайте путь к файлу новому экземпляру Redactor.
      2. Установите, что и как вы хотите редактировать.
      3. Определите текстовый шаблон и установите цвет наложения.
      4. Отредактируйте и сохраните ваш обновленный файл.
   
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
        // Закройте текст в POWERPOINT с помощью наложений

        // Используйте Redactor для открытия вашего файла
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Настройте параметры редактирования
            // Выберите текст и блокирующий цвет
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Запустите и сохраните ваш отредактированный файл
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Легко скрывайте конфиденциальные данные"
  description: "Используйте GroupDocs.Redaction for .NET для удаления или покрытия содержимого в различных типах документов — идеально для защиты данных в юридических, бизнесовых или личных файлах."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Гибкое редактирование документа"
  features:
    # feature loop
    - title: "Заменяйте текст"
      content: "Находите слова или цифры и заменяйте или скрывайте их."

    # feature loop
    - title: "Редактируйте фото или секции"
      content: "Добавляйте наложения к изображениям или выбранным участкам на странице."

    # feature loop
    - title: "Удаляйте дополнительные данные"
      content: "Удаляйте метаданные, которые могут раскрыть скрытую информацию."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Найдите и редактируйте с помощью регулярных выражений"
      content: |
        Это показывает, как регулярные выражения могут помочь определить и скрыть текст.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Откройте файл, который требует редактирования
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Настройте ваши правила с использованием regex
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Запустите процесс редактирования
              redactor.Apply(redaction);

              // Сохраните очищенную версию
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
    title: "Скрыть содержимое в POWERPOINT с помощью .NET"
    exclude: "POWERPOINT"
    description: "Добавьте наложения или очистите данные в ваших файлах POWERPOINT, чтобы сохранить конфиденциальное содержимое с помощью .NET."
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