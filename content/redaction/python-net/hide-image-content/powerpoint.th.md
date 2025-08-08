
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: th
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ปกปิดภาพที่เป็นความลับใน POWERPOINT โดยใช้ Overlay กับ Python"
head_description: "ด้วย GroupDocs.Redaction for Python via .NET คุณสามารถซ่อนพื้นที่ภาพที่เป็นความลับในไฟล์ POWERPOINT โดยใช้ Overlay ปกป้องข้อมูลโดยไม่เปลี่ยนแปลงการออกแบบเอกสาร."

############################# Header ############################
title: "ปิดบังกระทบภาพในเอกสาร POWERPOINT ด้วย Overlay ของ Python" 
description: "รักษาภาพที่เป็นความลับในไฟล์ POWERPOINT ด้วย Python เครื่องมือที่เหมาะสมเพื่อการปกป้องข้อมูลที่มีความสามารถ."
subtitle: "สำรวจคุณสมบัติของ GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ช่วยให้นักพัฒนา Python ได้รับเครื่องมือในการปิดบังหรือทำให้ข้อมูลที่เป็นความลับในไฟล์ POWERPOINT ปกป้องเนื้อหาอย่างมีประสิทธิภาพ.

############################# Steps ############################
steps:
    enable: true
    title: "ให้เอกสาร Powerpoint ของคุณปลอดภัย"
    content: |
      GroupDocs.Redaction for Python via .NET ช่วยให้แอปพลิเคชัน Python via .NET สามารถปกป้องเนื้อหาที่เป็นความลับในเอกสาร.
      
      1. สร้างวัตถุ Redactor และโหลดไฟล์ Powerpoint.
      2. ปรับแต่งตัวเลือกในการปิดบังให้ตรงตามความต้องการของคุณ.
      3. เลือกพื้นที่ภาพและเลือกสี Overlay.
      4. นำ Overlay ไปใช้และบันทึกเอกสาร.
   
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
        import groupdocs.pydrawing as grd

        # ปิดบังเนื้อหาภาพในไฟล์ POWERPOINT

        # ตั้งค่าสีและขนาดของ Overlay
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # เลือกพื้นที่ที่เราต้องการปิดบัง
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # เปิดเอกสารด้วย Redactor
        with gr.Redactor("input.pptx") as redactor:

            # บันทึกเปิดใช้งานของ Overlay
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ปกป้องข้อมูลส่วนตัวในเอกสาร"
  description: "GroupDocs.Redaction for Python via .NET ช่วยให้คุณปกปิดหรือทำลายข้อมูลที่เป็นความลับในรูปแบบไฟล์ต่างๆ รักษาเอกสารของคุณให้ปลอดภัยและมีคุณภาพ."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "คุณสมบัติการปิดบังที่ครบวงจร"
  features:
    # feature loop
    - title: "ค้นหาและแก้ไขข้อความ"
      content: "ค้นหาข้อความที่มีความลับในเอกสารและแทนที่เพื่อป้องกันข้อมูล."

    # feature loop
    - title: "ปิดบังพื้นที่ภาพ"
      content: "ปกคลุมภาพหรือส่วนภาพด้วย Overlay เพื่อปกปิดข้อมูลที่เป็นความลับ."

    # feature loop
    - title: "ลบ Metadata"
      content: "ลบหรือลบเปลี่ยน Metadata ที่ซ่อนอยู่เพื่อตัดขอบข้อมูล."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ใช้ Overlay เพื่อปกปิดข้อมูลภาพ"
      content: |
        ตัวอย่างนี้แสดงวิธีการปกปิดภาพที่มีความลับในเอกสารโดยใช้ Overlay.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # ตั้งค่ารูปแบบ: ขนาด, ตำแหน่ง, สี
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # เลือกองค์ประกอบที่ต้องการซ่อนในหน้าแรก
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # เปิดไฟล์เพื่อปิด
          with gr.Redactor("source.pptx") as redactor:

              # วาง Overlay เพื่อปกปิดข้อมูล
              result = redactor.apply(redaction)

              # บันทึกเอกสารที่ใช้งาน
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "ปกปิดเนื้อหาในไฟล์ POWERPOINT ด้วย Python"
    exclude: "POWERPOINT"
    description: "ด้วย Python คุณสามารถซ่อนหรือลบข้อมูลที่เป็นความลับในไฟล์ POWERPOINT เป็นกลยุทธ์ที่เชื่อถือได้สำหรับความปลอดภัยของเอกสาร."
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "ภาพ JPEG"


---