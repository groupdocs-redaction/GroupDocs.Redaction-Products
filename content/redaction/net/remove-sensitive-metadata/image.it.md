
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: it
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Rimuovi metadati nascosti in IMAGE con C#"
head_description: "Usa GroupDocs.Redaction for .NET per pulire i metadati nei tuoi file IMAGE. Assicurati che i dettagli privati rimangano privati."

############################# Header ############################
title: "Cancella i metadati nei file IMAGE tramite .NET" 
description: "Mantieni i tuoi file IMAGE al sicuro utilizzando C#. Proteggi dati aziendali e personali nel modo più semplice."
subtitle: "Cosa ottieni con GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction aiuta gli utenti C# a pulire i file rimuovendo testo indesiderato, parti delle immagini e metadati nei file IMAGE.

############################# Steps ############################
steps:
    enable: true
    title: "Pulire i metadati nei file Image"
    content: |
      Inizia con GroupDocs.Redaction nella tua app .NET per pulire i metadati del file.
      
      1. Crea un Redactor e apri il tuo file Image.
      2. Scegli le opzioni per rimuovere le voci di metadati nascosti.
      3. Applica le impostazioni di redazione.
      4. Salva il risultato.
   
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
        // Rimuovi i metadati nascosti dai file IMAGE

        // Apri il file con Redactor
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // Aggiungi le regole di redazione per i metadati
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Elabora e salva
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Pulisci il contenuto in qualsiasi documento"
  description: "GroupDocs.Redaction for .NET rimuove testo privato, parti delle immagini o campi nascosti. Rendi i documenti sicuri da condividere."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Caratteristiche principali"
  features:
    # feature loop
    - title: "Redazione del testo"
      content: "Trova e rimuovi parole e numeri privati."

    # feature loop
    - title: "Copertura delle immagini"
      content: "Aggiungi maschere alle immagini per coprire le informazioni visive."

    # feature loop
    - title: "Redazione dei metadati"
      content: "Elimina i campi di metadati che potrebbero rivelare informazioni."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Elimina metadati sensibili"
      content: |
        Questo esempio mostra come eliminare specifici campi di metadati in un documento IMAGE.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Apri IMAGE con il redattore
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // Targetizza il campo Autore
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Targetizza il campo Titolo
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Procedi con la redazione dei campi
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Salva il tuo documento
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
    title: "Rimuovi metadati da IMAGE utilizzando .NET"
    exclude: "IMAGE"
    description: "Elimina i dati sensibili dai file IMAGE con la redazione di .NET. Mantieni i tuoi file sicuri da condividere o archiviare."
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