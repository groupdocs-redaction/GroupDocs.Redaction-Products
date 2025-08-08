
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: pt
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Oculte Texto em WORD Usando Sobreposições em Python"
head_description: "Com GroupDocs.Redaction for Python via .NET, é fácil ocultar texto privado em documentos WORD usando blocos coloridos. Seu layout permanece inalterado."

############################# Header ############################
title: "Use Sobreposições para Ocultar Texto em WORD com Python" 
description: "Proteja informações chave em documentos WORD colocando blocos de sobreposição usando Python e GroupDocs.Redaction for Python via .NET."
subtitle: "O Que Você Pode Fazer com GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Conheça GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       Com GroupDocs.Redaction for Python via .NET, desenvolvedores de Python podem ocultar ou deletar conteúdo em documentos WORD - como nomes, números e mais.

############################# Steps ############################
steps:
    enable: true
    title: "Redija Conteúdo Privado em Word"
    content: |
      GroupDocs.Redaction for Python via .NET torna fácil para os desenvolvedores Python via .NET ocultarem dados sensíveis rapidamente.
      
      1. Crie um Redactor e carregue seu arquivo Word.
      2. Configure as opções de redação.
      3. Escolha o texto a ser ocultado e a cor da sobreposição.
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

        # Cubra texto em WORD usando sobreposições

        # Escolha o que redigir
        # Digite o texto e defina a cor
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Carregue o arquivo usando Redactor
        with gr.Redactor("input.docx") as redactor:

            # Redija e salve
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Mais Maneiras de Ocultar Informações"
  description: "Use GroupDocs.Redaction for Python via .NET para limpar seus arquivos ocultando conteúdo visível e oculto sem alterar a aparência."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Recursos focados em privacidade"
  features:
    # feature loop
    - title: "Oculte ou Substitua Texto"
      content: "Proteja informações importantes removendo ou trocando palavras."

    # feature loop
    - title: "Cubra Imagens"
      content: "Bloqueie imagens sensíveis com formas sólidas."

    # feature loop
    - title: "Delete Dados Ocultos"
      content: "Remova metadados que podem revelar informações do sistema ou do usuário."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Encontre e Oculte Texto com Regex"
      content: |
        Este exemplo mostra como usar expressões regulares para identificar e ocultar conteúdo.
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

          # Abra o arquivo para editar
          with gr.Redactor("source.docx") as redactor:

              # Aplique a redação
              result = redactor.apply(redaction)

              # Salve sua cópia atualizada
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
    title: "Proteja Conteúdo de WORD com Python"
    exclude: "WORD"
    description: "Use Python para ocultar ou deletar informações sensíveis em arquivos WORD sem afetar sua estrutura ou layout."
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