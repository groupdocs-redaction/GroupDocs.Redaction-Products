
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: pt
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Remover Texto Privado de EXCEL Usando Python"
head_description: "Limpe rapidamente informações sensíveis de seus arquivos EXCEL com GroupDocs.Redaction for Python via .NET e Python."

############################# Header ############################
title: "Encontrar e Remover Texto Privado em Arquivos EXCEL com Python" 
description: "Use Python e GroupDocs.Redaction for Python via .NET para limpar detalhes sensíveis de seus documentos EXCEL. Seja para trabalho ou uso pessoal, seu conteúdo permanece seguro."
subtitle: "O Que Você Pode Fazer com GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Conheça GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET fornece aos desenvolvedores Python tudo o que precisam para limpar arquivos EXCEL. Remova texto, imagens, comentários e metadados com um código simples.

############################# Steps ############################
steps:
    enable: true
    title: "Como Redigir Texto em Arquivos Excel"
    content: |
      Com GroupDocs.Redaction for Python via .NET em seus projetos Python via .NET, você pode facilmente remover ou ocultar conteúdo privado.
      
      1. Crie um Redactor e abra seu arquivo Excel.
      2. Escolha suas configurações de redatação.
      3. Digite o texto que deseja pesquisar e o que substituí-lo.
      4. Executar a redatação e salvar seu arquivo atualizado.
   
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

        # Como redigir texto em um arquivo EXCEL

        # Configure suas opções de redatação.
        # Escolha o texto a ser pesquisado e o que substituir.
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Abra seu arquivo com o construtor Redactor.
        with gr.Redactor("input.xslx") as redactor:

            # Aplique as redatações e salve seu novo arquivo EXCEL.
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Mais Recursos de Redação"
  description: "GroupDocs.Redaction for Python via .NET ajuda você a limpar conteúdo sensível em muitos formatos de arquivo. Mantenha seus documentos seguros e compartilháveis."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Ferramentas de redatação em ação"
  features:
    # feature loop
    - title: "Substituir texto privado"
      content: "Pesquise e substitua qualquer texto correspondente. Funciona com buscas inteligentes e padrões regex."

    # feature loop
    - title: "Cobrir conteúdo de imagem"
      content: "Oculte partes de imagens com sobreposições. Personalize a aparência como desejar."

    # feature loop
    - title: "Remover detalhes ocultos"
      content: "Apague metadados como informações de autoria, comentários e carimbos de data."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redigir Padrões com Regex"
      content: |
        Use regex para encontrar e limpar padrões de texto como e-mails, números de telefone ou detalhes de conta.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Defina seu padrão EMAIL regex e texto de substituição.
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Abra o arquivo que precisa ser limpo.
          with gr.Redactor("source.xslx") as redactor:

              # Aplique as regras de redatação.
              result = redactor.apply(redaction)

              # Salve a versão final do arquivo.
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
    title: "Redigir Conteúdo em EXCEL Usando Python"
    exclude: "EXCEL"
    description: "Use Python para remover texto privado de arquivos EXCEL. Certifique-se de que seu conteúdo seja seguro para armazenar ou compartilhar."
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