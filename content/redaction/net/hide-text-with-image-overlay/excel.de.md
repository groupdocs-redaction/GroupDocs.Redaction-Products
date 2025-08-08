
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: de
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "In EXCEL-Dokumenten Inhalte mit Überlagerungsredaktionen und C# ausblenden"
head_description: "Decken Sie Texte in EXCEL-Dokumenten mit festen Farbkasten ab, die mit GroupDocs.Redaction for .NET erstellt wurden. Ein einfacher Weg, um private Inhalte zu schützen."

############################# Header ############################
title: "Überlagerungsredaktion für EXCEL-Dateien in .NET" 
description: "Verwenden Sie C#-Code, um Texte auszublenden und Daten in Ihren EXCEL-Dateien zu schützen. Eine saubere Lösung für die Dokumentensicherheit."
subtitle: "Was GroupDocs.Redaction for .NET beinhaltet" 

############################# About ############################
about:
    enable: true
    title: "Warum GroupDocs.Redaction for .NET wählen"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET wurde für C#-Entwickler entwickelt, die Inhalte in EXCEL-Dateien redigieren oder löschen möchten. Verwenden Sie es, um mit Text, Metadaten und Bildern zu arbeiten.

############################# Steps ############################
steps:
    enable: true
    title: "Schützen Sie vertrauliche Informationen im Excel-Format"
    content: |
      GroupDocs.Redaction for .NET ist ein einfaches Werkzeug für .NET-Entwickler, um Dokumente vor der Weitergabe zu bereinigen.
      
      1. Starten Sie eine Redactor-Instanz und laden Sie Ihre Excel-Datei.
      2. Legen Sie die Redaktionsparameter für Ihre Aufgabe fest.
      3. Fügen Sie ein Schlüsselwort oder einen Satz ein, den Sie redigieren möchten, und wählen Sie eine Farbe.
      4. Führen Sie das Tool aus und speichern Sie die Änderungen.
   
    code:
      platform: "net"
      copy_title: "Kopieren"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Beispielredaktionen"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "Klicken zum Kopieren"
        copy_done: "kopiert"
      links:
        #  loop
        - title: "Weitere Beispiele"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "Dokumentation"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // Verwenden Sie Überlagerungen, um Texte in EXCEL auszublenden

        // Erstellen Sie einen Redactor und laden Sie Ihre Datei
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Wählen Sie die Redaktionsregeln
            // Geben Sie ein, was zu verstecken ist, und wählen Sie eine Farbe
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Wenden Sie die Redaktion an und speichern Sie die Datei
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Wichtige Funktionen zum Datenschutz"
  description: "GroupDocs.Redaction for .NET ermöglicht es Ihnen, Daten innerhalb Ihrer Dokumente auszublenden oder zu löschen, ohne das Layout oder die Bedeutung zu verlieren."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Für die Dokumentensicherheit entwickelt"
  features:
    # feature loop
    - title: "Textinhalt ändern"
      content: "Ersetzen Sie ausgewählte Wörter im gesamten Dokument oder blenden Sie sie aus."

    # feature loop
    - title: "Visuelle Inhalte redigieren"
      content: "Verstecken Sie Fotos oder Bereiche mit einfachen Blöcken."

    # feature loop
    - title: "Metadaten bereinigen"
      content: "Entfernen Sie Hintergrunddaten wie Autorennamen oder Zeitstempel."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex-Textredaktion"
      content: |
        Hier erfahren Sie, wie Sie Regex verwenden, um Inhalte in einer Datei zu finden und auszublenden.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Laden Sie das Dokument, das bearbeitet werden soll
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Fügen Sie Muster und Überlagerungseinstellungen hinzu
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Wenden Sie die Änderungen an
              redactor.Apply(redaction);

              // Speichern Sie das redigierte Dokument und schließen Sie es
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
          }
          ```
        platform: "net"
        copy_title: "Kopieren"
        install:
          command: "dotnet add package GroupDocs.Redaction"
          copy_tip: "Klicken zum Kopieren"
          copy_done: "kopiert"
        top_links:
          #  loop
          - title: "Ergebnis herunterladen"
            icon: "download"
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
        links:
          #  loop
          - title: "Weitere Beispiele"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "Dokumentation"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "Bereit loszulegen?"
  description: "Testen Sie die Funktionen von GroupDocs.Redaction kostenlos oder fordern Sie eine Lizenz an"
  items:
    #  loop
    - title: "Nuget Download"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "Lizenzierung"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Redigieren Sie EXCEL-Dateien mit .NET"
    exclude: "EXCEL"
    description: "Decken Sie vertrauliche Inhalte in EXCEL mithilfe von quadratischen Überlagerungen oder klaren Redaktionen mit den Funktionen von .NET ab."
    items: 
        # format loop 1
        - name: "PDF redigieren"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Word redigieren"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "MS Word und Open Office Dokumente"
          
        # format loop 3
        - name: "Excel redigieren"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "MS Excel und Open Office Tabellenkalkulationen"

        # format loop 4
        - name: "PowerPoint redigieren"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "MS PowerPoint und Open Office Präsentationen"

        # format loop 5
        - name: "DOCX redigieren"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "Microsoft Word Open XML Dokument"
          
        # format loop 6
        - name: "XLSX redigieren"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "Microsoft Excel Open XML Tabellenkalkulation"
          
        # format loop 7
        - name: "PPTX redigieren"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "PowerPoint Open XML Präsentation"


---