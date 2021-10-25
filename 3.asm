
.MODEL SMALL  ;KHAI BAO CHE DO BO NHO CUA CT
.STACK 100H   ;KHAI BAO NGAN XEP
.DATA 
        TB1 DB 'NHAP KI TU:$'
        TB2 DB 13,10,'DAY KY TU:$'
        KYTU DB ?
 .CODE      ;KHAI BAO LRNH XU LI
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
         
         ;IN KI TU VUA NHAP RA MAN HINH 
         MOV DL,KYTU 
  NHAN:  MOV AH,02H
         INT 21H
                 
         INC DL             ;LUU KI TU TIEP THEO TRONG DL
         CMP DL,'Z'         ;SO SANH KI TU TIEP THEO VOI Z
         JNA NHAN           ;NEU <='Z' THI TIEP TUC IN 
         MOV AH,08H         ;NEU > 'Z' THI DUNG  
         INT 21H
         
         MOV AH,4CH     ;THOAT CHUONG TRINH
         INT 21H
    MAIN  ENDP  ;KET THUC HAM MAIN
    END MAIN   ;KET THUC CHUONG TRINH     




