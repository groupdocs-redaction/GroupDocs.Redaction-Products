
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: it
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Cancella i metadati dai file PPTX con C#"
head_description: "GroupDocs.Redaction for .NET ti aiuta a eliminare o modificare i metadati nei file PPTX. Proteggi i tuoi documenti rimuovendo dati di sfondo privati."

############################# Header ############################
title: "Rimuovere i metadati in PPTX utilizzando gli strumenti .NET" 
description: "Nascondi i metadati sensibili nei file PPTX utilizzando C#. Ideale per la privacy aziendale e personale."
subtitle: "Funzioni principali di GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Scopri di più su GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction è un toolkit di redazione per sviluppatori C#, aiutandoti a lavorare su redazioni di testo, immagini e metadati in file PPTX.

############################# Steps ############################
steps:
    enable: true
    title: "Cancella i metadati nascosti nei file Pptx"
    content: |
      GroupDocs.Redaction supporta le tue soluzioni .NET a pulire rapidamente i dati nascosti.
      
      1. Crea un'istanza di Redactor e carica il file Pptx.
      2. Configura le regole di redazione per i campi di metadati.
      3. Applica la redazione per rimuovere i dati.
      4. Salva il tuo file redatto.
   
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
        // Elimina i metadati in PPTX

        // Apri il file utilizzando Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Imposta la redazione per la pulizia dei metadati
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Applica e salva il file
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Strumenti di redazione extra per qualsiasi file"
  description: "GroupDocs.Redaction for .NET supporta la redazione di contenuti in diversi formati. Assicurati che i tuoi dati siano privati e i tuoi file siano puliti."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Strumenti di privacy integrati"
  features:
    # feature loop
    - title: "Trova e rimuovi testo"
      content: "Elimina rapidamente le voci di testo personale dai tuoi file."

    # feature loop
    - title: "Coprire immagini con sovrapposizioni"
      content: "Nascondi le sezioni delle immagini che non devono essere visibili."

    # feature loop
    - title: "Elimina i metadati"
      content: "Cancella i campi nascosti come autore, titolo e altro per rimanere al sicuro."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Pulizia dei campi di metadati"
      content: |
        Questo esempio mostra come pulire i metadati da un file PPTX in modo sicuro.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Importa il file PPTX
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Redigi il campo Autore
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Redigi il campo Titolo
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Esegui il processo di redazione
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Esporta il file redatto
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
    title: "Pulire i file PPTX con .NET"
    exclude: "PPTX"
    description: "Usa .NET per eliminare i dati nascosti nei file PPTX. Ideale per la sicurezza dei documenti."
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