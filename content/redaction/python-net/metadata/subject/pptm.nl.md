
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "nl/redaction/net/metadata/subject/pptm"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redacties van metagegevens uit documenten in C#"
head_description: "Redigeer gevoelige metagegevens in C# door filters toe te passen voor documenten van verschillende formaten"

############################# Header ############################
title: "Redactie van metagegevens uit PPTM -document in C#"
description: "De API van GroupDocs.Redaction maakt het mogelijk om vertrouwelijke gegevens te zoeken en vervolgens bij te werken of te verwijderen uit de metagegevens van een document."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Wat is het redigeren van metagegevens?"
    content: |
        Meestal houden mensen zich bezig met tekstredactie van een document. Maar het redigeren van metagegevens is net zo belangrijk. Metagegevens zijn de verborgen gegevens van een document die vertrouwelijke informatie kunnen bevatten die u misschien niet met anderen wilt delen. Het redigeren van metagegevens verwijst naar het verwijderen van ongewenste of vertrouwelijke informatie uit elektronische documenten. De metagegevens van een document omvatten auteursnaam, categorie, bedrijfsnaam, opmerkingen, aanmaaktijd, laatst bijgewerkt en nog veel meer. Soms moet je ongewenste metadatavelden volledig verwijderen of misschien wil je de waarden ervan bijwerken. Met de GroupDocs.Redaction API kun je metagegevensredacties toepassen op elk van deze metagegevenseigenschappen. Je kunt ze wijzigen of verwijderen door de gewenste metagegevens te filteren. In deze handleiding leggen we uit hoe je metagegevens van onderwerpen kunt redigeren uit een PPTM document in C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Onderwerp redigeren uit PPTM document"
      content_left: |
        Met de volgende code kunt u gevoelige gegevens in een PPTM -document doorzoeken en redigeren. U kunt het bereik voor de redactie instellen door een filter in te stellen, bijvoorbeeld op MetadataFilter.Subject. De overeenkomsten met reguliere expressies blijven in alle metagegevensitems ongedaan, met uitzondering van de eigenschap „Onderwerp”:
        

      title_right: "Hoe redigeer je PPTM metagegevens"
      content_right: |
        * Maak een exemplaar van de klasse [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) en upload het PPTM -bestand
        * Maak een exemplaar van de klasse [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) om gevoelige gegevens uit de metagegevens van het document te zoeken en te vervangen
        * Stel het bereik voor redactie in door een filter in te stellen, bijvoorbeeld Gebruik MetadataFilter.Subject in onderstaande code
        * Roep de methode [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) aan met het object [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "fe7bf28f64f61d748d50026fbc1350fe"
      gistfile: "RedactSubjectMetadata.cs"

    - title_left: "PPTM metagegevens verwijderen in C#"
      content_left: |
        U kunt alle of specifieke metagegevens in het document vervangen door lege (lege of minimale) waarden met behulp van de klasse ErasemetaDataRedAction. De volgende code laat zien hoe je een metagegevenseigenschap kunt filteren en vervolgens kunt verwijderen uit een PPTM document. In het onderstaande voorbeeld worden alle eigenschappen van het document leeg gemaakt:
        
        
      title_right: "PPTM metagegevens wissen"
      content_right: |
        * Maak een exemplaar van de klasse [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) en upload het PPTM -bestand
        * Maak een exemplaar van [ErasemetadataredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) om de metagegevens van het document te verwijderen
        * Stel het bereik voor redactie in door een filter in te stellen, bijvoorbeeld Vervang MetadataFilter.ALL door MetadataFilter.Subject in onderstaande code 
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