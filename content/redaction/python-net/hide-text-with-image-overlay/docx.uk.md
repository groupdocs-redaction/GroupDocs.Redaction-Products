
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
head_title: "Приховати текст у DOCX за допомогою накладок Python"
head_description: "Захистіть чутливий текст у файлах DOCX за допомогою GroupDocs.Redaction for Python via .NET. Додайте прості квадратні накладки, не змінюючи структуру."

############################# Header ############################
title: "Приховати контент у DOCX за допомогою Python" 
description: "Використовуйте Python, щоб прикрити приватний контент у файлах DOCX. Ідеально підходить для юридичних, особистих чи бізнес-документів."
subtitle: "Ключові функції GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Що таке GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET допомагає розробникам Python приховувати або видаляти приватний контент у файлах DOCX. Ви можете закрити текст, зображення та навіть приховані метадані.

############################# Steps ############################
steps:
    enable: true
    title: "Зберігайте приватну інформацію прихованою у Docx"
    content: |
      З GroupDocs.Redaction for Python via .NET розробники Python via .NET можуть приховувати контент всього за кілька рядків.
      
      1. Створіть Redactor та відкрийте файл.
      2. Виберіть параметри редагування.
      3. Введіть текст для приховування та виберіть колір.
      4. Застосуйте та збережіть редаговану версію.
   
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
        import groupdocs.pydrawing as grd

        # Приховати контент у DOCX за допомогою накладок

        # Налаштуйте свої параметри редагування
        # Визначте текст і колір накладки
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Налаштуйте Redactor та завантажте файл
        with gr.Redactor("input.docx") as redactor:

            # Редагуйте та збережіть файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Додаткові інструменти для редагування"
  description: "GroupDocs.Redaction for Python via .NET підтримує різні типи файлів, щоб ви могли захищати будь-який контент."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Вбудовані функції редагування"
  features:
    # feature loop
    - title: "Знайти та редагувати текст"
      content: "Шукайте ключові слова та швидко приховуйте або замінюйте їх."

    # feature loop
    - title: "Приховати частини зображень"
      content: "Закрийте чутливі області на сканованих сторінках або фотографіях."

    # feature loop
    - title: "Очищення метаданих"
      content: "Видаліть приховану інформацію, яка може розкрити деталі."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Знайти текст за допомогою regex та редагувати"
      content: |
        Дізнайтеся, як використовувати регулярні вирази для пошуку та приховування тексту.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Встановіть шаблон і колір
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Відкрийте файл для редагування
          with gr.Redactor("source.docx") as redactor:

              # Запустіть процес редагування
              result = redactor.apply(redaction)

              # Збережіть ваш очищений документ
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Захистіть файли DOCX за допомогою Python"
    exclude: "DOCX"
    description: "Прикрийте або видаліть чутливий контент у документах DOCX з використанням простих інструментів від Python."
    items: 
        # format loop 1
        - name: "Редагувати PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-text-with-image-overlay//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редагувати Word"
          format: "WORD"
          link: "/redaction/python-net/hide-text-with-image-overlay//word/"
          description: "Документи MS Word та Open Office"
          
        # format loop 3
        - name: "Редагувати Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-text-with-image-overlay//excel/"
          description: "Таблиці MS Excel та Open Office"

        # format loop 4
        - name: "Редагувати PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-text-with-image-overlay//powerpoint/"
          description: "Презентації MS PowerPoint та Open Office"

        # format loop 5
        - name: "Редагувати DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-text-with-image-overlay//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 6
        - name: "Редагувати XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-text-with-image-overlay//xlsx/"
          description: "Електронна таблиця Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Редагувати PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-text-with-image-overlay//pptx/"
          description: "Презентація PowerPoint Open XML"


---