---
############################# Static ############################
layout: "autogen"
draft: false
path: "uk/redaction/net/text/ppsm"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Видалення конфіденційної інформації з PPSM документів через .NET Core"
head_description: "Застосуйте редагування тексту за допомогою точної фрази або регулярного виразу для документів різних форматів"

############################# Header ############################
title: "Редагувати PPSM файли за допомогою C# в .NET основних програмах"
description: "Пошук і заміна тексту в документах Office і OpenOffice, електронних таблицях і презентаціях, а також PPSM на Windows, Linux та macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Редакція документа для API .NET"
    content: |
        Єдиний незалежний від формату інтерфейс для редагування конфіденційної та секретної інформації з документів і зображень PDF, Word, Excel, PowerPoint, включаючи можливість змінювати метадані та видаляти коментарі. За допомогою інструмента GroupDocs.Redaction for .NET можна відредагувати текст і зберегти відредагований документ у PDF, перетворивши всі сторінки на растрові зображення або зберегти документ у вихідному форматі для подальшого редагування.

############################# Steps ############################
steps:
    enable: true
    title_left: "Відредагувати точний текст із PPSM через C#"
    content_left: |
        [GroupDocs.Redaction](uk//redaction/net/) дозволяє розробникам .NET легко додати функцію редагування файлів PPSM за кілька простих кроків.

        *   Створіть екземпляр класу [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) і завантажте файл PPSM
        *   Створіть екземпляр класу [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/exactphraseredaction), щоб знайти та замінити текст
        *   Виклик методу [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) з об’єктом ExactPhraseRedaction
        
    title_right: "Початок роботи з Redaction API"
    content_right: |
        Встановіть із командного рядка як ```nuget install GroupDocs.Redaction``` або через консоль диспетчера пакетів Visual Studio за допомогою ```Install-Package GroupDocs.Redaction```. 
        Крім того, отримайте офлайн-інсталятор MSI або DLL у файлі ZIP із [завантажень](https://downloads.groupdocs.com/redaction/net) і посилайтеся на нього у своєму проекті вручну.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.ppsm"))
        {
        	redactor.Apply(new ExactPhraseRedaction("John Doe", new ReplacementOptions("[personal]")));
        	redactor.Save();
        }
        ```

############################# Demos ############################
demos:
    enable: true
############################# About Formats ############################
about_formats:
    enable: true
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---