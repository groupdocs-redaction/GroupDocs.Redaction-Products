---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "fr/redaction/java/regex/pdf"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Masquer le texte PDF via une expression régulière dans Java"
head_description: "L'API Java de GroupDocs.Redaction permet aux développeurs de biffer du texte de PDF DOC DOCX RTF XLSX CSV PPT PPTX et des images à l'aide d'expressions régulières dans Java"

############################# Header ############################
title: "Comment supprimer du texte de fichiers PDF à l'aide d'expressions régulières et de Java"
description: "L'API GroupDocs.Redaction de Java permet de caviarder, de masquer ou de supprimer le texte sensible des documents de traitement de texte, des feuilles de calcul, des présentations, des PDF et des images à l'aide d'expressions régulières."

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que la désinfection de texte ?"
    content: |
        La rédaction ou la désinfection de texte est le processus de suppression du texte ou des informations confidentiels ou indésirables des documents numériques tout en laissant intact le reste du document ou du paragraphe le contenant. La rédaction aide les utilisateurs ainsi que l'organisation à protéger leurs informations sensibles en les masquant ou en les supprimant définitivement. À l'aide de l'API GroupDocs.Redaction Java, les utilisateurs peuvent désormais biffer, masquer ou supprimer le texte sensible des documents de traitement de texte, des feuilles de calcul, des présentations, PDF et des fichiers image raster. L'API fournit un large éventail d'options et de méthodes pour la suppression des informations privées dans les documents. Il prend en charge la recherche et la rédaction à l'aide d'expressions régulières, l'utilisation de rédactions textuelles (codes d'exemption) ou graphiques (rectangles colorés) et bien d'autres. Alors pourquoi ne pas essayer et automatiser votre processus de rédaction de documents en téléchargeant l'API et en explorant ses fonctionnalités de base et avancées.

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "Caviardez PDF à l'aide d'expressions régulières dans Java"
      content_left: |
        GroupDocs.Redaction permet de supprimer facilement des données de nature sensible ou privée de vos documents. Le cas de rédaction le plus courant consiste à supprimer un texte d'un document. 

        Le code suivant peut être utilisé pour appliquer une rédaction textuelle à une partie particulière d'un document à l'aide d'une expression régulière. Il permet aux utilisateurs de remplacer tous les chiffres, en faisant correspondre le motif "AA BB CCCCCC" avec un rectangle de couleur bleue,

      title_right: "Supprimer les données sensibles de PDF"
      content_right: |
        * Créez une instance de la classe [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) et chargez le fichier PDF
        * Créez une instance de la classe [RegexRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/RegexRedaction)
        * Appelez la méthode redactor.apply avec l'objet de la classe RegexRedaction
        * Appelez la méthode redactor.save pour enregistrer les modifications 

      gisthash: "6dea616a14aeeff21698dc03be62a341"
      gistfile: "RegularExpressionRedaction.java"
      
    - title_left: "Configuration requise"
      content_left: |
        GroupDocs.Redaction for Java Les API sont prises en charge sur toutes les principales plates-formes et systèmes d'exploitation. Pour un guide complet de la configuration système requise, veuillez visiter [configuration système](https://docs.groupdocs.com/redaction/java/system-requirements) Avant d'exécuter le code ci-dessous, assurez-vous que les prérequis suivants sont installés sur votre système :
        * Systèmes d'exploitation : Microsoft Windows, Linux, MacOS
        * Environnement de développement : NetBeans, Intellij IDEA, Eclipse, etc.
        * Java Environnement d'exécution : J2SE 6.0 et supérieur
        * Obtenez la dernière version de GroupDocs.Redaction for Java auprès de [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)
        
      title_right: "Pourquoi utiliser GroupDocs.Redaction"
      content_right: |
        * Autoriser les utilisateurs à ajouter des formats de document personnalisés et des types de caviardage
        * Aucun logiciel supplémentaire n'est requis pour supprimer les informations sensibles
        * Possibilité de définir le document de rendu de plage de pages comme PDF
        * Un moyen facile de rédiger différents types de métadonnées : nom de l'auteur, version, titre, sujet, description et bien d'autres
        * Extraction d'informations sur les documents - type de fichier, nombre de pages, etc.

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