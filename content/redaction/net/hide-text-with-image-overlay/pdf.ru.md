
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ru
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Скрытие конфиденциального текста в PDF с помощью наложений на C#"
head_description: "С помощью GroupDocs.Redaction for .NET вы можете скрыть конфиденциальный текст в файлах PDF, наложив цветные квадратные блоки. Защитите личные данные, не изменяя оригинальную разметку."

############################# Header ############################
title: "Скрытие конфиденциального текста в документах PDF с помощью наложений на .NET" 
description: "Контролируйте содержимое файлов PDF с помощью C#. Используйте редактирование для защиты юридической, финансовой и личной информации."
subtitle: "Особенности GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "О GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET предоставляет разработчикам C# инструменты для скрытия или удаления содержимого из файлов PDF. Это простой способ обеспечить безопасность документов. Вы можете скрыть текст, изображения или метаданные в различных типах файлов.

############################# Steps ############################
steps:
    enable: true
    title: "Защита бизнес-данных в документах Pdf"
    content: |
      GroupDocs.Redaction for .NET: создан для того, чтобы помочь вашим приложениям .NET обеспечить безопасность документов. Быстро и эффективно удаляйте личную информацию.
      
      1. Создайте экземпляр Redactor и укажите путь к файлу Pdf, который хотите отредактировать.
      2. Настройте параметры редактирования, чтобы получить нужный результат.
      3. Просто установите текстовый шаблон для поиска и выберите цвет наложения.
      4. Отредактируйте документ и сохраните изменения.
   
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
        // Скрыть конфиденциальный текст в PDF с помощью изображений наложения

        // Передайте путь к файлу в конструктор Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Настройте параметры редактирования
            // Определите текстовый шаблон и цвет наложения
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Отредактируйте и сохраните обновленный файл PDF
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Редактирование содержания в документах"
  description: "С помощью GroupDocs.Redaction for .NET вы можете удалить или скрыть содержимое в различных типах файлов. Защищайте конфиденциальную информацию, сохраняя легкость чтения и обмена вашими документами."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Расширенные параметры редактирования"
  features:
    # feature loop
    - title: "Редактировать текст в любом месте"
      content: "Ищите и заменяйте любые совпадающие текстовые фрагменты в документе, чтобы защитить конфиденциальные данные."

    # feature loop
    - title: "Закрыть изображения"
      content: "Накладывайте блоки на полные изображения или выбранные области, чтобы скрыть частные визуальные данные."

    # feature loop
    - title: "Работа с метаданными"
      content: "Стирайте или изменяйте скрытые метаданные, чтобы предотвратить утечку нежелательных данных."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Используйте регулярные выражения для скрытия текста"
      content: |
        Этот пример показывает, как находить и скрывать текст с помощью регулярных выражений.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Загрузите документ, который хотите отредактировать
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Определите настройки редактирования: текстовый шаблон и цвет
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Примените редактирование к содержимому
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
    title: "Защита содержимого PDF с помощью редактирования .NET"
    exclude: "PDF"
    description: "Используйте .NET для захвата или удаления содержимого в файлах PDF. Это умный выбор для защиты конфиденциальных или официальных документов."
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