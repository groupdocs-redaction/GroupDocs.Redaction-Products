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
head_title: "Java API редагування | Приховати конфіденційні дані з PDF Word Excel зображення"
head_description: "Java API редагування документів - Приховати особисті дані з PDF, Word, Excel, Excel, PowerPoint, PowerPoint та растрових зображень за допомогою різних типів редагування."

############################# Header ############################
title: "Редагувати приватну інформацію через Java API"
description: "Виключіть або сховайте особисту інформацію та метадані з документів, робочих аркушів, презентацій, PDF та файлів растрових зображень за допомогою API редагування Java."
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
            - link: "https://purchase.groupdocs.com/pricing/redaction/java"
              text: "Ціноутворення"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/java/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction for Java API дозволяє розробникам видаляти конфіденційні дані з популярних форматів файлів, таких як Microsoft Word, Excel, Excel, PowerPoint, PDF та зображення, щоб їх можна було використовувати та розповсюджувати, але при цьому захищати конфіденційну інформацію. Бібліотека редагування пропонує єдиний незалежний від формату інтерфейс для редагування будь-якого типу секретної інформації, включаючи номери соціального страхування, медичну інформацію, фінансову, власну, юридичну або навіть торгову інформацію за допомогою тексту, метаданих та типів редагування анотацій. Це дозволяє зберегти документ у вихідному форматі та створити дезінфікований PDF документ з растровими зображеннями оригінальних сторінок.
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          Нижче наведено огляд GroupDocs.Redaction для Java:
      
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
          GroupDocs.Redaction для Java підтримує наступні [формати файлів документів](https://docs.groupdocs.com/redaction//supported-document-formats/java):

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
          GroupDocs.Redaction для Java підтримує наступні операційні системи, фреймворки та менеджери пакетів:
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "Операційні системи"
              content: |
                * Майкрософт Windows Desktop
                * Майкрософт Windows Server
                * Linux
                * Mac ОС

            # table loop
            - icon: "fas fa-code"
              title: "Підтримувані рамки"
              content: |
                * Java 7 (1.7) і вище

        right:
          enable: true
          table:
            # table loop
            - icon: "швидкі фаст-коги"
              title: "Середовища розробки"
              content: |
                * NetBeans
                * Інтелектуальна ІДЕЯ
                * Затемнення

            # table loop
            - icon: "швидкі вентилятори"
              title: "Інструмент автоматизації побудови"
              content: |
                * Мавен

############################# Features ############################
features:
    enable: true
    title: "GroupDocs.Redaction для Java Особливості"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "Пошук і редагування точних збігів пошукового рядка"

      # feature loop
      - icon: "fas fa-eye"
        content: "Контролюйте процес редагування та пропускайте конкретні збіги"

      # feature loop
      - icon: "fas fa-bolt"
        content: "Знайдіть і відредагувати за допомогою регулярних виразів"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "Вбудована підтримка офісних форматів і PDF"

      # feature loop
      - icon: "fas fa-code"
        content: "Видалення метаданих або редагування значень метаданих"

      # feature loop
      - icon: "fas fa-cloud"
        content: "Обмежте редагування конкретними аркушами та стовпцями"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "Видаліть анотації або відредагувати їх тексти"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "Використовуйте текстові (коди звільнення) або графічні (кольорові прямокутники) редагування"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "Збережіть документ у вихідному форматі або як PDF з растровими зображеннями оригінальних сторінок"

      # feature loop
      - icon: "fas fa-border-all"
        content: "Підтримка форматів растрових зображень та редагування областей зображення"

      # feature loop
      - icon: "fas fa-wrench"
        content: "Інтеграційний інтерфейс для реалізації користувальницького редагування та форматів"

      # feature loop
      - icon: "fas fa-columns"
        content: "Редагування або видалення метаданих EXIF з файлів зображень"

      # feature loop
      - icon: "fas fa-file-word"
        content: "Редагувати вбудовані зображення всередині PDF, Word та презентаційних документів"

    more_feature:
      # more_feature_loop
      - title: "Забезпечте конфіденційність шляхом редагування ваших секретних даних"
        content: |
          GroupDocs.Redaction for Java бібліотека дає можливість розробникам редагувати текст і зображення з підтримуваних документів, використовуючи різні типи редагування. Використовувати наш API Redaction просто і просто.  

          У наступному прикладі коду використовується табличний документ, такий як електронна таблиця Microsoft Excel, де обсяг редагування може бути обмежений певним робочим аркушем та/або стовпцем. Він використовує фільтри для редагування другого стовпця з електронними листами на аркуші «Клієнти», залишаючи всі інші електронні листи недоторканими в документі.

          ```java
          // Створіть екземпляр класу Redactor
          final Redactor redactor  = new Redactor("sample.xlsx");
          try
          {
              CellFilter filter = new CellFilter();
              filter.setColumnIndex(1);
              filter.setWorkSheetName("Customers");
              Pattern expression = Pattern.compile("^\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$");
              // Застосувати редагування
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
    title: "GroupDocs.Redaction пропонує API для перегляду документів для інших популярних середовищ розробки"

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