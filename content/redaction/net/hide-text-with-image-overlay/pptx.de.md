
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: de
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Text in PPTX mit Überlagerungen und C# redigieren"
head_description: "Verstecken Sie private Inhalte in PPTX-Dokumenten, indem Sie sie mit farbigen Quadraten mithilfe von GroupDocs.Redaction for .NET abdecken. Halten Sie Ihr Layout genau so, wie es ist."

############################# Header ############################
title: "Text in PPTX mit Überlagerungen mithilfe von .NET redigieren" 
description: "Mit C# und GroupDocs.Redaction for .NET ist es einfach, sensible Daten in PPTX-Dateien zu schützen, indem Sie sie aus dem Blickfeld ausblenden."
subtitle: "Erforschen Sie GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Was GroupDocs.Redaction for .NET tut"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET ermöglicht es Ihnen, Inhalte in PPTX-Dokumenten mit C# abzudecken oder zu entfernen. Blenden Sie alles aus, von Namen bis Notizen, in nur wenigen Schritten.

############################# Steps ############################
steps:
    enable: true
    title: "Verstecken Sie private Inhalte in Ihren Pptx-Dateien"
    content: |
      Mit GroupDocs.Redaction for .NET können .NET-Entwickler Dokumente in wenigen einfachen Schritten schützen.
      
      1. Starten Sie einen Redactor mit dem Pfad zur Datei, die Sie bereinigen möchten.
      2. Wählen Sie die Redaktionsregeln aus, die Ihren Bedürfnissen entsprechen.
      3. Wählen Sie ein Muster aus, das übereinstimmt, und eine Farbe für die Bildüberlagerung.
      4. Führen Sie die Redaktion aus und speichern Sie Ihre aktualisierte Datei.
   
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
        // Verwenden Sie Überlagerungen, um Text in PPTX abzudecken

        // Initialisieren Sie Redactor mit Ihrer Datei
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Definieren Sie, wie die Redaktion ablaufen soll
            // Legen Sie fest, was zu verbergen ist, und die Farbe der Überlagerung
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Führen Sie die Änderung durch und speichern Sie die Änderungen
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Weitere Möglichkeiten, Ihre Dateien zu schützen"
  description: "GroupDocs.Redaction for .NET gibt Ihnen die Werkzeuge, um Daten in verschiedenen Formaten zu verbergen, ohne das Layout zu ändern."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Funktionen, die wichtig sind"
  features:
    # feature loop
    - title: "Text nach Bedarf ersetzen"
      content: "Ersetzen Sie Texte, um wichtige Informationen vor unbefugten Benutzern fernzuhalten."

    # feature loop
    - title: "Verstecken Sie Bildbereiche"
      content: "Verstecken Sie vollständige Bilder oder bestimmte Teile, indem Sie Überlagerungsblöcke zeichnen."

    # feature loop
    - title: "Löschen Sie versteckte Daten"
      content: "Löschen Sie die eingebetteten Metadaten, die private Details offenbaren könnten."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Reguläre Ausdrucksredaktion"
      content: |
        Dieses Beispiel zeigt, wie Text mithilfe regulärer Ausdrücke gesucht und ausgeblendet werden kann.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Laden Sie eine Datei zur Redaktion
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Stellen Sie die Redaktionsregeln ein: Suchtext und Blockfarbe
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Wenden Sie die Redaktionslogik an
              redactor.Apply(redaction);

              // Speichern Sie das redigierte Ergebnis
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
    title: "Sichern Sie PPTX-Text mit .NET-Tools"
    exclude: "PPTX"
    description: "Decken Sie private Bereiche ab oder entfernen Sie versteckte Daten in PPTX-Dateien mithilfe der Redaktionsfunktionen von .NET."
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