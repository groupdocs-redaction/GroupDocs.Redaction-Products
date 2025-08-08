
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: pt
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Redija Texto Sensível em PDF com Python"
head_description: "Mantenha detalhes privados seguros em seus documentos PDF com GroupDocs.Redaction for Python via .NET. Encontre e esconda informações sensíveis rapidamente."

############################# Header ############################
title: "Apague Texto Sensível de Arquivos PDF Usando Python" 
description: "Utilize Python e GroupDocs.Redaction for Python via .NET para pesquisar e remover dados privados, legais ou pessoais de seus arquivos PDF."
subtitle: "O Que Você Pode Fazer com GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "O que é GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET fornece aos desenvolvedores Python todas as ferramentas necessárias para redigir conteúdo em arquivos PDF — texto, imagens, comentários e mais.

############################# Steps ############################
steps:
    enable: true
    title: "Como Redigir Conteúdo em Arquivos Pdf"
    content: |
      Mantenha seu conteúdo seguro em qualquer aplicativo Python via .NET usando GroupDocs.Redaction for Python via .NET.
      
      1. Crie um Redactor e carregue seu arquivo Pdf.
      2. Escolha as configurações de redcação que deseja.
      3. Digite o texto a ser pesquisado e o que deverá substituí-lo.
      4. Aplique a redatação e salve seu arquivo.
   
    code:
      platform: "python-net"
      copy_title: "Copiar"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redações de exemplo"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "clique para copiar"
        copy_done: "copiado"
      links:
        #  loop
        - title: "Mais exemplos"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "Documentação"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # 

        # 
        # 
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 
        with gr.Redactor("input.pdf") as redactor:

            # 
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Mais Recursos de Redação"
  description: "GroupDocs.Redaction for Python via .NET permite que você esconda conteúdo privado em muitos tipos de arquivos. Mantenha seus dados seguros e prontos para compartilhar."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Ferramentas para redatação de texto, imagem e metadados"
  features:
    # feature loop
    - title: "Localizar e Substituir Texto Privado"
      content: "Pesquise e troque textos correspondentes. Funciona com regex e busca por palavras-chave."

    # feature loop
    - title: "Cobrir Imagens Privadas"
      content: "Mascarar imagens inteiras ou partes delas usando sobreposições. Personalize as configurações de aparência."

    # feature loop
    - title: "Apagar Metadados Ocultos"
      content: "Remova informações ocultas como nomes de autores, carimbos de data/hora e notas de revisão."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redate com Regex"
      content: |
        Use regex para encontrar e remover padrões como e-mails, IDs ou números.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Defina um padrão regex e texto de substituição.
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Abra o arquivo que deseja limpar.
          with gr.Redactor("source.pdf") as redactor:

              # Aplique suas regras de redatação.
              result = redactor.apply(redaction)

              # Salve seu arquivo redatado.
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
          ```
        platform: "python-net"
        copy_title: "Copiar"
        install:
          command: "pip install groupdocs-redaction-net"
          copy_tip: "clique para copiar"
          copy_done: "copiado"
        top_links:
          #  loop
          - title: "Baixar resultado"
            icon: "download"
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
        links:
          #  loop
          - title: "Mais exemplos"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "Documentação"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "Pronto para começar?"
  description: "Experimente os recursos do GroupDocs.Redaction gratuitamente ou solicite uma licença"
  items:
    #  loop
    - title: "Download do PyPi"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "Licenciamento"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Redigir Conteúdo em PDF Usando Python"
    exclude: "PDF"
    description: "Mantenha dados pessoais ou empresariais seguros ao redigir texto em arquivos PDF com as ferramentas Python."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/python-net/replace-sensitive-text//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/python-net/replace-sensitive-text//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/python-net/replace-sensitive-text//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/replace-sensitive-text//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/python-net/replace-sensitive-text//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 6
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/python-net/replace-sensitive-text//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/python-net/replace-sensitive-text//pptx/"
          description: "Apresentação PowerPoint Open XML"


---