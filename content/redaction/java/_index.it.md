---
############################# Static ############################
layout: "product"
date: 2021-04-27T09:31:06+03:00
draft: false

product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "API di redazione Java | Nascondi dati sensibili dall'immagine PDF Word Excel"
head_description: "API di redazione dei documenti Java: nasconde i dati personali da PDF, Word, Excel, PowerPoint presentazioni e immagini raster attraverso vari tipi di redazione."

############################# Header ############################
title: "Redigere informazioni private tramite l'API Java"
description: "Escludi o nascondi informazioni personali e metadati da documenti, fogli di lavoro, presentazioni, PDF e file di immagini raster utilizzando l'API di redazione Java."
button:
    enable: true

############################# SubMenu ############################
submenu:
    enable: true
    
    left:
        img_alt: "GroupDocs.Redaction for Java"
        image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-java.png"
        product: "GroupDocs.Redaction"
        platform: "Java"

    middle:
        button:
            # button loop
            - link: "#overview"
              text: "Panoramica"

            # button loop
            - link: "#features"
              text: "Caratteristiche"

            # button loop
            - link: "#support"
              text: "Supporto"

            # button loop
            - link: "https://products.groupdocs.app/redaction"
              text: "Dimostrazione dal vivo"

            # button loop
            - link: "https://purchase.groupdocs.com/pricing/redaction/java"
              text: "Prezzi"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/java/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      L'API GroupDocs.Redaction for Java consente agli sviluppatori di rimuovere i dati sensibili dai formati di file più diffusi come Microsoft Word, Excel, PowerPoint, PDF e dalle immagini in modo che possano essere utilizzati e distribuiti, ma proteggendo comunque anche le informazioni riservate. La libreria di redazione offre un'unica interfaccia indipendente dal formato per oscurare qualsiasi tipo di informazione classificata, inclusi numeri di previdenza sociale, informazioni mediche, dettagli finanziari, proprietari, legali o persino commerciali tramite tipi di redazione di testo, metadati e annotazioni. Consente di salvare il documento nel suo formato originale e creare un documento PDF igienizzato con immagini raster delle pagine originali.
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          Di seguito è riportata una panoramica di GroupDocs.Redaction per Java:
      
        right:
          enable: true
          icon: "fab fa-html5"
          title: "Panoramica"
          content: |
            * Redigere testo
            * Redigere i metadati
            * Redigere annotazione
            * Redigere un documento tabulare
            * Oscurare i file protetti
            * Personalizzazione
      
      ## TAB TWO ##
      tab_two:
        description: |
          GroupDocs.Redaction per Java supporta i seguenti [formati di file di documento](https://docs.groupdocs.com/redaction//supported-document-formats/java):

        right:
          enable: true
          table:
            # table loop
            - title: "Redigere testo, metadati e commenti"
              content: |
                * **Word**: DOC, DOCX, DOT, ODT, DOTX, DOCM, DOTM, RTF
                * **Excel**: XLS, XLSX, XLT, XLTX, XLSM, XLTM, CSV
                * **PowerPoint**: PPT, PPTX, PPS, PPSX, POTX, PPTM, PPSM, POTM
                * **Layout fisso**: PDF
                * **Immagini raster**: JPG, BMP, PNG, GIF, TIFF

      ## TAB THREE ##
      tab_three:
        description: |
          GroupDocs.Redaction for Java supporta i seguenti sistemi operativi, framework e gestori di pacchetti:
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "Sistemi operativi"
              content: |
                * Microsoft Windows Desktop
                * Microsoft Windows Server
                * Linux
                * Mac È

            # table loop
            - icon: "fas fa-code"
              title: "Framework supportati"
              content: |
                * Java 7 (1.7) e versioni successive

        right:
          enable: true
          table:
            # table loop
            - icon: "fa-cogs veloci"
              title: "Ambienti di sviluppo"
              content: |
                * NetBeans
                * IDEA IntelliJ
                * Eclissi

            # table loop
            - icon: "fa-tools veloci"
              title: "Crea uno strumento di automazione"
              content: |
                * Esperto

############################# Features ############################
features:
    enable: true
    title: "GroupDocs.Redaction per Java Caratteristiche"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "Cerca e redigere le corrispondenze esatte di una stringa di ricerca"

      # feature loop
      - icon: "fas fa-eye"
        content: "Controlla il processo di redazione e salta partite specifiche"

      # feature loop
      - icon: "fas fa-bolt"
        content: "Individuare e redigere utilizzando le espressioni regolari"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "Supporto integrato per i formati da ufficio e PDF"

      # feature loop
      - icon: "fas fa-code"
        content: "Eliminare i metadati o oscurare i valori dei metadati"

      # feature loop
      - icon: "fas fa-cloud"
        content: "Limita le redazioni a fogli di lavoro e colonne specifici"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "Rimuovi le annotazioni o modifica i relativi testi"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "Usa redazioni testuali (codici di esenzione) o grafiche (rettangoli colorati)"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "Salva il documento nel suo formato originale o come PDF con immagini raster delle pagine originali"

      # feature loop
      - icon: "fas fa-border-all"
        content: "Supporto per formati di immagini raster e redazioni di regioni di immagini"

      # feature loop
      - icon: "fas fa-wrench"
        content: "Interfaccia di integrazione per l'implementazione di redazioni e formati personalizzati"

      # feature loop
      - icon: "fas fa-columns"
        content: "Modifica o rimuovi EXIF metadati dai file di immagine"

      # feature loop
      - icon: "fas fa-file-word"
        content: "Oscura le immagini incorporate nei PDF, Word e nei documenti di presentazione"

    more_feature:
      # more_feature_loop
      - title: "Garantisci la privacy cancellando i tuoi dati riservati"
        content: |
          La libreria GroupDocs.Redaction for Java consente agli sviluppatori di oscurare testo e immagini dai documenti supportati utilizzando una varietà di tipi di redazione. Usare la nostra API di redazione è semplice e diretto.  

          Il seguente esempio di codice utilizza un documento tabulare come il foglio di calcolo Microsoft Excel in cui l'ambito di redazione può essere limitato a un foglio di lavoro e/o a una colonna specifici. Utilizza filtri per oscurare la seconda colonna con le e-mail su un foglio di lavoro «Clienti», lasciando intatte tutte le altre e-mail nel documento.

          ```java
          // Crea un'istanza della classe Redactor
          final Redactor redactor  = new Redactor("sample.xlsx");
          try
          {
              CellFilter filter = new CellFilter();
              filter.setColumnIndex(1);
              filter.setWorkSheetName("Customers");
              Pattern expression = Pattern.compile("^\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$");
              // Applica la redazione
              RedactorChangeLog result = redactor.apply(new CellColumnRedaction(filter, expression, new ReplacementOptions("[customer email]")));
              if (result.getStatus() != RedactionStatus.Failed)
              {
                  SaveOptions so = new SaveOptions();
                  so.setAddSuffix(true);
                  so.setRasterizeToPDF(false);
                  redactor.save(so);
              };
          }
          finally { redactor.close(); }
          ```

############################# Support ############################
support:
    enable: true

############################# Solutions ############################
solutions:
    enable: true
    title: "GroupDocs.Redaction offre API per la visualizzazione di documenti per altri ambienti di sviluppo diffusi"

    solution:
        # solution loop
        - img_alt: "GroupDocs.Redaction for .NET"
          image: "/border/groupdocs-redaction-net.svg"
          product: "GroupDocs.Redaction"
          platform: ".NET"
          link: "/redaction/net/"

        # solution loop
        - img_alt: "GroupDocs.Redaction for Python via .NET"
          image: "/border/groupdocs-redaction-python-net.svg"
          product: "GroupDocs.Redaction"
          platform: "Python via .NET"
          link: "/redaction/python-net/"

############################# Back to top ###############################
back_to_top:
  enable: true
---