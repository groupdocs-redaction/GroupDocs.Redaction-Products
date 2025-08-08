
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: uk
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Приховати контент у EXCEL за допомогою накладок Python"
head_description: "З GroupDocs.Redaction for Python via .NET ви можете закрити текст у файлах EXCEL, використовуючи суцільні кольорові накладки. Простий спосіб захистити приватний контент."

############################# Header ############################
title: "Підготовка тексту до приховування у EXCEL за допомогою Python" 
description: "Пишіть код Python, щоб приховувати текст і забезпечувати інформацію у ваших файлах EXCEL. Зберігайте свої документи безпечними та чистими."
subtitle: "Що ви отримуєте з GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Чому варто використовувати GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET розроблено для розробників Python, які потребують приховування або видалення контенту у файлах EXCEL. Працюйте з текстом, зображеннями та метаданими без зусиль.

############################# Steps ############################
steps:
    enable: true
    title: "Приховати чутливі дані у Excel"
    content: |
      GroupDocs.Redaction for Python via .NET полегшує розробникам Python via .NET підготовку документів перед обміном.
      
      1. Створіть Redactor та відкрийте файл Excel.
      2. Виберіть параметри редагування, які відповідають вашій задачі.
      3. Введіть текст або фразу для закриття та виберіть колір.
      4. Застосуйте редагування та збережіть файл.
   
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

        # Використовуйте накладки для приховування тексту у EXCEL

        # Виберіть ваші налаштування редагування
        # Визначте, що приховувати, та колір, який використовувати
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Розпочніть із завантаження вашого файлу з Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Застосуйте зміни та збережіть файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Корисні інструменти для редагування даних"
  description: "GroupDocs.Redaction for Python via .NET дозволяє вам приховувати або видаляти дані в документах, зберігаючи при цьому макет і контент чіткими."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Створено для захисту ваших файлів"
  features:
    # feature loop
    - title: "Приховати або змінити текст"
      content: "Знайдіть та замініть будь-яку частину тексту, яка повинна бути прихована."

    # feature loop
    - title: "Закрити зображення та візуалізації"
      content: "Додайте накладки, щоб видалити чутливі частини зображень або графіків."

    # feature loop
    - title: "Очистити приховану метадані"
      content: "Видаліть фонову інформацію, таку як автори або штампи часу."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Редагувати за допомогою regex"
      content: |
        Дізнайтеся, як використовувати шаблони regex для пошуку та приховування контенту.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Введіть шаблон regex та кольорові налаштування
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Відкрийте файл, який потрібно очистити
          with gr.Redactor("source.xslx") as redactor:

              # Застосуйте редагування
              result = redactor.apply(redaction)

              # Збережіть відредаговану версію
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
    title: "Захистити EXCEL з Python редагуванням"
    exclude: "EXCEL"
    description: "Приховувати контент у EXCEL за допомогою квадратних накладок або знімати його повністю за допомогою функцій Python."
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