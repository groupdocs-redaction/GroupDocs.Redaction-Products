
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: de
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Metadaten in POWERPOINT mit C# bereinigen"
head_description: "Entfernen Sie unerwünschte Metadaten aus POWERPOINT-Dateien mit GroupDocs.Redaction for .NET. Schützen Sie Ihre Privatsphäre, indem Sie versteckte Daten löschen."

############################# Header ############################
title: "Metadaten in POWERPOINT über .NET löschen" 
description: "Schützen Sie Dokumentendaten in POWERPOINT-Dateien mit einfachen, für C# entwickelten Tools. Entfernen Sie Metadaten in nur wenigen Schritten."
subtitle: "Funktionen von GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Mehr über GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ist ein Redaktionswerkzeug für C#-Entwickler, das Ihnen hilft, mit Text-, Bild- und Metadatenredaktionen in POWERPOINT-Dateien zu arbeiten.

############################# Steps ############################
steps:
    enable: true
    title: "Metadaten aus Powerpoint-Dokumenten bereinigen"
    content: |
      Mit GroupDocs.Redaction können Ihre .NET-Apps einfach Metadaten aus Dokumenten entfernen.
      
      1. Beginnen Sie mit einem Redactor-Objekt und laden Sie Ihre Datei.
      2. Wählen Sie die Metadatenfelder aus, die entfernt werden sollen.
      3. Führen Sie die Redigierungseinstellungen an.
      4. Exportieren Sie das endgültige, bereinigte Dokument.
   
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
        // Löschen Sie Metadaten in POWERPOINT

        // Öffnen Sie das Dokument mit dem Redaktor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Legen Sie Optionen zur Bereinigung der Metadaten fest
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Wenden Sie die Redigierung an und speichern Sie
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Dokumente mit Redigierung schützen"
  description: "GroupDocs.Redaction for .NET hilft dabei, versteckte Inhalte aus Dokumenten zu entfernen, damit Sie sie sicher teilen können. Funktioniert mit vielen Formaten und Inhaltstypen."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Redaktionsfähigkeiten"
  features:
    # feature loop
    - title: "Sensible Texte entfernen"
      content: "Finden Sie sensible Wörter oder Phrasen und entfernen Sie diese aus Ihrem Dokument."

    # feature loop
    - title: "Bilddaten maskieren"
      content: "Verwenden Sie Überlagerungen, um Bereiche in Bildern abzudecken, die verborgen bleiben müssen."

    # feature loop
    - title: "Metadaten löschen"
      content: "Bereinigen Sie Metadatenfelder, die möglicherweise versteckte Informationen enthalten."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Versteckte Metadatenfelder bereinigen"
      content: |
        Dieses Beispiel führt Sie durch das Entfernen eingebetteter Daten wie Autor und Titel aus einer POWERPOINT-Datei.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Importieren Sie die Datei in den Redaktor
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Entfernen Sie die Autorendaten
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Entfernen Sie die Titeldaten
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Führen Sie die Redigierung aus
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Speichern Sie die bereinigte Version
              var saveOptions = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(saveOptions);
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "POWERPOINT-Dateien mit .NET bereinigen"
    exclude: "POWERPOINT"
    description: "Verwenden Sie .NET, um versteckte Daten in POWERPOINT-Dateien zu löschen. Ideal zum Bereinigen vertraulicher Dokumente."
    items: 
        # format loop 1
        - name: "PDF redigieren"
          format: "PDF"
          link: "/redaction/net/remove-sensitive-metadata//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Word redigieren"
          format: "WORD"
          link: "/redaction/net/remove-sensitive-metadata//word/"
          description: "MS Word und Open Office Dokumente"
          
        # format loop 3
        - name: "Excel redigieren"
          format: "EXCEL"
          link: "/redaction/net/remove-sensitive-metadata//excel/"
          description: "MS Excel und Open Office Tabellenkalkulationen"

        # format loop 4
        - name: "PowerPoint redigieren"
          format: "POWERPOINT"
          link: "/redaction/net/remove-sensitive-metadata//powerpoint/"
          description: "MS PowerPoint und Open Office Präsentationen"

        # format loop 5
        - name: "Bild redigieren"
          format: "IMAGE"
          link: "/redaction/net/remove-sensitive-metadata//image/"
          description: "Beliebte Bildformate"

        # format loop 6
        - name: "Foto redigieren"
          format: "PHOTO"
          link: "/redaction/net/remove-sensitive-metadata//photo/"
          description: "Fot Formate"

        # format loop 7
        - name: "DOCX redigieren"
          format: "DOCX"
          link: "/redaction/net/remove-sensitive-metadata//docx/"
          description: "Microsoft Word Open XML Dokument"
          
        # format loop 8
        - name: "XLSX redigieren"
          format: "XLSX"
          link: "/redaction/net/remove-sensitive-metadata//xlsx/"
          description: "Microsoft Excel Open XML Tabellenkalkulation"
          
        # format loop 9
        - name: "PPTX redigieren"
          format: "PPTX"
          link: "/redaction/net/remove-sensitive-metadata//pptx/"
          description: "PowerPoint Open XML Präsentation"

        # format loop 10
        - name: "JPEG redigieren"
          format: "JPEG"
          link: "/redaction/net/remove-sensitive-metadata//jpeg/"
          description: "JPEG Bild"


---