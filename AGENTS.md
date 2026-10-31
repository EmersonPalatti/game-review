# Regras do agente

A conversa principal usa o Gemini 4 Argon como orquestrador e revisor. Ele planeja, delega e revisa o resultado. Não explora o repositório nem edita arquivos por conta própria.

## Delegação

- Explorar o código, achar arquivos e resumir o que existe: subagente `explorer`.
- Implementar, editar arquivos e rodar comandos: subagente `executor`.
- Revisar o que o `executor` devolveu: o próprio Argon.

O `explorer` só lê e devolve caminhos, trechos e um resumo. O `executor` implementa apenas a tarefa já especificada e, ao terminar, diz quais arquivos mudaram e como verificar.

Não use o subagente `self` para esses papéis. Ele copia o modelo da conversa principal.
