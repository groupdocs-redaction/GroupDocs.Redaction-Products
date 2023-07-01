
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "nl/redaction/java/metadata/version/ppsx"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Metagegevens redigeren | Java"
ad_description: "Versie redigeren op basis van PPSX metagegevens in Java"
############################# Head ############################
head_title: "Metagegevens van versies van PPSX -document redigeren in Java"
head_description: "GroupDocs.Redaction is een krachtige ontsmettings-API waarmee u vertrouwelijke informatie uit meer dan 30 documenttypen kunt verwijderen of bewerken."

############################# Header ############################
title: "Metagegevens van versies van PPSX -document redigeren in Java"
description: "GroupDocs.Redaction is een krachtige ontsmettings-API waarmee u vertrouwelijke informatie uit meer dan 30 documenttypen kunt verwijderen of bewerken."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Wat is het redigeren van metagegevens?"
    content: |
        Om het document in een originele indeling op te slaan, moeten de metagegevens worden verwijderd of geredigeerd om alle vertrouwelijke gegevens te verwijderen. Voor deze doeleinden biedt GroupDocs.Redaction een API voor het redigeren van metagegevens. De GroupDocs.Redaction API maakt het mogelijk om geredigeerde documenten op te slaan in PDF, alle pagina's om te zetten in rasterafbeeldingen of geredigeerde documenten in het oorspronkelijke formaat op te slaan voor verdere bewerking. Alle bestandsindelingen, waaronder PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX en andere, hebben enkele metagegevenseigenschappen. Deze eigenschappen omvatten auteursnaam, categorie, bedrijfsnaam, opmerkingen, aanmaaktijd, laatst bijgewerkt en nog veel meer. Er zijn ook enkele verborgen gegevens gekoppeld aan de bestanden die kunnen worden bekeken met behulp van verschillende tools en technieken. Met de GroupDocs.Redaction API kun je metagegevensredacties toepassen op elk van deze metagegevenseigenschappen. Je kunt ze wijzigen of verwijderen door de gewenste metagegevens te filteren. In deze handleiding leggen we uit hoe je versiemetagegevens uit een PPSX document in Java kunt redigeren.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "PPSX Metagegevens redigeren in Java"
      content_left: |
        Met de volgende code kunt u gevoelige gegevens in een PPSX -document doorzoeken en redigeren. U kunt het bereik voor de redactie instellen door een filter in te stellen, bijvoorbeeld op Metadatafilter.version. De overeenkomsten met reguliere expressies blijven in alle metagegevensitems ongedaan, met uitzondering van de eigenschap „Version”: 

      title_right: "Hoe redigeer je PPSX metagegevens"
      content_right: |
        * Maak een exemplaar van de klasse [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) en upload het PPSX -bestand
        * Maak een exemplaar van de klasse [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) om gevoelige gegevens uit de metagegevens van het document te zoeken en te vervangen
        * Stel het bereik voor redactie in door een filter in te stellen, bijvoorbeeld Gebruik MetadataFilters.version in onderstaande code
        * Opslagmethode aanroepen met het object van [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "aef660cb45245aebaae5c5eaa8054769"
      gistfile: "RedactVersionMetadata.java"
      
    - title_left: "PPSX metagegevens verwijderen in Java"
      content_left: |
        U kunt alle of specifieke metagegevens in het document vervangen door lege (lege of minimale) waarden met behulp van de klasse ErasemetaDataRedAction. De volgende code laat zien hoe je een metagegevenseigenschap kunt filteren en vervolgens kunt verwijderen uit een PPSX document. In het onderstaande voorbeeld worden alle eigenschappen van het document leeg gemaakt: 
        
      title_right: "Hoe kan ik versiemetagegevens wissen"
      content_right: |
        * Maak een exemplaar van de klasse [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) en upload het PPSX -bestand
        * Maak een exemplaar van de klasse [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) om de metagegevens van het document te verwijderen
        * Stel het bereik voor redactie in door een filter in te stellen, bijvoorbeeld Vervang Metadatafilter.ALL door Metadatafilter.version in onderstaande code
        * Opslagmethode aanroepen met het object van [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
      gisthash: "84586804ee996134fd12f2061f989fd5"
      gistfile: "CleanMetadata.java"

    - title_left: "Systeemvereisten"
      content_left: |
        GroupDocs.Redaction for Java API's worden ondersteund op alle belangrijke platforms en besturingssystemen. Ga voor een volledige handleiding met systeemvereisten naar [systeemvereisten](https://docs.groupdocs.com/redaction/java/system-requirements) Voordat u de onderstaande code uitvoert, moet u ervoor zorgen dat de volgende vereisten op uw systeem zijn geïnstalleerd:
        * Besturingssystemen: Microsoft Windows, Linux, Mac OS
        * Ontwikkelingsomgeving: NetBeans, Intellij IDEA, Eclipse enz
        * Java Runtime-omgeving: J2SE 6.0 en hoger
        * Download de laatste versie van GroupDocs.Redaction for Java van [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)
        
      title_right: "Waarom GroupDocs.Redaction gebruiken"
      content_right: |
        * Gebruikers toestaan aangepaste documentformaten en soorten redacties toe te voegen
        * Er is geen aanvullende software nodig om gevoelige informatie te verwijderen
        * Mogelijkheid om het weergavedocument voor paginabereik in te stellen als PDF
        * Eenvoudige manier om verschillende soorten metagegevens te redigeren: auteursnaam, versie, titel, onderwerp, beschrijving en nog veel meer
        * Extractie van documentinformatie - bestandstype, aantal pagina's, enz.
        

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