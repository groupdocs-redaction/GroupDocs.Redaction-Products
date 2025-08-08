
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: de
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Verstecken Sie vertrauliche Texte in POWERPOINT mit C#-Überlagerungen"
head_description: "GroupDocs.Redaction for .NET ermöglicht es Ihnen, Teile von POWERPOINT-Dateien mithilfe einfacher Überlagerungsredaktionen zu verbergen. Halten Sie Dokumente sicher, ohne die Struktur zu ändern."

############################# Header ############################
title: "Textredaktion in POWERPOINT mit Überlagerungen mithilfe von .NET" 
description: "Schützen Sie Inhalte in Ihren POWERPOINT-Dateien, indem Sie Überlagerungsblöcke mithilfe von C# und GroupDocs.Redaction for .NET hinzufügen."
subtitle: "Werkzeuge in GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Über dieses Tool"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET hilft C#-Benutzern, POWERPOINT-Dokumente durch Abdecken oder Löschen von Text, Metadaten oder Bildern nach Bedarf zu bereinigen.

############################# Steps ############################
steps:
    enable: true
    title: "Sichern Sie Inhalte in Powerpoint-Dokumenten"
    content: |
      Verwenden Sie GroupDocs.Redaction for .NET in Ihren .NET-Apps, um Dateien vor der Verteilung zu bereinigen.
      
      1. Übergeben Sie den Dateipfad an eine neue Redactor-Instanz.
      2. Legen Sie fest, was und wie Sie redigieren möchten.
      3. Definieren Sie das Textmuster und setzen Sie die Überlagerungsfarbe.
      4. Redigieren Sie und speichern Sie Ihre aktualisierte Datei.
   
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
        // Überlagern Sie Texte in POWERPOINT, um Details zu verbergen

        // Verwenden Sie Redactor, um Ihre Datei zu öffnen
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Passen Sie die Einstellungen für die Redaktion an
            // Wählen Sie den Text und die Blockfarbe aus
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Führen Sie die Änderung aus und speichern Sie Ihre redigierte Datei
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Verstecken Sie vertrauliche Daten einfach"
  description: "Verwenden Sie GroupDocs.Redaction for .NET, um Inhalte in verschiedenen Dokumenttypen zu entfernen oder abzudecken - ideal für den Schutz von Daten in rechtlichen, geschäftlichen oder persönlichen Dateien."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Flexibles Dokumentenredigieren"
  features:
    # feature loop
    - title: "Texte ersetzen"
      content: "Finden Sie Wörter oder Zahlen und ersetzen oder verstecken Sie sie."

    # feature loop
    - title: "Verstecken Sie Fotos oder Abschnitte"
      content: "Fügen Sie Überlagerungen für Bilder oder ausgewählte Stellen auf einer Seite hinzu."

    # feature loop
    - title: "Entfernen Sie zusätzliche Daten"
      content: "Bereinigen Sie Metadaten, die möglicherweise versteckte Informationen offenbaren."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Finden & redigieren mit Regex"
      content: |
        Dies zeigt, wie Regex helfen kann, Texte zu identifizieren und auszublenden
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Öffnen Sie die Datei, die redigiert werden muss
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Stellen Sie Ihre Regeln mit Regex ein
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Führen Sie den Redaktionsprozess aus
              redactor.Apply(redaction);

              // Speichern Sie die bereinigte Version
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
    title: "Verstecken Sie Inhalte in POWERPOINT mithilfe von .NET"
    exclude: "POWERPOINT"
    description: "Fügen Sie Überlagerungen hinzu oder löschen Sie Daten aus Ihren POWERPOINT-Dateien, um vertrauliche Inhalte mithilfe von .NET privat zu halten."
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