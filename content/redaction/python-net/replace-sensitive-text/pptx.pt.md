
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: pt
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Remover Texto Privado de PPTX Usando Python"
head_description: "Mantenha seus arquivos PPTX seguros com GroupDocs.Redaction for Python via .NET e Python. Encontre e remova conteúdo privado rapidamente."

############################# Header ############################
title: "Editar ou Remover Texto Privado em Arquivos PPTX com Python" 
description: "Use GroupDocs.Redaction for Python via .NET e Python para encontrar e limpar dados sensíveis em seus documentos PPTX. Mantenha seus arquivos pessoais ou de trabalho privados."
subtitle: "O Que Você Pode Fazer com GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Conheça GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET fornece aos desenvolvedores Python total controle sobre o conteúdo PPTX. Limpe texto, imagens, notas e metadados facilmente.

############################# Steps ############################
steps:
    enable: true
    title: "Como Redigir Texto em Documentos Pptx"
    content: |
      Use GroupDocs.Redaction for Python via .NET em seu ambiente Python via .NET para ocultar ou remover conteúdo sensível rapidamente.
      
      1. Crie um Redactor e carregue seu arquivo Pptx.
      2. Escolha suas configurações de redatação.
      3. Digite o texto a ser pesquisado e o que deverá substituí-lo.
      4. Aplique a redatação e salve seu arquivo atualizado.
   
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

        # Como redigir texto em um arquivo PPTX

        # Defina suas opções de redatação.
        # Escolha o texto a ser encontrado e o que substituir.
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Use o construtor Redactor para carregar seu arquivo.
        with gr.Redactor("input.pptx") as redactor:

            # Execute as redações e salve o arquivo PPTX atualizado.
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Mais Recursos de Redação"
  description: "GroupDocs.Redaction for Python via .NET ajuda você a remover ou ocultar dados sensíveis em diferentes formatos. Compartilhe documentos com segurança."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Visão geral de recursos de redatação"
  features:
    # feature loop
    - title: "Substituir texto privado"
      content: "Pesquise e troque palavras ou frases específicas. Funciona com regex e filtros inteligentes."

    # feature loop
    - title: "Cobrir imagens privadas"
      content: "Sobreponha ou oculte áreas específicas em imagens. Personalize configurações como cores e layout."

    # feature loop
    - title: "Remover informações ocultas"
      content: "Limpe metadados como nomes de autores, carimbos de data e notas internas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redigir por Padrão com Regex"
      content: |
        Use expressões regulares para pesquisar e limpar texto como endereços de e-mail, números de telefone ou IDs.
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

          # Abra o arquivo que deseja editar.
          with gr.Redactor("source.pptx") as redactor:

              # Execute o processo de redatação.
              result = redactor.apply(redaction)

              # Salve o arquivo final limpo.
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
    title: "Redigir Conteúdo em PPTX Usando Python"
    exclude: "PPTX"
    description: "Com Python, você pode remover texto sensível de documentos PPTX e manter seus dados seguros."
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