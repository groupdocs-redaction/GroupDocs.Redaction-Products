---
############################# Static ############################
layout: "autogen"
draft: false
path: "nl/redaction/net/regex/xltm"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTX  

############################# Head ############################
head_title: "Bewerk XLTM documenten met reguliere expressies via .NET Core"
head_description: "Bewerk gevoelige informatie met behulp van reguliere expressies uit documenten van verschillende formaten"

############################# Header ############################
title: "Schoon XLTM bestanden op via C# en reguliere expressies in .NET kernapps"
description: "Zoek en verwijder gevoelige informatie uit Office- en OpenOffice-documenten, -spreadsheets en -presentaties, evenals XLTM op Windows, Linux en macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Documenttekstredactie voor .NET API"
    content: |
        Eén formaat-onafhankelijke interface voor het opschonen van gevoelige en geheime informatie uit de PDF, Word, Excel, PowerPoint documenten en afbeeldingen, inclusief de mogelijkheid om metadata te wijzigen en opmerkingen te verwijderen. Met de tool GroupDocs.Redaction for .NET kunt u de geclassificeerde informatie redigeren en het geredigeerde document opslaan in PDF, alle pagina's omzetten in rasterafbeeldingen of het document in zijn oorspronkelijke formaat behouden voor verdere bewerking.

############################# Steps ############################
steps:
    enable: true
    title_left: "Tekst uit XLTM redigeren met reguliere expressies via C#"
    content_left: |
        Met [GroupDocs.Redaction](nl//redaction/net/) kunnen .NET-ontwikkelaars met een paar eenvoudige stappen volledige reguliere expressies gebruiken om XLTM-bestanden te redigeren.

        *   Maak een instantie van [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) klasse & laad XLTM bestand
        *   Maak een instantie van de klasse [RegexRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/regexredaction) om de tekst te zoeken en te vervangen
        *   Roep [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) methode aan met object van RegexRedaction
        
    title_right: "Aan de slag met Redaction API"
    content_right: |
        Installeer vanaf de opdrachtregel als ```nuget install GroupDocs.Redaction``` of via Package Manager Console van Visual Studio met ```Install-Package GroupDocs.Redaction```. 
        U kunt ook het offline MSI-installatieprogramma of de DLL's in een ZIP-bestand downloaden van [downloads](https://downloads.groupdocs.com/redaction/net) en er handmatig naar verwijzen in uw project.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.xltm"))
        {
        	redactor.Apply(new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", new ReplacementOptions(System.Drawing.Color.Blue)));
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