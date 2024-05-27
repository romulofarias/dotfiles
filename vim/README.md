# Notas de Vim

# Sumário

## Referências
Fonte: [Vim Cheat Sheet](https://vim.rtorr.com/lang/pt_br)

Ajuda: [Help online](https://vimhelp.org/)

Ebook: [Vim para noobs](https://leanpub.com/vimparanoobs/read)

Vimcasts: [vimcasts.org](http://vimcasts.org/)

# Comandos globais
| Comando | Descrição |
|---|---|
| `:h[elp] keyword` | Abre ajuda para `keyword` |
| `<Esc>` ou `CTRL-[` | Retorna ao modo normal |
| `:x` ou `:wq` ou `ZZ` | Salva e sai |
| `:q!` ou `ZQ` | Sai (forçado) sem salvar |
| `:w novo_arq` | Salva novo arquivo, mas permanece editando arquivo original |
| `:sav[eas] novo_arq` | Salva novo arquivo e passa a editar esse novo arquivo |

## Ajuda do Vim
> No sistema de ajuda do vim, use `CTRL-]` para acessar um link, e `CTRL-o` ou `CTRL-t` para
> voltar.

# Modos de operação do VIM
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

> O modo *inserção normal* permite executar um comando em modo normal (inclusive mudar para modo
> visual) e após execução do comando, retornar ao modo inserção
# Movimento do cursor
| Comando | Descrição |
| --- | --- |
| `h` | Move cursor para esquerda |
| `j` | Move cursor para baixo |
| `k` | Move cursor para cima |
| `l` | Move cursor para direita |
| `gj` | Move cursor para baixo em quebras visuais de linha |
| `gk` | Move cursor para cima em quebras visuais de linha |
| `H` | Move cursor para parte superior da tela[^1] |
| `M` | Move cursor para meio da tela |
| `L` | Move cursor para parte inferior da tela[^1] |
| `w`         | Salta para o início da palavra seguinte |
| `W`         | Salta para o início da palavra seguinte (inclui pontuação) |
| `e`         | Salta para o fim da palavra seguinte |
| `E`         | Salta para o fim da palavra seguinte (inclui pontuação) |
| `b`         | Salta para o início da palavra anterior |
| `B`         | Salta para o início da palavra anterior (inclui pontuação) |
| `ge`        | Salta para o fim da palavra anterior |
| `gE`        | Salta para o fim da palavra anterior (inclui pontuação) |
| `%`         | Move para o próximo par correspondente (suporta `()`, `{}` e `[]`) |
| `0`         | Salta para o início da linha |
| `^` ou `0w` | Salta para o primeiro caractere visível da linha |
| `$`         | Salta para o fim da linha |
| `g_`        | Salta para o último caractere visível da linha |
| `gM`        | Salta para o meio da linha atual |
| `gg`        | Vai para a primeira linha do texto |
| `G`         | Vai para a última linha do texto |
| `Ngg` ou `NG` | Vai para a linha `N` |
| `fC`        | Salta para o próximo caractere `C` da linha |
| `tC`        | Salta para antes do próximo caractere `C` da linha |
| `FC`        | Salta para o caractere `C` anterior na linha |
| `TC`        | Salta para depois do caractere `C` anterior na linha |
| `;`         | Repete os movimentos f, t, F ou T |
| `,`         | Repete os movimentos f, t, F or T para trás |
| `}`         | Salta para o próximo parágrafo ou bloco de código |
| `{`         | Salta para o parágrafo ou bloco de código anterior |
| `zz`        | Centraliza a linha corrente na tela |
| `zt`        | Posiciona a linha corrente no topo da tela |
| `zb`        | Posiciona alinha corrente no fim da tela |
| `Ctrl+e`    | Desloca a tela uma linha para cima |
| `Ctrl+y`    | Desloca a tela uma linha para baixo |
| `Ctrl+b`    | Volta uma tela para cima |
| `Ctrl+f`    | Avança uma tela para baixo |
| `Ctrl+u`    | Volta meia tela para cima |
| `Ctrl+d`    | Avança meia tela para baixo |

> Prefixar um movimento com um número faz com que ele seja repetido.
[^1]: Opção **scrolloff** interfere no posicionamento do cursor

# Edição ágil
| Comando | Descrição |
| --- | --- |
| `a` | Entra em modo inserção após o cursor |
| `i` | Entra em modo inserção antes do cursor |
| `A` | Entra em modo inserção no final da linha corrente |
| `I` | Entra em modo inserção no início da linha corrente (desconsidera espaços) |
| `o` | Entra em modo inserção na linha abaixo |
| `O` | Entra em modo inserção na linha acima |
| `s` | Apaga caractere sob o cursor e entra em inserção (mesmo que `cl`) |
| `S` | Apaga a linha atual e entra em modo inserção (mesmo que `cc` ou `^C`) |
| `cn<CR>` | Apaga as n próximas linhas e entra em modo inserção |
| `C` | Apaga do cursor ao final da linha e entra em inserção |
| `R` | Insere sobrescrevendo |
