;----
; 
; Programa: Estudo.asm
; Autor: Reinaldo Di Tota
; Data: 19/08/2017
; Versao: 1.00
; 
; Retomada dos Estudos de Assembler
;
;----

;
; Descobri que o modelo de programação ASM em Windows, limita o uso do 
; ASM antigo. Programação que estava associada ao int 21h, por exemplo,
; em teoria não pode ser usada. Entretanto não dei muita atenção a esta
; questão visto que o modelo Windows é muito mais moderno.
;

; Diretiva para indicar o conjunto de instruções que queremos usar:
; 386,486,586 -- indicam processadores específicos.
; 386p,486p,586p -- indicam modo protegido, e só devem ser usados em
; programação de sistemas.
.386 

; Diretiva para indicar modelo de memória e a passagem da parâmetros.
; No Windows só temos modelo flat - já conhecemos a história.
; Quanto aos modelos de passagem de parâmetros:
;       C - coloca os parâmetros da direita para esquerda na pilha.
;         - neste caso o chamador seria responsável pela atualização do
;           ponteiro da pilha.
;  PASCAL - coloca os parâmetros da esquerda para direita na pilha.
;         - neste caso o código chamado seria responsável pela atualização
;           do ponteiro da pilha. Geraria código menor.
; STDCALL - coloca os parâmetros da direita para esquerda, mas o chamador
;           é responsável pelo tratamento do ponteiro da pilha. É um híbrido.
.model flat,stdcall

; Seções.

; Dados inicializados.
.data
mensagem db "Olá Mundo"

; Dados não inicializados.
.data?

; Constantes
.const

.code

start:

  mov edx, offset mensagem
  mov ah, 9
  int 21h
  mov ah, 4ch
  int 21h

end start

;--
; Eof.: Estudo.asm
;--
