
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "de/redaction/net/metadata/company/xltx"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM  

############################# Head ############################
head_title: "Sensible Metadaten aus XLTX Dokumenten in C# redigieren"
head_description: "Wenden Sie die Schwärzung von Metadaten an, indem Sie Filter für Dokumente verschiedener Formate anwenden"

############################# Header ############################
title: "Firmenname aus XLTX Metadaten in C# redigieren"
description: "GroupDocs.Redaction s bietet eine flexible API, die es ermöglicht, jede Metadateneigenschaft mithilfe von Filtern zu suchen und zu ersetzen/zu entfernen."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Was ist Metadatenredaktion?"
    content: |
        Unter Schwärzung versteht man das Entfernen unerwünschter oder vertraulicher Informationen aus elektronischen Dokumenten. Alle Dateiformate, einschließlich PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX und andere, haben einige Metadateneigenschaften. Zu diesen Eigenschaften gehören Autorenname, Kategorie, Firmenname, Kommentare, Erstellungszeit, letzte Aktualisierung und vieles mehr. Manchmal müssen Sie unerwünschte Metadatenfelder vollständig löschen oder ihre Werte aktualisieren. Den Dateien sind auch einige versteckte Daten zugeordnet, die mit verschiedenen Tools und Techniken angezeigt werden können. Es gibt viele Fälle, in denen Sie nicht möchten, dass jemand auf diese Daten zugreift. Mit der GroupDocs.Redaction -API können Sie Metadatenschwärzungen auf jede dieser Metadateneigenschaften anwenden. Sie können sie ändern oder löschen, indem Sie die gewünschten Metadaten filtern. In diesem Handbuch erklären wir, wie Sie den Firmennamen aus den XLTX -Metadaten in C# redigieren können.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "XLTX Metadaten in C# redigieren"
      content_left: |
        Mit dem folgenden Code können Sie vertrauliche Daten in einem XLTX -Dokument suchen und redigieren. Sie können den Umfang der Schwärzung festlegen, indem Sie den Filter setzen, z. B. auf MetadataFilter.company. - Dadurch werden die Treffer mit regulären Ausdrücken in allen Metadatenelementen außer der Eigenschaft „Unternehmen“ rückgängig gemacht:
        

      title_right: "So redigieren Sie XLTX Metadaten"
      content_right: |
        * Erstellen Sie eine Instanz der Klasse [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) und laden Sie die Datei XLTX hoch
        * Erstellen Sie eine Instanz der Klasse [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction), um vertrauliche Daten aus den Metadaten des Dokuments zu finden und zu ersetzen
        * Legen Sie den Umfang für die Schwärzung fest, indem Sie den Filter festlegen, z. B. Verwenden Sie MetadataFilter.company im folgenden Code
        * Rufen Sie die Methode [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) mit dem Objekt von [MetadataSearchRedAction] auf (https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "28e28d1f0f09bbb1286cd97b95b22712"
      gistfile: "RedactCompanyMetadata.cs"

    - title_left: "XLTX Metadaten in C# entfernen"
      content_left: |
        Mithilfe der EraseMetaDataRedAction-Klasse können Sie alle oder bestimmte Metadaten im Dokument durch leere (leere oder minimale) Werte ersetzen. Der folgende Code zeigt, wie Sie eine Metadateneigenschaft aus einem XLTX -Dokument filtern und anschließend entfernen können. Im folgenden Beispiel werden alle Eigenschaften des Dokuments ausgeblendet:
        
        
      title_right: "XLTX Metadaten löschen"
      content_right: |
        * Erstellen Sie eine Instanz der Klasse [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) und laden Sie die Datei XLTX hoch
        * Erstellen Sie eine Instanz von [EraseMetadataRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction), um Metadaten des Dokuments zu entfernen
        * Legen Sie den Umfang für die Schwärzung fest, indem Sie den Filter festlegen, z. B. Ersetzen Sie MetadataFilter.all durch MetadataFilter.company im folgenden Code 
        * Rufen Sie die Methode [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) mit dem Objekt von [MetadataSearchRedAction] auf (https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        
      gisthash: "cef91d8d8f160aaf560218d1abd520e2"
      gistfile: "CleanMetadata.cs"

    - title_left: "Systemanforderungen"
      content_left: |
        GroupDocs.Redaction for .NET unterstützt jedes 32-Bit- oder 64-Bit-Betriebssystem, auf dem die .NET -Plattform installiert ist. Es muss keine externe Software oder ein Drittanbieter-Tool installiert werden. Den vollständigen Leitfaden zu den Systemanforderungen finden Sie unter [Systemanforderungen](https://docs.groupdocs.com/redaction/net/system-requirements)
        
      title_right: "Anweisungen zur Installation"
      content_right: |
        Installieren Sie von der Befehlszeile aus als ```nuget install GroupDocs.Redaction ```oder über die Package Manager Console von Visual Studio mit ```Install-Package GroupDocs.Redaction```. 
        Alternativ können Sie das Offline-MSI-Installationsprogramm oder die DLLs in einer ZIP -Datei von [Downloads](https://downloads.groupdocs.com/redaction/net) herunterladen und in Ihrem Projekt manuell darauf verweisen.

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