
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: it
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Elimina Metadati da WORD Usando Java"
head_description: "Con GroupDocs.Redaction for Java, puoi rimuovere rapidamente metadati nascosti dai file WORD. Mantieni i tuoi documenti sicuri e privati."

############################# Header ############################
title: "Pulisci i Metadati Nascosti nei File WORD con Java" 
description: "Proteggi i tuoi file WORD rimuovendo informazioni private usando gli strumenti Java. Ottimo per uso aziendale e personale."
subtitle: "Come GroupDocs.Redaction for Java Ti Aiuta" 

############################# About ############################
about:
    enable: true
    title: "Scopri GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction offre agli sviluppatori Java tutto ciò di cui hanno bisogno per rimuovere dati dai file WORD. Pulisci metadati, testi e immagini.

############################# Steps ############################
steps:
    enable: true
    title: "Cancella Metadati nei File Word"
    content: |
      Utilizza GroupDocs.Redaction per pulire i metadati dai documenti nelle tue app Java.
      
      1. Avvia un oggetto Redactor e carica il file Word.
      2. Definisci regole per eliminare i campi di metadati nascosti.
      3. Applica la redazione per cancellare i metadati.
      4. Salva il file aggiornato.
   
    code:
      platform: "java"
      copy_title: "Copia"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redazioni di esempio"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "clicca per copiare"
        copy_done: "copiato"
      links:
        #  loop
        - title: "Altri esempi"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "Documentazione"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // Rimuovi metadati nascosti da WORD

        // Carica il file con Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Configura le opzioni di redazione dei metadati
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Esegui la redazione e salva
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Altri Strumenti per Rimuovere Info Private"
  description: "Utilizza GroupDocs.Redaction for Java per ripulire testi, immagini e metadati da molti formati di file. Condividi i tuoi file senza esporre dati sensibili."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Caratteristiche di Redazione di Metadati e Contenuti"
  features:
    # feature loop
    - title: "Elimina Testo Privato"
      content: "Cerca contenuti sensibili nei file e rimuovili o modificati secondo necessità."

    # feature loop
    - title: "Copri Aree delle Immagini"
      content: "Nascondi parti specifiche delle immagini che possono contenere dettagli privati."

    # feature loop
    - title: "Rimuovi Campi Metadati"
      content: "Cancella etichette nascoste come autore e titolo per garantire la privacy."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Pulisci i Campi Metadati nei Documenti"
      content: |
        Questo esempio spiega come rimuovere metadati come Autore e Titolo da un file WORD.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carica il file per l'elaborazione
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Rimuovi il campo Autore
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Rimuovi il campo Titolo
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Esegui la redazione
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Salva il file pulito
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "Copia"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "Documentazione"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "Pronto per iniziare?"
  description: "Prova le funzionalità di GroupDocs.Redaction gratuitamente o richiedi una licenza"
  items:
    #  loop
    - title: "Download Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "Licenze"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Cancella Metadati in WORD con Java"
    exclude: "WORD"
    description: "Java ti consente di pulire metadati nascosti dai file WORD. Un modo semplice per proteggere i tuoi documenti."
    items: 
        # format loop 1
        - name: "Redazione PDF"
          format: "PDF"
          link: "/redaction/java/remove-sensitive-metadata//pdf/"
          description: "Formato Documento Portabile Adobe"

        # format loop 2
        - name: "Redazione Word"
          format: "WORD"
          link: "/redaction/java/remove-sensitive-metadata//word/"
          description: "Documenti MS Word e Open Office"
          
        # format loop 3
        - name: "Redazione Excel"
          format: "EXCEL"
          link: "/redaction/java/remove-sensitive-metadata//excel/"
          description: "Fogli di calcolo MS Excel e Open Office"

        # format loop 4
        - name: "Redazione PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/remove-sensitive-metadata//powerpoint/"
          description: "Presentazioni MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redazione Immagine"
          format: "IMAGE"
          link: "/redaction/java/remove-sensitive-metadata//image/"
          description: "Formati di immagine popolari"

        # format loop 6
        - name: "Redazione Foto"
          format: "PHOTO"
          link: "/redaction/java/remove-sensitive-metadata//photo/"
          description: "Formati fotografici"

        # format loop 7
        - name: "Redazione DOCX"
          format: "DOCX"
          link: "/redaction/java/remove-sensitive-metadata//docx/"
          description: "Documento Open XML di Microsoft Word"
          
        # format loop 8
        - name: "Redazione XLSX"
          format: "XLSX"
          link: "/redaction/java/remove-sensitive-metadata//xlsx/"
          description: "Foglio di calcolo Open XML di Microsoft Excel"
          
        # format loop 9
        - name: "Redazione PPTX"
          format: "PPTX"
          link: "/redaction/java/remove-sensitive-metadata//pptx/"
          description: "Presentazione Open XML di PowerPoint"

        # format loop 10
        - name: "Redazione JPEG"
          format: "JPEG"
          link: "/redaction/java/remove-sensitive-metadata//jpeg/"
          description: "Immagine JPEG"


---