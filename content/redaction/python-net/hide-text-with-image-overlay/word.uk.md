
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: uk
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Приховати текст у WORD за допомогою накладок Python"
head_description: "З GroupDocs.Redaction for Python via .NET легко приховати приватний текст у документах WORD за допомогою кольорових блоків. Ваш макет залишається без змін."

############################# Header ############################
title: "Використовуйте накладки для приховування тексту у WORD з Python" 
description: "Захистіть ключову інформацію в документах WORD, розміщуючи накладки за допомогою Python та GroupDocs.Redaction for Python via .NET."
subtitle: "Що ви можете зробити з GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Знайомтеся з GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       З GroupDocs.Redaction for Python via .NET розробники Python можуть приховувати або видаляти контент у документах WORD — такі як імена, номери та багато іншого.

############################# Steps ############################
steps:
    enable: true
    title: "Редагувати приватний контент у Word"
    content: |
      GroupDocs.Redaction for Python via .NET спрощує розробникам Python via .NET швидке приховування чутливих даних.
      
      1. Створіть Redactor та завантажте свій файл Word.
      2. Налаштуйте параметри редагування.
      3. Виберіть текст для приховування та колір накладки.
      4. Запустіть редагування та збережіть файл.
   
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

        # Закрийте текст у WORD за допомогою накладок

        # Виберіть, що редагувати
        # Введіть текст і налаштуйте колір
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Завантажте файл за допомогою Redactor
        with gr.Redactor("input.docx") as redactor:

            # Редагуйте та збережіть
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Більше способів приховати інформацію"
  description: "Використовуйте GroupDocs.Redaction for Python via .NET, щоб очистити свої файли, приховуючи видимий та прихований контент, не змінюючи їх вигляд."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Функції, спрямовані на забезпечення конфіденційності"
  features:
    # feature loop
    - title: "Приховати або замінити текст"
      content: "Захистіть важливу інформацію, видаляючи або замінюючи слова."

    # feature loop
    - title: "Закрити зображення"
      content: "Приховуйте чутливі зображення за допомогою суцільних форм."

    # feature loop
    - title: "Видалити приховані дані"
      content: "Видаліть метадані, які можуть розкрити інформацію про систему або користувача."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Знайти та приховати текст за допомогою regex"
      content: |
        Цей приклад демонструє, як використовувати регулярні вирази для співпадіння та приховування контенту.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Встановіть шаблон та колір накладки
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Відкрийте файл для редагування
          with gr.Redactor("source.docx") as redactor:

              # Застосуйте редагування
              result = redactor.apply(redaction)

              # Збережіть вашу оновлену копію
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
    title: "Захистіть контент WORD з Python"
    exclude: "WORD"
    description: "Використовуйте Python, щоб приховати або видалити чутливу інформацію у файлах WORD без зміни структури чи макету."
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