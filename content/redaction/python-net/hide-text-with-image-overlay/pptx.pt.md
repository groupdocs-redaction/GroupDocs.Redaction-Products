
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
head_title: "Oculte Texto em PPTX Usando Python e Sobreposições"
head_description: "Cubra conteúdo sensível em seus arquivos PPTX com sobreposições coloridas usando GroupDocs.Redaction for Python via .NET. Seu layout permanece inalterado."

############################# Header ############################
title: "Proteja Texto em PPTX com Sobreposições e Python" 
description: "Use GroupDocs.Redaction for Python via .NET e Python para ocultar informações privadas em apresentações PPTX cobrindo-as com blocos coloridos."
subtitle: "O Que Você Pode Fazer com GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "O que GroupDocs.Redaction for Python via .NET Oferece"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       Com GroupDocs.Redaction for Python via .NET, desenvolvedores de Python podem cobrir ou deletar conteúdo em arquivos PPTX - de texto a imagens até dados ocultos.

############################# Steps ############################
steps:
    enable: true
    title: "Redija Informações em Arquivos Pptx"
    content: |
      Use GroupDocs.Redaction for Python via .NET para proteger suas apresentações em poucos passos simples.
      
      1. Crie um Redactor e carregue o arquivo que você deseja editar.
      2. Escolha as configurações de redação que atendem às suas necessidades.
      3. Defina o padrão de texto e escolha uma cor para a sobreposição.
      4. Aplique a redação e salve suas alterações.
   
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

        # Use sobreposições para esconder texto em PPTX

        # Defina as configurações de redação
        # Escolha o texto e a cor
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Comece carregando seu arquivo com Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Redija e salve o arquivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Mais Opções de Redação"
  description: "GroupDocs.Redaction for Python via .NET oferece ferramentas para ocultar ou limpar dados em diferentes formatos de arquivo sem alterar o layout."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Recursos úteis para privacidade"
  features:
    # feature loop
    - title: "Alterar ou Ocultar Texto"
      content: "Proteja informações sensíveis editando ou ocultando-as."

    # feature loop
    - title: "Ocultar Imagens ou Partes"
      content: "Desenhe sobreposições para bloquear imagens inteiras ou áreas selecionadas."

    # feature loop
    - title: "Remover Detalhes Ocultos"
      content: "Apague metadados que podem incluir informações privadas ou do sistema."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Use Regex para Encontrar Texto"
      content: |
        Veja como expressões regulares ajudam você a encontrar e ocultar conteúdo sensível.
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

          # Abra seu arquivo PPTX
          with gr.Redactor("source.pptx") as redactor:

              # Aplique a redação
              result = redactor.apply(redaction)

              # Salve a versão editada
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
    title: "Proteja Slides de PPTX Usando Python"
    exclude: "PPTX"
    description: "Use Python para cobrir ou apagar conteúdo privado em arquivos PPTX enquanto mantém os slides organizados."
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