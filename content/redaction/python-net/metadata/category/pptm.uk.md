
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "uk/redaction/net/metadata/category/pptm"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Редагування чутливих метаданих з PPTM документів у C#"
head_description: "Застосовуйте редагування метаданих, застосовуючи фільтри для документів різних форматів"

############################# Header ############################
title: "Редагувати назву категорії з PPTM Метаданих у C#"
description: "GroupDocs.Redaction s надає гнучкий API, який дозволяє шукати та замінювати/видаляти будь-яку властивість метаданих за допомогою фільтрів."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Що таке Редагування метаданих?"
    content: |
        Під редакцією розуміється видалення небажаної або конфіденційної інформації з електронних документів. Усі формати файлів, включаючи PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX та інші, мають певні властивості метаданих. Ці властивості включають ім'я автора, категорію, назву компанії, коментарі, час створення, останнє оновлення та багато іншого. Іноді вам потрібно повністю видалити небажані поля метаданих або ви можете оновити їх значення. Також є деякі приховані дані, пов'язані з файлами, які можна переглянути за допомогою різних інструментів і методів. Є багато випадків, коли ви не хочете, щоб ці дані були доступні комусь. За допомогою API GroupDocs.Redaction ви можете застосувати редагування метаданих до будь-якої з цих властивостей метаданих. Ви можете змінити або видалити їх, відфільтрувавши потрібні метадані. У цьому посібнику ми пояснимо, як ви можете відредагувати назву категорії з метаданих PPTM у C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Редагувати PPTM Метадані в C#"
      content_left: |
        Наступний код дозволяє шукати та редагувати конфіденційні дані з документа PPTM. Ви можете встановити область редагування, встановивши фільтр, наприклад, MetadataFilter.Category. - це залишить збіги регулярних виразів скасованими у всіх елементах метаданих, крім властивості «Категорія»:
        

      title_right: "Як редагувати метадані PPTM"
      content_right: |
        * Створіть екземпляр класу [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) та завантажте файл PPTM
        * Створіть екземпляр класу [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction), щоб знайти та замінити конфіденційні дані з метаданих документа
        * Встановіть область редагування, встановивши фільтр, наприклад, Використовуйте MetadataFilter.Category в коді нижче
        * Викличте метод [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) з об'єктом [MetadataRechRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "852б461к316559151кб 6075б4екде2д"
      gistfile: "RedactCategoryMetadata.cs"

    - title_left: "Видалити метадані PPTM в C#"
      content_left: |
        Ви можете замінити всі або певні метадані в документі порожніми (порожніми або мінімальними) значеннями за допомогою класу EraseMetaDataRedAction. Наступний код показує, як ви можете фільтрувати, а потім вилучати властивість метаданих з документа PPTM. Приклад нижче видаляє всі властивості документа:
        
        
      title_right: "Стерти PPTM Метадані"
      content_right: |
        * Створіть екземпляр класу [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) та завантажте файл PPTM
        * Створіть екземпляр [EraseMetadataredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction), щоб видалити метадані документа
        * Встановіть область редагування, встановивши фільтр, наприклад, Замініть фільтр метаданих. Все на MetadataFilter.Category в коді нижче 
        * Викличте метод [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) з об'єктом [MetadataRechRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        
      gisthash: "цеф91д8д8ф160ааф560218д1абд520е2"
      gistfile: "CleanMetadata.cs"

    - title_left: "Системні вимоги"
      content_left: |
        GroupDocs.Redaction for .NET підтримує будь-яку 32-розрядну або 64-розрядну операційну систему, де встановлена платформа .NET. Для цього не потрібно встановлювати будь-яке зовнішнє програмне забезпечення або сторонній інструмент. Щоб отримати повний посібник з системних вимог, відвідайте [системні вимоги](https://docs.groupdocs.com/redaction/net/system-requirements)
        
      title_right: "Інструкція по установці"
      content_right: |
        Встановити з командного рядка як ```nuget install GroupDocs.Redaction ```або через консоль диспетчера пакетів Visual Studio з ````Install-Package GroupDocs.Redaction ````. 
        Крім того, отримайте автономний інсталятор MSI або DLL у файлі ZIP з [downloads](https://downloads.groupdocs.com/redaction/net) та посилайтеся на нього у своєму проекті вручну.

############################# Demos ############################
demos:
    enable: true
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---