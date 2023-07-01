
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "nl/redaction/java/metadata/category/pptm"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Metagegevens redigeren | Java"
ad_description: "Categorienaam redigeren uit PPTM metagegevens in Java"
############################# Head ############################
head_title: "Categorienaam redigeren uit PPTM metagegevens in Java"
head_description: "GroupDocs.Redaction s biedt een flexibele API die het mogelijk maakt om metadata-eigenschappen te zoeken en te vervangen/verwijderen met behulp van filters."

############################# Header ############################
title: "Categorienaam redigeren uit PPTM metagegevens in Java"
description: "GroupDocs.Redaction s biedt een flexibele API die het mogelijk maakt om metadata-eigenschappen te zoeken en te vervangen/verwijderen met behulp van filters."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Wat is het redigeren van metagegevens?"
    content: |
        Redactie verwijst naar het verwijderen van ongewenste of vertrouwelijke informatie uit elektronische documenten. Alle bestandsindelingen, waaronder PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX en andere, hebben enkele metagegevenseigenschappen. Deze eigenschappen omvatten auteursnaam, categorie, bedrijfsnaam, opmerkingen, aanmaaktijd, laatst bijgewerkt en nog veel meer. Soms moet je ongewenste metadatavelden volledig verwijderen of misschien wil je de waarden ervan bijwerken. Er zijn ook enkele verborgen gegevens gekoppeld aan de bestanden die kunnen worden bekeken met behulp van verschillende tools en technieken. Er zijn veel gevallen waarin u niet wilt dat deze gegevens voor iedereen toegankelijk zijn. Met de GroupDocs.Redaction API kun je metagegevensredacties toepassen op elk van deze metagegevenseigenschappen. Je kunt ze wijzigen of verwijderen door de gewenste metagegevens te filteren. In deze handleiding leggen we uit hoe je de categorienaam kunt redigeren uit PPTM metagegevens in Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "PPTM Metagegevens redigeren in Java"
      content_left: |
        Met de volgende code kunt u gevoelige gegevens in een PPTM -document doorzoeken en redigeren. U kunt het bereik voor redactie instellen door een filter in te stellen, bijvoorbeeld op MetadataFilter.Category. - dan blijven de overeenkomsten met reguliere expressies ongedaan in alle metagegevensitems, met uitzondering van de eigenschap „Categorie”: 

      title_right: "Hoe redigeer je PPTM metagegevens"
      content_right: |
        * Maak een exemplaar van de klasse [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) en upload het PPTM -bestand
        * Maak een exemplaar van de klasse [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) om gevoelige gegevens uit de metagegevens van het document te zoeken en te vervangen
        * Stel het bereik voor redactie in door een filter in te stellen, bijvoorbeeld Gebruik Metadatafilters.category in onderstaande code
        * Roep de redactor.save-methode aan met het object [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "480e989781148cd44a7aa8823887ae21"
      gistfile: "RedactCategoryMetadata.java"
      
    - title_left: "PPTM metagegevens verwijderen in Java"
      content_left: |
        U kunt alle of specifieke metagegevens in het document vervangen door lege (lege of minimale) waarden met behulp van de klasse ErasemetaDataRedAction. De volgende code laat zien hoe je een metagegevenseigenschap kunt filteren en vervolgens kunt verwijderen uit een PPTM document. In het onderstaande voorbeeld worden alle eigenschappen van het document leeg gemaakt: 
        
      title_right: "Metagegevens van categorieën uit het PPTM -bestand wissen"
      content_right: |
        * Maak een exemplaar van de klasse [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) en upload het PPTM -bestand
        * Maak een exemplaar van de klasse [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) om de metagegevens van het document te verwijderen
        * Stel het bereik voor redactie in door een filter in te stellen, bijvoorbeeld Vervang Metadatafilter.ALL door Metadatafilter.category in onderstaande code
        * Roep de redactor.save-methode aan met het object [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
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