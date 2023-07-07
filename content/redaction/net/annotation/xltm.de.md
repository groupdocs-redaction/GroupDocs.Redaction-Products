---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "de/redaction/net/annotation/xltm"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTX  

############################# Head ############################
head_title: "Redigieren Sie Anmerkungen in XLTM-Dokumenten mit regulären Ausdrücken über .NET Core"
head_description: "Entfernen Sie vertrauliche Informationen in Anmerkungen mithilfe regulärer Ausdrücke aus Dokumenten unterschiedlicher Formate"

############################# Header ############################
title: "Redigieren Sie XLTM Dateianmerkungen über C# und reguläre Ausdrücke in .NET Core Apps"
description: "Finden und entfernen Sie vertrauliche Informationen aus Office- und OpenOffice-Dokumenten, Tabellenkalkulationen und Präsentationen sowie XLTM auf Windows, Linux und macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Schwärzung von Dokumentanmerkungen für die .NET-API"
    content: |
        Eine einzige formatunabhängige Schnittstelle zur Bereinigung sensibler und geheimer Informationen aus den Dokumenten und Bildern PDF, Word, Excel, PowerPoint, einschließlich der Möglichkeit, Metadaten zu ändern und Anmerkungen zu entfernen. Mit dem Tool GroupDocs.Redaction for .NET können Sie die klassifizierten Informationen schwärzen und das geschwärzte Dokument in PDF speichern, alle Seiten in Rasterbilder umwandeln oder das Dokument zur weiteren Bearbeitung in seinem Originalformat behalten.

############################# Steps ############################
steps:
    enable: true
    title_left: "Anmerkungen aus XLTM mithilfe regulärer Ausdrücke über C# schwärzen"
    content_left: |
        [GroupDocs.Redaction](de//redaction/net/) ermöglicht .NET-Entwicklern, die volle Stärke regulärer Ausdrücke zu nutzen, um XLTM-Dateien mit ein paar einfachen Schritten zu redigieren.

        *   Erstellen Sie eine Instanz der Klasse [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) und laden Sie die Datei XLTM
        *   Erstellen Sie eine Instanz der Klasse [AnnotationRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/annotationredaction), um die Kommentare zu suchen und zu ersetzen
        *   Rufen Sie die Methode [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) mit dem Objekt AnnotationRedaction auf
        
    title_right: "So verwenden Sie die GroupDocs Redaction API"
    content_right: |
        Installieren Sie das Paket über die Befehlszeile als „nuget install GroupDocs.Redaction“ oder über die Paket-Manager-Konsole von Visual Studio mit „Install-Package GroupDocs.Redaction“. 
        Alternativ können Sie das Offline-MSI-Installationsprogramm oder die DLLs in einer ZIP-Datei von [Downloads](https://downloads.groupdocs.com/redaction/net) herunterladen und in Ihrem Projekt manuell darauf verweisen.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.xltm"))
        {
        	redactor.Apply(new AnnotationRedaction("(?im:john)", "[redacted]"));
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