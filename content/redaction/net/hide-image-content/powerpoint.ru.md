
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ru
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Скрыть чувствительные изображения в POWERPOINT с помощью наложений с C#"
head_description: "Используйте GroupDocs.Redaction for .NET для добавления наложений на изображения в файлах POWERPOINT, скрывая личные данные, сохраняя при этом макет нетронутым."

############################# Header ############################
title: "Скрытие личных изображений в документах POWERPOINT с использованием наложений с .NET" 
description: "Защитите личные и корпоративные данные в файлах POWERPOINT с C#. Простые инструменты для обеспечения сильной конфиденциальности документов."
subtitle: "Основные функции GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Что такое GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Узнать больше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET предоставляет разработчикам C# простые инструменты для скрытия или удаления контента из файлов POWERPOINT. Защищайте ваши документы, закрывая чувствительные тексты, изображения и метаданные.

############################# Steps ############################
steps:
    enable: true
    title: "Защита чувствительной информации в документах Powerpoint"
    content: |
      GroupDocs.Redaction for .NET создан для того, чтобы помочь вашим приложениям .NET быстро оберегать содержимое документов.
      
      1. Создайте объект Redactor и укажите файл Powerpoint.
      2. Настройте параметры редактирования чтобы соответствовать вашим потребностям.
      3. Выберите область изображения и выберите цвет наложения.
      4. Примените редактирование и сохраните документ.
   
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
        // Скрыть данные изображения в POWERPOINT

        // Загрузите файл с помощью Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Настройте цвет и размеры наложения
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Определите область для закрытия
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Примените наложение и сохраните документ
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Инструменты редактирования документа"
  description: "GroupDocs.Redaction for .NET позволяет скрывать или удалять чувствительный контент в различных типах файлов. Защитите личные данные, сохранив их чистыми и удобными для использования."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Инструменты редактирования, богатые функциями"
  features:
    # feature loop
    - title: "Поиск и редактирование текста"
      content: "Находите чувствительный текст в документах и заменяйте его для повышения безопасности данных."

    # feature loop
    - title: "Обработка изображений"
      content: "Используйте наложения для маскировки изображений или выбранных областей, чтобы гарантировать, что частные визуалы остаются скрытыми."

    # feature loop
    - title: "Удаление метаданных"
      content: "Удалите или измените скрытые метаданные, чтобы предотвратить неумышленное раскрытие данных."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Защитите данные изображения с наложениями"
      content: |
        Этот пример показывает, как скрывать чувствительное содержимое в изображениях документов.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Загрузите файл для редактирования
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Укажите размер наложения, его положение и цвет
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Ознакомьтесь с областью для редактирования на первой странице
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Наложите наложение
              redactor.Apply(redaction);

              // Сохраните отредактированный документ
              var save_options = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_options);
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Защита POWERPOINT контента с помощью редактирования .NET"
    exclude: "POWERPOINT"
    description: "Используйте .NET для скрытия или удаления личной информации в POWERPOINT файлах. Доступное решение для обеспечения безопасности конфиденциальных данных."
    items: 
        # format loop 1
        - name: "Редактировать PDF"
          format: "PDF"
          link: "/redaction/net/hide-image-content//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редактировать Word"
          format: "WORD"
          link: "/redaction/net/hide-image-content//word/"
          description: "Документы MS Word и Open Office"
          
        # format loop 3
        - name: "Редактировать Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-image-content//excel/"
          description: "Таблицы MS Excel и Open Office"

        # format loop 4
        - name: "Редактировать PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-image-content//powerpoint/"
          description: "Презентации MS PowerPoint и Open Office"

        # format loop 5
        - name: "Редактировать Изображения"
          format: "IMAGE"
          link: "/redaction/net/hide-image-content//image/"
          description: "Популярные форматы изображений"

        # format loop 6
        - name: "Редактировать Фото"
          format: "PHOTO"
          link: "/redaction/net/hide-image-content//photo/"
          description: "Форматы фотографий"

        # format loop 7
        - name: "Редактировать DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-image-content//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 8
        - name: "Редактировать XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-image-content//xlsx/"
          description: "Электронная таблица Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Редактировать PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-image-content//pptx/"
          description: "Презентация PowerPoint Open XML"

        # format loop 10
        - name: "Редактировать JPEG"
          format: "JPEG"
          link: "/redaction/net/hide-image-content//jpeg/"
          description: "Изображение JPEG"


---