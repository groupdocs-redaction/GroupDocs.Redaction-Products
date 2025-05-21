---
############################# Static ############################
layout: "product"
date: 2021-04-27T09:31:06+03:00
draft: false

product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "API редактирования C# .NET | Скрыть личный текст из изображений PDF Word Excel"
head_description: "API редактирования документов для .NET. Редактируйте, скрывайте или удаляйте конфиденциальное содержимое из PDF, Microsoft Word, Excel, презентаций и растровых изображений."

############################# Header ############################
title: "Защита секретных данных с помощью Redaction API"
description: "Редактировать, скрывать или удалять конфиденциальное содержимое и метаданные из документов, листов, презентаций, файлов PDF и растровых изображений с помощью .NET API."
button:
    enable: true

############################# SubMenu ############################
submenu:
    enable: true
    
    left:
        img_alt: "GroupDocs.Redaction for .NET"
        image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-net.png"
        product: "GroupDocs.Redaction"
        platform: ".NET"

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
            - link: "https://purchase.groupdocs.com/pricing/redaction/net"
              text: "Pricing"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/net/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction для .NET — это библиотека API, которая помогает удалять конфиденциальные и секретные данные из файлов различных форматов, таких как Microsoft Word, Excel, PowerPoint и PDF. Единый независимый от формата интерфейс нашего Redaction API поддерживает редактирование различных типов, например редактирование текста, редактирование метаданных, редактирование аннотаций и редактирование табличных документов. GroupDocs.Redaction for .NET API также позволяет редактировать файлы, защищенные паролем. Вы можете сохранить документ в исходном формате, а также создать очищенный PDF-документ с растровыми изображениями исходных страниц.
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          Ниже приведен обзор GroupDocs.Redaction для .NET:
      
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
          GroupDocs.Redaction для .NET поддерживает следующие [форматы файлов документов](https://docs.groupdocs.com/redaction/net/supported-document-formats/):

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
          GroupDocs.Redaction for .NET поддерживает следующие Операционные системы & Менеджер пакетов:
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "Операционные системы"
              content: |
                * Windows Desktop
                * Windows Server
                * Windows Azure
                * Linux

            # table loop
            - icon: "fas fa-code"
              title: "Поддерживаемые платформы"
              content: |
                * .NET Framework 2.0 или выше
                * .NET Standard 2.0
                * .NET Core 2.0

        right:
          enable: true
          table:
            # table loop
            - icon: "fas fa-box"
              title: "Менеджер пакетов"
              content: |
                * NuGet

            # table loop
            - icon: "fas fa-tools"
              title: "Среды разработки"
              content: |
                * Microsoft Visual Studio
                * Xamarin.Android
                * Xamarin.IOS
                * Xamarin.Mac
                * MonoDevelop

############################# Features ############################
features:
    enable: true
    title: "Функции GroupDocs.Redaction for .NET"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "Выполнять поиск с учетом регистра для точного редактирования фразы"

      # feature loop
      - icon: "fas fa-eye"
        content: "Используйте цветовую рамку, чтобы скрыть отредактированный текст вместо замены строки"

      # feature loop
      - icon: "fas fa-bolt"
        content: "Найдите и отредактируйте любой текст, используя поиск по регулярным выражениям"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "Отфильтровать всю или любую комбинацию секретной информации метаданных документа"

      # feature loop
      - icon: "fas fa-code"
        content: "Быстрое удаление полной информации метаданных определенного документа"

      # feature loop
      - icon: "fas fa-cloud"
        content: "Установите область редактирования для определенного рабочего листа и/или столбца в Excel."

      # feature loop
      - icon: "fas fa-remove-format"
        content: "Удалить все или определенные комментарии и другие аннотации из документа"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "Поиск и удаление конфиденциальных данных из текста аннотации"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "Возможность работать с собственными форматами и редакциями"

      # feature loop
      - icon: "fas fa-border-all"
        content: "Поддержка форматов растровых изображений и редактирования областей изображения."

      # feature loop
      - icon: "fas fa-wrench"
        content: "Укажите набор правил редактирования (политики) в файле XML"

      # feature loop
      - icon: "fas fa-columns"
        content: "Укажите диапазон страниц и уровень соответствия PDF при преобразовании в PDF"

      # feature loop
      - icon: "fas fa-file-word"
        content: "Edit or Delete Метаданные EXIF from Image Files"

      # feature loop
      - icon: "fas fa-envelope"
        content: "Редактируйте встроенные изображения в документах PDF, Word и презентациях"

      # feature loop
      - icon: "fas fa-print"
        content: "Сохранение политики редактирования в виде XML-файла"

    more_feature:
      # more_feature_loop
      - title: "Редактируйте свои секретные данные с легкостью и контролем"
        content: |
          GroupDocs.Redaction для .NET API предоставляет вам полный контроль над тем, как вы хотите скрыть или удалить важную секретную информацию из поддерживаемого документа. Использовать наш Redaction API довольно просто и понятно.  

          В следующем примере мы загружаем поддерживаемый документ, редактируем любой текст, сопоставляя "2 цифры, пробел или ничего, 2 цифры, снова пробел и 6 цифр" (например, 12 34 567890) с синим полем, используя C#. Как только это будет сделано, он сохранит документ в исходном формате, переименовав его с добавленным суффиксом "_Redacted":

          ```cs
          // Создать экземпляр класса Redactor
          using (Redactor redactor = new Redactor("sample.docx"))
          {
            // Применить редактирование
            redactor.Apply(new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", new ReplacementOptions(System.Drawing.Color.Blue)));
            redactor.Save();
          }
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
        - img_alt: "GroupDocs.Redaction for Java"
          image: "/border/groupdocs-redaction-java.svg"
          product: "GroupDocs.Redaction"
          platform: "Java"
          link: "/redaction/java/"

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