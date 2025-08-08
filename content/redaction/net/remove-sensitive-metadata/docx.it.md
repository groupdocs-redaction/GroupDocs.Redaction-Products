
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: it
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Rimuovere i metadati da DOCX utilizzando C#"
head_description: "Usa GroupDocs.Redaction for .NET per eliminare o modificare metadati nascosti nei file DOCX. Proteggi i tuoi documenti da esposizioni indesiderate."

############################# Header ############################
title: "Elimina i metadati nei file DOCX con .NET" 
description: "Usa C# per pulire i metadati sensibili dai file DOCX. Mantieni i tuoi dati aziendali e personali protetti."
subtitle: "Le migliori caratteristiche di GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Cos'è GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction fornisce agli sviluppatori C# strumenti per nascondere o rimuovere contenuti nei file DOCX. Pulisci rapidamente testo, immagini e metadati.

############################# Steps ############################
steps:
    enable: true
    title: "Pulisci i dati nascosti nei file Docx"
    content: |
      GroupDocs.Redaction aiuta i tuoi progetti .NET a rimuovere rapidamente i metadati indesiderati.
      
      1. Crea un'istanza di Redactor e apri il tuo file Docx.
      2. Configura la redazione per mirare alle voci di metadati.
      3. Applica le modifiche per pulire il documento.
      4. Salva il file pulito.
   
    code:
      platform: "net"
      copy_title: "Copia"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redazioni di esempio"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "clicca per copiare"
        copy_done: "copiato"
      links:
        #  loop
        - title: "Altri esempi"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "Documentazione"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // Cancella i metadati dai documenti DOCX

        // Carica il file utilizzando Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Configura le impostazioni di rimozione dei metadati
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Applica e salva le modifiche
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nascondi informazioni sensibili in qualsiasi documento"
  description: "GroupDocs.Redaction for .NET ti consente di pulire contenuti riservati in molti tipi di file. Rendi i tuoi documenti più sicuri da condividere o archiviare."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Opzioni intelligenti di redazione"
  features:
    # feature loop
    - title: "Rimuovi testo privato"
      content: "Cerca ed elimina testo personale o aziendale dai tuoi file."

    # feature loop
    - title: "Maschera immagini"
      content: "Coprire le immagini o aree selezionate per nascondere contenuti riservati."

    # feature loop
    - title: "Cancella i metadati"
      content: "Rimuovi voci di metadati nascosti per evitare perdite di dettagli di contesto."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Pulisci i campi di metadati"
      content: |
        Questo esempio dimostra come rimuovere i dati nascosti dai file DOCX.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carica il tuo file DOCX
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Targetizza il campo Autore per la rimozione
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Targetizza il campo Titolo per la rimozione
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Esegui il processo di redazione
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Salva il tuo file aggiornato
              var saveOptions = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(saveOptions);
          }
          ```
        platform: "net"
        copy_title: "Copia"
        install:
          command: "dotnet add package GroupDocs.Redaction"
          copy_tip: "clicca per copiare"
          copy_done: "copiato"
        top_links:
          #  loop
          - title: "Scarica risultato"
            icon: "download"
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
        links:
          #  loop
          - title: "Altri esempi"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "Documentazione"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "Pronto per iniziare?"
  description: "Prova le funzionalità di GroupDocs.Redaction gratuitamente o richiedi una licenza"
  items:
    #  loop
    - title: "Download Nuget"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "Licenze"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Elimina i metadati in DOCX con .NET"
    exclude: "DOCX"
    description: "Rimuovi i metadati indesiderati nei file DOCX utilizzando .NET. Un modo semplice per proteggere i dettagli nascosti del tuo file."
    items: 
        # format loop 1
        - name: "Redazione PDF"
          format: "PDF"
          link: "/redaction/net/remove-sensitive-metadata//pdf/"
          description: "Formato Documento Portabile Adobe"

        # format loop 2
        - name: "Redazione Word"
          format: "WORD"
          link: "/redaction/net/remove-sensitive-metadata//word/"
          description: "Documenti MS Word e Open Office"
          
        # format loop 3
        - name: "Redazione Excel"
          format: "EXCEL"
          link: "/redaction/net/remove-sensitive-metadata//excel/"
          description: "Fogli di calcolo MS Excel e Open Office"

        # format loop 4
        - name: "Redazione PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/remove-sensitive-metadata//powerpoint/"
          description: "Presentazioni MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redazione Immagine"
          format: "IMAGE"
          link: "/redaction/net/remove-sensitive-metadata//image/"
          description: "Formati di immagine popolari"

        # format loop 6
        - name: "Redazione Foto"
          format: "PHOTO"
          link: "/redaction/net/remove-sensitive-metadata//photo/"
          description: "Formati fotografici"

        # format loop 7
        - name: "Redazione DOCX"
          format: "DOCX"
          link: "/redaction/net/remove-sensitive-metadata//docx/"
          description: "Documento Open XML di Microsoft Word"
          
        # format loop 8
        - name: "Redazione XLSX"
          format: "XLSX"
          link: "/redaction/net/remove-sensitive-metadata//xlsx/"
          description: "Foglio di calcolo Open XML di Microsoft Excel"
          
        # format loop 9
        - name: "Redazione PPTX"
          format: "PPTX"
          link: "/redaction/net/remove-sensitive-metadata//pptx/"
          description: "Presentazione Open XML di PowerPoint"

        # format loop 10
        - name: "Redazione JPEG"
          format: "JPEG"
          link: "/redaction/net/remove-sensitive-metadata//jpeg/"
          description: "Immagine JPEG"


---