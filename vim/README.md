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
| `:w !sudo tee %`    | Salva o arquivo como usuário administrativo |

## Ajuda do Vim
> No sistema de ajuda do vim, use `CTRL-]` para acessar um link, e `CTRL-o` ou `CTRL-t` para
> voltar.

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

> O modo *inserção normal* permite executar um comando em modo normal (inclusive mudar para modo
> visual) e após execução do comando, retornar ao modo inserção
## Movimento do cursor
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
| `gi`        | Salta para a linha da última inserção |
| `gv`        | Repete seleção visual, desde que o conteúdo não tenha sido removido |
| `%`         | Move para o próximo par correspondente (suporta `()`, `{}` e `[]`) |
| `0`         | Salta para o início da linha |
| `^` ou `_` ou `0w` | Salta para o primeiro caractere visível da linha |
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

## Edição ágil
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
| `C` | Apaga do cursor ao final da linha e entra em inserção (idem a `c$`) |
| `r` | Sobrescreve caractere sob cursor |
| `R` | Insere sobrescrevendo (modo Replace) |
| `J` | Une as linhas atual e inferior com espaço entre elas |
| `gJ` | Une as linhas atual e inferior sem espaço entre elas |
| `gu{motion}` | Transforma em minúscula sob motion |
| `guu` | Transforma em minúscula a linha corrente |
| `gUU` | Transforma em MAIÚSCULA a linha corrente |
| `gU{motion}` | Transforma em MAIÚSCULA sob motion |
| `g~{motion}` | Alterna caixa alta/baixa sob motion |
| `gwip` | Refaz distribuição de palavras em um parágrafo |
| `x` | Remove caractere sob cursor |
| `X` | Remove caractere antes do cursor (backspace) |
| `xp` | Transpõe dois caracteres |
| `dd` | Remove linha inteira |
| `ddp` | Transpõe duas linhas inteiras |
| `D` | Remove do cursor ao final da linha corrente (idem a `d$`) |
| `d{motion}` | Aplica delete sobre o movimento |
| `y{motion}` | Aplica copy sobre o movimento |
| `c{motion}` | Aplica change sobre o movimento |
| `v{motion}` | Aplica seleciona sobre o movimento |
| `.` | Repete último comando |
| `u` | Desfaz última alteração |
| `U` | Desfaz última linha alterada |
| `CTRL-r` | Refaz última alteração desfeita |
| `p` | Aplica put abaixo (se linha inteira) ou após o cursor |
| `P` | Aplica put acima (se linha inteira) ou antes do cursor |
| `[p` | Aplica put antes do cursor |
| `]p` | Aplica put após o cursor |
| `>>`   | Adiciona uma indentação à linha  |
| `<<`   | Remove uma indentação à linha |
| `>%`   | Indenta um bloco delimitado por parêntesis ou chaves |
| `<%`   | Remove a indentação de um bloco delimitado por parêntesis ou chaves |
| `>ib`  | Indenta um bloco entre parêntesis |
| `>at`  | Indenta um bloco entre tags (`<>`) |
| `N==`  | Reindenta `N` linhas |
| `=%`   | Reindenta um bloco delimitado por parêntesis ou chaves |
| `=iB`  | Reindenta o interior de um bloco entre chaves |
| `gg=G` | Reindenta todo o buffer |

## Modo Comando/Busca
| Comando | Descrição |
| --- | --- |
| `CTRL-r CTRL-w` | Insere a palavra (word) sob o cursor no prompt da linha de comando/busca |
| `CTRL-r CTRL-a` | Insere o palavrão (WORD) sob o cursor no prompt da linha de comando/busca |
| `:e path/to/file` | Abre arquivo para edição |
| `:vs path/to/file` | Abre arquivo em split vertical para edição |
| `:sp path/to/file` | Abre arquivo em split horizontal para edição |
| `:.,$d`  | Delete da linha corrente ao fim do arquivo |
| `:.,1d`  | Delete da linha corrente ao início do arquivo |
| `:10,$d` | Delete da linha 10 até final do arquivo |
| `:g/padrão/d` | Recorta todas as linhas contendo o padrão |
| `:g!/padrão/d` | Recorta todas as linhas que não casem com o padrão |
| `/PADRÃO`                    | Busca por PADRÃO a partir do cursor. |
| `?PADRÃO`                    | Busca por PADRÃO antes do cursor. |
| `\vPADRÃO`                   | Padrão *very magic*: descarta a necessidade de escapar os metacaracteres das expressões regulares. |
| `n`                          | Localiza o próximo padrão casado. |
| `N`                          | Localiza o padrão casado anterior. |
| `:s/PADRÃO/SUBSTITUIÇÃO`     | Troca a primeira ocorrência de PADRÃO na linha por SUBSTITUIÇÃO. |
| `:s/PADRÃO/SUBSTITUIÇÃO/g`   | Troca todas as ocorrências de PADRÃO na linha por SUBSTITUIÇÃO. |
| `:%s/PADRÃO/SUBSTITUIÇÃO/g`  | Troca PADRÃO por SUBSTITUIÇÃO em todo o documento. |
| `:%s/PADRÃO/SUBSTITUIÇÃO/gc` | Troca PADRÃO por SUBSTITUIÇÃO em todo o documento pedindo confirmação. |
| `:noh[lsearch]`              | Desliga o destaque dos casamentos da busca. |
| `:let @/ = ""`               | Remove o destaque dos casamentos anteriores. |

### Busca em múltiplos arquivos

| Comando | Descrição |
|---|---|
| `:vim[grep] /PADRÃO/ ARQUIVOS` | Busca por PADRÃO em múltiplos ARQUIVOS. |
| `:cn[ext]`                     | Salta para o casamento seguinte. |
| `:cp[revious]`                 | Salta para o casamento anterior. |
| `:cope[n]`                     | Abre uma janela com uma lista de casamentos. |
| `:ccl[ose]`                    | Abre a janela de correção rápida. |

## Modo Inserção
| Comando | Descrição |
| --- | --- |
| `Ctrl+h`  | Remove o caractere antes do cursor |
| `Ctrl+w`  | Remove a parte da palavra antes do cursor |
| `Ctrl+j`  | Quebra a linha no cursor |
| `Ctrl+t`  | Indenta a linha |
| `Ctrl+d`  | Remove uma indentação |
| `Ctrl+n`  | Seleciona o próximo complemento de palavras |
| `Ctrl+p`  | Seleciona o complemento de palavras anterior |
| `Ctrl+o`  | Inicia temporariamente o modo normal para a execução de um comando |
| `Ctrl+rX` | Insere o conteúdo do registrador X |
| `Ctrl+r Ctrl+p X` | Insere o conteúdo do registrador X mantendo indentação e formatação |
| `Ctrl+r=` | Permite realizar cálculos e inserir resultado sob cursor, direto do modo inserção |

## Abrir arquivos para edição
| Comando | Descrição |
| --- | --- |
| `vim +10 arquivo` | Abre arquivo na linha 10 |
| `vim "+/padrão" arquivo` | Abre arquivo na primeira ocorrência do padrão |
| `vim -o[n] arquivos` | Abre arquivos com n separações horizontais (default é um por arquivo) |
| `vim -O[n] arquivos` | Abre arquivos com n separações verticais (default é um por arquivo) |
| `vim -p[n] arquivos` | Abre arquivos em n abas (default é uma por arquivo) |

## Modo visual (seleções)

| Comando | Descrição |
|---|---|
| `v`          | Inicia seleção para execução de um comando |
| `V`          | Incia seleção de linhas para execução de um comando |
| `o`          | Move cursor para o fim da área selecionada (no modo visual) |
| `Ctrl+v`     | Inicia a seleção de bloco para execução de um comando |
| `O`          | Move o cursor para o fim do bloco (no modo visual) |
| `vaw`        | Seleciona uma palavra |
| `ab` ou `a(` | Seleciona região de `(` a `)` (no modo visual) |
| `aB` ou `a{` | Seleciona região de `{` a `}` (no modo visual) |
| `at`         | Seleciona região de `<` a `>` (no modo visual) |
| `ib`         | Seleciona região entre `(` e `)` (no modo visual) |
| `iB`         | Seleciona região entre `{` e `}` (no modo visual) |
| `it`         | Seleciona região entre `<` e `>` (no modo visual) |
| `Esc`        | Sai do modo visual |

## Comandos no modo visual

| Comando | Descrição |
|---|---|
| `>` | Adiciona uma indentação |
| `<` | Remove uma indentação |
| `y` | Copia o texto selecionado |
| `d` | Recorta o texto selecionado |
| `~` | Alterna a caixa de texto da seleção |
| `u` | Transforma a seleção em caixa-baixa |
| `U` | Transforma a seleção em caixa-alta |

## Registradores

| Comando | Descrição |
|---|---|
| `:reg[isters]` | Exibe o conteúdo dos registradores (modo comando) |
| `"Xy`          | Copia para o registrador `X` |
| `"Xp`          | Cola o conteúdo do registrador `X` |
| `"+y`          | Copia para a área de transferência do sistema |
| `"+p`          | Cola o conteúdo da área de transferência do sistema |

> Os registradores são armazenados no arquivo `~/.viminfo`.

## Registradores especiais

| Comando | Descrição |
|---|---|
| `0` | Último conteúdo copiado |
| `"` | Último conteúdo copiado ou recortado |
| `%` | Caminho e nome do arquivo corrente |
| `#` | Nome alternativo do arquivo no último buffer editado |
| `*` | Conteúdo da área de trabalho primária (X11) |
| `+` | Conteúdo da área de trabalho (X11) |
| `/` | Último padrão buscado |
| `:` | Último comando executado na linha de comandos |
| `.` | Último texto inserido |
| `-` | Menor deleção recente |
| `=` | Registrador de expressões |
| `_` | Registrador "buraco negro" (não registra) |

## Abas

| Comando | Descrição |
|---|---|
| `:tabnew [ARQUIVO]`      | Abre ARQUIVO em nova aba. |
| `Ctrl+wT`                | Move a janela corrente para a própria aba. |
| `gt` ou `:tabn[ext]`     | Abre a aba seguinte. |
| `gT` ou `:tabp[revious]` | Abre a aba anterior. |
| `Ngt`                    | Abre a aba de número `N`. |
| `:tabm[ove] N`           | Move a aba corrente para a posição `N`. |
| `:tabc[lose]`            | Fecha a aba corrente e todas as suas janelas. |
| `:tabo[nly]`             | Fecha todas as abas, menos a aba corrente. |
| `:tabdo COMANDO`         | Executa COMANDO em todas as abas. |

## Operações com arquivos

| Comando | Descrição |
|---|---|
| `:e[dit] ARQUIVO`     | Abre ARQUIVO em um novo buffer. |
| `:e[dit] CAMINHO`     | Abre CAMINHO no explorador de arquivos (`netrw`). |
| `:bn[ext]`            | Vai para o buffer seguinte.     |
| `:bp[revious]`        | Vai para o buffer anterior.     |
| `:bd[elete]`          | Deleta o buffer corrente (fecha o arquivo). |
| `:b[uffer]N`          | Vai para o buffer `N`. |
| `:b[uffer] ARQUIVO`   | Vai para o buffer de nome ARQUIVO. |
| `:ls or :buffers`     | Lista todos os buffers abertos. |
| `:sp[lit] ARQUIVO`    | Abre uma janela abaixo com ARQUIVO. |
| `:vs[plit] ARQUIVO`   | Abre uma janela ao lado com ARQUIVO. |
| `:vert[ical] ba[ll]`  | Abre todos os buffers como janelas lado a lado. |
| `:tab ba[ll]`         | Abre todos os buffers em abas. |
| `:[COLS]Lex[plorer]!` | Abre ou fecha uma janela do explorador de arquivos à esquerda com COLS de largura. |

## Operações com janelas

| Comando | Descrição |
|---|---|
| `Ctrl+ws` | Divide a janela abaixo. |
| `Ctrl+wv` | Divide a janela ao lado. |
| `Ctrl+ww` | Circula entre as janelas. |
| `Ctrl+wq` | Fecha a janela corrente. |
| `Ctrl+wx` | Troca da janela corrente pela seguinte. |
| `Ctrl+w=` | Aplica mesma largura e altura a todas as janelas. |
| `Ctrl+wh` | Move o cursor para a janela à esquerda. |
| `Ctrl+wl` | Move o cursor para a janela à direita. |
| `Ctrl+wj` | Move o cursor para a janela abaixo. |
| `Ctrl+wk` | Move o cursor para a janela acima. |
| `Ctrl+wH` | Maximiza janela verticalmente à esquerda. |
| `Ctrl+wL` | Maximiza janela verticalmente à direita. |
| `Ctrl+wJ` | Maximiza janela horizontalmente abaixo. |
| `Ctrl+wK` | Maximiza janela horizontalmente acima. |

## Dobras de texto (folding)

| Comando | Descrição |
|---|---|
| `zf` | Define uma dobra manualmente. |
| `zd` | Deleta a dobra sob o cursor. |
| `za` | Alterna a dobra sob o cursor. |
| `zo` | Abre a dobra sob o cursor. |
| `zc` | Fecha a dobra sob o cursor. |
| `zr` | Abre todas as dobras em um nível. |
| `zm` | Aumenta todas as dobras (fecha) em um nível. |
| `zi` | Liga e desliga a funcionalidade das dobras de texto. |

> Os comandos de dobras afetam todos os níveis quando utilizadas em maiúsculas (`za` e `zA`, por exemplo).

## Diferenças (diff)

| Comando | Descrição |
|---|---|
| `]c`                 | Salta para o início da mudança seguinte. |
| `[c`                 | Salta para o início da mudança anterior. |
| `do` ou `:diffg[et]` | Captura as diferenças em relação aos outros buffers. |
| `dp` ou `:diffpu[t]` | Aplica as diferenças em outros buffers. |
| `:diffthis`          | Torna a janela corrente parte das diferenças. |
| `:dif[fupdate]`      | Atualiza as diferenças. |
| `:diffo[ff]`         | Desabilita o modo de diferenças na janela corrente. |

> O Vim pode ser iniciado no modo de diferenças se invocado com `vimdiff`.

## Marcadores

| Comando | Descrição |
|---|---|
| `:marks`   | Lista os marcadores |
| `ma`       | Define a posição do marcador `a` |
| `'a`       | Salta para posição do marcador `a` |
| `y'a`      | Copia o texto na posição do marcador `a` |
| `'0`       | Vai para a posição em que o Vim foi terminado |
| `'"`       | Vai para última posição onde o arquivo foi editado |
| `'.`       | Vai para última posição alterada no arquivo |
| `''`       | Vai para a posição anterior ao último salto |
| `:ju[mps]` | Lista os saltos |
| `Ctrl+i`   | Vai para a posição mais recente da lista de saltos |
| `Ctrl+o`   | Vai para a posição mais antiga da lista de saltos |
| `:changes` | Lista as alterações |
| `g,`       | Vai para a posição mais recente da lista de mudanças |
| `g;`       | Vai para a posição mais antiga da lista de mudanças |
| `Ctrl+]`   | Vai para a marcação sob o cursor |

> Para saltar para uma marca, podemos usar o acento grave (\`) ou uma aspa simples (`'`).

## Macros

| Comando | Descrição |
|---|---|
| `qa` | Grava a macro `a`                          |
| `q`  | Para a gravação da macro                   |
| `@a` | Executa a macro `a`                        |
| `@@` | Executa novamente a última macro executada |

###  Dicas sobre macros:

1. Gere macros com comandos repetíveis: busque mover-se de forma eficiente no texto e que esses movimentos sejam repetíveis (ex.: f,F,t,T,w,e,b,ge etc)
2. Normalize a posição do cursor: certifique-se de que a varredura sempre inicia de uma mesma posição
3. Macros em série ou paralelo?: depende. Executar a macro em paralelo, ex.``:%normal @a``, é mais robusta, porém há o risco de efetuarmos mudanças indesejadas pelo fato das macros estarem executando independentemente umas das outras, a falha em uma delas não afeta as demais.
Em contrapartida, na execução serial (10@a), se uma 'iteração' falhar aborta a execução das demais, e assim podemos perceber onde está o problema.
4. Para quando quisermos atuar sobre um arquivo inteiro, podemos fazer uma "macro recursiva"
inserindo uma chamada a ela mesma no final da sua gravação, como em.: `qa[cmds]@aq`. Assim, ao
executarmos a macro uma vez, ela será executada recursivamente até o fim do arquivo.

