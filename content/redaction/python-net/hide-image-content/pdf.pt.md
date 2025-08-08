
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: pt
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Cobrir Imagens Sensíveis em PDF com Sobreposições Usando Python"
head_description: "Com GroupDocs.Redaction for Python via .NET, você pode ocultar imagens sensíveis em arquivos PDF adicionando sobreposições. Proteja dados privados sem alterar o layout do documento."

############################# Header ############################
title: "Ocultar Imagens em Arquivos PDF com Sobreposições Usando Python" 
description: "Mantenha imagens pessoais e empresariais seguras em arquivos PDF com Python. Nossas ferramentas tornam a proteção de dados confiável."
subtitle: "Recursos do GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET fornece aos desenvolvedores Python as ferramentas para ocultar ou excluir conteúdo em arquivos PDF. Cubra texto, imagens e metadados para proteger documentos em diferentes formatos.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Dados Sensíveis em Arquivos Pdf"
    content: |
      GroupDocs.Redaction for Python via .NET oferece aos aplicativos Python via .NET a capacidade de proteger documentos. Oculte conteúdo privado com apenas alguns cliques.
      
      1. Crie um objeto Redactor e aponte para o arquivo Pdf.
      2. Ajuste as configurações para atender às suas necessidades de redigação.
      3. Selecione qual área da imagem cobrir e escolha uma cor de sobreposição.
      4. Processe e salve o arquivo redigido.
   
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

        # Cobrir partes confidenciais de imagens em PDF

        # Configurar a cor e o tamanho da sobreposição
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Escolher a área a ser redigida
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Carregar o documento usando o Redactor
        with gr.Redactor("input.pdf") as redactor:

            # Aplicar a sobreposição e salvar o documento
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ocultar Conteúdo Sensível em Documentos"
  description: "Com GroupDocs.Redaction for Python via .NET, você pode ocultar ou apagar dados em diferentes formatos de arquivo. Proteja informações sensíveis enquanto mantém os documentos limpos e compartilháveis."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Funções Chave de Redigação"
  features:
    # feature loop
    - title: "Pesquisar e Editar Texto"
      content: "Encontre e altere texto sensível em seu documento para proteger informações privadas."

    # feature loop
    - title: "Cobrir Áreas de Imagem"
      content: "Coloque sobreposições em imagens ou partes selecionadas para esconder visuais confidenciais."

    # feature loop
    - title: "Gerenciar Metadados"
      content: "Remova ou edite metadados ocultos para evitar vazamentos de dados indesejados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ocultar Informações da Imagem com Sobreposições"
      content: |
        Este exemplo mostra como cobrir dados de imagem sensíveis em documentos usando sobreposições.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Ajustar as configurações da sobreposição: tamanho, cor e localização
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Escolher a área da imagem na primeira página
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Abra o arquivo para redigitação
          with gr.Redactor("source.pdf") as redactor:

              # Aplicar a sobreposição para ocultar a imagem
              result = redactor.apply(redaction)

              # Salvar o arquivo redigido
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Proteger Arquivos PDF com Python"
    exclude: "PDF"
    description: "Use Python para ocultar ou excluir dados sensíveis em arquivos PDF. Uma solução prática para assegurar documentos empresariais e pessoais."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir Imagem"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "Formatos de imagem populares"

        # format loop 6
        - name: "Redigir Foto"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "Formatos de foto"

        # format loop 7
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 8
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "Apresentação PowerPoint Open XML"

        # format loop 10
        - name: "Redigir JPEG"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "Imagem JPEG"


---