
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "nl/redaction/net/metadata/category/rtf"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Gevoelige metagegevens uit RTF documenten in C# redigeren"
head_description: "Pas de redactie van metagegevens toe door filters toe te passen op documenten van verschillende formaten"

############################# Header ############################
title: "Categorienaam redigeren uit RTF metagegevens in C#"
description: "GroupDocs.Redaction s biedt een flexibele API die het mogelijk maakt om metadata-eigenschappen te zoeken en te vervangen/verwijderen met behulp van filters."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Wat is het redigeren van metagegevens?"
    content: |
        Redactie verwijst naar het verwijderen van ongewenste of vertrouwelijke informatie uit elektronische documenten. Alle bestandsindelingen, waaronder PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX en andere, hebben enkele metagegevenseigenschappen. Deze eigenschappen omvatten auteursnaam, categorie, bedrijfsnaam, opmerkingen, aanmaaktijd, laatst bijgewerkt en nog veel meer. Soms moet je ongewenste metadatavelden volledig verwijderen of misschien wil je de waarden ervan bijwerken. Er zijn ook enkele verborgen gegevens gekoppeld aan de bestanden die kunnen worden bekeken met behulp van verschillende tools en technieken. Er zijn veel gevallen waarin u niet wilt dat deze gegevens voor iedereen toegankelijk zijn. Met de GroupDocs.Redaction API kun je metagegevensredacties toepassen op elk van deze metagegevenseigenschappen. Je kunt ze wijzigen of verwijderen door de gewenste metagegevens te filteren. In deze handleiding leggen we uit hoe je de categorienaam kunt redigeren uit RTF metagegevens in C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "RTF Metagegevens redigeren in C#"
      content_left: |
        Met de volgende code kunt u gevoelige gegevens in een RTF -document doorzoeken en redigeren. U kunt het bereik voor redactie instellen door een filter in te stellen, bijvoorbeeld op MetadataFilter.Category. - dan blijven de overeenkomsten met reguliere expressies ongedaan in alle metagegevensitems, met uitzondering van de eigenschap „Categorie”:
        

      title_right: "Hoe redigeer je RTF metagegevens"
      content_right: |
        * Maak een exemplaar van de klasse [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) en upload het RTF -bestand
        * Maak een exemplaar van de klasse [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) om gevoelige gegevens uit de metagegevens van het document te zoeken en te vervangen
        * Stel het bereik voor redactie in door een filter in te stellen, bijvoorbeeld Gebruik Metadatafilter.category in onderstaande code
        * Roep de methode [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) aan met het object [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "852b461c316559151cb6075b4ecde2ce"
      gistfile: "RedactCategoryMetadata.cs"

    - title_left: "RTF metagegevens verwijderen in C#"
      content_left: |
        U kunt alle of specifieke metagegevens in het document vervangen door lege (lege of minimale) waarden met behulp van de klasse ErasemetaDataRedAction. De volgende code laat zien hoe je een metagegevenseigenschap kunt filteren en vervolgens kunt verwijderen uit een RTF document. In het onderstaande voorbeeld worden alle eigenschappen van het document leeg gemaakt:
        
        
      title_right: "RTF metagegevens wissen"
      content_right: |
        * Maak een exemplaar van de klasse [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) en upload het RTF -bestand
        * Maak een exemplaar van [ErasemetadataredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) om de metagegevens van het document te verwijderen
        * Stel het bereik voor redactie in door een filter in te stellen, bijvoorbeeld Vervang Metadatafilter.ALL door Metadatafilter.category in onderstaande code 
        * Roep de methode [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) aan met het object [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        
      gisthash: "cef91d8d8f160aaf560218d1abd520e2"
      gistfile: "CleanMetadata.cs"

    - title_left: "Systeemvereisten"
      content_left: |
        GroupDocs.Redaction for .NET ondersteunt elk 32-bits of 64-bits besturingssysteem waarop het .NET -platform is geïnstalleerd. Er is geen externe software of tool van derden nodig om te worden geïnstalleerd. Ga voor een volledige gids met systeemvereisten naar [systeemvereisten](https://docs.groupdocs.com/redaction/net/system-requirements)
        
      title_right: "Installatie-instructies"
      content_right: |
        Installeer vanaf de commandoregel als ```nuget install GroupDocs.Redaction ```of via de Package Manager-console van Visual Studio met ```Install-Package GroupDocs.Redaction```. 
        Of download het offline MSI-installatieprogramma of de DLL's in een ZIP -bestand bij [downloads](https://downloads.groupdocs.com/redaction/net) en verwijs er handmatig naar in je project.

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