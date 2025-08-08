
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: pt
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Oculte Texto Sensível em POWERPOINT Usando Sobreposições em Python"
head_description: "GroupDocs.Redaction for Python via .NET ajuda você a cobrir conteúdo privado em arquivos POWERPOINT com sobreposições coloridas. Mantenha tudo em seu lugar enquanto oculta o que importa."

############################# Header ############################
title: "Oculte Texto em Apresentações POWERPOINT com Python" 
description: "Use Python e GroupDocs.Redaction for Python via .NET para adicionar sobreposições e ocultar texto sensível em seus slides de POWERPOINT."
subtitle: "O Que Você Pode Fazer com GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Saiba Mais Sobre GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ajuda desenvolvedores Python a limpar apresentações POWERPOINT cobrindo ou deletando texto, imagens e informações ocultas.

############################# Steps ############################
steps:
    enable: true
    title: "Redija Informações em Arquivos Powerpoint"
    content: |
      Com GroupDocs.Redaction for Python via .NET, você pode preparar arquivos Powerpoint para compartilhamento usando passos simples de redação.
      
      1. Crie um novo Redactor e carregue seu arquivo.
      2. Escolha o que ocultar e como aplicá-lo.
      3. Adicione o padrão de busca e defina uma cor de sobreposição.
      4. Aplique a redação e salve seu documento atualizado.
   
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

        # Cubra texto sensível em POWERPOINT usando sobreposições

        # Defina como a redação funcionará
        # Escolha o texto e a cor para esconder
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Use Redactor para carregar sua apresentação
        with gr.Redactor("input.pptx") as redactor:

            # Redija e salve seu arquivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Maneiras Simples de Ocultar Informações"
  description: "GroupDocs.Redaction for Python via .NET torna simples ocultar ou remover partes sensíveis de documentos — perfeito para uso legal, pessoal ou comercial."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Ferramentas úteis para privacidade"
  features:
    # feature loop
    - title: "Encontrar e substituir texto"
      content: "Pesquise palavras ou números e esconda ou altere-os."

    # feature loop
    - title: "Cubra partes de imagens"
      content: "Desenhe sobreposições para esconder imagens inteiras ou áreas selecionadas."

    # feature loop
    - title: "Remova informações ocultas"
      content: "Delete metadados como nomes ou datas que os usuários não veem."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redija Usando Busca por Regex"
      content: |
        Veja como expressões regulares ajudam você a encontrar e ocultar texto em seus slides.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Defina o padrão e a cor da sobreposição
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Abra seu arquivo POWERPOINT
          with gr.Redactor("source.pptx") as redactor:

              # Execute a redação
              result = redactor.apply(redaction)

              # Salve a versão final
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
    title: "Oculte Texto em POWERPOINT com Python"
    exclude: "POWERPOINT"
    description: "Use Python para adicionar sobreposições ou remover conteúdo de seus slides POWERPOINT para manter dados privados seguros."
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