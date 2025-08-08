
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: pt
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Oculte Texto em XLSX Usando Python e Sobreposições"
head_description: "GroupDocs.Redaction for Python via .NET ajuda você a ocultar texto em arquivos XLSX adicionando sobreposições coloridas. Mantenha seus dados privados sem alterar o layout do arquivo."

############################# Header ############################
title: "Oculte Texto em Arquivos XLSX Usando Sobreposições Python" 
description: "Proteja texto sensível em seus arquivos XLSX com GroupDocs.Redaction for Python via .NET e Python colocando sobreposições simples."
subtitle: "O que Você Recebe com GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "O que GroupDocs.Redaction for Python via .NET Pode Fazer"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET fornece aos desenvolvedores de Python as ferramentas para ocultar ou deletar texto, imagens e muito mais em arquivos XLSX.

############################# Steps ############################
steps:
    enable: true
    title: "Proteja Dados em Arquivos Xlsx"
    content: |
      GroupDocs.Redaction for Python via .NET permite que desenvolvedores Python via .NET ocultem informações privadas com apenas algumas linhas de código.
      
      1. Comece criando um Redactor e carregue seu arquivo Xlsx.
      2. Defina as opções de redação que funcionam para o seu caso.
      3. Adicione o padrão de texto que deseja ocultar e escolha uma cor.
      4. Execute a redação e salve seu arquivo.
   
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
        import groupdocs.pydrawing as grd

        # Oculte conteúdo privado em XLSX com sobreposições

        # Configure suas preferências de redação
        # Escolha o texto a ser coberto e a cor da sobreposição
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Use Redactor para carregar seu arquivo
        with gr.Redactor("input.xslx") as redactor:

            # Redija e salve o arquivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ferramentas Úteis de Redação"
  description: "GroupDocs.Redaction for Python via .NET permite que você oculte ou remova conteúdo de muitos tipos de arquivo. Mantenha informações pessoais ou comerciais protegidas."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Opções de redação fáceis de usar"
  features:
    # feature loop
    - title: "Encontrar e Editar Texto"
      content: "Pesquise texto específico e substitua ou oculte-o."

    # feature loop
    - title: "Cubra Imagens"
      content: "Desenhe sobreposições sobre imagens para bloquear áreas privadas."

    # feature loop
    - title: "Remova Metadados"
      content: "Limpe informações de fundo antes de compartilhar seus arquivos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Oculte Texto Usando Padrões Regex"
      content: |
        Este exemplo mostra como encontrar e ocultar conteúdo usando expressões regulares.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Defina seu padrão de texto e a cor da sobreposição
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Abra o arquivo que você deseja editar
          with gr.Redactor("source.xslx") as redactor:

              # Aplique as regras de redação
              result = redactor.apply(redaction)

              # Salve a versão redigida
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Oculte Dados em XLSX com Python"
    exclude: "XLSX"
    description: "Use ferramentas Python para ocultar ou remover partes sensíveis de seus arquivos XLSX rapidamente."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-text-with-image-overlay//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/python-net/hide-text-with-image-overlay//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-text-with-image-overlay//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-text-with-image-overlay//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-text-with-image-overlay//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 6
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-text-with-image-overlay//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-text-with-image-overlay//pptx/"
          description: "Apresentação PowerPoint Open XML"


---