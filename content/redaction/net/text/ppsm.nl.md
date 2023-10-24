---
############################# Static ############################
layout: "autogen"
draft: false
path: "nl/redaction/net/text/ppsm"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Bewerk gevoelige informatie uit PPSM-documenten via .NET Core"
head_description: "Pas tekstredactie toe met behulp van exacte zin of reguliere expressie voor documenten van verschillende formaten"

############################# Header ############################
title: "Bewerk PPSM bestanden via C# in .NET Core-apps"
description: "Zoek en vervang tekst in Office- en OpenOffice-documenten, -spreadsheets en -presentaties en in PPSM op Windows, Linux en macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Documentredactie voor .NET API"
    content: |
        Eén formaat-onafhankelijke interface voor het redigeren van gevoelige en geheime informatie uit de PDF, Word, Excel, PowerPoint documenten en afbeeldingen, inclusief de mogelijkheid om metadata te wijzigen en opmerkingen te verwijderen. Met de tool GroupDocs.Redaction for .NET kunt u tekst redigeren en geredigeerde documenten opslaan in PDF, alle pagina's transformeren in rasterafbeeldingen of het document in zijn oorspronkelijke formaat behouden voor verdere bewerking.

############################# Steps ############################
steps:
    enable: true
    title_left: "Bewerk exacte tekst van PPSM via C#"
    content_left: |
        [GroupDocs.Redaction](nl//redaction/net/) maakt het gemakkelijk voor .NET ontwikkelaars om PPSM de functie voor het redigeren van bestanden toe te voegen in een paar eenvoudige stappen.

        *   Maak een instantie van [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) klasse & laad PPSM bestand
        *   Maak een instantie van de klasse [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/exactphraseredaction) om de tekst te zoeken en te vervangen
        *   Roep de methode [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) aan met object van ExactPhraseRedaction
        
    title_right: "Aan de slag met Redaction API"
    content_right: |
        Installeer vanaf de opdrachtregel als ```nuget install GroupDocs.Redaction``` of via Package Manager Console van Visual Studio met ```Install-Package GroupDocs.Redaction```. 
        U kunt ook het offline MSI-installatieprogramma of de DLL's in een ZIP-bestand downloaden van [downloads](https://downloads.groupdocs.com/redaction/net) en er handmatig naar verwijzen in uw project.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.ppsm"))
        {
        	redactor.Apply(new ExactPhraseRedaction("John Doe", new ReplacementOptions("[personal]")));
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