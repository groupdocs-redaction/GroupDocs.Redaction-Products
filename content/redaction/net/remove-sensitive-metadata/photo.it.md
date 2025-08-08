
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: it
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Elimina i metadati in PHOTO con C#"
head_description: "GroupDocs.Redaction for .NET ti aiuta a rimuovere i dati nascosti nei file PHOTO che potrebbero rivelare informazioni personali o aziendali."

############################# Header ############################
title: "Rimuovi i metadati da PHOTO con gli strumenti .NET" 
description: "Proteggi facilmente i tuoi documenti rimuovendo informazioni nascoste dai file PHOTO utilizzando C#."
subtitle: "Highlights di GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction aiuta gli sviluppatori C# a nascondere contenuti privati nei file PHOTO, inclusi testo, parti di immagini e metadati.

############################# Steps ############################
steps:
    enable: true
    title: "Elimina i metadati nei file Photo"
    content: |
      Usa GroupDocs.Redaction nel tuo progetto .NET per pulire i metadati dei documenti.
      
      1. Avvia un Redactor e apri il tuo file Photo.
      2. Imposta le regole per eliminare i metadati.
      3. Applica la redazione e pulisci il file.
      4. Salva il file risultante.
   
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
        // Elimina i metadati dai documenti PHOTO

        // Usa Redactor per caricare il documento
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // Imposta i campi di metadati per la redazione
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Pulisci il documento e salva
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Elimina informazioni private dai file"
  description: "GroupDocs.Redaction for .NET ti offre modi per rimuovere dati personali da testo, immagini e dettagli del file. Perfetto per la sicurezza dei dati."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Caratteristiche utili di redazione"
  features:
    # feature loop
    - title: "Pulizia del testo"
      content: "Scansiona ed elimina qualsiasi testo che non dovrebbe essere condiviso."

    # feature loop
    - title: "Copertura delle aree delle immagini"
      content: "Aggiungi coperture su parti delle immagini con dettagli privati."

    # feature loop
    - title: "Rimuovi i metadati"
      content: "Elimina i dati nascosti prima di condividere o pubblicare."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Elimina i campi di metadati nascosti"
      content: |
        Questo esempio ti guida alla rimozione dei metadati in un documento PHOTO.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carica il file PHOTO nel redattore
          using (Redactor redactor  = new Redactor("source.jpeg"))
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

              // Elabora il documento
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
    title: "Utilizza .NET per redigere i metadati di PHOTO"
    exclude: "PHOTO"
    description: "Mantieni i tuoi documenti PHOTO al sicuro pulendo i metadati con gli strumenti di .NET."
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