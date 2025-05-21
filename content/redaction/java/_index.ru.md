---
############################# Static ############################
layout: "product"
date: 2021-04-27T09:31:06+03:00
draft: false

product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "API редактирования Java | Скрыть конфиденциальные данные из PDF Word Excel Image"
head_description: "API редактирования документов Java — скройте личные данные из презентаций PDF, Word, Excel, PowerPoint и растровых изображений с помощью различных типов редактирования."

############################# Header ############################
title: "Редактировать личную информацию через Java API"
description: "Исключите или скройте личную информацию и метаданные из документов, рабочих листов, презентаций, файлов PDF и растровых изображений с помощью API редактирования Java."
button:
    enable: true

############################# SubMenu ############################
submenu:
    enable: true
    
    left:
        img_alt: "GroupDocs.Redaction for Java"
        image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-java.png"
        product: "GroupDocs.Redaction"
        platform: "Java"

    middle:
        button:
            # button loop
            - link: "#overview"
              text: "Обзор"

            # button loop
            - link: "#features"
              text: "Функции"

            # button loop
            - link: "#support"
              text: "Поддержка"

            # button loop
            - link: "https://products.groupdocs.app/redaction"
              text: "Live Demo"

            # button loop
            - link: "https://purchase.groupdocs.com/pricing/redaction/java"
              text: "Pricing"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/java/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      API GroupDocs.Redaction для Java позволяет разработчикам удалять конфиденциальные данные из файлов популярных форматов, таких как Microsoft Word, Excel, PowerPoint, PDF и изображений, чтобы их можно было использовать и распространять, но при этом защищать конфиденциальную информацию. Библиотека редактирования предлагает единый независимый от формата интерфейс для редактирования любого типа секретной информации, включая номера социального страхования, медицинскую информацию, финансовую, частную, юридическую или даже торговую информацию с помощью текста, метаданных и типов редактирования аннотаций. Он позволяет сохранить документ в исходном формате и создать очищенный PDF-документ с растровыми изображениями исходных страниц.
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          Ниже приводится обзор GroupDocs.Redaction для Java:
      
        right:
          enable: true
          icon: "fab fa-html5"
          title: "Обзор"
          content: |
            * Редактировать текст
            * Редактировать метаданные
            * Редактировать аннотацию
            * Редактировать табличный документ
            * Редактировать защищенные файлы
            * Настройка
      
      ## TAB TWO ##
      tab_two:
        description: |
          GroupDocs.Redaction для Java поддерживает следующие [форматы файлов документов](https://docs.groupdocs.com/redaction/java/supported-document-formats/):

        right:
          enable: true
          table:
            # table loop
            - title: "Редактировать текст, Metadata & Comments"
              content: |
                * **Word**: DOC, DOCX, DOT, ODT, DOTX, DOCM, DOTM, RTF
                * **Excel**: XLS, XLSX, XLT, XLTX, XLSM, XLTM, CSV
                * **PowerPoint**: PPT, PPTX, PPS, PPSX, POTX, PPTM, PPSM, POTM
                * **Фиксированный макет**: PDF
                * **Растровые изображения**: JPG, BMP, PNG, GIF, TIFF

      ## TAB THREE ##
      tab_three:
        description: |
          GroupDocs.Redaction for Java поддерживает следующие Операционные системы, фреймворки и менеджеры пакетов:
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "Операционные системы"
              content: |
                * Microsoft Windows Desktop
                * Microsoft Windows Server
                * Linux
                * MacOS

            # table loop
            - icon: "fas fa-code"
              title: "Поддерживаемые платформы"
              content: |
                * Java 7 (1.7) и выше

        right:
          enable: true
          table:
            # table loop
            - icon: "fas fa-cogs"
              title: "Среды разработки"
              content: |
                * NetBeans
                * IntelliJ IDEA
                * Eclipse

            # table loop
            - icon: "fas fa-tools"
              title: "Инструмент автоматизации сборки"
              content: |
                * Maven

############################# Features ############################
features:
    enable: true
    title: "Функции GroupDocs.Redaction for Java"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "Поиск и редактирование точных совпадений строки поиска"

      # feature loop
      - icon: "fas fa-eye"
        content: "Контролируйте процесс редактирования и пропускайте определенные совпадения"

      # feature loop
      - icon: "fas fa-bolt"
        content: "Найдите и отредактируйте с помощью регулярных выражений"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "Встроенная поддержка офисных форматов и PDF"

      # feature loop
      - icon: "fas fa-code"
        content: "Сотрите метаданные или отредактируйте значения метаданных"

      # feature loop
      - icon: "fas fa-cloud"
        content: "Ограничьте редактирование определенными листами и столбцами"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "Удалите аннотации или отредактируйте их тексты"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "Используйте текстовые (коды исключений) или графические (цветные прямоугольники) исправления"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "Сохраните документ в исходном формате или в формате PDF с растровыми изображениями исходных страниц."

      # feature loop
      - icon: "fas fa-border-all"
        content: "Поддержка форматов растровых изображений и редактирования областей изображения."

      # feature loop
      - icon: "fas fa-wrench"
        content: "Интерфейс интеграции для реализации пользовательского редактирования и форматов"

      # feature loop
      - icon: "fas fa-columns"
        content: "Редактировать или удалить метаданные EXIF ​​из файлов изображений"

      # feature loop
      - icon: "fas fa-file-word"
        content: "Редактируйте встроенные изображения в документах PDF, Word и презентациях"

    more_feature:
      # more_feature_loop
      - title: "Обеспечьте конфиденциальность, отредактировав свои секретные данные"
        content: |
          Библиотека GroupDocs.Redaction для Java позволяет разработчикам редактировать текст и изображения из поддерживаемых документов, используя различные типы редактирования. Использовать наш Redaction API просто и понятно.  

          В следующем примере кода используется табличный документ, например электронная таблица Microsoft Excel, где область редактирования может быть ограничена определенным рабочим листом и/или столбцом. Он использует фильтры для редактирования второго столбца с электронными письмами на листе "Клиенты", оставляя все остальные электронные письма нетронутыми в документе.

          ```java
          // Создать экземпляр класса Redactor
          final Redactor redactor  = new Redactor("sample.xlsx");
          try
          {
              CellFilter filter = new CellFilter();
              filter.setColumnIndex(1);
              filter.setWorkSheetName("Customers");
              Pattern expression = Pattern.compile("^\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$");
              // Применить редактирование
              RedactorChangeLog result = redactor.apply(new CellColumnRedaction(filter, expression, new ReplacementOptions("[customer email]")));
              if (result.getStatus() != RedactionStatus.Failed)
              {
                  SaveOptions so = new SaveOptions();
                  so.setAddSuffix(true);
                  so.setRasterizeToPDF(false);
                  redactor.save(so);
              };
          }
          finally { redactor.close(); }
          ```

############################# Support ############################
support:
    enable: true

############################# Solutions ############################
solutions:
    enable: true
    title: "GroupDocs.Redaction предлагает API для просмотра документов для других популярных сред разработки."

    solution:
        # solution loop
        - img_alt: "GroupDocs.Redaction for .NET"
          image: "/border/groupdocs-redaction-net.svg"
          product: "GroupDocs.Redaction"
          platform: ".NET"
          link: "/redaction/net/"

        # solution loop
        - img_alt: "GroupDocs.Redaction for Python via .NET"
          image: "/border/groupdocs-redaction-python-net.svg"
          product: "GroupDocs.Redaction"
          platform: "Python via .NET"
          link: "/redaction/python-net/"

############################# Back to top ###############################
back_to_top:
  enable: true
---