
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: pt
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Oculte Conteúdo em EXCEL Usando Sobreposições em Python"
head_description: "Com GroupDocs.Redaction for Python via .NET, você pode cobrir texto em arquivos EXCEL usando sobreposições sólidas de cor. Uma maneira simples de proteger conteúdo privado."

############################# Header ############################
title: "Ocultação de Texto para EXCEL em Python" 
description: "Escreva código Python para ocultar texto e proteger informações em seus arquivos EXCEL. Mantenha seus documentos seguros e limpos."
subtitle: "O que Você Recebe com GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Por que Usar GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET é criado para desenvolvedores Python que precisam ocultar ou remover conteúdo em arquivos EXCEL. Trabalhe com texto, imagens e metadados facilmente.

############################# Steps ############################
steps:
    enable: true
    title: "Oculte Dados Sensíveis em Excel"
    content: |
      GroupDocs.Redaction for Python via .NET facilita para os desenvolvedores Python via .NET preparar documentos antes de compartilhar.
      
      1. Crie um Redactor e abra seu arquivo Excel.
      2. Escolha as configurações de redação que atendem à sua tarefa.
      3. Digite o texto ou a frase a ser coberta e escolha uma cor.
      4. Aplique a redação e salve o arquivo.
   
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

        # Use sobreposições para ocultar texto em EXCEL

        # Escolha suas configurações de redação
        # Escolha o que ocultar e uma cor a ser utilizada
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Comece carregando seu arquivo com Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Aplique as alterações e salve o arquivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ferramentas Úteis para Redigir Dados"
  description: "GroupDocs.Redaction for Python via .NET permite que você oculte ou remova dados em documentos enquanto mantém o layout e o conteúdo claros."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Construído para proteger seus arquivos"
  features:
    # feature loop
    - title: "Oculte ou mude texto"
      content: "Encontre e substitua qualquer parte do texto que precisa ser escondida."

    # feature loop
    - title: "Cubra imagens e visuais"
      content: "Adicione sobreposições para remover partes sensíveis de fotos ou gráficos."

    # feature loop
    - title: "Limpe metadados ocultos"
      content: "Remova informações de fundo como nomes de autores ou datas de modificação."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redija Usando Regex"
      content: |
        Aprenda como usar padrões regex para encontrar e ocultar conteúdo.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Adicione o padrão regex e as configurações de cor
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Abra o arquivo que você deseja limpar
          with gr.Redactor("source.xslx") as redactor:

              # Aplique a redação
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
    title: "Proteja EXCEL com Redações Python"
    exclude: "EXCEL"
    description: "Oculte conteúdo em EXCEL usando sobreposições quadradas ou remova-o completamente com recursos do Python."
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