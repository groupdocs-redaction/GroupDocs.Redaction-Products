---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: pt
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Drop-down ############################
supported_platforms:
  items:
    # supported_platforms loop
    - title: ".NET"
      tag: "net"
    # supported_platforms loop
    - title: "Java"
      tag: "java"
    # supported_platforms loop
    - title: "Python"
      tag: "python-net"

############################# Head ############################
head_title: "Apague informações confidenciais de documentos com Python"
head_description: "Mantenha seus arquivos seguros usando GroupDocs.Redaction for Python via .NET. Redija, oculte ou exclua rapidamente conteúdo sensível em PDFs, Word, Excel, PowerPoint e arquivos de imagem."

############################# Header ############################
title: "Mantenha Seus Documentos Seguros com GroupDocs.Redaction"
description: "Remova facilmente dados privados, redija texto e limpe metadados ocultos de PDFs, arquivos do Office e imagens usando a avançada caixa de ferramentas Python."
words:
  for: "para"

actions:
  main: "Download do PyPi"
  main_link: "https://pypi.org/project/groupdocs-redaction-net/"
  alt: "Licenciamento"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
  title: "Pronto para Começar?"
  description: "Experimente os recursos do GroupDocs.Redaction gratuitamente ou solicite uma licença."

release:
  title: "Versão {0} Lançada"
  notes: "Veja as novidades"
  downloads: "Downloads"

code:
  title: "Redigindo o Conteúdo do Documento"
  more: "Mais exemplos"
  more_link: ""
  install: "pip install groupdocs-redaction-net"
  content: |
    ```python {style=abap}
    import groupdocs.redaction as gr
    import groupdocs.redaction.redactions as grr

    def run():

        # Ajuste os parâmetros de redação
        repl_opt = grr.ReplacementOptions("[redacted]")
        red = grr.ExactPhraseRedaction("Data", repl_opt)

        # Carregue seu arquivo na instância Redactor
        with gr.Redactor("sample.pdf") as redactor:

            # Inicie o processo de redação
            result = redactor.apply(red)
        
            # Exporte o arquivo limpo
            result_path = redactor.save()
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction em um Relance"
  description: "Integre poderosas capacidades de redação em seus projetos Python"
  features:
    # feature loop
    - title: "Redigir Texto Sensível"
      content: "Com GroupDocs.Redaction for Python via .NET, você pode encontrar e cobrir automaticamente palavras ou frases sensíveis. Substitua ou mascare o texto com caixas coloridas para proteção aprimorada em PDFs, documentos do Word e outros formatos."

    # feature loop
    - title: "Mascarar Imagens"
      content: "Nossa tecnologia pode detectar imagens e borrá-las, ocultá-las ou bloqueá-las com base nos critérios escolhidos. Defina regiões específicas ou permita a detecção automatizada para total controle."

    # feature loop
    - title: "Remover Metadados Ocultos"
      content: "Elimine detalhes pessoais ou de rastreamento ocultos em metadados, como autoria ou informações do dispositivo. O GroupDocs.Redaction for Python via .NET garante que seus documentos estejam totalmente limpos e seguros para compartilhar."

    # feature loop
    - title: "Redigir Elementos Especiais"
      content: "Vá além do texto redigindo itens incorporados como comentários, anotações e outros elementos específicos do arquivo para alcançar total confidencialidade."

############################# Platforms ############################
platforms:
  enable: true
  title: "Independência de Plataforma"
  description: "GroupDocs.Redaction for Python via .NET funciona em todos os principais sistemas operacionais, suporta frameworks populares e se integra com gerenciadores de pacotes comuns."
  items:
    # platform loop
    - title: "Amazon"
      image: "amazon"
    # platform loop
    - title: "Docker"
      image: "docker"
    # platform loop
    - title: "Azure"
      image: "azure"
    # platform loop
    - title: "VS Code"
      image: "vs_code"
    # platform loop
    - title: "ReSharper"
      image: "resharper"
    # platform loop
    - title: "macOS"
      image: "finder"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "NuGet"
      image: "nuget"

############################# File formats ############################
formats:
  enable: true
  title: "Formatos de Arquivo Suportados"
  description: |
    GroupDocs.Redaction for Python via .NET suporta os seguintes [formatos de arquivo](https://docs.groupdocs.com/redaction/python-net/supported-document-formats/).
  groups:
    # group loop
    - color: "green"
      content: |
        ### Formatos MS Office
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### Outros Formatos do Office
        * **Portátil:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **Formatos de Texto:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### Outros Formatos
        * **Web:** HTM, HTML, MD
        * **Imagens:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **eBooks:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "Principais Recursos do GroupDocs.Redaction for Python via .NET"
  description: "Escaneie, localize e redija facilmente conteúdo sensível em PDFs, imagens e arquivos do Office."

  items:
    # feature loop
    - icon: "search"
      title: "Busca Personalizável"
      content: "Utilize modos de busca flexíveis para encontrar correspondências ou palavras-chave precisas para remoção."

    # feature loop
    - icon: "text"
      title: "Encontrar, Substituir ou Excluir Texto"
      content: "Localize dados sensíveis e substitua por texto seguro ou exclua completamente."

    # feature loop
    - icon: "image"
      title: "Mascaramento Visual"
      content: "Sobreponha formas ou padrões coloridos para cobrir visualmente as seções redigidas."

    # feature loop
    - icon: "search"
      title: "Detecção com Base em Regex"
      content: "Aproveite expressões regulares para precisão máxima em buscas avançadas de texto."

    # feature loop
    - icon: "table"
      title: "Redação Direcionada"
      content: "Aplique a redação apenas a certas páginas ou regiões definidas para economizar tempo e concentrar-se em áreas principais."

    # feature loop
    - icon: "template"
      title: "Sanitização de Metadados"
      content: "Limpe facilmente campos de metadados como criador, empresa ou carimbos de data e hora de seus arquivos."

    # feature loop
    - icon: "pdf"
      title: "Opções de Exportação"
      content: "Salve documentos processados em PDF ou outros formatos compatíveis sem perder a fidelidade do layout."

    # feature loop
    - icon: "template"
      title: "Apagar Metadados Completamente"
      content: "Apague todos os metadados incorporados com um único clique para máxima proteção de dados."

    # feature loop
    - icon: "hyperlink"
      title: "Políticas Reutilizáveis em XML"
      content: "Salve suas configurações personalizadas de redação como templates XML para automatizar tarefas futuras."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Exemplos de Código"
  description: "Explore como GroupDocs.Redaction for Python via .NET simplifica tarefas de redação"
  items:
    # code sample loop
    - title: "Redação Baseada em Regex"
      content: |
        Desenvolvedores usando Python podem aplicar [regras baseadas em regex](https://docs.groupdocs.com/redaction/python-net/text-redactions/#use-regular-expression) para encontrar e cobrir texto sensível com máscaras de imagem:
        {{< landing/code title="Redigir Documentos do Word Usando Expressões Regulares">}}
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        def run():

            # Defina regras de redação usando uma expressão regular
            color = grd.Color.from_argb(255, 220, 20, 60)
            repl_opt = grr.ReplacementOptions(color)
            reg_red = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

            # Crie uma instância da classe Redactor
            with gr.Redactor("source.docx") as redactor:

                # Oculte todo texto correspondente com sobreposições de quadrados azuis
                result = redactor.apply(reg_red)
        
                # Salve o documento do Word redigido
                redactor.save()
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Remover Metadados"
      content: |
        Use a API para [apagar metadados](https://docs.groupdocs.com/redaction/python-net/metadata-redactions/#clean-metadata) em vários tipos de arquivos em apenas alguns passos:
        {{< landing/code title="Remover Todos os Metadados de Apresentações">}}
        ```python {style=abap}   
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # Configure as opções de redação
        red = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Forneça o caminho da apresentação para Redactor
        with gr.Redactor("source.pptx") as redactor:

            # Apague todos os metadados da apresentação
            result = redactor.apply(red)
        
            # Salve o arquivo da apresentação limpa
            redactor.save()
        ```
        {{< /landing/code >}}

---
