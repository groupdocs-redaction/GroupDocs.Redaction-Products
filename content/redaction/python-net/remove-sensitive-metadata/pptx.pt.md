
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: pt
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Excluir Metadados de Arquivos PPTX Usando Python"
head_description: "GroupDocs.Redaction for Python via .NET auxilia na limpeza de dados ocultos em arquivos PPTX. Remova detalhes que podem revelar informações sensíveis."

############################# Header ############################
title: "Excluir Metadados em PPTX com Python" 
description: "Apague metadados privados armazenados em arquivos PPTX usando Python. Uma maneira inteligente de proteger suas informações."
subtitle: "Principais Ferramentas no GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Mais Sobre GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction é projetado para desenvolvedores Python que desejam manter documentos limpos. Utilize-o para excluir texto, cobrir imagens ou remover metadados de arquivos PPTX.

############################# Steps ############################
steps:
    enable: true
    title: "Limpar Metadados em Arquivos Pptx"
    content: |
      Use GroupDocs.Redaction para remover rapidamente metadados de seu aplicativo Python via .NET.
      
      1. Crie um Redactor e abra o documento Pptx.
      2. Escolha quais metadados deseja excluir.
      3. Aplique a redacção para remover dados ocultos.
      4. Salve o arquivo atualizado.
   
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

        # Apague metadados em PPTX

        # Escolha quais campos redigir
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Abra seu arquivo com Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Execute e salve alterações
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Outras Formas de Ocultar Informações Sensíveis"
  description: "GroupDocs.Redaction for Python via .NET dá suporte à redacção em muitos formatos. Uma maneira rápida de remover conteúdo pessoal de documentos."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Ferramentas de Redacção de Arquivos"
  features:
    # feature loop
    - title: "Pesquisar e Remover Texto"
      content: "Exclua rapidamente palavras ou frases que contenham dados pessoais ou sensíveis."

    # feature loop
    - title: "Adicionar Sobreposições de Imagem"
      content: "Cubra seções de uma imagem que não devem ser compartilhadas."

    # feature loop
    - title: "Remover Metadados Ocultos"
      content: "Desfaça-se de nomes de autores, títulos e outras tags ocultas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Exemplo: Excluir Campos de Metadados"
      content: |
        Siga este exemplo para remover campos de metadados comuns de um arquivo PPTX antes de compartilhar.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Marque o campo do Autor para redacção
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Marque o campo do Título para redacção
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Carregue o arquivo
          with gr.Redactor("source.pptx") as redactor:

              # Aplique a redacção
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Exporte o arquivo limpo
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "Use Python para Limpar Metadados de PPTX"
    exclude: "PPTX"
    description: "Remova dados de fundo de PPTX com Python. Ótimo para privacidade e conformidade."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir Imagem"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "Formatos de imagem populares"

        # format loop 6
        - name: "Redigir Foto"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "Formatos de foto"

        # format loop 7
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 8
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "Apresentação PowerPoint Open XML"

        # format loop 10
        - name: "Redigir JPEG"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "Imagem JPEG"


---