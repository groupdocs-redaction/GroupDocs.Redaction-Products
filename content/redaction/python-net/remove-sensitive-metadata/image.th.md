
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: th
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ทำความสะอาดข้อมูลที่ซ่อนอยู่ใน IMAGE โดยใช้ Python"
head_description: "GroupDocs.Redaction for Python via .NET ช่วยให้คุณลบข้อมูลเมตาที่ซ่อนอยู่จากไฟล์ IMAGE รักษาไฟล์ให้สะอาดและปลอดภัย."

############################# Header ############################
title: "ลบข้อมูลเมตาในไฟล์ IMAGE ด้วย Python" 
description: "ใช้เครื่องมือ Python ในการปกป้องเอกสาร IMAGE ลบข้อมูลซ่อนก่อนการแบ่งปันหรือเผยแพร่."
subtitle: "คุณสมบัติหลักของ GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction มอบเครื่องมือให้กับนักพัฒนาที่ใช้ Python ในการลบข้อมูลที่ละเอียดอ่อนจากไฟล์ IMAGE รวมถึงข้อมูลเมตา, ข้อความ, และรูปภาพ.

############################# Steps ############################
steps:
    enable: true
    title: "วิธีการลบข้อมูลเมตาจากไฟล์ Image"
    content: |
      GroupDocs.Redaction ช่วยให้นักพัฒนา Python via .NET ทำความสะอาดข้อมูลเมตาของเอกสารได้ในไม่กี่ขั้นตอน.
      
      1. ตั้งค่าคุณสมบัติของ Redactor และโหลดไฟล์ Image ของคุณ.
      2. เลือกข้อมูลเมตาที่คุณต้องการลบ.
      3. ดำเนินการลบข้อมูล.
      4. บันทึกไฟล์ที่อัปเดต.
   
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

        # ทำความสะอาดฟิลด์ที่ซ่อนอยู่ในไฟล์ IMAGE

        # เลือกฟิลด์ข้อมูลเมตาที่จะลบ
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # ใช้ Redactor เพื่อเปิดไฟล์
        with gr.Redactor("input.png") as redactor:

            # ประมวลผลและส่งออก
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ทำความสะอาดข้อมูลที่ละเอียดอ่อนจากทุกไฟล์"
  description: "GroupDocs.Redaction for Python via .NET ช่วยลบข้อความ, รูปภาพ, และข้อมูลเมตาที่ไม่ควรจะแบ่งปัน รองรับหลายรูปแบบ."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "เครื่องมือในการลบข้อมูลหลัก"
  features:
    # feature loop
    - title: "ลบข้อความ"
      content: "ลบคำหรือรูปแบบจากไฟล์เพื่อปกป้องข้อมูลสำคัญ."

    # feature loop
    - title: "ปิดบังรูปภาพ"
      content: "ครอบคลุมส่วนต่างๆ ของภาพที่ต้องการเป็นความลับ."

    # feature loop
    - title: "ลบข้อมูลเมตา"
      content: "ลบข้อมูลที่ซ่อนจากคุณสมบัติไฟล์ เช่น ผู้เขียนหรือชื่อเรื่อง."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบฟิลด์ข้อมูลเมตา"
      content: |
        ตัวอย่างนี้แสดงวิธีการลบข้อมูลเมตาเช่นชื่อผู้เขียนและชื่อเรื่องในไฟล์ IMAGE.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # เลือกฟิลด์ของผู้เขียน
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # เลือกฟิลด์ของชื่อเรื่อง
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # เปิดไฟล์ในตัวลบข้อมูล
          with gr.Redactor("source.png") as redactor:

              # ดำเนินการลบข้อมูล
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # บันทึกเอกสารสุดท้าย
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
    title: "ใช้ Python เพื่อลบข้อมูลเมตา IMAGE"
    exclude: "IMAGE"
    description: "ทำความสะอาดข้อมูลเมตาในไฟล์ IMAGE อย่างรวดเร็วด้วย Python รักษาเอกสารให้ปลอดภัย."
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