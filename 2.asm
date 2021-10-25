
.MODEL SMALL  ;KHAI BAO CHE DO BO NHO CUA CT
.STACK 100H   ;KHAI BAO NGAN XEP

.DATA 
        TB1 DB 'NHAP KY TU TU BAN PHIM:$'
        TB2 DB 13,10,'KI TU DA NHAP:$'
        TB3 DB 13,10,'KY TU LIEN TRUOC LA:$'
        TB4 DB 13,10,'KY TU LIEN SAU LA:$'
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
         
         ;XUAT KY TU DA NHAP
         MOV AH,02H       
         MOV DL,KYTU
         INT 21H
         
         ;XUAT TB3
         LEA DX,TB3
         MOV AH,09H
         INT 21H
         
         ;IN KI TU DUNG TRUOC       
         MOV AH,02H
         MOV DL,KYTU
         DEC DL 
         INT 21H
         
          ;XUAT TB4
         LEA DX,TB4
         MOV AH,09H
         INT 21H
         
         ;IN KI TU DUNG SAU      
         MOV AH,02H
         MOV DL,KYTU
         INC DL 
         INT 21H
         
         MOV AH,4CH     ;THOAT CHUONG TRINH
         INT 21H
    MAIN  ENDP  ;KET THUC HAM MAIN
    END MAIN   ;KET THUC CHUONG TRINH     








