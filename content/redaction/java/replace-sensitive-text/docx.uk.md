
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: uk
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Видалення приватного тексту з DOCX за допомогою Java"
head_description: "Забезпечте вміст у ваших файлах DOCX за допомогою GroupDocs.Redaction for Java. Швидке та надійне редагування тексту, зображень та метаданих."

############################# Header ############################
title: "Редагуйте або видаліть текст у документах DOCX за допомогою Java" 
description: "Захистіть особистий або бізнесовий контент у ваших файлах DOCX за допомогою Java та GroupDocs.Redaction for Java."
subtitle: "Що ви можете зробити з GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Що таке GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java допомагає розробникам Java очищувати та редагувати файли DOCX. Видаляйте текст, зображення, коментарі та приховані дані.

############################# Steps ############################
steps:
    enable: true
    title: "Як редагувати контент у файлах Docx"
    content: |
      Використовуйте GroupDocs.Redaction for Java у ваших проектах Java, щоб очистити файли перед розповсюдженням.
      
      1. Створіть Redactor і завантажте файл.
      2. Виберіть ваші параметри редагування.
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
        // Редагування контенту у файлі DOCX

        // Завантажте документ за допомогою Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Встановіть параметри редагування
            // Визначте, що шукати та замінювати
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Застосуйте редагування та збережіть
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Опції редагування"
  description: "GroupDocs.Redaction for Java дозволяє очищати чутливий контент з багатьох типів файлів. Зберігайте ваші документи в безпеці, не втрачаючи структури."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Інструменти видалення контенту"
  features:
    # feature loop
    - title: "Замінити текст"
      content: "Знайдіть конкретний контент та замініть його по всьому документу."

    # feature loop
    - title: "Приховати зображення чи частини"
      content: "Сховати чутливі візуали кольоровими накладками."

    # feature loop
    - title: "Видалити приховані дані"
      content: "Очисніть метадані, такі як імена авторів, мітки часу або властивості документа."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редагування на основі Regex"
      content: |
        Використовуйте регулярні вирази для виявлення та редагування шаблонів, таких як номери телефонів або електронні адреси.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Завантажте документ
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Встановіть шаблон EMAIL regex та текст для заміни
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Запустіть процес редагування
              redactor.apply(redaction);

              // Збережіть очищений файл
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
    title: "Очищення файлів DOCX з Java"
    exclude: "DOCX"
    description: "Редагуйте або замінайте чутливий контент у документах DOCX за допомогою інструментів Java."
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