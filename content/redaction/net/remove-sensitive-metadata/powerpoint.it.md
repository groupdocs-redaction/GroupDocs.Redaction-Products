
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: it
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Pulisci i metadati in POWERPOINT con C#"
head_description: "Rimuovi i metadati indesiderati dai file POWERPOINT utilizzando GroupDocs.Redaction for .NET. Proteggi la tua privacy eliminando dati nascosti."

############################# Header ############################
title: "Cancella i metadati in POWERPOINT tramite .NET" 
description: "Proteggi i dati del documento nei file POWERPOINT con strumenti semplici progettati per C#. Rimuovi i metadati in pochi passaggi."
subtitle: "Caratteristiche di GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Scopri di più su GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction è un toolkit di redazione per sviluppatori C#, aiutandoti a lavorare con le redazioni di testo, immagini e metadati nei file POWERPOINT.

############################# Steps ############################
steps:
    enable: true
    title: "Pulire i metadati dai documenti Powerpoint"
    content: |
      Con GroupDocs.Redaction, le tue applicazioni .NET possono facilmente rimuovere metadati dai documenti.
      
      1. Inizia con un oggetto Redactor e carica il tuo file.
      2. Scegli i campi di metadati da rimuovere.
      3. Applica le impostazioni di redazione.
      4. Esporta il documento finale e pulito.
   
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
        // Elimina i metadati in POWERPOINT

        // Apri il documento con il redattore
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Imposta le opzioni di pulizia dei metadati
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Applica la redazione e salva
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Proteggi i documenti con la redazione"
  description: "GroupDocs.Redaction for .NET aiuta a rimuovere contenuti nascosti dai documenti in modo che tu possa condividerli in sicurezza. Funziona con molti formati e tipi di contenuto."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Capacità di redazione"
  features:
    # feature loop
    - title: "Rimuovi testo privato"
      content: "Trova parole o frasi sensibili e rimuovile dal tuo documento."

    # feature loop
    - title: "Maschera i dati delle immagini"
      content: "Usa sovrapposizioni per coprire aree nelle immagini che devono rimanere nascoste."

    # feature loop
    - title: "Elimina i metadati"
      content: "Pulisci i campi di metadati che potrebbero contenere informazioni nascoste."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Pulisci i campi di metadati nascosti"
      content: |
        Questo esempio ti guida alla rimozione dei dati incorporati come Autore e Titolo da un file POWERPOINT.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Importa il file nel redattore
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Rimuovi i dati dell'Autore
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Rimuovi i dati del Titolo
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Esegui la redazione
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Salva la versione pulita
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
    title: "Pulisci i file POWERPOINT con .NET"
    exclude: "POWERPOINT"
    description: "Utilizza .NET per eliminare i dati nascosti nei file POWERPOINT. Ideale per la pulizia di documenti riservati."
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