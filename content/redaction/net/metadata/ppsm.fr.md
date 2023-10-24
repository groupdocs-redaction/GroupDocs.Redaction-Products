
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "fr/redaction/net/metadata/ppsm"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Appliquer les suppressions de métadonnées aux PDF, DOCX, PPT, PPTX, XLS, XLSX dans .NET"
head_description: "L'API GroupDocs.Redactions .NET permet aux développeurs de logiciels d'appliquer des suppressions de métadonnées à différents formats de fichiers tels que PDF DOC DOCX RTF XLSX CSV PPT PPTX et images"

############################# Header ############################
title: "Masquer et filtrer les métadonnées de PDF, DOCX, PPT, PPTX, XLS, XLSX et plus"
description: "L'API GroupDocs.Redactions .NET permet aux développeurs de logiciels de biffer ou de filtrer les métadonnées de divers formats de fichiers tels que PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX et bien d'autres."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que la rédaction des métadonnées?"
    content: |
        Les métadonnées sont un type de données qui fournissent des informations sur d'autres données. En d'autres termes, vous pensez souvent que les métadonnées sont des références à des données. Il aide à résumer les informations de base sur les données qui peuvent être utilisées pour suivre et gérer facilement les données. GroupDocs.Redaction pour .NET est une puissante API native qui permet aux développeurs de logiciels de supprimer des informations sensibles et classifiées de divers types de documents sans installer de logiciel externe ou d'outil tiers. Il a fourni un support pour divers filtres tels que l'auteur, la société, la catégorie, la taille d'un document, la date de création, le titre, LastPrinted, les commentaires, etc. Il aide les utilisateurs à appliquer des suppressions de métadonnées à divers formats de documents populaires tels que les documents de traitement de texte, les feuilles de calcul Excel, les présentations, les fichiers PDF et les fichiers image raster. Les développeurs peuvent également mettre à jour, remplacer ou effacer les métadonnées en appliquant des filtres ou en utilisant la recherche. De plus, les développeurs peuvent facilement appliquer plusieurs suppressions en un seul appel. Alors mieux vaut essayer d'automatiser votre processus de rédaction de documents et de métadonnées en téléchargeant l'API et en explorant ses fonctionnalités de base et avancées.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Comment nettoyer les métadonnées du document PPSM en C#"
      content_left: |
        GroupDocs.Redaction pour .NET est une API puissante qui permet aux programmeurs de biffer, masquer ou remplacer les informations classifiées de nombreux types de documents populaires à l'aide de filtres ou d'une recherche par expression régulière.
        L'exemple de code .NET suivant montre comment appliquer le masquage des métadonnées pour remplacer toutes les métadonnées ou des métadonnées spécifiques dans le document par des valeurs vides ou minimales.

      title_right: "Appliquer la suppression des métadonnées au fichier PPSM"
      content_right: |
        * Créer une instance de la classe [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor)
        * Appelez la méthode Redactor.Apply avec l'objet EraseMetadataRedaction de [EraseMetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction)
        * Appelez la méthode Redactor.Save pour enregistrer le document dans le fichier "*_Redacted.*" au format d'origine        
      gisthash: "8f1bc20dff33c9a45c01a9e251555bf1"
      gistfile: "how_to_clean_metadata_dotnet.cs"

    - title_left: "Masquer les métadonnées du fichier PPSM via .NET"
      content_left: |
        L'API GroupDocs.Redaction .NET facilite la vie des développeurs en les aidant à intégrer l'automatisation des documents et les tâches de création de rapports avec seulement quelques lignes de code sans aucune dépendance externe.
        L'exemple de code C# .NET suivant montre comment les développeurs de logiciels peuvent supprimer des données sensibles des métadonnées d'un document avec seulement quelques lignes de code.
        
      title_right: "Suppression des métadonnées à partir de PPSM fichiers UPPER"
      content_right: |
        * Créer une instance de la classe [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor)
        * Créer une instance de la classe [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        * Appelez la méthode [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) 
        * Appelez la méthode Redactor.Save pour enregistrer le document dans le fichier "*_Redacted.*" au format d'origine
        
      gisthash: "8dee499186930d60909dffa54579c9f4"
      gistfile: "how_to_redact_metadata_dotnet.cs"

    - title_left: "Configuration requise"
      content_left: |
        Les API GroupDocs.Redaction pour .NET sont prises en charge sur toutes les principales plates-formes et systèmes d'exploitation. Pour un guide complet de la configuration système requise, veuillez visiter [configuration système](https://docs.groupdocs.com/redaction/net/system-requirements/) Avant d'exécuter le code ci-dessous, assurez-vous que les conditions préalables suivantes sont installées sur votre système:
        * Systèmes d'exploitation : Microsoft Windows, Linux, MacOS
        * Environnement de développement : Visual Studio, Xamarin, MonoDevelop etc.
        * Frameworks : .NET Framework, .NET Standard, .NET Core, Mono
        * Obtenez la dernière version des API GroupDocs.Redaction .NET à partir de [NuGet](https://www.nuget.org/packages/GroupDocs.Redaction/)
        
      title_right: "Pourquoi utiliser GroupDocs.Redaction"
      content_right: |
        * Autoriser les utilisateurs à ajouter des formats de document personnalisés et des types de caviardage
        * Aucun logiciel supplémentaire n'est requis pour supprimer les informations sensibles
        * Possibilité de définir un document de rendu de plage de pages au format PDF
        * Un moyen simple de rédiger différents types de métadonnées : nom de l'auteur, version, titre, sujet, description et bien d'autres
        * Extraction d'informations sur les documents - type de fichier, nombre de pages, etc.
        * Prise en charge complète de plusieurs formats de données

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