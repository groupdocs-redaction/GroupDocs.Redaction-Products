
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: it
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Modifica i Metadati in JPEG Utilizzando Java"
head_description: "Utilizza GroupDocs.Redaction for Java per pulire o cambiare i metadati nei file JPEG. Proteggi la privacy rimuovendo i dati nascosti."

############################# Header ############################
title: "Rimuovi Metadati dai File JPEG Utilizzando Java" 
description: "Mantieni sicuri i tuoi documenti JPEG con semplici strumenti Java che rimuovono dettagli privati."
subtitle: "Caratteristiche Principali di GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction fornisce agli sviluppatori Java gli strumenti per rimuovere testi, immagini e metadati indesiderati dai file JPEG.

############################# Steps ############################
steps:
    enable: true
    title: "Pulisci i Metadati nei Documenti Jpeg"
    content: |
      GroupDocs.Redaction rende semplice eliminare i metadati nei tuoi progetti Java.
      
      1. Crea un Redactor e carica il tuo file Jpeg.
      2. Seleziona le opzioni per rimuovere tutti i campi di metadati.
      3. Esegui la redazione per pulire il file.
      4. Salva il file aggiornato senza dati nascosti.
   
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
        // Svuota i metadati dai file JPEG

        // Carica il file utilizzando Redactor
        final Redactor redactor = new Redactor("input.jpg");
        try
        {
            // Imposta la pulizia dei metadati
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Esegui e salva le modifiche
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Proteggi i Tuoi Documenti"
  description: "GroupDocs.Redaction for Java aiuta a rimuovere contenuti privati da molti tipi di documenti. Mantieni le informazioni sensibili fuori dai file condivisi."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Caratteristiche Chiave di Redazione"
  features:
    # feature loop
    - title: "Rimuovi Testo"
      content: "Trova ed elimina parole personali o frasi dai tuoi file."

    # feature loop
    - title: "Nascondi Contenuto Immagine"
      content: "Aggiungi sovrapposizioni per coprire aree delle immagini con informazioni sensibili."

    # feature loop
    - title: "Modifica i Metadati"
      content: "Pulisci o cambia i campi dei metadati per evitare di esporre informazioni private."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Elimina Campi Metadati Nascosti"
      content: |
        Questo esempio mostra come rimuovere o modificare metadati come Autore e Titolo nei documenti JPEG.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Apri il file JPEG con il redattore
          final Redactor redactor = new Redactor("source.jpg");
          try
          {
              // Focalizzati sui metadati Autore
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Focalizzati sui metadati Titolo
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Esegui la redazione
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Salva il file ripulito
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
    title: "Rimuovi Metadati da JPEG Usando Java"
    exclude: "JPEG"
    description: "Utilizza Java per eliminare dati nascosti dai file JPEG e proteggere informazioni sensibili."
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