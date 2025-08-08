
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: it
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Elimina Metadati in PHOTO con Java"
head_description: "GroupDocs.Redaction for Java ti aiuta a rimuovere dati nascosti dai file PHOTO che potrebbero esporre dettagli personali o aziendali."

############################# Header ############################
title: "Rimuovi Metadati da PHOTO con Java" 
description: "Mantieni i tuoi file PHOTO sicuri eliminando metadati nascosti utilizzando gli strumenti Java."
subtitle: "Punti Salienti di GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction fornisce agli sviluppatori Java gli strumenti per nascondere contenuti sensibili nei file PHOTO, inclusi testi, sezioni di immagini e metadati.

############################# Steps ############################
steps:
    enable: true
    title: "Come Rimuovere Metadati dai File Photo"
    content: |
      Usa GroupDocs.Redaction nella tua app Java per cancellare i metadati dai documenti.
      
      1. Avvia un Redactor e apri il file Photo.
      2. Imposta le regole per cancellare i campi nascosti.
      3. Applica la redazione per pulire il file.
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
        // Pulisci i metadati nei file PHOTO

        // Carica il file con Redactor
        final Redactor redactor = new Redactor("input.jpeg");
        try
        {
            // Scegli i campi di metadati da redigere
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Applica e salva il file
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Rimuovi Info Private dai Documenti"
  description: "GroupDocs.Redaction for Java aiuta a pulire i file eliminando testo sensibile, contenuti di immagini e metadati. Ottimo per la privacy e la sicurezza."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Utili Caratteristiche di Redazione"
  features:
    # feature loop
    - title: "Pulizia Testo"
      content: "Trova ed elimina parole o numeri che non dovrebbero essere condivisi."

    # feature loop
    - title: "Redazione Immagini"
      content: "Aggiungi coperture su parti delle immagini contenenti contenuti sensibili."

    # feature loop
    - title: "Eliminazione Metadati"
      content: "Pulisci dettagli file che possono contenere informazioni private."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Elimina Campi Metadati Nascosti"
      content: |
        Questo esempio mostra come rimuovere campi come Autore e Titolo da un documento PHOTO.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Apri il file PHOTO nel redattore
          final Redactor redactor = new Redactor("source.jpeg");
          try
          {
              // Redigi il campo Autore
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Redigi il campo Titolo
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Esegui il processo
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
    title: "Utilizza Java per Rimuovere i Metadati di PHOTO"
    exclude: "PHOTO"
    description: "Proteggi i tuoi documenti PHOTO eliminando metadati utilizzando gli strumenti di Java."
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