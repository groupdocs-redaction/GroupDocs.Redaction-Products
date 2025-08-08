
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: it
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Rimuovere i metadati da WORD utilizzando C#"
head_description: "Utilizza GroupDocs.Redaction for .NET per trovare ed eliminare metadati nascosti nei file WORD. Mantieni i tuoi documenti privati e sicuri da esposizioni indesiderate."

############################# Header ############################
title: "Elimina metadati nei file WORD utilizzando .NET" 
description: "Proteggi i dati personali e aziendali nei file WORD con C#. Strumenti semplici per una privacy affidabile dei file."
subtitle: "Cosa puoi fare con GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction aiuta gli sviluppatori C# a proteggere contenuti in file WORD. Pulisci rapidamente testo, immagini e metadati.

############################# Steps ############################
steps:
    enable: true
    title: "Elimina i metadati dai file Word"
    content: |
      Con GroupDocs.Redaction, è facile pulire i metadati dei documenti nel tuo ambiente .NET.
      
      1. Inizializza un oggetto Redactor e apri il tuo documento Word.
      2. Configura le regole per eliminare tutti i metadati nascosti.
      3. Esegui la redazione per rimuovere i tag sensibili.
      4. Salva il tuo documento pulito.
   
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
        // Cancella i metadati dai file WORD

        // Apri il documento utilizzando Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Imposta le opzioni di rimozione dei metadati
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Redigi e salva il file pulito
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redigi dati riservati dai documenti"
  description: "Con GroupDocs.Redaction for .NET, puoi rimuovere contenuti privati da vari formati. Mantieni i tuoi file sicuri pur mantenendo la loro struttura."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Strumenti per redazione di metadati e contenuti"
  features:
    # feature loop
    - title: "Sostituisci testo sensibile"
      content: "Trova testo nei documenti e rimuovilo o cambialo per proteggere informazioni riservate."

    # feature loop
    - title: "Maschera immagini"
      content: "Coprire aree sensibili delle immagini con sovrapposizioni per nascondere dati visivi."

    # feature loop
    - title: "Cancella i metadati"
      content: "Trova e pulisci i dati nascosti per evitare perdite di informazioni."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Modifica o elimina metadati nascosti"
      content: |
        Questo esempio mostra come mirare e pulire le voci di metadati in un documento WORD.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carica il file per la redazione
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Rimuovi il metadato Autore
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Rimuovi il metadato Titolo
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Esegui il processo di redazione
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Esporta il documento pulito
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
    title: "Redazione dei metadati in WORD con .NET"
    exclude: "WORD"
    description: "Utilizza .NET per pulire i metadati nascosti dai file WORD. Strumenti semplici per mantenere le informazioni sensibili al sicuro."
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