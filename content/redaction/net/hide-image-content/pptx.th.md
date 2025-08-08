
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: th
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ตัดภาพใน PPTX ด้วย overlay โดยใช้ C#"
head_description: "ด้วย GroupDocs.Redaction for .NET คุณสามารถซ่อนเนื้อหาภาพที่มีความละเอียดอ่อนในไฟล์ PPTX โดยการใช้ overlay สีสัน ปกป้องข้อมูลที่เป็นความลับโดยไม่เปลี่ยนโครงสร้างเอกสาร"

############################# Header ############################
title: "ตัดภาพที่มีความละเอียดอ่อนในเอกสาร PPTX โดยใช้ .NET" 
description: "รักษาความปลอดภัยข้อมูลส่วนตัวและข้อมูลทางธุรกิจในไฟล์ PPTX โดยใช้ C# เครื่องมือของเราทำให้การตัดภาพเป็นไปอย่างรวดเร็ว"
subtitle: "สิ่งที่ GroupDocs.Redaction for .NET มีให้" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET มอบเครื่องมือที่ใช้งานง่ายสำหรับนักพัฒนาที่ใช้ C# ในการซ่อนหรือทำลายเนื้อหาในไฟล์ PPTX ปกป้องเอกสารด้วยการตัดข้อความ, ภาพ, และ metadata

############################# Steps ############################
steps:
    enable: true
    title: "ปกป้องข้อมูลทางธุรกิจในเอกสาร Pptx"
    content: |
      GroupDocs.Redaction for .NET: ช่วยแอปพลิเคชัน .NET ของคุณรักษาความปลอดภัยเอกสารด้วยการซ่อนข้อมูลที่มีความละเอียดอ่อน
      
      1. ตั้งค่าอินสแตนซ์ Redactor และโหลดไฟล์ Pptx
      2. ปรับแต่งการตั้งค่าการตัดข้อมูลให้ตรงกับความต้องการของคุณ
      3. เลือกพื้นที่ภาพและกำหนดสี overlay
      4. ดำเนินการการตัดและบันทึกไฟล์
   
    code:
      platform: "net"
      copy_title: "คัดลอก"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "การลบข้อมูลตัวอย่าง"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "คลิ๊กเพื่อคัดลอก"
        copy_done: "คัดลอกแล้ว"
      links:
        #  loop
        - title: "ตัวอย่างเพิ่มเติม"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "เอกสารประกอบ"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // ตัดภาพที่มีความละเอียดอ่อนใน PPTX

        // เปิดไฟล์โดยใช้ Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // กำหนดสีและขนาด overlay
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // เลือกพื้นที่สำหรับการตัด
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // ใช้ overlay และบันทึกเอกสาร
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "เครื่องมือการตัดเอกสาร"
  description: "GroupDocs.Redaction for .NET ช่วยให้คุณสามารถซ่อนหรือลบเนื้อหาที่มีความละเอียดอ่อนในหลายหมวดหมู่ของไฟล์ ปกป้องข้อมูลในขณะที่ยังคงรักษาเอกสารให้สะอาดและแชร์ได้"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "เครื่องมือการตัดที่มีประสิทธิภาพ"
  features:
    # feature loop
    - title: "ค้นหาและแทนที่ข้อความ"
      content: "ค้นหาข้อความที่มีความละเอียดอ่อนและซ่อนมันเพื่อเพิ่มความปลอดภัย"

    # feature loop
    - title: "ตัดเนื้อหาภาพ"
      content: "ปกปิดภาพทั้งหมดหรือเลือกส่วนเพื่อปกปิดข้อมูลที่เป็นความลับ"

    # feature loop
    - title: "ลบ Metadata"
      content: "ลบหรือแก้ไข metadata ที่ซ่อนอยู่เพื่อป้องกันการรั่วไหล"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ซ่อนข้อมูลภาพด้วย overlay"
      content: |
        ตัวอย่างนี้แสดงถึงการตัดภาพที่ละเอียดอ่อนในเอกสาร
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  โหลดเอกสาร
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // ตั้งค่าขนาด, ตำแหน่ง, และสี overlay
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // กำหนดพื้นที่ที่จะตัดในหน้าหนึ่ง
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // นำ overlay ไปใช้
              redactor.Apply(redaction);

              // บันทึกไฟล์ที่ได้
              var save_options = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_options);
          }
          ```
        platform: "net"
        copy_title: "คัดลอก"
        install:
          command: "dotnet add package GroupDocs.Redaction"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "เอกสารประกอบ"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "พร้อมเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรี หรือขอใบอนุญาต"
  items:
    #  loop
    - title: "ดาวน์โหลด Nuget"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "การออกใบอนุญาต"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "ปกป้องเนื้อหา PPTX ด้วยการตัดข้อมูล .NET"
    exclude: "PPTX"
    description: "ใช้ .NET เพื่อซ่อนหรือลบข้อมูลที่มีความละเอียดอ่อนในไฟล์ PPTX เป็นโซลูชันที่เชื่อถือได้สำหรับการรักษาความปลอดภัยของเอกสาร"
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/net/hide-image-content//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/net/hide-image-content//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-image-content//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-image-content//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/net/hide-image-content//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/net/hide-image-content//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-image-content//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-image-content//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-image-content//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/net/hide-image-content//jpeg/"
          description: "ภาพ JPEG"


---