# Notas de Vim

# Sumário

## Referências
Fonte: [Vim Cheat Sheet](https://vim.rtorr.com/lang/pt_br)
Ajuda: [Help online](https://vimhelp.org/)
Ebook: [Vim para noobs](https://leanpub.com/vimparanoobs/read)
Vimcasts: [vimcasts.org](http://vimcasts.org/)

## Comandos globais
| Comando | Descrição |
|---|---|
| `:h[elp] keyword` | Abre ajuda para `keyword` |
| `<Esc>` ou `CTRL-[` | Retorna ao modo normal |
| `:x` ou `:wq` ou `ZZ` | Salva e sai |
| `:q!` ou `ZQ` | Sai (forçado) sem salvar |
| `:w novo_arq` | Salva novo arquivo, mas permanece editando arquivo original |
| `:sav[eas] novo_arq` | Salva novo arquivo e passa a editar esse novo arquivo |

## Ajuda do Vim
No sistema de ajuda do vim, use `CTRL-]` para acessar um link, e `CTRL-o` ou `CTRL-t` para
voltar.

## Modos de operação do VIM
| Modo | Acesso |
| --- | --- |
| Normal | `<Esc>` ou `CTRL-[` |
| Inserção | `a`,`A`,`i`,`I`,`o`,`O`,`s`,`S`,`C` |
| Inserção Normal | Estando em modo Inserção, pressione `CTRL-o` |
| Visual | `v`, `V`, `CTRL-v` |
| Comando | `<Esc>:` |
| Substituição (replace) | `r`, `R` |
| Substituição virtual | `gr`, `gR` (sobrescrever caracteres invisíveis, como tabulações e recuos) |
| Seleção | Estando em modo visual, pressione `CTRL-g` |

# Movimentos
