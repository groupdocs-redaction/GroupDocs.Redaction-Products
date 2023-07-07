---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "uk/redaction/net/regex/xlsx"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLT XLTM XLTX  

############################# Head ############################
head_title: "Редагувати XLSX документи за допомогою регулярних виразів через .NET Core"
head_description: "Видаляйте конфіденційну інформацію за допомогою регулярного виразу з документів різних форматів"

############################# Header ############################
title: "Очистити XLSX файли через C# і регулярні вирази в .NET основних програмах"
description: "Знаходьте та видаляйте конфіденційну інформацію з документів Office і OpenOffice, електронних таблиць і презентацій, а також XLSX на Windows, Linux та macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Редагування тексту документа для API .NET"
    content: |
        Єдиний незалежний від формату інтерфейс для очищення конфіденційної та секретної інформації з документів і зображень PDF, Word, Excel, PowerPoint, включаючи можливість змінювати метадані та видаляти коментарі. За допомогою інструмента GroupDocs.Redaction for .NET ви можете відредагувати секретну інформацію та зберегти відредагований документ у PDF, перетворивши всі сторінки на растрові зображення або зберегти документ у вихідному форматі для подальшого редагування.

############################# Steps ############################
steps:
    enable: true
    title_left: "Відредагуйте текст із XLSX за допомогою регулярних виразів через C#"
    content_left: |
        [GroupDocs.Redaction](uk//redaction/net/) дозволяє розробникам .NET використовувати всі регулярні вирази для редагування файлу XLSX за кілька простих кроків.

        *   Створіть екземпляр класу [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) і завантажте файл XLSX
        *   Створіть екземпляр класу [RegexRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/regexredaction), щоб знайти та замінити текст
        *   Виклик методу [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) з об’єктом RegexRedaction
        
    title_right: "Початок роботи з Redaction API"
    content_right: |
        Встановіть із командного рядка як ```nuget install GroupDocs.Redaction``` або через консоль диспетчера пакетів Visual Studio за допомогою ```Install-Package GroupDocs.Redaction```. 
        Крім того, отримайте офлайн-інсталятор MSI або DLL у файлі ZIP із [завантажень](https://downloads.groupdocs.com/redaction/net) і посилайтеся на нього у своєму проекті вручну.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.xlsx"))
        {
        	redactor.Apply(new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", new ReplacementOptions(System.Drawing.Color.Blue)));
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