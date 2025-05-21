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
head_title: "C# .NET API редагування | Приховати приватний текст із PDF Word Excel зображень"
head_description: "API редагування документів для .NET. Редагувати, приховувати або видаляти конфіденційні матеріали з PDF, Microsoft Word, Excel, презентацій та растрових зображень."

############################# Header ############################
title: "Захист класифікованих даних за допомогою API Redaction"
description: "Редагування, приховування або видалення конфіденційних вмісту та метаданих з документів, робочих аркушів, презентацій, PDF та файлів растрових зображень за допомогою .NET API."
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
              text: "Огляд"

            # button loop
            - link: "#features"
              text: "Особливості"

            # button loop
            - link: "#support"
              text: "Підтримка"

            # button loop
            - link: "https://products.groupdocs.app/redaction"
              text: "Жива демонстрація"

            # button loop
            - link: "https://purchase.groupdocs.com/pricing/redaction/net"
              text: "Ціноутворення"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/net/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction for .NET - це бібліотека API, яка допомагає видалити конфіденційні та класифіковані дані з різних форматів файлів, таких як Microsoft Word, Excel, PowerPoint та PDF. Єдиний інтерфейс нашого Redaction API підтримує редагування різних типів, наприклад, редагування тексту, редагування метаданих, редагування анотацій та редагування табличного документа. GroupDocs.Redaction for .NET API також дозволяє редагувати захищені паролем файли. Ви можете зберегти документ у вихідному форматі, а також створити дезінфікований документ PDF з растровими зображеннями оригінальних сторінок.
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          Нижче наведено огляд GroupDocs.Redaction для .NET:
      
        right:
          enable: true
          icon: "fab fa-html5"
          title: "Огляд"
          content: |
            * Редагувати текст
            * Редагувати метадані
            * Редагувати анотацію
            * Редагувати табличний документ
            * Редагувати захищені файли
            * Налаштування
      
      ## TAB TWO ##
      tab_two:
        description: |
          GroupDocs.Redaction для .NET підтримує наступні [формати файлів документів](https://docs.groupdocs.com/redaction//supported-document-formats/net):

        right:
          enable: true
          table:
            # table loop
            - title: "Редагування тексту, метаданих та коментарів"
              content: |
                * **Word**: DOC, DOCX, DOT, ODT, DOTX, DOCM, DOTM, RTF
                * **Excel**: XLS, XLSX, XLT, XLTX, XLSM, XLTM, CSV
                * **PowerPoint**: PPT, PPTX, PPS, PPSX, POTX, PPTM, PPSM, POTM
                * **Фіксований макет**: PDF
                * **Растрові зображення**: JPG, BMP, PNG, GIF, TIFF

      ## TAB THREE ##
      tab_three:
        description: |
          GroupDocs.Redaction для .NET підтримує наступні операційні системи, фреймворки та менеджери пакетів:
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "Операційні системи"
              content: |
                * Windows Desktop
                * Windows Server
                * Windows Azure
                * Linux

            # table loop
            - icon: "fas fa-code"
              title: "Підтримувані рамки"
              content: |
                * .NET Framework 2.0 або вище
                * .NET Standard 2.0
                * .NET Core 2.0

        right:
          enable: true
          table:
            # table loop
            - icon: "швидкий фасок-бокс"
              title: "Менеджер пакетів"
              content: |
                * NuGet

            # table loop
            - icon: "швидкі вентилятори"
              title: "Середовища розробки"
              content: |
                * Microsoft Visual Studio
                * Xamarin.Android
                * Xamarin.IOS
                * Xamarin.Mac
                * MonoDevelop

############################# Features ############################
features:
    enable: true
    title: "GroupDocs.Redaction для .NET Особливості"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "Виконайте пошук з урахуванням регістру для точного редагування фрази"

      # feature loop
      - icon: "fas fa-eye"
        content: "Використовуйте кольорове поле, щоб приховати відредагований текст замість заміни рядка"

      # feature loop
      - icon: "fas fa-bolt"
        content: "Знайдіть і відредагувати будь-який текст за допомогою пошуку регулярних виразів"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "Фільтрувати всю або будь-яку комбінацію класифікованої інформації метаданих документа"

      # feature loop
      - icon: "fas fa-code"
        content: "Швидко видаліть повну інформацію про метадані певного документа"

      # feature loop
      - icon: "fas fa-cloud"
        content: "Встановіть область редагування для певного аркуша та/або стовпця в Excel"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "Видаліть усі або конкретні коментарі та інші анотації з документа"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "Пошук і видалення конфіденційних даних з тексту анотації"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "Можливість роботи з власними форматами та редагованими"

      # feature loop
      - icon: "fas fa-border-all"
        content: "Підтримка форматів растрових зображень та редагування областей зображення"

      # feature loop
      - icon: "fas fa-wrench"
        content: "Вкажіть набір правил редагування (політики) у файлі XML"

      # feature loop
      - icon: "fas fa-columns"
        content: "Вкажіть діапазон сторінок та рівень відповідності PDF під час перетворення на PDF"

      # feature loop
      - icon: "fas fa-file-word"
        content: "Редагування або видалення метаданих EXIF з файлів зображень"

      # feature loop
      - icon: "fas fa-envelope"
        content: "Редагувати вбудовані зображення всередині PDF, Word та презентаційних документів"

      # feature loop
      - icon: "fas fa-print"
        content: "Збереження політики редагування як XML-файлу"

    more_feature:
      # more_feature_loop
      - title: "Редагувати секретні дані з легкістю та контролем"
        content: |
          GroupDocs.Redaction for .NET API надає вам повний контроль над тим, як ви хочете приховати або стерти важливу секретну інформацію з підтримуваного документа. Використовувати наш Redaction API досить просто і просто.  

          У наступному прикладі ми завантажуємо підтримуваний документ, редаговуємо будь-який текст, відповідний «2 цифри, пробіл або нічого, 2 цифри, знову пробіл і 6 цифр» (наприклад, 12 34 567890) із полем синього кольору за допомогою C#. Після цього він зберігає документ у вихідному форматі, перейменуючи його з доданим суфіксом «Відредаговано»:

          ```cs
          // Створіть екземпляр класу Redactor
          using (Redactor redactor = new Redactor("sample.docx"))
          {
            // Застосувати редагування
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
    title: "GroupDocs.Redaction пропонує API для перегляду документів для інших популярних середовищ розробки"

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