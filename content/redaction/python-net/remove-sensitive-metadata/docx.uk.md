
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: uk
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Очистка метаданих у DOCX за допомогою Python"
head_description: "Використовуйте GroupDocs.Redaction for Python via .NET, щоб стерти приховані деталі у файлах DOCX. Захистіть свої дані, видаляючи чутливі записи метаданих."

############################# Header ############################
title: "Стерти приховані метадані з файлів DOCX за допомогою Python" 
description: "За допомогою Python ви можете видаляти приховані метадані з файлів DOCX за допомогою GroupDocs.Redaction for Python via .NET. Зберігайте файли в чистоті та приватності."
subtitle: "Основні функції GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Що таке GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction надає розробникам Python можливість видаляти приховані дані у файлах DOCX. Очистіть текст, візуальний вміст та метадані з документів без зайвих зусиль.

############################# Steps ############################
steps:
    enable: true
    title: "Видалення метаданих з файлів Docx"
    content: |
      GroupDocs.Redaction надає вашим додаткам Python via .NET інструменти для швидкого видалення метаданих.
      
      1. Запустіть Redactor та завантажте ваш документ Docx.
      2. Налаштуйте поля метаданих для видалення.
      3. Застосуйте редагування, щоб очистити прихований вміст.
      4. Збережіть фінальну версію файлу.
   
    code:
      platform: "python-net"
      copy_title: "Копіювати"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Приклад редагувань"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "натисніть, щоб скопіювати"
        copy_done: "скопійовано"
      links:
        #  loop
        - title: "Більше прикладів"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "Документація"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # Очистіть метадані у файлах DOCX

        # Виберіть записи метаданих для видалення
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Використовуйте Redactor для відкриття документа
        with gr.Redactor("input.docx") as redactor:

            # Застосуйте редагування та збережіть файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Забезпечте захист кожної частини документа"
  description: "З GroupDocs.Redaction for Python via .NET ви можете очищати текст, зображення та метадані з кількох форматів файлів. Ідеально для конфіденційності та безпеки."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Інструменти редагування документів в дії"
  features:
    # feature loop
    - title: "Очистка тексту"
      content: "Шукайте та видаляйте імена, терміни чи будь-які особисті слова."

    # feature loop
    - title: "Закриття зображень"
      content: "Сховати частини зображень, накладаючи кольорове покриття."

    # feature loop
    - title: "Видалення метаданих"
      content: "Позбавтеся від прихованої інформації про документ, такої як автор або деталі програмного забезпечення."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Приклад: Видалення прихованих метаданих"
      content: |
        Ось як ви можете видалити поля автора та заголовка з документа DOCX за допомогою редагування.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Виберіть видалення поля автора
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Виберіть видалення поля заголовка
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Відкрийте файл DOCX
          with gr.Redactor("source.docx") as redactor:

              # Запустіть редагування метаданих
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Збережіть чистий файл
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
          ```
        platform: "python-net"
        copy_title: "Копіювати"
        install:
          command: "pip install groupdocs-redaction-net"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "Документація"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "Готові почати?"
  description: "Спробуйте можливості GroupDocs.Redaction безкоштовно або запитайте ліцензію"
  items:
    #  loop
    - title: "Завантаження PyPi"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "Ліцензування"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Видалення метаданих з DOCX за допомогою Python"
    exclude: "DOCX"
    description: "Видаліть приховані метадані у файлах DOCX за допомогою Python. Чудово для захисту ваших файлів перед обміном або архівацією."
    items: 
        # format loop 1
        - name: "Редагувати PDF"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редагувати Word"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "Документи MS Word та Open Office"
          
        # format loop 3
        - name: "Редагувати Excel"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "Таблиці MS Excel та Open Office"

        # format loop 4
        - name: "Редагувати PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "Презентації MS PowerPoint та Open Office"

        # format loop 5
        - name: "Редагувати Зображення"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "Популярні формати зображень"

        # format loop 6
        - name: "Редагувати Фото"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "Формати фото"

        # format loop 7
        - name: "Редагувати DOCX"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 8
        - name: "Редагувати XLSX"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "Електронна таблиця Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Редагувати PPTX"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "Презентація PowerPoint Open XML"

        # format loop 10
        - name: "Редагувати JPEG"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "Зображення JPEG"


---