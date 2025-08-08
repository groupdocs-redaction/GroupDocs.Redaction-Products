
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: uk
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Захист приватного тексту в PDF за допомогою накладок у Java"
head_description: "GroupDocs.Redaction for Java дозволяє приховувати чутливу інформацію в файлах PDF, розміщуючи кольорові блоки. Захистіть дані, не змінюючи зовнішній вигляд вашого файлу."

############################# Header ############################
title: "Замаскуйте текст у документах PDF за допомогою накладок у Java" 
description: "Отримайте повний контроль над вмістом файлів PDF з Java. Використовуйте редагування, щоб захистити фінансові, юридичні чи особисті дані."
subtitle: "Основні можливості GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Що пропонує GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java надає розробникам Java простий спосіб приховати чи видалити вміст з файлів PDF. Закривайте текст, зображення та метадані в різних типах документів.

############################# Steps ############################
steps:
    enable: true
    title: "Забезпечте конфіденційну інформацію у файлах Pdf"
    content: |
      GroupDocs.Redaction for Java спрощує розробникам Java приховувати приватний контент, дотримуючись кількох простих кроків.
      
      1. Запустіть Redactor та завантажте свій файл Pdf.
      2. Налаштуйте свої переваги редагування.
      3. Виберіть, що знайти, і виберіть колір накладки.
      4. Застосуйте редагування та збережіть свій документ.
   
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
        // Приховати текст у PDF за допомогою кольорових накладок

        // Передайте шлях файлу до Redactor
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Налаштуйте параметри редагування
            // Встановіть цільовий текст і колір
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Застосуйте та збережіть редагований PDF
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Контролюйте, що відображається у документах"
  description: "GroupDocs.Redaction for Java дозволяє блокувати або видаляти частини ваших файлів, зберігаючи їх зручними для перегляду та обміну."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Потужні інструменти редагування"
  features:
    # feature loop
    - title: "Вибирайте та приховуйте текст"
      content: "Шукайте у своєму документі та приховуйте певні слова або фрази для захисту приватної інформації."

    # feature loop
    - title: "Приховувати зображення"
      content: "Додавайте накладки, щоб повністю або частково приховати візуальний вміст."

    # feature loop
    - title: "Видалити метадані"
      content: "Очищайте приховані деталі документа, щоб уникнути ненавмисного розкриття."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Приховати текст за допомогою регулярних виразів"
      content: |
        Цей приклад використовує регулярні вирази для пошуку та приховування конкретного контенту
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Завантажте файл, який ви хочете обробити
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Встановіть шаблон тексту та колір накладки
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Застосуйте редагування
              redactor.apply(redaction);

              // Збережіть ваші зміни
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Захищайте файли PDF за допомогою Java"
    exclude: "PDF"
    description: "Використовуйте Java, щоб закривати чи стирати вміст у документах PDF. Чудовий спосіб зберегти чутливу інформацію в безпеці."
    items: 
        # format loop 1
        - name: "Редагувати PDF"
          format: "PDF"
          link: "/redaction/java/hide-text-with-image-overlay//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редагувати Word"
          format: "WORD"
          link: "/redaction/java/hide-text-with-image-overlay//word/"
          description: "Документи MS Word та Open Office"
          
        # format loop 3
        - name: "Редагувати Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-text-with-image-overlay//excel/"
          description: "Таблиці MS Excel та Open Office"

        # format loop 4
        - name: "Редагувати PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-text-with-image-overlay//powerpoint/"
          description: "Презентації MS PowerPoint та Open Office"

        # format loop 5
        - name: "Редагувати DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-text-with-image-overlay//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 6
        - name: "Редагувати XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-text-with-image-overlay//xlsx/"
          description: "Електронна таблиця Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Редагувати PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-text-with-image-overlay//pptx/"
          description: "Презентація PowerPoint Open XML"


---