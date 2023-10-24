
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "uk/redaction/net/metadata/author/potm"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Редагування чутливих метаданих з POTM документів у C#"
head_description: "Застосовуйте редагування метаданих, застосовуючи фільтри для документів різних форматів"

############################# Header ############################
title: "Відредагувати ім'я автора з POTM метаданих у C#"
description: "GroupDocs.Redaction s надає гнучкий API, який дозволяє шукати та замінювати/видаляти будь-яку властивість метаданих за допомогою фільтрів."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Що таке Редагування метаданих?"
    content: |
        Під редакцією розуміється видалення небажаної або конфіденційної інформації з електронних документів. Усі формати файлів, включаючи PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX та інші, мають певні властивості метаданих. Ці властивості включають ім'я автора, категорію, назву компанії, коментарі, час створення, останнє оновлення та багато іншого. Іноді вам потрібно повністю видалити небажані поля метаданих або ви можете оновити їх значення. Також є деякі приховані дані, пов'язані з файлами, які можна переглянути за допомогою різних інструментів і методів. Є багато випадків, коли ви не хочете, щоб ці дані були доступні комусь. За допомогою API GroupDocs.Redaction ви можете застосувати редагування метаданих до будь-якої з цих властивостей метаданих. Ви можете змінити або видалити їх, відфільтрувавши потрібні метадані. У цьому посібнику ми пояснимо, як ви можете відредагувати ім'я автора з метаданих POTM у C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Редагувати POTM Метадані в C#"
      content_left: |
        Наступний код дозволяє шукати та редагувати конфіденційні дані з документа POTM. Ви можете встановити область редагування, встановивши фільтр, наприклад, MetadataFilter.Author. - це залишить збіги регулярних виразів скасованими у всіх елементах метаданих, крім властивості «Author»:
        

      title_right: "Як редагувати метадані POTM"
      content_right: |
        * Створіть екземпляр класу [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) та завантажте файл POTM
        * Створіть екземпляр класу [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction), щоб знайти та замінити конфіденційні дані з метаданих документа
        * Встановіть область редагування, встановивши фільтр, наприклад, Використовуйте MetadataFilter.Author у коді нижче
        * Викличте метод [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) з об'єктом [MetadataRechRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "9718д 29035590к729114д50е69аа 49б0"
      gistfile: "RedactAuthorMetadata.cs"

    - title_left: "Видалити метадані POTM в C#"
      content_left: |
        Ви можете замінити всі або певні метадані в документі порожніми (порожніми або мінімальними) значеннями за допомогою класу EraseMetaDataRedAction. Наступний код показує, як ви можете фільтрувати, а потім вилучати властивість метаданих з документа POTM. Приклад нижче видаляє всі властивості документа:
        
        
      title_right: "Стерти POTM Метадані"
      content_right: |
        * Створіть екземпляр класу [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) та завантажте файл POTM
        * Створіть екземпляр [EraseMetadataredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction), щоб видалити метадані документа
        * Встановіть область редагування, встановивши фільтр, наприклад Замініть MetadataFilter.All на MetadataFilter.Author у коді нижче 
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