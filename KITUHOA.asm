
.MODEL SMALL  ;KHAI BAO CHE DO BO NHO CUA CT
.STACK 100H   ;KHAI BAO NGAN XEP
.DATA 
        TB1 DB 'NHAP KI TU HOA:$'
        TB2 DB 13,10,'KY TU THUONG:$'
        KYTU DB ?
 .CODE      ;KHAI BAO LENH XU LI
    MAIN PROC  ; BAT DAU HAM MAIN
         ; KHOI THANH GHI DS
         MOV AX,@DATA
         MOV DS,AX
         
         ;XUAT TB1
         LEA DX,TB1
         MOV AH,09H
         INT 21H         
         
         ;NHAP KI TU
         MOV AH,01H
         INT 21H
         MOV KYTU,AL
         
         ;XUAT TB2
         LEA DX,TB2
         MOV AH,09H
         INT 21H 
         
         ;XUAT KY TU THUONG
         MOV DL,KYTU        ;GAN KY THU VAO DL
         ADD DL,20H         ;CONG DL CHO 20H
         MOV AH,02H
         INT 21H
         
         
         MOV AH,4CH     ;THOAT CHUONG TRINH
         INT 21H
    MAIN  ENDP  ;KET THUC HAM MAIN
    END MAIN   ;KET THUC CHUONG TRINH     



