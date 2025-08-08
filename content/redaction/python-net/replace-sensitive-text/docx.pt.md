
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: pt
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Remover Texto Privado de DOCX Usando Python"
head_description: "Mantenha seus arquivos DOCX seguros ao remover conteúdo sensível com GroupDocs.Redaction for Python via .NET e Python. Redação rápida e eficaz."

############################# Header ############################
title: "Editar ou Ocultar Texto Privado em Arquivos DOCX com Python" 
description: "Tome controle de seu conteúdo DOCX usando GroupDocs.Redaction for Python via .NET e Python. Ótimo para uso pessoal ou empresarial."
subtitle: "O Que Você Pode Fazer com GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Conheça GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET fornece aos desenvolvedores Python as ferramentas para limpar conteúdo em arquivos DOCX. Redija texto, imagens, comentários e metadados de forma simples.

############################# Steps ############################
steps:
    enable: true
    title: "Como Limpar Texto em Arquivos Docx"
    content: |
      Use GroupDocs.Redaction for Python via .NET dentro de seus aplicativos Python via .NET para remover ou ocultar texto privado. Processo de redação rápido e direto.
      
      1. Crie um Redactor e abra seu arquivo Docx.
      2. Defina as regras de redatação que deseja.
      3. Escolha o texto para encontrar e o que substituir.
      4. Execute a redatação e salve seu novo arquivo.
   
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

        # Como redigir texto em um arquivo DOCX

        # Escolha suas configurações de redatação.
        # Digite o que buscar e o que substituir.
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Abra seu arquivo com o construtor Redactor.
        with gr.Redactor("input.docx") as redactor:

            # Aplique as alterações e salve o arquivo DOCX atualizado.
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Mais Ferramentas de Redação"
  description: "GroupDocs.Redaction for Python via .NET permite que você exclua ou oculte texto sensível em diferentes formatos. Compartilhe arquivos limpos e seguros com confiança."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Ferramentas para redatação de texto, imagem e metadados"
  features:
    # feature loop
    - title: "Localizar e Substituir Texto Privado"
      content: "Pesquise por palavras ou padrões específicos e troque-os. Funciona com expressões regulares e opções de palavras-chave."

    # feature loop
    - title: "Cobrir Imagens Sensíveis"
      content: "Sobreponha ou oculte áreas de imagem. Altere cores, opacidade e tamanho conforme necessário."

    # feature loop
    - title: "Remover Metadados"
      content: "Apague informações ocultas como nomes de autoria, carimbos de tempo e notas internas para manter seus arquivos privados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Use Regex para Redigir Padrões"
      content: |
        Pesquise e remova e-mails, IDs ou padrões usando expressões regulares.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Defina um padrão EMAIL regex e texto de substituição.
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Abra o arquivo que deseja limpar.
          with gr.Redactor("source.docx") as redactor:

              # Aplique sua configuração de redatação.
              result = redactor.apply(redaction)

              # Salve o documento redatado.
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
    title: "Redigir Conteúdo em DOCX Usando Python"
    exclude: "DOCX"
    description: "Use Python para remover texto sensível de arquivos DOCX. Mantenha documentos pessoais e de trabalho protegidos."
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