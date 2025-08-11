---
############################# Static ############################
layout: "landing"
date: 2025-08-11T19:33:04
draft: false

lang: it
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Drop-down ############################
supported_platforms:
  items:
    # supported_platforms loop
    - title: ".NET"
      tag: "net"
    # supported_platforms loop
    - title: "Java"
      tag: "java"
    # supported_platforms loop
    - title: "Python"
      tag: "python-net"

############################# Head ############################
head_title: "Elimina informazioni confidenziali dai documenti con Python"
head_description: "Mantieni i tuoi file sicuri utilizzando GroupDocs.Redaction for Python via .NET. Redigi, nascondi o elimina rapidamente contenuti sensibili in PDF, Word, Excel, PowerPoint e immagini."

############################# Header ############################
title: "Mantieni Sicuri i Tuoi Documenti con GroupDocs.Redaction"
description: "Rimuovi facilmente dati privati, redigi testo e pulisci metadati nascosti da PDF, file Office e immagini utilizzando l'avanzato toolkit Python."
words:
  for: "per"

actions:
  main: "Download PyPi"
  main_link: "https://pypi.org/project/groupdocs-redaction-net/"
  alt: "Licenze"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
  title: "Pronto per Iniziare?"
  description: "Prova gratuitamente le funzionalità di GroupDocs.Redaction o richiedi una licenza."

release:
  title: "Versione {0} Rilasciata"
  notes: "Scopri le novità"
  downloads: "Download"

code:
  title: "Redigere il Contenuto del Documento"
  more: "Ulteriori esempi"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
  install: "pip install groupdocs-redaction-net"
  content: |
    ```python {style=abap}
    import groupdocs.redaction as gr
    import groupdocs.redaction.redactions as grr

    def run():

        # Regola i parametri di redazione
        repl_opt = grr.ReplacementOptions("[redacted]")
        red = grr.ExactPhraseRedaction("Data", repl_opt)

        # Carica il tuo file nell'istanza Redactor
        with gr.Redactor("sample.pdf") as redactor:

            # Avvia il processo di redazione
            result = redactor.apply(red)
        
            # Esporta il file pulito
            result_path = redactor.save()
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction a Colpo d'Occhio"
  description: "Integra potenti capacità di redazione nei tuoi progetti Python"
  features:
    # feature loop
    - title: "Redigi Testo Sensibile"
      content: "Con GroupDocs.Redaction for Python via .NET, puoi trovare e coprire automaticamente parole o frasi sensibili. Sostituisci o maschera il testo con scatole colorate per una maggiore protezione su PDF, documenti Word e altri formati."

    # feature loop
    - title: "Maschera Immagini"
      content: "La nostra tecnologia può rilevare immagini e sfocarle, nasconderle o bloccarle in base ai tuoi criteri scelti. Definisci regioni specifiche o consenti il rilevamento automatico per un controllo completo."

    # feature loop
    - title: "Rimuovi Metadati Nascosti"
      content: "Elimina dettagli personali o di tracciamento nascosti nei metadati, come l'autore o le informazioni sul dispositivo. GroupDocs.Redaction for Python via .NET garantisce che i tuoi documenti siano completamente puliti e sicuri da condividere."

    # feature loop
    - title: "Redigi Elementi Speciali"
      content: "Vai oltre il testo redigendo elementi incorporati come commenti, annotazioni e altri elementi specifici del file per ottenere totale riservatezza."

############################# Platforms ############################
platforms:
  enable: true
  title: "Indipendenza della Piattaforma"
  description: "GroupDocs.Redaction for Python via .NET funziona su tutti i principali sistemi operativi, supporta framework popolari e si integra con gestori di pacchetti comuni."
  items:
    # platform loop
    - title: "Amazon"
      image: "amazon"
    # platform loop
    - title: "Docker"
      image: "docker"
    # platform loop
    - title: "Azure"
      image: "azure"
    # platform loop
    - title: "VS Code"
      image: "vs_code"
    # platform loop
    - title: "ReSharper"
      image: "resharper"
    # platform loop
    - title: "macOS"
      image: "finder"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "NuGet"
      image: "nuget"

############################# File formats ############################
formats:
  enable: true
  title: "Formati di File Supportati"
  description: |
    GroupDocs.Redaction for Python via .NET supporta i seguenti [formati di file](https://docs.groupdocs.com/redaction/python-net/supported-document-formats/).
  groups:
    # group loop
    - color: "green"
      content: |
        ### Formati MS Office
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### Altri Formati Office
        * **Portabile:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **Formati di Testo:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### Altri Formati
        * **Web:** HTM, HTML, MD
        * **Immagini:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **eBook:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "Caratteristiche Principali di GroupDocs.Redaction for Python via .NET"
  description: "Scansiona, localizza e redigi contenuti sensibili in PDF, immagini e file Office con facilità."

  items:
    # feature loop
    - icon: "search"
      title: "Ricerca Personalizzabile"
      content: "Usa modalità di ricerca flessibili per trovare corrispondenze precise o parole chiave per la rimozione."

    # feature loop
    - icon: "text"
      title: "Trova, Sostituisci o Elimina Testo"
      content: "Trova dati sensibili e sostituiscili con testo sicuro o cancellali completamente."

    # feature loop
    - icon: "image"
      title: "Mascheramento Visivo"
      content: "Sovrapponi forme o pattern colorati per coprire visivamente le sezioni redatte."

    # feature loop
    - icon: "search"
      title: "Rilevazione Basata su Regex"
      content: "Sfrutta le espressioni regolari per una precisione massima nelle ricerche di testo avanzate."

    # feature loop
    - icon: "table"
      title: "Redazione Mirata"
      content: "Applica redazione solo a determinate pagine o aree definite per risparmiare tempo e concentrarti su aree chiave."

    # feature loop
    - icon: "template"
      title: "Sanificazione dei Metadati"
      content: "Cancella facilmente i campi dei metadati come creatore, azienda o timestamp dai tuoi file."

    # feature loop
    - icon: "pdf"
      title: "Opzioni di Esportazione"
      content: "Salva i documenti elaborati in PDF o altri formati compatibili senza compromettere la fedeltà del layout."

    # feature loop
    - icon: "template"
      title: "Cancellazione Completa dei Metadati"
      content: "Rimuovi tutti i metadati incorporati con un solo clic per la massima protezione dei dati."

    # feature loop
    - icon: "hyperlink"
      title: "Politiche XML Riutilizzabili"
      content: "Salva le tue configurazioni di redazione personalizzate come modelli XML per automatizzare le attività future."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Esempi di Codice"
  description: "Esplora come GroupDocs.Redaction for Python via .NET semplifica le operazioni di redazione"
  items:
    # code sample loop
    - title: "Redazione Basata su Regex"
      content: |
        Gli sviluppatori che utilizzano Python possono applicare [regole basate su regex](https://docs.groupdocs.com/redaction/python-net/text-redactions/#use-regular-expression) per trovare e coprire testo sensibile con maschere immagine:
        {{< landing/code title="Redigi Documenti Word Utilizzando Espressioni Regolari">}}
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        def run():

            # Definisci regole di redazione utilizzando un'espressione regolare
            color = grd.Color.from_argb(255, 220, 20, 60)
            repl_opt = grr.ReplacementOptions(color)
            reg_red = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

            # Crea un'istanza della classe Redactor
            with gr.Redactor("source.docx") as redactor:

                # Maschera tutto il testo corrispondente con sovrapposizioni quadrate blu
                result = redactor.apply(reg_red)
        
                # Salva il documento Word redatto
                redactor.save()
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Rimuovi Metadati"
      content: |
        Utilizza l'API per [cancellare i metadati](https://docs.groupdocs.com/redaction/python-net/metadata-redactions/#clean-metadata) attraverso più tipi di file in pochi passaggi:
        {{< landing/code title="Rimuovi Tutti i Metadati dalle Presentazioni">}}
        ```python {style=abap}   
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # Configura le opzioni di redazione
        red = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Fornisci il percorso della presentazione a Redactor
        with gr.Redactor("source.pptx") as redactor:

            # Cancella tutti i metadati dalla presentazione
            result = redactor.apply(red)
        
            # Salva il file di presentazione pulito
            redactor.save()
        ```
        {{< /landing/code >}}

---
