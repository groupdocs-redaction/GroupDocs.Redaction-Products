
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: uk
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Приховати текст у PPTX за допомогою Python та накладок"
head_description: "Прикрийте чутливий контент у ваших файлах PPTX кольоровими накладками за допомогою GroupDocs.Redaction for Python via .NET. Ваш макет залишається незмінним."

############################# Header ############################
title: "Захистіть текст у PPTX за допомогою накладок та Python" 
description: "Використовуйте GroupDocs.Redaction for Python via .NET та Python, щоб сховати приватну інформацію у презентаціях PPTX, закриваючи її кольоровими блоками."
subtitle: "Що ви можете зробити з GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Що пропонує GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       За допомогою GroupDocs.Redaction for Python via .NET розробники Python можуть закривати або видаляти контент у файлах PPTX — від тексту до зображень та прихованих даних.

############################# Steps ############################
steps:
    enable: true
    title: "Редагувати приватну інформацію у Pptx"
    content: |
      Використовуйте GroupDocs.Redaction for Python via .NET для захисту ваших презентацій у кілька простих кроків.
      
      1. Створіть Redactor та завантажте файл, який потрібно редагувати.
      2. Виберіть параметри редагування, які підходять вашим потребам.
      3. Встановіть текстовий шаблон і виберіть колір для накладки.
      4. Застосуйте редагування та збережіть зміни.
   
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

        # Використовуйте накладки для приховання тексту у PPTX

        # Визначте налаштування редагування
        # Виберіть текст та колір
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Почніть з завантаження вашого файлу з Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Редагуйте та збережіть файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Більше можливостей редагування"
  description: "GroupDocs.Redaction for Python via .NET надає вам інструменти для приховування або очищення даних у різних форматах файлів, не змінюючи макет."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Корисні функції для забезпечення конфіденційності"
  features:
    # feature loop
    - title: "Змінити або приховати текст"
      content: "Захистіть чутливу інформацію, редагуючи або приховуючи її."

    # feature loop
    - title: "Приховати зображення або частини"
      content: "Створіть накладки, щоб закрити повні зображення або вибрані області."

    # feature loop
    - title: "Видалити приховані деталі"
      content: "Стирайте метадані, які можуть містити приватну або системну інформацію."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Використовуйте regex для пошуку тексту"
      content: |
        Дивіться, як регулярні вирази допомагають вам знаходити та приховувати чутливий контент.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Встановіть текстовий шаблон та колір накладки
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Відкрийте свій файл для редагування
          with gr.Redactor("source.pptx") as redactor:

              # Застосуйте редагування
              result = redactor.apply(redaction)

              # Збережіть відредагований файл
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
    title: "Захистіть слайди PPTX з використанням Python"
    exclude: "PPTX"
    description: "Використовуйте Python для приховування або видалення приватного контенту у файлах PPTX, зберігаючи при цьому слайди чистими."
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