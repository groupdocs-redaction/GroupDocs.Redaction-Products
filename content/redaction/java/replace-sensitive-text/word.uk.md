
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: uk
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Видалення приватного тексту з WORD за допомогою Java"
head_description: "Забезпечте безпеку ваших файлів WORD шляхом редагування чутливих даних за допомогою GroupDocs.Redaction for Java."

############################# Header ############################
title: "Редагуйте або видаліть текст у файлах WORD за допомогою Java" 
description: "Захистіть важливий контент у ваших файлах WORD за допомогою GroupDocs.Redaction for Java та Java. Редагуйте бізнесову, юридичну або особисту інформацію з упевненістю."
subtitle: "Що ви можете зробити з GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Що таке GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java надає розробникам Java надійний спосіб редагування WORD файлів. Очищайте текст, зображення, коментарі та приховані дані лише за кілька рядків коду.

############################# Steps ############################
steps:
    enable: true
    title: "Кроки для редагування Word документів"
    content: |
      Використовуйте GroupDocs.Redaction for Java у ваших проектах Java, щоб очистити файли перед їх розповсюдженням.
      
      1. Створіть Redactor і завантажте документ Word.
      2. Встановіть бажані параметри редагування.
      3. Оберіть текст, який ви хочете знайти та замінити.
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
        // Редагування документа WORD

        // Завантажте файл за допомогою Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Оберіть правила редагування
            // Введіть текст для пошуку та заміни
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Виконайте редагування і збережіть новий файл
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Більше функцій редагування"
  description: "GroupDocs.Redaction for Java може допомогти вам очистити чутливу інформацію з різних типів файлів. Швидко видаляйте текст, зображення та приховані метадані."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Редагування тексту, зображень та метаданих"
  features:
    # feature loop
    - title: "Шукати та замінити текст"
      content: "Знайдіть конкретний контент та замініть або видаліть його по всьому файлу. Підтримується regex."

    # feature loop
    - title: "Сховати частини сторінок"
      content: "Використовуйте накладки, щоб приховати фотографії або розділи документа."

    # feature loop
    - title: "Очистити метадані"
      content: "Стерти зайву інформацію, таку як автор, мітки часу або виправлення."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редагування з використанням шаблонів Regex"
      content: |
        Шукайте текст, використовуючи регулярні вирази, щоб приховати контент, такий як номери телефонів, дати або ІД.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Відкрийте ваш документ
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Встановіть шаблон EMAIL regex та значення для заміни
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Застосуйте редагування
              redactor.apply(redaction);

              // Збережіть оновлений документ
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
    title: "Редагування контенту у WORD за допомогою Java"
    exclude: "WORD"
    description: "Сховайте або видаліть особисті та приватні дані з документів WORD за допомогою Java. Простий спосіб зберегти ваші файли в безпеці."
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