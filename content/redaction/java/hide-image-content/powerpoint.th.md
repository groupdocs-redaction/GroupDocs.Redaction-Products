
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: th
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ปกปิดภาพที่ละเอียดอ่อนใน POWERPOINT ด้วย Overlay ใช้งาน Java"
head_description: "ซ่อนข้อมูลภาพที่ละเอียดอ่อนในไฟล์ POWERPOINT ด้วย GroupDocs.Redaction for Java เพิ่ม Overlay เพื่อรักษาความปลอดภัยเอกสารโดยไม่กระทบต่อรูปแบบ"

############################# Header ############################
title: "ปกป้องภาพส่วนตัวในเอกสาร POWERPOINT โดยใช้ Java" 
description: "รักษาภาพส่วนตัวและภาพธุรกิจในไฟล์ POWERPOINT ด้วย Java เครื่องมือใช้งานง่ายเพื่อการปกป้องที่มีประสิทธิภาพ"
subtitle: "คุณสมบัติหลักของ GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ให้เครื่องมือแอปพลิเคชันให้กับนักพัฒนา Java ในการซ่อนหรือทำลายเนื้อหาจากไฟล์ POWERPOINT ปกป้องเอกสารโดยการป้องกันข้อมูลภาพเช่นเดียวกับข้อความและ Metadata

############################# Steps ############################
steps:
    enable: true
    title: "ปกปิดข้อมูลที่ละเอียดอ่อนในเอกสาร Powerpoint"
    content: |
      GroupDocs.Redaction for Java ช่วยให้แอปของ Java สามารถปกปิดข้อมูลส่วนตัวในเอกสารได้อย่างรวดเร็ว
      
      1. สร้างออบเจ็กต์ Redactor และโหลดไฟล์ Powerpoint
      2. กำหนดการปรับแต่งตามความต้องการ
      3. เลือกส่วนของภาพและกำหนดสี Overlay
      4. ใช้การปรับแต่งและบันทึกไฟล์
   
    code:
      platform: "java"
      copy_title: "คัดลอก"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "การลบข้อมูลตัวอย่าง"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "คลิ๊กเพื่อคัดลอก"
        copy_done: "คัดลอกแล้ว"
      links:
        #  loop
        - title: "ตัวอย่างเพิ่มเติม"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "เอกสารประกอบ"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // ซ่อนข้อมูลภาพในไฟล์ POWERPOINT

        // เปิดไฟล์ด้วย Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // เลือกสีและขนาด Overlay
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // ทำเครื่องหมายพื้นที่ที่จะซ่อนไว้
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // ใช้ Overlay และบันทึกการเปลี่ยนแปลง
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "เครื่องมือสำหรับรองรับข้อมูลที่ละเอียดอ่อน"
  description: "GroupDocs.Redaction for Java ช่วยในการปกปิดหรือทำลายเนื้อหาที่ละเอียดอ่อนในหลายรูปแบบเอกสาร เก็บไว้สำหรับการแชร์และจัดเก็บที่ปลอดภัย"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "เครื่องมือปรับแต่งที่เพียบพร้อมสำหรับทุกความต้องการ"
  features:
    # feature loop
    - title: "ค้นหาและแทนที่ข้อความ"
      content: "ค้นหาคำที่ละเอียดอ่อนและแทนที่ด้วยความปลอดภัย"

    # feature loop
    - title: "ปกปิดพื้นที่ภาพ"
      content: "นำ Overlay ไปใช้ให้กับภาพหรือต้องการซ่อน"

    # feature loop
    - title: "ลบ Metadata"
      content: "ลบ Metadata ที่ไม่เปิดเผย เพื่อหลีกเลี่ยงการสูญหายของข้อมูล"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ปกปิดเนื้อหาภาพด้วย Overlay"
      content: |
        ตัวอย่างนี้แสดงวิธีการปกปิดเนื้อหาภาพในเอกสาร
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  โหลดไฟล์สำหรับการปรับแต่ง
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // ตั้งค่าขนาดสีและตำแหน่งของ Overlay
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // ทำเครื่องหมายพื้นที่ภาพในหน้าแรก
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // นำ Overlay ไปใช้อย่างเหมาะสม
              redactor.apply(redaction);

              // บันทึกเอกสารที่ปรับแต่ง
              SaveOptions save_options = new SaveOptions();
              save_options.setAddSuffix(true);
              save_options.setRasterizeToPDF(false);
              redactor.save(save_options);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "คัดลอก"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "เอกสารประกอบ"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "พร้อมเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรี หรือขอใบอนุญาต"
  items:
    #  loop
    - title: "ดาวน์โหลด Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "การออกใบอนุญาต"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "ลบเนื้อหาในไฟล์ POWERPOINT ด้วย Java"
    exclude: "POWERPOINT"
    description: "เพื่อปกปิดหรือเอาข้อมูลออกจากไฟล์ POWERPOINT ด้วย Java ทางที่ไว้ใจได้เพื่อความปลอดภัยเอกสาร"
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/java/hide-image-content//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/java/hide-image-content//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-image-content//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-image-content//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/java/hide-image-content//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/java/hide-image-content//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-image-content//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-image-content//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-image-content//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/java/hide-image-content//jpeg/"
          description: "ภาพ JPEG"


---