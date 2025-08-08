
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: it
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Modifica e rimuovi i metadati in EXCEL tramite C#"
head_description: "Metti al sicuro i tuoi documenti EXCEL rimuovendo i metadati utilizzando GroupDocs.Redaction for .NET. Elimina i dati nascosti che potrebbero compromettere la privacy."

############################# Header ############################
title: "Protezione metadati nei file EXCEL tramite .NET" 
description: "Utilizzando C#, puoi pulire dati sensibili dai file EXCEL. Strumenti progettati per mantenere le tue informazioni protette."
subtitle: "I principali benefici di GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Cos'è GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction offre un modo affidabile per gli sviluppatori C# di gestire la redazione nei file EXCEL. Funziona con testo, immagini e metadati.

############################# Steps ############################
steps:
    enable: true
    title: "Pulire i metadati nei file Excel"
    content: |
      Usa GroupDocs.Redaction nei tuoi progetti .NET per gestire i metadati dei documenti in modo sicuro.
      
      1. Crea un oggetto Redactor e carica il file Excel di destinazione.
      2. Configura la redazione per eliminare i metadati nascosti.
      3. Esegui il processo di pulizia.
      4. Salva la versione finale.
   
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
        // Pulisci i metadati in EXCEL

        // Inizializza il redattore e carica il file
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Imposta le opzioni di rimozione dei metadati
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Redigi e salva il risultato
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Elimina dati riservati nei tuoi file"
  description: "GroupDocs.Redaction for .NET ti consente di pulire testo, immagini e metadati in più formati. Ideale per documenti personali, legali e aziendali."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Strumenti per la rimozione dei metadati"
  features:
    # feature loop
    - title: "Cerca e rimuovi testo"
      content: "Trova testi personali o confidenziali nei documenti e rimuovili in modo sicuro."

    # feature loop
    - title: "Nascondi elementi visivi"
      content: "Sovrapponi parti sensibili delle immagini per impedire la visualizzazione."

    # feature loop
    - title: "Rimuovi i metadati"
      content: "Cancella i dati incorporati che possono rivelare informazioni riservate."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Targetizza i metadati per la redazione"
      content: |
        Scopri come individuare e rimuovere metadati come Autore o Titolo da un documento EXCEL.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Importa il documento nel redattore
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Targetizza i metadati dell'Autore
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Targetizza i metadati del Titolo
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Applica le modifiche
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Salva il documento aggiornato
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
    title: "Rimuovi i metadati in EXCEL usando .NET"
    exclude: "EXCEL"
    description: "Elimina i metadati privati nei file EXCEL con .NET. Mantieni i tuoi documenti puliti e sicuri."
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