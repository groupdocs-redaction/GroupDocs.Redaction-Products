
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "nl/redaction/java/metadata/description/xlt"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLTM XLTX  
ad_headline: "Metagegevens redigeren | Java"
ad_description: "Metagegevens over de beschrijving redigeren uit een XLT -bestand in Java"
############################# Head ############################
head_title: "Metagegevens over de beschrijving redigeren uit een XLT -bestand in Java"
head_description: "GroupDocs.Redaction s biedt een flexibele API die het mogelijk maakt om metadata-eigenschappen te zoeken en te vervangen/verwijderen met behulp van filters."

############################# Header ############################
title: "Metagegevens over de beschrijving redigeren uit een XLT -bestand in Java"
description: "GroupDocs.Redaction s biedt een flexibele API die het mogelijk maakt om metadata-eigenschappen te zoeken en te vervangen/verwijderen met behulp van filters."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Over GroupDocs.Redaction voor Java"
    content: |
        Redactie verwijst naar het verwijderen van ongewenste of vertrouwelijke informatie uit elektronische documenten. Alle bestandsindelingen, waaronder PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX en andere, hebben enkele metagegevenseigenschappen. Deze eigenschappen omvatten auteursnaam, categorie, bedrijfsnaam, opmerkingen, aanmaaktijd, laatst bijgewerkt en nog veel meer. Soms moet je ongewenste metadatavelden volledig verwijderen of misschien wil je de waarden ervan bijwerken. Er zijn ook enkele verborgen gegevens gekoppeld aan de bestanden die kunnen worden bekeken met behulp van verschillende tools en technieken. Er zijn veel gevallen waarin u niet wilt dat deze gegevens voor iedereen toegankelijk zijn. Met de GroupDocs.Redaction API kun je metagegevensredacties toepassen op elk van deze metagegevenseigenschappen. Je kunt ze wijzigen of verwijderen door de gewenste metagegevens te filteren. In deze handleiding leggen we uit hoe je een beschrijving kunt redigeren op basis van XLT metagegevens in Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Metagegevensveld voor beschrijving bijwerken"
      content_left: |
        Met de volgende code kunt u gevoelige gegevens in een XLT -document doorzoeken en redigeren. U kunt het bereik voor de redactie instellen door een filter in te stellen, bijvoorbeeld op MetadataFilter.Description. De overeenkomsten met reguliere expressies blijven in alle metagegevensitems ongedaan, met uitzondering van de eigenschap „Description”: 

      title_right: "Hoe te redigeren in Java"
      content_right: |
        * Maak een exemplaar van de klasse [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) en upload het XLT -bestand
        * Maak een exemplaar van de klasse [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) om gevoelige gegevens uit de metagegevens van het document te zoeken en te vervangen
        * Stel het bereik voor redactie in door een filter in te stellen, bijv. Gebruik metadatafilters.Description in onderstaande code
        * Opslagmethode aanroepen met het object van [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "9faf1affc732aa746e8d34ca813621b2"
      gistfile: "RedactDescriptionMetadata.java"
      
    - title_left: "Een metadataveld wissen in Java"
      content_left: |
        U kunt alle of specifieke metagegevens in het document vervangen door lege (lege of minimale) waarden met behulp van de klasse ErasemetaDataRedAction. De volgende code laat zien hoe je een metagegevenseigenschap kunt filteren en vervolgens kunt verwijderen uit een XLT document. In het onderstaande voorbeeld worden alle eigenschappen van het document leeg gemaakt: 
        
      title_right: "Het metadataveld XLT verwijderen"
      content_right: |
        * Maak een exemplaar van de klasse [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) en upload het XLT -bestand
        * Maak een exemplaar van de klasse [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) om de metagegevens van het document te verwijderen
        * Stel het bereik voor redactie in door een filter in te stellen, bijvoorbeeld Vervang Metadatafilter.ALL door Metadatafilter.Description in onderstaande code
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
        
      title_right: "Waarom GroupDocs.Redaction gebruiken?"
      content_right: |
        * Gebruikers toestaan aangepaste documentformaten en soorten redacties toe te voegen
        * Eenvoudige manier om verschillende soorten metagegevens te redigeren: auteursnaam, versie, titel, onderwerp, beschrijving en nog veel meer
        * Mogelijkheid om het weergavedocument voor paginabereik in te stellen als PDF
        * Er is geen aanvullende software nodig om gevoelige informatie te verwijderen
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