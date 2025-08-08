
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: uk
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Редагуйте метадані у PDF за допомогою C#"
head_description: "З GroupDocs.Redaction for .NET ви можете видалити або оновити метадані у файлах PDF. Очищайте приховані дані, які можуть розкривати приватну інформацію."

############################# Header ############################
title: "Очищайте метадані у файлах PDF за допомогою .NET" 
description: "Захистіть чутливу бізнесову та особисту інформацію у файлах PDF за допомогою C#. Надійні інструменти для безпеки даних."
subtitle: "Основні функції GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction надає розробникам C# прості у використанні інструменти для редагування вмісту у файлах PDF. Маскуйте текст, зображення та метадані у кількох форматах.

############################# Steps ############################
steps:
    enable: true
    title: "Видалення метаданих з документів Pdf"
    content: |
      Використовуйте GroupDocs.Redaction для швидкого захисту метаданих документів у ваших .NET додатках.
      
      1. Створіть екземпляр Redactor та завантажте свій файл Pdf.
      2. Налаштуйте редагування для видалення всіх прихованих метаданих.
      3. Застосуйте редагування для очищення документа.
      4. Збережіть оновлений файл.
   
    code:
      platform: "net"
      copy_title: "Копіювати"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Приклад редагувань"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "натисніть, щоб скопіювати"
        copy_done: "скопійовано"
      links:
        #  loop
        - title: "Більше прикладів"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "Документація"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // Стирайте метадані з файлів PDF

        // Завантажте файл за допомогою Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Налаштуйте видалення метаданих
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Застосуйте зміни та збережіть файл
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Редагування чутливих даних у документах"
  description: "GroupDocs.Redaction for .NET допомагає вам приховувати або видаляти конфіденційний контент у різних форматах файлів. Захищайте приватні дані, зберігаючи документи чистими та професійними."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Потужні функції редагування"
  features:
    # feature loop
    - title: "Знайти та замінити текст"
      content: "Шукайте чутливий текст у ваших документах і замінюйте або видаляйте його для захисту конфіденційності."

    # feature loop
    - title: "Приховати зображення"
      content: "Додавайте накладки на зображення або певні області для приховування чутливих візуальних даних."

    # feature loop
    - title: "Очищення метаданих"
      content: "Видаляйте або редагуйте приховані метадані, щоб уникнути небажаних витоків даних."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Видалення прихованих записів метаданих"
      content: |
        Цей приклад показує, як змінити метадані у файлі PDF.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Завантажте файл PDF у редагувач
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Налаштуйте редагування для поля Автора
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Налаштуйте редагування для поля Заголовок
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Запустіть редагування документа
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Збережіть очищений файл
              var saveOptions = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(saveOptions);
          }
          ```
        platform: "net"
        copy_title: "Копіювати"
        install:
          command: "dotnet add package GroupDocs.Redaction"
          copy_tip: "натисніть, щоб скопіювати"
          copy_done: "скопійовано"
        top_links:
          #  loop
          - title: "Завантажити результат"
            icon: "download"
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
        links:
          #  loop
          - title: "Більше прикладів"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "Документація"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "Готові почати?"
  description: "Спробуйте можливості GroupDocs.Redaction безкоштовно або запитайте ліцензію"
  items:
    #  loop
    - title: "Завантаження Nuget"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "Ліцензування"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Захистіть файли PDF за допомогою редагування метаданих .NET"
    exclude: "PDF"
    description: "Використовуйте .NET для видалення прихованих даних з файлів PDF. Простий та ефективний спосіб захистити чутливу інформацію у ваших документах."
    items: 
        # format loop 1
        - name: "Редагувати PDF"
          format: "PDF"
          link: "/redaction/net/remove-sensitive-metadata//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редагувати Word"
          format: "WORD"
          link: "/redaction/net/remove-sensitive-metadata//word/"
          description: "Документи MS Word та Open Office"
          
        # format loop 3
        - name: "Редагувати Excel"
          format: "EXCEL"
          link: "/redaction/net/remove-sensitive-metadata//excel/"
          description: "Таблиці MS Excel та Open Office"

        # format loop 4
        - name: "Редагувати PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/remove-sensitive-metadata//powerpoint/"
          description: "Презентації MS PowerPoint та Open Office"

        # format loop 5
        - name: "Редагувати Зображення"
          format: "IMAGE"
          link: "/redaction/net/remove-sensitive-metadata//image/"
          description: "Популярні формати зображень"

        # format loop 6
        - name: "Редагувати Фото"
          format: "PHOTO"
          link: "/redaction/net/remove-sensitive-metadata//photo/"
          description: "Формати фото"

        # format loop 7
        - name: "Редагувати DOCX"
          format: "DOCX"
          link: "/redaction/net/remove-sensitive-metadata//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 8
        - name: "Редагувати XLSX"
          format: "XLSX"
          link: "/redaction/net/remove-sensitive-metadata//xlsx/"
          description: "Електронна таблиця Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Редагувати PPTX"
          format: "PPTX"
          link: "/redaction/net/remove-sensitive-metadata//pptx/"
          description: "Презентація PowerPoint Open XML"

        # format loop 10
        - name: "Редагувати JPEG"
          format: "JPEG"
          link: "/redaction/net/remove-sensitive-metadata//jpeg/"
          description: "Зображення JPEG"


---