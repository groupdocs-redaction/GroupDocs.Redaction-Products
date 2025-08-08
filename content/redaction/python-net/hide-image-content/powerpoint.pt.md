
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: pt
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Mascarar Imagens Sensíveis em POWERPOINT Usando Sobreposições com Python"
head_description: "Com GroupDocs.Redaction for Python via .NET, você pode ocultar áreas privadas de imagem em arquivos POWERPOINT usando sobreposições. Proteja informações sem alterar o design do documento."

############################# Header ############################
title: "Cobrir Imagens Privadas em Documentos POWERPOINT Usando Sobreposições Python" 
description: "Mantenha imagens sensíveis seguras em arquivos POWERPOINT com Python. Ferramentas simples projetadas para forte proteção de dados."
subtitle: "Explore os Recursos do GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "O que é GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET fornece aos desenvolvedores Python ferramentas para ocultar ou excluir conteúdo sensível em arquivos POWERPOINT. Proteja seus documentos cobrindo textos, imagens e metadados privados.

############################# Steps ############################
steps:
    enable: true
    title: "Mantenha Seus Documentos Powerpoint Seguros"
    content: |
      GroupDocs.Redaction for Python via .NET facilita para os aplicativos Python via .NET proteger conteúdo sensível em documentos.
      
      1. Crie um objeto Redactor e carregue o arquivo Powerpoint.
      2. Ajuste as opções de redigação para atender às suas necessidades.
      3. Selecione a área da imagem e escolha uma cor de sobreposição.
      4. Aplique a redigação e salve seu documento.
   
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

        # Mascarar conteúdo de imagem em arquivos POWERPOINT

        # Definir tamanho e cor da sobreposição
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Escolher área para ocultar
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Carregar arquivo com Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Aplicar sobreposição e salvar arquivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Proteger Dados Privados em Documentos"
  description: "GroupDocs.Redaction for Python via .NET permite que você oculte ou exclua conteúdo sensível em diferentes formatos de arquivo. Mantenha seus arquivos seguros e prontos para compartilhamento."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Todos os Recursos de Redigação em Um Só Lugar"
  features:
    # feature loop
    - title: "Pesquisar e Editar Texto"
      content: "Encontre texto privado em documentos e substitua para garantir a privacidade."

    # feature loop
    - title: "Mascarar Áreas de Imagem"
      content: "Cubra imagens inteiras ou partes selecionadas com sobreposições para manter as informações privadas."

    # feature loop
    - title: "Excluir Metadados Ocultos"
      content: "Apague metadados para evitar o compartilhamento acidental de informações."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Use Sobreposições para Ocultar Dados de Imagem"
      content: |
        Este exemplo mostra como proteger imagens sensíveis em documentos usando sobreposições.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Defina dimensões, posição e cor da sobreposição
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Marque a área da imagem na primeira página
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Abra o documento para redigação
          with gr.Redactor("source.pptx") as redactor:

              # Aplique a sobreposição para mascarar os dados
              result = redactor.apply(redaction)

              # Salvar o documento finalizado
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
    title: "Mantenha Arquivos POWERPOINT Seguros com Python"
    exclude: "POWERPOINT"
    description: "Com Python, você pode ocultar ou remover dados sensíveis em arquivos POWERPOINT. Solução confiável para proteger documentos importantes."
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