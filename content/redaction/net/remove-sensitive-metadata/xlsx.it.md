
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: it
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Pulire i metadati nei file XLSX con C#"
head_description: "Con GroupDocs.Redaction for .NET, puoi rimuovere in modo sicuro i metadati dai file XLSX. Pulisci le informazioni nascoste che potrebbero rivelare dati privati."

############################# Header ############################
title: "Cancella i metadati dai file XLSX utilizzando .NET" 
description: "Proteggi i dettagli sensibili nei tuoi file XLSX con C#. Redazione semplice per documenti personali e professionali."
subtitle: "Esplora cosa può fare GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Scopri GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction offre agli sviluppatori C# strumenti per pulire i contenuti nei documenti XLSX. Maschera o elimina testo, immagini e metadati con precisione.

############################# Steps ############################
steps:
    enable: true
    title: "Pulire i metadati nei file Xlsx"
    content: |
      Con GroupDocs.Redaction, le tue app .NET possono rimuovere rapidamente dati nascosti.
      
      1. Imposta un Redactor e apri il tuo file Xlsx.
      2. Definisci quali metadati desideri eliminare.
      3. Applica le regole di redazione.
      4. Salva il file finale.
   
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
        // Pulisci i metadati nascosti in XLSX

        // Apri il file con Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Imposta quali metadati rimuovere
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Applica la redazione e salva
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Proteggi informazioni sensibili nei documenti"
  description: "Usa GroupDocs.Redaction for .NET per cancellare o nascondere contenuti in molti formati di file. Mantieni i file privati e pronti per essere condivisi."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Caratteristiche all-in-one di redazione"
  features:
    # feature loop
    - title: "Sostituisci o rimuovi testo"
      content: "Proteggi i dati personali trovando e rimuovendo testi sensibili."

    # feature loop
    - title: "Nascondi sezioni delle immagini"
      content: "Usa sovrapposizioni per bloccare aree delle immagini con visuali private."

    # feature loop
    - title: "Rimuovi i metadati"
      content: "Pulisci i campi di metadati nascosti che potrebbero contenere dettagli personali o aziendali."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Come rimuovere i metadati"
      content: |
        Questo codice di esempio rimuove le proprietà dei metadati in un documento XLSX.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Apri il documento
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

              // Esegui il processo di redazione
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Salva il documento pulito
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
    title: "Redigi i metadati in XLSX utilizzando .NET"
    exclude: "XLSX"
    description: ".NET semplifica la pulizia dei metadati dai file XLSX. Mantieni i tuoi file puliti e sicuri."
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