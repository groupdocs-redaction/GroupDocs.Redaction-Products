---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "fr/redaction/net/text/ppt/"
otherformats: PDF DOC DOT DOCX DOCM DOTX DOTM RTF XLSX XLSM XLTX XLTM XLS XLT CSV PPT  PPS POT PPSX PPTM PPSM POTM 

############################# Head ############################
head_title: "Masquer les informations sensibles des documents via .NET Core"
head_description: "Appliquer la rédaction de texte à l'aide d'une expression exacte ou d'une expression régulière pour des documents de différents formats"

############################# Header ############################
title: "Masquer les fichiers PPT via C# dans les applications .NET Core"
description: "Rechercher et remplacer du texte dans des documents, feuilles de calcul et présentations Office et OpenOffice, ainsi que ppt_ UPPER sous Windows, Linux et macOS"

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Rédaction de documents pour l'API .NET"
    content: |
        Une interface unique indépendante du format pour la rédaction des informations sensibles et classifiées des documents et images PDF, Word, Excel, PowerPoint, y compris la possibilité de modifier les métadonnées et de supprimer les commentaires. Avec l'outil GroupDocs.Redaction, vous pouvez rédiger du texte et enregistrer le document rédigé au format PDF, en transformant toutes les pages en images raster ou en conservant le document dans son format d'origine pour une édition ultérieure.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Masquer le texte exact de PPT via C#"
      content_left: |
        [GroupDocs.Redaction](/redaction/net/) permet aux développeurs .NET d'ajouter facilement la fonctionnalité de masquage de fichiers PPT en quelques étapes simples.

        * Créez une instance de la classe [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) et chargez le fichier PPT
        * Créez une instance de la classe [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/exactphraseredaction) pour rechercher et remplacer le texte
        * Appelez la méthode [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) avec l'objet ExactPhraseRedaction

      title_right: "Premiers pas avec l'API de rédaction"
      content_right: |
        Installez à partir de la ligne de commande en tant que ```nuget install GroupDocs.Redaction``` ou via la console du gestionnaire de packages de Visual Studio avec ```Install-Package GroupDocs.Redaction```.
        Vous pouvez également obtenir le programme d'installation MSI hors ligne ou les DLL dans un fichier ZIP à partir de [downloads](https://downloads.groupdocs.com/redaction/net) et le référencer manuellement dans votre projet.  
        
      code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.csv"))
        {
        	redactor.Apply(new ExactPhraseRedaction("John Doe", new ReplacementOptions("[personal]")));
        	redactor.Save();
        }
        ```

    - title_left: "Configuration requise"
      content_left: |
        Les API GroupDocs.Redaction pour .NET sont prises en charge sur toutes les principales plates-formes et systèmes d'exploitation. Pour un guide complet de la configuration système requise, veuillez visiter [système requis](https://docs.groupdocs.com/redaction/net/system-requirements/) Avant d'exécuter le code ci-dessous, assurez-vous que les prérequis suivants sont installés sur votre système:
        * Systèmes d'exploitation : Microsoft Windows, Linux, MacOS
        * Environnement de développement : Visual Studio, Xamarin, MonoDevelop etc.
        * Frameworks : .NET Framework, .NET Standard, .NET Core, Mono
        * Obtenez la dernière version des API GroupDocs.Assembly .NET à partir de [NuGet](https://www.nuget.org/packages/GroupDocs.Redaction/)
        
      title_right: "Pourquoi utiliser GroupDocs.Redaction"
      content_right: |
       * Autoriser les utilisateurs à ajouter des formats de document personnalisés et des types de caviardage
       * Aucun logiciel supplémentaire n'est requis pour supprimer les informations sensibles
       * Possibilité de définir un document de rendu de plage de pages au format PDF
       * Un moyen simple de rédiger différents types de métadonnées : nom de l'auteur, version, titre, sujet, description et bien d'autres
       * Extraction d'informations sur les documents - type de fichier, nombre de pages, etc.
       * Prise en charge complète de plusieurs formats de données

demos:
    enable: true
        

more_formats:
    enable: true


back_to_top:
    enable: true
---