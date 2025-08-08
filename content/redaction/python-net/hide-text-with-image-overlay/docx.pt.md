
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: pt
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Oculte Texto em DOCX com Sobreposições Usando Python"
head_description: "Proteja texto sensível em arquivos DOCX com GroupDocs.Redaction for Python via .NET. Adicione simples sobreposições quadradas sem alterar seu layout."

############################# Header ############################
title: "Oculte Conteúdo em DOCX Usando Python" 
description: "Use Python para cobrir conteúdo privado em arquivos DOCX. Ideal para documentos legais, pessoais ou empresariais."
subtitle: "Principais Recursos do GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "O que é GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ajuda desenvolvedores de Python a ocultar ou remover conteúdo privado em arquivos DOCX. Você pode bloquear texto, imagens e até metadados ocultos.

############################# Steps ############################
steps:
    enable: true
    title: "Mantenha Informações Privadas Ocultas em Docx"
    content: |
      Com GroupDocs.Redaction for Python via .NET, os desenvolvedores de Python via .NET podem ocultar conteúdo em apenas algumas linhas.
      
      1. Crie um Redactor e abra seu arquivo.
      2. Escolha suas configurações de redação.
      3. Digite o texto a ser ocultado e escolha uma cor.
      4. Aplique e salve a versão redigida.
   
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

        # Oculte conteúdo em DOCX usando sobreposições

        # Configure suas opções de redação
        # Defina o texto e a cor da sobreposição
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Configure o Redactor e carregue seu arquivo
        with gr.Redactor("input.docx") as redactor:

            # Redija e salve o arquivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ferramentas Extras de Redação"
  description: "GroupDocs.Redaction for Python via .NET suporta diferentes tipos de arquivo, permitindo que você proteja qualquer conteúdo com eficácia."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Recursos Integrados de Redação"
  features:
    # feature loop
    - title: "Encontrar e Editar Texto"
      content: "Pesquise palavras-chave e oculte ou substitua-as rapidamente."

    # feature loop
    - title: "Cubra Áreas de Imagem"
      content: "Bloqueie áreas sensíveis em páginas digitalizadas ou fotografias."

    # feature loop
    - title: "Limpe Metadados"
      content: "Remova informações ocultas que podem expor detalhes."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Encontre Texto com Regex e Redija"
      content: |
        Aprenda como usar expressões regulares para encontrar e ocultar texto.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Defina o padrão e a cor
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Abra o arquivo para redigir
          with gr.Redactor("source.docx") as redactor:

              # Execute o processo de redação
              result = redactor.apply(redaction)

              # Salve seu documento limpo
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
    title: "Proteja Arquivos DOCX com Python"
    exclude: "DOCX"
    description: "Cubra ou exclua conteúdo sensível em documentos DOCX usando ferramentas simples do Python."
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