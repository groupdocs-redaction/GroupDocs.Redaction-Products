
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "uk/redaction/java/metadata/description/rtf"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Редагувати метадані | Java"
ad_description: "Відредагувати метадані опису з файлу RTF у Java"
############################# Head ############################
head_title: "Відредагувати метадані опису з файлу RTF у Java"
head_description: "GroupDocs.Redaction s надає гнучкий API, який дозволяє шукати та замінювати/видаляти будь-яку властивість метаданих за допомогою фільтрів."

############################# Header ############################
title: "Відредагувати метадані опису з файлу RTF у Java"
description: "GroupDocs.Redaction s надає гнучкий API, який дозволяє шукати та замінювати/видаляти будь-яку властивість метаданих за допомогою фільтрів."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Про GroupDocs.Redaction для Java"
    content: |
        Під редакцією розуміється видалення небажаної або конфіденційної інформації з електронних документів. Усі формати файлів, включаючи PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX та інші, мають певні властивості метаданих. Ці властивості включають ім'я автора, категорію, назву компанії, коментарі, час створення, останнє оновлення та багато іншого. Іноді вам потрібно повністю видалити небажані поля метаданих або ви можете оновити їх значення. Також є деякі приховані дані, пов'язані з файлами, які можна переглянути за допомогою різних інструментів і методів. Є багато випадків, коли ви не хочете, щоб ці дані були доступні комусь. За допомогою API GroupDocs.Redaction ви можете застосувати редагування метаданих до будь-якої з цих властивостей метаданих. Ви можете змінити або видалити їх, відфільтрувавши потрібні метадані. У цьому посібнику ми пояснимо, як ви можете відредагувати опис з метаданих RTF у Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Оновлення поля метаданих опису"
      content_left: |
        Наступний код дозволяє шукати та редагувати конфіденційні дані з документа RTF. Ви можете встановити область редагування, встановивши фільтр, наприклад, MetadataFilter.Description. Він залишить збіги регулярних виразів скасованими у всіх елементах метаданих, крім властивості «Description»: 

      title_right: "Як редагувати в Java"
      content_right: |
        * Створіть екземпляр класу [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) та завантажте файл RTF
        * Створіть екземпляр класу [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction), щоб знайти та замінити конфіденційні дані з метаданих документа
        * Встановіть область редагування, встановивши фільтр, наприклад, Використовуйте MetadataFilters.Description у коді нижче
        * Виклик методу збереження за допомогою об'єкта [MetadataRechredaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "9 фафа1афф732аа746е8д34ка813621б2"
      gistfile: "RedactDescriptionMetadata.java"
      
    - title_left: "Стерти поле метаданих у Java"
      content_left: |
        Ви можете замінити всі або певні метадані в документі порожніми (порожніми або мінімальними) значеннями за допомогою класу EraseMetaDataRedAction. Наступний код показує, як ви можете фільтрувати, а потім вилучати властивість метаданих з документа RTF. Приклад нижче видаляє всі властивості документа: 
        
      title_right: "Видалити поле метаданих RTF"
      content_right: |
        * Створіть екземпляр класу [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) та завантажте файл RTF
        * Створіть екземпляр класу [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) для видалення метаданих документа
        * Встановіть область редагування, встановивши фільтр, наприклад Замініть фільтр метаданих. Все на фільтр метаданих. Опис у коді нижче
        * Виклик методу збереження за допомогою об'єкта [MetadataRechredaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
      gisthash: "84586804е996134 фд12ф2061ф989фд5"
      gistfile: "CleanMetadata.java"

    - title_left: "Системні вимоги"
      content_left: |
        GroupDocs.Redaction for Java API підтримуються на всіх основних платформах і операційних системах. Щоб отримати повний посібник з системних вимог, відвідайте [системні вимоги](https://docs.groupdocs.com/redaction/java/system-requirements) Перш ніж виконувати код нижче, переконайтеся, що у вашій системі встановлені такі передумови:
        * Операційні системи: Майкрософт Windows, Linux, Mac ОС
        * Середовище розробки: NetBeans, Intellij IDEA, Eclipse тощо
        * Java Середовище виконання: J2SE 6.0 і вище
        * Отримайте останню версію GroupDocs.Redaction for Java з [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)
        
      title_right: "Навіщо використовувати GroupDocs.Redaction?"
      content_right: |
        * Дозволити користувачам додавати власні формати документів та типи редагування
        * Простий спосіб редагувати різні типи метаданих: ім'я автора, версія, назва, тема, опис та багато іншого
        * Можливість встановити діапазон візуалізації документа як PDF
        * Для видалення конфіденційної інформації не потрібно додаткове програмне забезпечення
        * Вилучення інформації про документ - тип файлу, кількість сторінок тощо.
        

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