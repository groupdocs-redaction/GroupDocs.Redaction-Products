













---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "fr/redaction/java/text/potm"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Modifier le texte POTM avec une phrase exacte/expression régulière en Java"
head_description: "L'API Java GroupDocs.Redaction permet aux développeurs de modifier du texte à partir de PDF, DOC, DOCX, RTF, XLSX, CSV, PPT, PPTX et des images avec une phrase exacte ou une expression régulière en Java."

############################# Header ############################
title: "Comment modifier, masquer ou supprimer du texte des fichiers POTM à l'aide de Java"
description: "L'API Java GroupDocs.Redactions vous permet de modifier, de masquer ou de supprimer du texte sensible dans des documents texte, des feuilles de calcul, des présentations, des fichiers PDF et des images."

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que l'édition de texte?"
    content: |
        L'édition de texte est le processus de suppression du texte ou des informations sensibles ou indésirables des documents numériques tout en laissant intact le reste du document ou du paragraphe le contenant. L'édition aide les utilisateurs ainsi que les organisations à protéger leurs informations sensibles en les masquant ou en les supprimant définitivement. Avec l'API Java GroupDocs.Redaction, les utilisateurs peuvent désormais modifier, masquer ou supprimer du texte sensible dans des documents texte, des feuilles de calcul, des présentations, des fichiers PDF et des bitmaps. L'API fournit un large éventail de fonctionnalités et de méthodes pour modifier les informations privées dans les documents. Il prend en charge la recherche et l'édition à l'aide de correspondances exactes ou d'expressions régulières, à l'aide de correctifs textuels (codes d'exception) ou graphiques (cases colorées), etc. Alors pourquoi ne pas essayer d'automatiser votre processus d'édition de documents en téléchargeant l'API et en découvrant ses fonctionnalités de base et avancées.

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "Modifier la phrase exacte POTM en Java"
      content_left: |
        GroupDocs.Redaction facilite la modification des données sensibles ou privées de vos documents. Le cas d'édition le plus courant consiste à supprimer du texte d'un document. 

        Le code suivant peut être utilisé pour appliquer l'édition de texte à une partie spécifique d'un document avec une phrase exacte. Cela permet aux utilisateurs de remplacer l'expression exacte personnelle "Michal Clark" par une expression personnelle (ou tout code d'exclusion).

      title_right: "Supprimer les données sensibles de POTM"
      content_right: |
        * Créer une instance de la classe [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) et chargez le fichier POTM
        * Appelez la méthode Redactor.apply avec une nouvelle instance de la classe ExactPhraseRedaction.
        * Appelez la méthode redactor.save sur l'objet [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Appelez la méthode redactor.save pour enregistrer les modifications 

      gisthash: "3202859fc19b5dfd14e8f073b70a18f8"
      gistfile: "redact_exact_phrase.java"
      
    - title_left: "Édition de texte sensible à la casse dans POTM"
      content_left: |
        Dans l'exemple suivant, les utilisateurs peuvent effectuer une phase d'édition précise sensible à la casse pour supprimer ou masquer un morceau de texte spécifique dans un document. Par défaut, la recherche de phase exacte est insensible à la casse. 
        
      title_right: "Effectuer une édition sensible à la casse via Java"
      content_right: |
        * Créer une instance de la classe [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) et chargez le fichier POTM
        * Appelez la méthode Redactor.apply avec une nouvelle instance de la classe ExactPhraseRedaction.
        * Appelez la méthode redactor.save sur l'objet [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Appelez la méthode redactor.save pour enregistrer les modifications 
        
      gisthash: "a43e3ce358f93df92373b5441bc579fb"
      gistfile: "case_sensitive_redaction.java"

    - title_left: "Modifier le texte dans POTM avec Color Box"
      content_left: |
        Au lieu de supprimer le texte modifié ou d'y mettre une ligne, vous pouvez également placer une bordure colorée sur le texte modifié. Dans ce cas, le texte correspondant sera supprimé et un rectangle de couleur sera placé sur le texte modifié.
        
      title_right: "Utiliser la boîte de couleur pour supprimer du texte en Java"
      content_right: |
        * Créer une instance de la classe [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) et chargez le fichier POTM
        * Appelez la méthode Redactor.apply avec une nouvelle instance de la classe ExactPhraseRedaction.
        * Appelez la méthode redactor.save sur l'objet [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Appelez la méthode redactor.save pour enregistrer les modifications 
        
      gisthash: "6d83e791388b6834a372dc90f4b455f6"
      gistfile: "redact_text_using_color_box.java"

    - title_left: "Configuration requise"
      content_left: |
        Les API Java GroupDocs.Redaction sont prises en charge sur toutes les principales plates-formes et systèmes d'exploitation. Pour un guide complet sur la configuration système requise, consultez [configuration système requise](https://docs.groupdocs.com/redaction/java/system-requirements). Avant d'exécuter le code ci-dessous, assurez-vous que les prérequis suivants sont installés sur votre système :
        * Systèmes d'exploitation : Microsoft Windows, Linux, MacOS
        * Environnement de développement : NetBeans, Intellij IDEA, Eclipse, etc.
        * Exécution Java : J2SE 6.0 et supérieur
        * Obtenez le dernier GroupDocs.Redaction pour Java à partir de [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)
        
      title_right: "Pourquoi utiliser GroupDocs.Redaction"
      content_right: |
        * Autoriser les utilisateurs à ajouter des formats de document personnalisés et des types de révision
        * Aucun logiciel supplémentaire n'est requis pour supprimer les informations sensibles.
        * Option pour définir le document de rendu de plage de pages au format PDF
        * Un moyen simple de modifier différents types de métadonnées : nom de l'auteur, version, titre, sujet, description, etc.
        * Récupérer des informations sur le document - type de fichier, nombre de pages, etc.

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