;----
; 
; Programa: Estudo01.asm
; Autor: Reinaldo Di Tota
; Data: 19/08/2017
; Versao: 1.00
; 
; Retomada dos Estudos de Assembler - Vers�o que usar� console Windows
;
;----

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
option casemap:none

; Include das declara��es de fun��es.
include windows.inc
include user32.inc
include kernel32.inc

includelib user32.lib
includelib kernel32.lib

; Se��es.

; Dados inicializados.
.data
hello db "Hello World!"

; Dados n�o inicializados.
.data?

; Constantes
.const

.code

main:
  
  invoke GetStdHandle,STD_OUTPUT_HANDLE
  invoke WriteConsole,eax,addr hello,sizeof hello,ebx,0 
  invoke ExitProcess,0

end main

;--
; Eof.: Estudo.asm
;--
