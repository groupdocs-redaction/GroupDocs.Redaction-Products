
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: uk
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Редагування конфіденційного тексту у PDF за допомогою Java"
head_description: "Використовуйте GroupDocs.Redaction for Java для знаходження та видалення приватних даних з ваших файлів PDF. Швидке, надійне редагування тексту."

############################# Header ############################
title: "Видалення чутливих даних з файлів PDF за допомогою Java" 
description: "Очищайте файли PDF за допомогою Java та GroupDocs.Redaction for Java. Редагуйте особистий, юридичний або бізнесовий контент."
subtitle: "Що ви можете зробити з GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java надає розробникам Java простий спосіб очищення файлів PDF. Видаляйте або заміняйте текст, зображення, коментарі та приховані дані.

############################# Steps ############################
steps:
    enable: true
    title: "Як редагувати текст у файлах Pdf"
    content: |
      За допомогою GroupDocs.Redaction for Java розробники Java можуть видалити чутливий контент всього за кілька кроків.
      
      1. Створіть Redactor і завантажте ваш файл Pdf.
      2. Виберіть необхідні налаштування редагування.
      3. Введіть текст для пошуку та його заміну.
      4. Застосуйте редагування та збережіть файл.
   
    code:
      platform: "java"
      copy_title: "Копіювати"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Приклад редагувань"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "натисніть, щоб скопіювати"
        copy_done: "скопійовано"
      links:
        #  loop
        - title: "Більше прикладів"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "Документація"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // Як очистити файл PDF

        // Створіть Redactor та завантажте документ
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Встановіть свої правила редагування
            // Додайте текст для видалення та заміну
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Застосуйте редагування та збережіть новий файл
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Більше функцій редагування"
  description: "GroupDocs.Redaction for Java видаляє чутливу інформацію у багатьох форматах. Редагуйте текст, зображення та метадані, зберігаючи читабельність файлів."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Інструменти для редагування тексту та зображень"
  features:
    # feature loop
    - title: "Знайти та замінити текст"
      content: "Шукайте будь-які слова або фрази та замінюйте їх. Підтримується простий текст або regex."

    # feature loop
    - title: "Сховати контент зображення"
      content: "Приховуйте зображення або частини зображень, використовуючи кольорові накладки."

    # feature loop
    - title: "Очищення метаданих"
      content: "Видаліть імена авторів, дати або інші приховані дані перед розповсюдженням."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редагування тексту з використанням Regex"
      content: |
        Використовуйте regex для знаходження та приховування шаблонів, таких як електронні адреси, ІД або нестандартні формати.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Відкрийте документ, який потрібно редагувати
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Додайте шаблон EMAIL regex та текст для заміни
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Застосуйте редагування до відповідного контенту
              redactor.apply(redaction);

              // Збережіть відредаговану версію
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "Копіювати"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
          copy_tip: "натисніть, щоб скопіювати"
          copy_done: "скопійовано"
        top_links:
          #  loop
          - title: "Завантажити результат"
            icon: "download"
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
        links:
          #  loop
          - title: "Більше прикладів"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "Документація"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "Готові почати?"
  description: "Спробуйте можливості GroupDocs.Redaction безкоштовно або запитайте ліцензію"
  items:
    #  loop
    - title: "Завантаження Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "Ліцензування"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Редагування файлів PDF з Java"
    exclude: "PDF"
    description: "Захистіть персональну або бізнесову інформацію, редагуючи вміст PDF за допомогою інструментів Java."
    items: 
        # format loop 1
        - name: "Редагувати PDF"
          format: "PDF"
          link: "/redaction/java/replace-sensitive-text//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редагувати Word"
          format: "WORD"
          link: "/redaction/java/replace-sensitive-text//word/"
          description: "Документи MS Word та Open Office"
          
        # format loop 3
        - name: "Редагувати Excel"
          format: "EXCEL"
          link: "/redaction/java/replace-sensitive-text//excel/"
          description: "Таблиці MS Excel та Open Office"

        # format loop 4
        - name: "Редагувати PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/replace-sensitive-text//powerpoint/"
          description: "Презентації MS PowerPoint та Open Office"

        # format loop 5
        - name: "Редагувати DOCX"
          format: "DOCX"
          link: "/redaction/java/replace-sensitive-text//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 6
        - name: "Редагувати XLSX"
          format: "XLSX"
          link: "/redaction/java/replace-sensitive-text//xlsx/"
          description: "Електронна таблиця Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Редагувати PPTX"
          format: "PPTX"
          link: "/redaction/java/replace-sensitive-text//pptx/"
          description: "Презентація PowerPoint Open XML"


---