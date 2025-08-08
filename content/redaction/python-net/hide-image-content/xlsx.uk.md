
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: uk
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Приховування частин зображення у файлах XLSX за допомогою накладок у Python"
head_description: "Захистіть чутливі області зображення у файлах XLSX, застосовуючи накладки з GroupDocs.Redaction for Python via .NET. Залиште структуру вашого документа незайманою, адже це важливо для захисту приватних візуалізацій."

############################# Header ############################
title: "Приховайте чутливі зображення в документах XLSX за допомогою Python" 
description: "Забезпечте конфіденційність зображень у файлах XLSX за допомогою Python. Наші інструменти гарантують швидку та ефективну редагування зображень."
subtitle: "Основні функції GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Що таке GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Дізнатися більше"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET пропонує розробникам Python інструменти для приховування або видалення чутливих даних з файлів XLSX. Редагуйте текст, зображення та метадані у різних форматах.

############################# Steps ############################
steps:
    enable: true
    title: "Захист чутливих даних в файлах Xlsx"
    content: |
      GroupDocs.Redaction for Python via .NET спрощує захист документів для ваших додатків Python via .NET.
      
      1. Ініціалізуйте Redactor та завантажте документ Xlsx.
      2. Налаштуйте параметри редагування відповідно до вашого завдання.
      3. Визначте, яку частину зображення потрібно закрити, і виберіть колір.
      4. Застосуйте редагування і збережіть фінальний файл.
   
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

        # Приховати конфіденційні секції зображень у XLSX

        # Вибрати розмір і колір накладки
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Позначити область редагування
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Завантажити документ за допомогою Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Застосувати зміни і зберегти файл
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Редагувати контент у документах"
  description: "З GroupDocs.Redaction for Python via .NET ви можете приховати або видалити чутливі дані у багатьох форматах документів. Дотримуйтесь безпеки документів і надавайте професійний вигляд."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Ефективні інструменти для редагування"
  features:
    # feature loop
    - title: "Пошук та заміна тексту"
      content: "Легко знаходьте приватний текст і замінюйте або приховуйте його."

    # feature loop
    - title: "Закрити зображення з накладками"
      content: "Сховати повні зображення або конкретні секції для захисту чутливих візуалізацій."

    # feature loop
    - title: "Видалити приховані метадані"
      content: "Очистіть метаданні файлів, щоб уникнути поділу приватною інформацією."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Замаскувати вміст зображення за допомогою накладок"
      content: |
        Цей посібник демонструє, як приховати чутливі області зображення у документах за допомогою накладок.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Визначте розмір накладки, колір та положення
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Виберіть певну частину зображення
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Відкрийте файл для редагування
          with gr.Redactor("source.xslx") as redactor:

              # Застосуйте накладку для приховування
              result = redactor.apply(redaction)

              # Збережіть модифікований документ
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Приховати вміст у файлах XLSX з Python"
    exclude: "XLSX"
    description: "Використовуйте Python для редагування або видалення чутливих даних у файлах XLSX. Ідеально для бізнесу та приватних осіб, які прагнуть захистити свої документи."
    items: 
        # format loop 1
        - name: "Редагувати PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "Формат Adobe Portable Document"

        # format loop 2
        - name: "Редагувати Word"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "Документи MS Word та Open Office"
          
        # format loop 3
        - name: "Редагувати Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "Таблиці MS Excel та Open Office"

        # format loop 4
        - name: "Редагувати PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "Презентації MS PowerPoint та Open Office"

        # format loop 5
        - name: "Редагувати Зображення"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "Популярні формати зображень"

        # format loop 6
        - name: "Редагувати Фото"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "Формати фото"

        # format loop 7
        - name: "Редагувати DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "Документ Microsoft Word Open XML"
          
        # format loop 8
        - name: "Редагувати XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "Електронна таблиця Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Редагувати PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "Презентація PowerPoint Open XML"

        # format loop 10
        - name: "Редагувати JPEG"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "Зображення JPEG"


---