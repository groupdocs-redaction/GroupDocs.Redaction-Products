
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: uk
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Приховати чутливий текст у POWERPOINT за допомогою накладок Python"
head_description: "GroupDocs.Redaction for Python via .NET допомагає вам закривати приватний контент у файлах POWERPOINT кольоровими накладками. Зберігайте всі у правильному положенні, приховуючи важливе."

############################# Header ############################
title: "Приховати текст у POWERPOINT презентаціях за допомогою Python" 
description: "Використовуйте Python та GroupDocs.Redaction for Python via .NET для додавання накладок і приховування чутливого тексту у ваших слайдах POWERPOINT."
subtitle: "Що ви можете зробити з GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Дізнайтеся більше про GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET допомагає розробникам Python очищати POWERPOINT презентації, закриваючи або видаляючи текст, зображення та приховану інформацію.

############################# Steps ############################
steps:
    enable: true
    title: "Редагувати інформацію у файлах Powerpoint"
    content: |
      З GroupDocs.Redaction for Python via .NET ви можете підготувати файли Powerpoint для обміну, використовуючи прості кроки редагування.
      
      1. Створіть новий Redactor та завантажте файл.
      2. Виберіть, що потрібно приховати та як це застосувати.
      3. Додайте шаблон пошуку та встановіть колір накладки.
      4. Застосуйте редагування та збережіть ваш оновлений документ.
   
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

        # Прикрийте чутливий текст у POWERPOINT за допомогою накладок

        # Налаштуйте, як працюватиме редагування
        # Виберіть текст і колір для його приховання
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Використовуйте Redactor для завантаження вашої презентації
        with gr.Redactor("input.pptx") as redactor:

            # Редагуйте та збережіть ваш файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Легкі способи приховати інформацію"
  description: "GroupDocs.Redaction for Python via .NET робить простим приховання або видалення чутливих частин документів — ідеально для юридичних, особистих або бізнес-використання."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Корисні інструменти для приватності"
  features:
    # feature loop
    - title: "Знайти та замінити текст"
      content: "Шукайте слова або цифри та приховуйте або змінюйте їх."

    # feature loop
    - title: "Приховати частини зображень"
      content: "Намалюйте накладки, щоб приховати повні зображення або вибрані місця."

    # feature loop
    - title: "Видалити приховану інформацію"
      content: "Видаліть метадані, такі як імена або часові мітки, які користувачі не бачать."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редагувати за допомогою пошуку regex"
      content: |
        Дізнайтесь, як регулярні вирази допомагають вам знайти та приховати текст у ваших слайдах.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Визначте шаблон та колір накладки
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Відкрийте ваш файл POWERPOINT
          with gr.Redactor("source.pptx") as redactor:

              # Запустіть редагування
              result = redactor.apply(redaction)

              # Збережіть фінальну версію
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
    title: "Приховати текст у POWERPOINT з Python"
    exclude: "POWERPOINT"
    description: "Використовуйте Python, щоб додати накладки або видалити контент з ваших слайдів POWERPOINT, щоб зберегти приватні дані в безпеці."
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