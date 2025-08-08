
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: uk
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Видалення конфіденційного тексту з XLSX за допомогою Java"
head_description: "Забезпечте безпеку ваших даних у XLSX шляхом редагування тексту та метаданих за допомогою GroupDocs.Redaction for Java."

############################# Header ############################
title: "Очищайте файли XLSX за допомогою Java" 
description: "Видаляйте чутливий контент з файлів XLSX за допомогою Java та GroupDocs.Redaction for Java. Зберігайте ваші електронні таблиці захищеними."
subtitle: "Що ви можете зробити з GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Чому слід використовувати GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java надає розробникам Java інструменти для очищення файлів XLSX. Редагуйте текст, метадані, зображення та більше за допомогою кількох рядків коду.

############################# Steps ############################
steps:
    enable: true
    title: "Редагування даних з файлів Xlsx"
    content: |
      Використовуйте GroupDocs.Redaction for Java в будь-якому додатку Java для видалення тексту або прихованого контенту перед розповсюдженням.
      
      1. Створіть екземпляр Redactor та завантажте ваш файл.
      2. Виберіть потрібні опції редагування.
      3. Оберіть текст для пошуку та його заміну.
      4. Застосуйте редагування та збережіть ваш документ.
   
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
        // Як редагувати електронну таблицю XLSX

        // Створіть Redactor та завантажте ваш файл
        final Redactor redactor = new Redactor("input.xlsx");
        try
        {
            // Оберіть налаштування редагування
            // Введіть текст для пошуку та заміни
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Застосуйте зміни та збережіть
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Корисні інструменти редагування"
  description: "GroupDocs.Redaction for Java допомагає видаляти приватний контент з різних файлів. Очищайте документи без втрати форматування."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Засоби редагування тексту, зображень та метаданих"
  features:
    # feature loop
    - title: "Шукати і замінювати текст"
      content: "Знайдіть і оновіть або приховайте чутливі дані в комірках."

    # feature loop
    - title: "Приховати візуали"
      content: "Сховати графіки, зображення або діапазони, використовуючи кольорові накладки."

    # feature loop
    - title: "Очистити метадані"
      content: "Видаліть інформацію про авторів, дати створення та інші дані з фону."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редагування за допомогою Regex"
      content: |
        Знайдіть і відредагуйте значення, такі як номери рахунків або шаблони за допомогою regex.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Відкрийте файл для обробки
          final Redactor redactor = new Redactor("source.xlsx");
          try
          {
              // Додайте правило EMAIL regex та заміну
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Застосуйте правила редагування
              redactor.apply(redaction);

              // Збережіть оновлений файл
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
    title: "Редагування контенту у XLSX з Java"
    exclude: "XLSX"
    description: "Очищайте та захищайте файли XLSX за допомогою функцій Java для редагування та видалення контенту."
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