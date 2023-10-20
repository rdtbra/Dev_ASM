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
; Descobri que o modelo de programa��o ASM em Windows, limita o uso do 
; ASM antigo. Programa��o que estava associada ao int 21h, por exemplo,
; em teoria n�o pode ser usada. Entretanto n�o dei muita aten��o a esta
; quest�o visto que o modelo Windows � muito mais moderno.
;

; Diretiva para indicar o conjunto de instru��es que queremos usar:
; 386,486,586 -- indicam processadores espec�ficos.
; 386p,486p,586p -- indicam modo protegido, e s� devem ser usados em
; programa��o de sistemas.
.386 

; Diretiva para indicar modelo de mem�ria e a passagem da par�metros.
; No Windows s� temos modelo flat - j� conhecemos a hist�ria.
; Quanto aos modelos de passagem de par�metros:
;       C - coloca os par�metros da direita para esquerda na pilha.
;         - neste caso o chamador seria respons�vel pela atualiza��o do
;           ponteiro da pilha.
;  PASCAL - coloca os par�metros da esquerda para direita na pilha.
;         - neste caso o c�digo chamado seria respons�vel pela atualiza��o
;           do ponteiro da pilha. Geraria c�digo menor.
; STDCALL - coloca os par�metros da direita para esquerda, mas o chamador
;           � respons�vel pelo tratamento do ponteiro da pilha. � um h�brido.
.model flat,stdcall

; Se��es.

; Dados inicializados.
.data
mensagem db "Ol� Mundo"

; Dados n�o inicializados.
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
