---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "de/redaction/net/regex/ppsm"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redigieren Sie PPSM-Dokumente mit regulären Ausdrücken über .NET Core"
head_description: "Entfernen Sie vertrauliche Informationen mithilfe regulärer Ausdrücke aus Dokumenten unterschiedlicher Formate"

############################# Header ############################
title: "Bereinigen Sie PPSM-Dateien über C# und reguläre Ausdrücke in .NET-Kernanwendungen"
description: "Finden und entfernen Sie vertrauliche Informationen aus Office- und OpenOffice-Dokumenten, Tabellenkalkulationen und Präsentationen sowie PPSM auf Windows, Linux und macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Dokumenttext-Schwärzung für die .NET-API"
    content: |
        Eine einzige, formatunabhängige Schnittstelle zur Bereinigung sensibler und geheimer Informationen aus den Dokumenten und Bildern PDF, Word, Excel, PowerPoint, einschließlich der Möglichkeit, Metadaten zu ändern und Kommentare zu entfernen. Mit dem Tool GroupDocs.Redaction for .NET können Sie die klassifizierten Informationen schwärzen und das geschwärzte Dokument in PDF speichern, alle Seiten in Rasterbilder umwandeln oder das Dokument zur weiteren Bearbeitung in seinem Originalformat behalten.

############################# Steps ############################
steps:
    enable: true
    title_left: "Text aus PPSM mithilfe regulärer Ausdrücke über C# schwärzen"
    content_left: |
        [GroupDocs.Redaction](de//redaction/net/) ermöglicht .NET-Entwicklern, die volle Stärke regulärer Ausdrücke zu nutzen, um PPSM-Dateien mit ein paar einfachen Schritten zu redigieren.

        *   Erstellen Sie eine Instanz der Klasse [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) und laden Sie die Datei PPSM
        *   Erstellen Sie eine Instanz der Klasse [RegexRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/regexredaction), um den Text zu suchen und zu ersetzen
        *   Rufen Sie die Methode [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) mit dem Objekt von RegexRedaction auf
        
    title_right: "Beginnen Sie mit der Redaction-API"
    content_right: |
        Installieren Sie über die Befehlszeile als „nuget install GroupDocs.Redaction“ oder über die Paket-Manager-Konsole von Visual Studio mit „Install-Package GroupDocs.Redaction“. 
        Alternativ können Sie das Offline-MSI-Installationsprogramm oder die DLLs in einer ZIP-Datei von [Downloads](https://downloads.groupdocs.com/redaction/net) herunterladen und in Ihrem Projekt manuell darauf verweisen.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.ppsm"))
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