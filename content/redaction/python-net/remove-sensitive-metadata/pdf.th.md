
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: th
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ลบข้อมูลเมตาจาก PDF โดยใช้ Python"
head_description: "GroupDocs.Redaction for Python via .NET ช่วยให้คุณลบข้อมูลที่ซ่อนอยู่จากไฟล์ PDF ได้อย่างมีประสิทธิภาพ หลีกเลี่ยงการแบ่งปันข้อมูลส่วนตัวโดยการแก้ไขหรือลบข้อมูลเมตา."

############################# Header ############################
title: "ลบข้อมูลเมตาในไฟล์ PDF ด้วย Python" 
description: "ใช้ Python และ GroupDocs.Redaction for Python via .NET เพื่อทำความสะอาดข้อมูลที่ละเอียดอ่อนจากเอกสาร PDF ของคุณ รักษาการควบคุมข้อมูลของคุณด้วยเครื่องมือการลบข้อมูลที่มีประสิทธิภาพ."
subtitle: "สิ่งที่ GroupDocs.Redaction for Python via .NET สามารถทำได้" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ช่วยให้นักพัฒนาที่ใช้ Python ทำความสะอาดเอกสาร PDF โดยการลบข้อความ, เนื้อหารูปภาพ, และข้อมูลเมตา.

############################# Steps ############################
steps:
    enable: true
    title: "ลบข้อมูลเมตาในเอกสาร Pdf"
    content: |
      เริ่มปกป้องไฟล์ของคุณโดยใช้ GroupDocs.Redaction ในแอปPython via .NET.
      
      1. สร้าง Redactor และโหลดไฟล์ Pdf ของคุณ.
      2. เพิ่มกฎเพื่อลบข้อมูลเมตาที่ซ่อนอยู่.
      3. เรียกใช้การลบข้อมูลเพื่อลบรายการข้อมูลเมตา.
      4. บันทึกไฟล์โดยไม่มีข้อมูลที่ซ่อนอยู่.
   
    code:
      platform: "python-net"
      copy_title: "คัดลอก"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "การลบข้อมูลตัวอย่าง"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "คลิ๊กเพื่อคัดลอก"
        copy_done: "คัดลอกแล้ว"
      links:
        #  loop
        - title: "ตัวอย่างเพิ่มเติม"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "เอกสารประกอบ"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # ลบข้อมูลเมตาจากเอกสาร PDF

        # เลือกฟิลด์ข้อมูลเมตาที่จะลบ
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # เปิดไฟล์โดยใช้ Redactor
        with gr.Redactor("input.pdf") as redactor:

            # ลบข้อมูลและบันทึกเอกสารของคุณ
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ลบเนื้อหาที่ซ่อนอยู่ในเอกสาร"
  description: "ด้วย GroupDocs.Redaction for Python via .NET คุณสามารถลบข้อความ, รูปภาพ, และข้อมูลเมตาอย่างปลอดภัย รักษาไฟล์ของคุณให้เป็นส่วนตัวและปลอดภัยก่อนการแบ่งปัน."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ตัวเลือกการลบข้อมูล"
  features:
    # feature loop
    - title: "การลบข้อความ"
      content: "ค้นหาและลบข้อความที่ละเอียดอ่อนทั่วทั้งเอกสาร."

    # feature loop
    - title: "การปกปิดรูปภาพ"
      content: "ซ่อนส่วนเฉพาะของภาพด้วยการแปะทับที่เข้าใจง่าย."

    # feature loop
    - title: "การทำความสะอาดข้อมูลเมตา"
      content: "กำจัดข้อมูลเมตาที่ไม่ต้องการที่อาจเปิดเผยข้อมูลส่วนตัว."
      
  code_samples_ext:
    # code sample ext loop
    - title: "แก้ไขและลบฟิลด์ข้อมูลเมตา"
      content: |
        ตัวอย่างนี้อธิบายวิธีการลบข้อมูลเมตาที่ซ่อนอยู่ในไฟล์ PDF.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # ลบข้อมูลเมตาของผู้เขียน
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # ลบข้อมูลเมตาของชื่อเรื่อง
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # เปิดไฟล์ใน Redactor
          with gr.Redactor("source.pdf") as redactor:

              # เรียกใช้กระบวนการลบข้อมูล
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # บันทึกไฟล์ที่ปรับปรุงแล้ว
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
          ```
        platform: "python-net"
        copy_title: "คัดลอก"
        install:
          command: "pip install groupdocs-redaction-net"
          copy_tip: "คลิ๊กเพื่อคัดลอก"
          copy_done: "คัดลอกแล้ว"
        top_links:
          #  loop
          - title: "ดาวน์โหลดผลลัพธ์"
            icon: "download"
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
        links:
          #  loop
          - title: "ตัวอย่างเพิ่มเติม"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "เอกสารประกอบ"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "พร้อมเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรี หรือขอใบอนุญาต"
  items:
    #  loop
    - title: "ดาวน์โหลด PyPi"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "การออกใบอนุญาต"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "ทำความสะอาดข้อมูลเมตาจาก PDF ด้วย Python"
    exclude: "PDF"
    description: "ลบฟิลด์ข้อมูลที่ซ่อนอยู่ใน PDF โดยใช้งาน Python วิธีที่ชาญฉลาดในการปกป้องความเป็นส่วนตัวและรักษาไฟล์ให้สะอาด."
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "ภาพ JPEG"


---