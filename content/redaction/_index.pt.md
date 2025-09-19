---
############################# Static ############################
layout: "family"
date:  2025-09-19T19:29:16
draft: false

product: "Redaction"
product_tag: "redaction"

lang: pt

############################# Head ############################
head_title: "Solução de Redação de Documentos. Edite ou remova qualquer dado sensível."
head_description: "Remova, redaja ou oculte texto, imagens ou metadados em PDFs, documentos do Word, planilhas do Excel, apresentações do PowerPoint, imagens e muito mais. Use nossa biblioteca em suas aplicações .NET, Java, Python ou baseadas em nuvem."

############################# Header ############################
title: "Biblioteca de Redação de Documentos"
description:  |
  Oculte ou remova informações privadas de vários tipos de arquivo.

  Edite texto ou imagens para eliminar conteúdo sensível.

  Gerencie metadados de arquivos utilizando nossos recursos avançados.

############################# Supported Platforms ###############################
supported_platforms:
  enable: true
  head_title: "Escolha Sua Plataforma"
  title: "Independência de Plataforma"
  description: "A biblioteca GroupDocs.Redaction suporta os seguintes sistemas operacionais e frameworks:"
  details_link_title: "Saiba mais"

  items:
    # items loop
    - title: ".NET"
      description: GroupDocs.Redaction .NET 
      color: "blue"
      tag: "net"
      link: "/redaction/net/"
      features_link: "https://docs.groupdocs.com/redaction/net/system-requirements/"
      features:
          # features loop
          - rows: "3"
            content: |
                    NET 6.0+ <br> .NET Core 3.1 <br> .NET Framework 4.6.2+
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS <br> Microsoft Azure
      
          # features loop
          - rows: "3"
            content: |
                    Microsoft Visual Studio <br> JetBrains Rider <br> Microsoft Visual Code
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats
      

    # items loop
    - title: "Java"
      description: GroupDocs.Redaction Java
      color: "red"
      tag: "java"
      link: "/redaction/java/"
      features_link: "https://docs.groupdocs.com/redaction/java/system-requirements/"
      features:
          # features loop
          - rows: "3"
            content: |
                    Java 8 or higher <br> Kotlin
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS
      
          # features loop
          - rows: "3"
            content: |
                    IntelliJ IDEA <br> Eclipse <br> NetBeans
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats

    # items loop
    - title: "Python"
      description: GroupDocs.Redaction Python
      color: "yellow"
      tag: "python-net"
      link: "/redaction/python-net/"
      features_link: "https://docs.groupdocs.com/redaction/python-net/system-requirements/"
      features:
          # features loop
          - rows: "3"
            content: |
                    Python 3.9+ and .Net 6+
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS
      
          # features loop
          - rows: "3"
            content: |
                    IDLE <br> PyCharm <br> Visual Studio Code
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats

############################# Features ###############################
features:
  enable: true
  title: "GroupDocs.Redaction em um Relance"
  description: "Uma solução para gerenciar conteúdo em PDFs, documentos do Office, imagens e outros arquivos empresariais."

  items:
    # items loop
    - icon: "text"
      title: "Remover ou Editar Texto"
      content: "Localize e redaja texto sensível em seus documentos."

    # items loop
    - icon: "image"
      title: "Redigir Imagens"
      content: "Oculte áreas de imagem em seus arquivos sem esforço adicional."

    # items loop
    - icon: "template"
      title: "Gerenciar Metadados"
      content: "Remova ou substitua metadados, como autor em documentos do Word ou dados EXIF em imagens."

    # items loop
    - icon: "pdf"
      title: "Recursos Avançados"
      content: "Pesquise por dados a serem redigidos usando expressões regulares ou integração de IA."

############################# Code samples ############################
code_samples:
  enable: true
  title: "Exemplos de Código do GroupDocs.Redaction"
  description: "Casos de uso típicos das operações de redação do GroupDocs.Redaction."
  items:
    # code sample loop
    - title: "Como Redigir Texto em Documentos PDF"
      content: |
       O GroupDocs.Redaction é a melhor solução para redigir texto em seus documentos em apenas alguns passos.
      samples:
        - language: "C#"
          color: "blue"
          content: |
            ```csharp {style=abap}   
            // Passe o caminho do arquivo a ser redigido para uma instância de Redactor
            using (Redactor redactor  = new Redactor("source.pdf"))
            {
                // Forneça opções de redação
                var redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // Redija e salve o resultado
                redactor.Apply(redaction);

                var outputFile = redactor.Save();
            }   
            ```
        - language: "Java"
          color: "red"
          content: |
            ```java {style=abap}   
            // Passe o caminho do arquivo a ser redigido para uma instância de Redactor
            final Redactor redactor  = new Redactor("source.pdf");

            try 
            {
                // Forneça opções de redação
                ExactPhraseRedaction redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // Redija e salve o resultado
                redactor.apply(redaction);
                redactor.save();
            }
            finally { redactor.close(); } 
            ```
        - language: "Python"
          color: "yellow"
          content: |
            ```python {style=abap}
            import groupdocs.redaction as gr
            import groupdocs.redaction.options as gro
            import groupdocs.redaction.redactions as grr

            def run():

                # Passe o caminho do arquivo a ser redigido para uma instância de Redactor
                with gr.Redactor("source.pdf") as redactor:

                    # Forneça opções de redação
                    repl_opt = grr.ReplacementOptions("[hidden]")
                    ex_red = grr.ExactPhraseRedaction("Sensitive data", repl_opt)

                    # Redija e salve o resultado
                    result = redactor.apply(ex_red)
        
                    so = gro.SaveOptions()
                    so.add_suffix = True
                    so.rasterize_to_pdf = False
                    result_path = redactor.save(so)
            ```

############################# Supported Formats ###############################
formats:
  enable: true
  title: "30+ Formatos de Arquivo Suportados"
  description: "O GroupDocs.Redaction suporta operações de redação em todos os formatos de arquivo empresariais amplamente utilizados."

############################# Metrics ###############################
metrics:
  enable: true
  title: "Conquistas do GroupDocs.Redaction"
  description: "Descubra Métricas Chave que Destacam o Sucesso de Nossa Biblioteca"

  items:
    # items loop
    - number: "30+"
      title: "Formatos Suportados"
      content: "O GroupDocs.Redaction suporta operações com mais de 30 formatos de arquivos amplamente utilizados."

    # items loop
    - number: "440k"
      title: "Downloads do NuGet"
      content: "O GroupDocs.Redaction para .NET foi baixado mais de 440.000 vezes pelo NuGet."

    # items loop
    - number: "12k"
      title: "Downloads do Maven"
      content: "O GroupDocs.Redaction tem mais de 12.000 downloads no Maven, oferecendo recursos poderosos de redação em Java."

    # items loop
    - number: "140+"
      title: "Clientes Satisfeitos"
      content: "Empresas globais e desenvolvedores individuais confiam nos produtos da GroupDocs para construir soluções inovadoras."


############################# Customers ###############################
customers:
  enable: true
  title: "Nossos Clientes Satisfeitos"
  description: "As bibliotecas da GroupDocs são confiáveis por marcas reconhecidas e respeitadas globalmente."

  items:
    # items loop
    - title: "BenQ Corporation"
      logo: "benq"
      
    # items loop
    - title: "Nasdaq Stock Market"
      logo: "nasdaq"
      
    # items loop
    - title: "AT&T Inc."
      logo: "att"
      
    # items loop
    - title: "Customer logo AstraZeneca"
      logo: "astrazeneca"
      
    # items loop
    - title: "Central Bank of Argentina"
      logo: "argentinacentralbank"
      
    # items loop
    - title: "Roche Holding AG"
      logo: "roche"
      
    # items loop
    - title: "Capita"
      logo: "capita"
      
    # items loop
    - title: "Axa S.A."
      logo: "axa"
      
    # items loop
    - title: "Instructure Inc."
      logo: "instructure"
      
    # items loop
    - title: "Wipro"
      logo: "wipro"


############################# Actions ###############################
actions:
  enable: true
  title: "Pronto para Começar?"
  description: "Experimente os recursos do GroupDocs.Redaction gratuitamente na sua plataforma."

  items:
    # items loop
    - title: ".NET"
      color: "blue"
      link: "/redaction/net/"

    # items loop
    - title: "Java"
      color: "red"
      link: "/redaction/java/"

    # items loop
    - title: "Node.js"
      color: "yellow"
      link: "/redaction/python-net/"   

############################# FAQ ###############################
faq:
  enable: true
  title: "Perguntas Frequentes"
  description: "Respostas às perguntas mais comuns."

  items:
    # items loop
    - question: "A biblioteca GroupDocs.Redaction requer algum software de terceiros para manipular documentos?"
      answer: "O GroupDocs.Redaction não requer nenhum software externo como Adobe Acrobat, Microsoft Office ou outros."

    # items loop
    - question: "Posso experimentar a biblioteca GroupDocs.Redaction antes de adquirir?"
      answer: "Sim, você pode experimentar o GroupDocs.Redaction sem comprar uma licença. Ele funciona em modo de teste, que adiciona marcas de teste e limita a saída às 3 primeiras páginas. Para testar sem restrições, solicite uma licença temporária de 30 dias. Para mais detalhes, [veja](https://purchase.groupdocs.com/temporary-license/)."

    # items loop
    - question: "Quais opções de licença estão disponíveis?"
      answer: "Oferecemos vários tipos de licença com base em suas necessidades de desenvolvimento e distribuição. Incluindo licenças baseadas em desenvolvedor, site e medição, dependendo do uso. Saiba mais [aqui](https://purchase.groupdocs.com/pricing/redaction/net/)."

############################# Cloud Links ###############################
cloud_links:
  enable: false
  title: "APIs de Baixo Código do GroupDocs.Redaction"
  description: "Integre a redação de documentos em qualquer aplicação usando nossa API REST baseada em nuvem."
  
  items:
    # items loop
    - title: "GroupDocs.Redaction Cloud for cURL"
      content: "Use comandos cURL com nossa API RESTful em nuvem para redigir documentos em uma ampla gama de formatos de arquivos suportados."
      icon: "groupdocs_redaction-for-curl"
      link: "https://products.groupdocs.cloud/redaction/curl"

    # items loop
    - title: "GroupDocs.Redaction Cloud for .NET"
      content: "Extraia imagens, texto e metadados ou redija documentos usando templates em aplicações .NET."
      icon: "groupdocs_redaction-for-net"
      link: "https://products.groupdocs.cloud/redaction/net"

    # items loop
    - title: "GroupDocs.Redaction Cloud for Java"
      content: "SDK Java para redigir documentos e extrair dados em suas aplicações baseadas em Java."
      icon: "groupdocs_redaction-for-java"
      link: "https://products.groupdocs.cloud/redaction/java"

############################# App links ###############################
app_links:
  enable: true
  title: "Aplicativos Sem Código do GroupDocs.Redaction"
  description: "Um aplicativo baseado na web que permite redigir mais de 30 formatos de arquivos populares diretamente no seu navegador."

  items:
    # items loop
    - title: "GroupDocs.Redaction Total"
      content: "Ferramenta online gratuita para redigir Word, Excel, PowerPoint, PDF e mais de 30 outros tipos de arquivos."
      icon: "groupdocs_redaction-app"
      link: "https://products.groupdocs.app/redaction/total"

    # items loop
    - title: "GroupDocs.Redaction DOCX"
      content: "Redija documentos do Word no seu navegador e extraia imagens, texto ou metadados."
      icon: "groupdocs_words-app"
      link: "https://products.groupdocs.app/redaction/docx"

    # items loop
    - title: "GroupDocs.Redaction PDF"
      content: "Ferramenta gratuita de redação de PDF que funciona em qualquer dispositivo ou plataforma sem limitações."
      icon: "groupdocs_pdf-app"
      link: "https://products.groupdocs.app/redaction/pdf"


      


---