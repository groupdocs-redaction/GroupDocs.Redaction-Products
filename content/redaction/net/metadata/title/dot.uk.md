
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "uk/redaction/net/metadata/title/dot"
otherformats: BMP DOC DOCM DOCX DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Редагування метаданих з документів у C#"
head_description: "Редагування чутливих метаданих у C# шляхом застосування фільтрів для документів різних форматів"

############################# Header ############################
title: "Відредагувати метадані заголовка з DOT документа в C#"
description: "GroupDocs.Redaction s API дозволяє шукати, а потім оновлювати або видаляти будь-які конфіденційні дані з метаданих документа."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Що таке Редагування метаданих?"
    content: |
        Переважно людей турбує текстове редагування документа. Але редагування метаданих не менш важливо. Метадані — це приховані дані документа, які можуть містити конфіденційну інформацію, якою ви, можливо, не захочете ділитися з іншими. Редагування метаданих відноситься до видалення небажаної або конфіденційної інформації з електронних документів. Метадані документа включають ім'я автора, категорію, назву компанії, коментарі, час створення, останнє оновлення та багато іншого. Іноді вам потрібно повністю видалити небажані поля метаданих або ви можете оновити їх значення. За допомогою API GroupDocs.Redaction ви можете застосувати редагування метаданих до будь-якої з цих властивостей метаданих. Ви можете змінити або видалити їх, відфільтрувавши потрібні метадані. У цьому посібнику ми пояснимо, як ви можете редагувати метадані заголовка з документа DOT у C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Відредагувати заголовок документа DOT"
      content_left: |
        Наступний код дозволяє шукати та редагувати конфіденційні дані з документа DOT. Ви можете встановити область редагування, встановивши фільтр, наприклад, MetadataFilter.title. Він залишить збіги регулярних виразів скасованими у всіх елементах метаданих, крім властивості «Title»:
        

      title_right: "Як редагувати метадані DOT"
      content_right: |
        * Створіть екземпляр класу [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) та завантажте файл DOT
        * Створіть екземпляр класу [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction), щоб знайти та замінити конфіденційні дані з метаданих документа
        * Встановіть область редагування, встановивши фільтр, наприклад, Використовуйте MetadataFilter.title у коді нижче
        * Викличте метод [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) з об'єктом [MetadataRechRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "78фка6б6фад 4е3еа 79038д7абб092ф"
      gistfile: "RedactTitleMetadata.cs"

    - title_left: "Видалити метадані DOT в C#"
      content_left: |
        Ви можете замінити всі або певні метадані в документі порожніми (порожніми або мінімальними) значеннями за допомогою класу EraseMetaDataRedAction. Наступний код показує, як ви можете фільтрувати, а потім вилучати властивість метаданих з документа DOT. Приклад нижче видаляє всі властивості документа:
        
        
      title_right: "Стерти DOT Метадані"
      content_right: |
        * Створіть екземпляр класу [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) та завантажте файл DOT
        * Створіть екземпляр [EraseMetadataredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction), щоб видалити метадані документа
        * Встановіть область редагування, встановивши фільтр, наприклад Замініть MetadataFilter.all на MetadataFilter.Title в коді нижче 
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