
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "de/redaction/net/metadata/title/pptm"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redaktionen von Metadaten aus Dokumenten in C#"
head_description: "Schwärzen Sie sensible Metadaten in C#, indem Sie Filter für Dokumente verschiedener Formate anwenden"

############################# Header ############################
title: "Titel-Metadaten aus dem Dokument PPTM in C# redigieren"
description: "Die API von GroupDocs.Redaction ermöglicht das Suchen und anschließende Aktualisieren oder Entfernen vertraulicher Daten aus den Metadaten eines Dokuments."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Was ist Metadatenredaktion?"
    content: |
        Die meisten Menschen befassen sich mit der Textredaktion eines Dokuments. Aber die Redaktion von Metadaten ist genauso wichtig. Metadaten sind die versteckten Daten eines Dokuments, die vertrauliche Informationen enthalten können, die Sie möglicherweise nicht mit anderen teilen möchten. Die Redaktion von Metadaten bezieht sich auf das Entfernen unerwünschter oder vertraulicher Informationen aus elektronischen Dokumenten. Zu den Metadaten eines Dokuments gehören Autorenname, Kategorie, Firmenname, Kommentare, Erstellungszeit, letzte Aktualisierung und vieles mehr. Manchmal müssen Sie unerwünschte Metadatenfelder vollständig löschen oder ihre Werte aktualisieren. Mit der GroupDocs.Redaction -API können Sie Metadatenschwärzungen auf jede dieser Metadateneigenschaften anwenden. Sie können sie ändern oder löschen, indem Sie die gewünschten Metadaten filtern. In diesem Handbuch erklären wir, wie Sie Titelmetadaten aus dem Dokument PPTM in C# redigieren können.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Titel aus PPTM Dokument redigieren"
      content_left: |
        Mit dem folgenden Code können Sie vertrauliche Daten in einem PPTM -Dokument suchen und redigieren. Sie können den Umfang der Schwärzung festlegen, indem Sie den Filter setzen, z. B. auf MetadataFilter.title. Dadurch werden die Treffer mit regulären Ausdrücken in allen Metadatenelementen außer der Eigenschaft „Title“ rückgängig gemacht:
        

      title_right: "So redigieren Sie PPTM Metadaten"
      content_right: |
        * Erstellen Sie eine Instanz der Klasse [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) und laden Sie die Datei PPTM hoch
        * Erstellen Sie eine Instanz der Klasse [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction), um vertrauliche Daten aus den Metadaten des Dokuments zu finden und zu ersetzen
        * Legen Sie den Umfang für die Schwärzung fest, indem Sie den Filter festlegen, z. B. Verwenden Sie MetadataFilter.title im folgenden Code
        * Rufen Sie die Methode [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) mit dem Objekt von [MetadataSearchRedAction] auf (https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "78fca6b6facd4e3ea79038d7abcb092f"
      gistfile: "RedactTitleMetadata.cs"

    - title_left: "PPTM Metadaten in C# entfernen"
      content_left: |
        Mithilfe der EraseMetaDataRedAction-Klasse können Sie alle oder bestimmte Metadaten im Dokument durch leere (leere oder minimale) Werte ersetzen. Der folgende Code zeigt, wie Sie eine Metadateneigenschaft aus einem PPTM -Dokument filtern und anschließend entfernen können. Im folgenden Beispiel werden alle Eigenschaften des Dokuments ausgeblendet:
        
        
      title_right: "PPTM Metadaten löschen"
      content_right: |
        * Erstellen Sie eine Instanz der Klasse [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) und laden Sie die Datei PPTM hoch
        * Erstellen Sie eine Instanz von [EraseMetadataRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction), um Metadaten des Dokuments zu entfernen
        * Legen Sie den Umfang für die Schwärzung fest, indem Sie den Filter festlegen, z. B. ersetzen Sie MetadataFilter.all durch MetadataFilter.title im folgenden Code 
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