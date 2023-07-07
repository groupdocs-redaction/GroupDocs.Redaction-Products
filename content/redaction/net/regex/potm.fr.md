---
############################# Static ############################
layout: "autogen"
draft: false
path: "fr/redaction/net/regex/potm"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Masquer POTM documents à l'aide d'expressions régulières via .NET Core"
head_description: "Caviardez les informations sensibles à l'aide d'expressions régulières à partir de documents de différents formats"

############################# Header ############################
title: "Nettoyer les fichiers POTM via C# et les expressions régulières dans les applications principales .NET"
description: "Recherchez et supprimez les informations sensibles des documents, feuilles de calcul et présentations Office et OpenOffice, ainsi que de POTM sur Windows, Linux et macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Caviardage du texte du document pour l'API .NET"
    content: |
        Une interface unique indépendante du format pour le nettoyage des informations sensibles et classifiées des documents et images PDF, Word, Excel, PowerPoint, y compris la possibilité de modifier les métadonnées et de supprimer les commentaires. Avec l'outil GroupDocs.Redaction for .NET, vous pouvez expurger les informations classifiées et enregistrer le document expurgé dans PDF, en transformant toutes les pages en images raster ou en conservant le document dans son format d'origine pour une édition ultérieure.

############################# Steps ############################
steps:
    enable: true
    title_left: "Masquer le texte de POTM à l'aide d'expressions régulières via C#"
    content_left: |
        [GroupDocs.Redaction](fr//redaction/net/) permet aux développeurs .NET d'utiliser toute la force des expressions régulières pour expurger le fichier POTM en quelques étapes simples.

        *   Créez une instance de la classe [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) et chargez le fichier POTM
        *   Créez une instance de la classe [RegexRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/regexredaction) pour rechercher et remplacer le texte
        *   Appelez la méthode [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) avec l'objet de RegexRedaction
        
    title_right: "Premiers pas avec l'API de rédaction"
    content_right: |
        Installez à partir de la ligne de commande en tant que ```nuget install GroupDocs.Redaction``` ou via la console du gestionnaire de packages de Visual Studio avec ```Install-Package GroupDocs.Redaction```. 
        Vous pouvez également obtenir le programme d'installation MSI hors ligne ou les DLL dans un fichier ZIP à partir de [downloads](https://downloads.groupdocs.com/redaction/net) et le référencer manuellement dans votre projet.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.potm"))
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