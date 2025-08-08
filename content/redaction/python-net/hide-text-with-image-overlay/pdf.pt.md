
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: pt
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Cubra Texto Sensível em Arquivos PDF Usando Sobreposições em Python"
head_description: "Com GroupDocs.Redaction for Python via .NET, você pode ocultar texto sensível em arquivos PDF adicionando sobreposições coloridas. Proteja dados privados sem alterar a aparência do seu arquivo."

############################# Header ############################
title: "Cubra Texto Sensível em PDF Usando Python" 
description: "Proteja seus arquivos PDF com Python. Use sobreposições para bloquear informações legais, pessoais ou confidenciais."
subtitle: "Destaques do GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Sobre o GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET oferece aos desenvolvedores de Python uma maneira prática de ocultar ou deletar conteúdo em arquivos PDF. Cubra texto, imagens ou metadados sensíveis em muitos formatos.

############################# Steps ############################
steps:
    enable: true
    title: "Mantenha Informações Sensíveis Seguras em Arquivos Pdf"
    content: |
      Use GroupDocs.Redaction for Python via .NET com seus aplicativos Python via .NET para ocultar conteúdo privado rapidamente.
      
      1. Configure um Redactor e carregue seu arquivo Pdf.
      2. Escolha como a redação deve funcionar.
      3. Selecione o texto a ser ocultado e escolha uma cor para a sobreposição.
      4. Aplique a redação e salve seu arquivo.
   
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

        # Oculte texto sensível em PDF usando sobreposições coloridas

        # Defina opções de redação
        # Defina o que ocultar e escolha uma cor
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Carregue o arquivo passando seu caminho para Redactor
        with gr.Redactor("input.pdf") as redactor:

            # Redija e salve seu arquivo PDF
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Oculte ou Remova Informações de Documentos"
  description: "Com GroupDocs.Redaction for Python via .NET, você pode ocultar texto, imagens e outros dados em muitos formatos. Proteja o que é importante enquanto mantém seus documentos fáceis de ler e compartilhar."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Recursos de Redação Flexíveis"
  features:
    # feature loop
    - title: "Edite Qualquer Texto"
      content: "Encontre e substitua texto sensível para manter seus documentos seguros."

    # feature loop
    - title: "Cubra Imagens"
      content: "Use sobreposições para bloquear imagens inteiras ou áreas específicas."

    # feature loop
    - title: "Limpe Metadados"
      content: "Remova dados ocultos para evitar vazamentos involuntários de informações."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Use Regex para Encontrar e Ocultar Texto"
      content: |
        Este exemplo mostra como buscar e ocultar texto usando padrões regex.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Defina o padrão de texto e a cor da sobreposição
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Carregue seu documento
          with gr.Redactor("source.pdf") as redactor:

              # Redija o conteúdo selecionado
              result = redactor.apply(redaction)

              # Salve o arquivo atualizado
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
    title: "Proteja Arquivos PDF com Ferramentas Python"
    exclude: "PDF"
    description: "Use Python para ocultar ou remover conteúdo em arquivos PDF. Uma maneira confiável de manter informações privadas seguras."
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