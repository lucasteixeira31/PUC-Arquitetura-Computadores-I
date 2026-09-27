# Relatório de Organização Pré-Movimentação (ORGANIZACAO_ANTES.md)

**Data e Hora:** 2026-09-27 13:20:00 (America/Sao_Paulo)
**Repositório:** `PUC-Arquitetura-Computadores-I`
**Commit Base:** `320f900` (HEAD)

---

## 1. Visão Geral da Estrutura Atual

- **Total de arquivos rastreados no Git (HEAD):** 1454
- **Distribuição dos arquivos rastreados:**
  - `.gitignore`: 1 arquivos
  - `03_Logisim`: 12 arquivos
  - `ARQUITETURA`: 1440 arquivos
  - `README.md`: 1 arquivos

### Subdiretórios em `ARQUITETURA/`:
  - `ARQUITETURA/Material do Professor`: 1325 arquivos rastreados
  - `ARQUITETURA/Meus Arquivos`: 104 arquivos rastreados
  - `ARQUITETURA/REFERENCIAS_CIRC`: 11 arquivos rastreados

---

## 2. Pastas Existentes no Repositório

Pastas principais identificadas:
- `ARQUITETURA/` (camada intermediária legada a ser eliminada)
  - `ARQUITETURA/Material do Professor/` (materiais didáticos, guias, programas, apostilas - 1325 arquivos)
  - `ARQUITETURA/Meus Arquivos/` (trabalhos, códigos e entregas do aluno - 104 arquivos)
  - `ARQUITETURA/REFERENCIAS_CIRC/` (circuitos Logisim classificados tecnicamente - 11 arquivos)
    - `01_VALIDADOS/`
    - `02_ABREM_NAO_VALIDADOS/`
    - `03_COM_PROBLEMA/`
- `03_Logisim/` (pasta iniciada em commit anterior)
  - `01_Referencias_Circ/` (duplicatas adicionadas no commit 320f900 com nomes em minúsculas - 11 arquivos .circ + 1 README.md)
- `02_Meus_Arquivos/` (pasta de destino criada localmente com subpasta vazia)
- `04_Verilog/`, `05_Trabalhos/`, `06_Avaliacoes/`, `07_Documentacao/` (pastas estruturais preparadas)

---

## 3. Identificação de Duplicações

Identificamos que no commit `320f900` foram adicionados arquivos em `03_Logisim/01_Referencias_Circ/` que correspondem exatamente aos mesmos arquivos em `ARQUITETURA/REFERENCIAS_CIRC/`:

| Arquivo em ARQUITETURA/REFERENCIAS_CIRC | Arquivo em 03_Logisim/01_Referencias_Circ | SHA-256 Idêntico |
|---|---|:---:|
| `01_VALIDADOS/Guia_04.circ` | `01_Validados/Guia_04.circ` | Sim |
| `01_VALIDADOS/Guia_05.circ` | `01_Validados/Guia_05.circ` | Sim |
| `01_VALIDADOS/Guia_06.circ` | `01_Validados/Guia_06.circ` | Sim |
| `01_VALIDADOS/Guia_07.circ` | `01_Validados/Guia_07.circ` | Sim |
| `02_ABREM_NAO_VALIDADOS/Guia_08.circ` | `02_Abrem_Nao_Validados/Guia_08.circ` | Sim |
| `02_ABREM_NAO_VALIDADOS/Guia_08_final_estrutura.circ` | `02_Abrem_Nao_Validados/Guia_08_final_estrutura.circ` | Sim |
| `02_ABREM_NAO_VALIDADOS/Guia_08_final_estrutura(1).circ` | `02_Abrem_Nao_Validados/Guia_08_final_estrutura(1).circ` | Sim |
| `03_COM_PROBLEMA/Guia_08.circ` | `03_Com_Problema/Guia_08.circ` | Sim |
| `03_COM_PROBLEMA/Guia_08_Logisim.circ` | `03_Com_Problema/Guia_08_Logisim.circ` | Sim |
| `03_COM_PROBLEMA/Guia_08_SomadorCompleto_Logisim.circ` | `03_Com_Problema/Guia_08_SomadorCompleto_Logisim.circ` | Sim |
| `03_COM_PROBLEMA/Guia_08_montado.circ` | `03_Com_Problema/Guia_08_montado.circ` | Sim |

> **Estratégia de Preservação sem Perdas:** Conforme a Regra 1 ("NÃO apagar nenhum arquivo") e a Regra 2 ("NÃO apagar nenhuma pasta"), as duplicatas prévias criadas em `03_Logisim/01_Referencias_Circ/` no commit 320f900 são preservadas com histórico movendo-as para `08_Historico/Referencias_Circ_pre_reorganizacao/`, enquanto a classificação técnica oficial exata (`01_VALIDADOS`, `02_ABREM_NAO_VALIDADOS`, `03_COM_PROBLEMA` e `04_REGISTROS_DE_VALIDACAO`) de `ARQUITETURA/REFERENCIAS_CIRC/` é movida para a raiz técnica `03_Logisim/01_Referencias_Circ/`.

---

## 4. Plano Detalhado de Movimentação

1. **Material do Professor:**
   - **Origem:** `ARQUITETURA/Material do Professor/`
   - **Destino:** `01_Material_Professor/`
   - **Ação:** `git mv "ARQUITETURA/Material do Professor" "01_Material_Professor"`
   - **Quantidade de arquivos:** 1325 arquivos rastreados.

2. **Meus Arquivos:**
   - **Origem:** `ARQUITETURA/Meus Arquivos/`
   - **Destino:** `02_Meus_Arquivos/`
   - **Ação:** Mover subpastas com `git mv`:
     - `git mv "ARQUITETURA/Meus Arquivos/entregues" "02_Meus_Arquivos/entregues"`
     - `git mv "ARQUITETURA/Meus Arquivos/897891-Lucas_Junio_Quirino_Teixeira/entrega_G08" "02_Meus_Arquivos/897891-Lucas_Junio_Quirino_Teixeira/entrega_G08"`
   - **Quantidade de arquivos:** 104 arquivos rastreados.

3. **Preservação das Duplicatas do Commit 320f900:**
   - **Origem:** `03_Logisim/01_Referencias_Circ/01_Validados`, `02_Abrem_Nao_Validados`, `03_Com_Problema` e `README.md`
   - **Destino:** `08_Historico/Referencias_Circ_pre_reorganizacao/`
   - **Ação:** `git mv` seguro para `08_Historico/` mantendo 100% de rastreabilidade.

4. **Classificação Técnica Logisim:**
   - **Origem:** `ARQUITETURA/REFERENCIAS_CIRC/`
   - **Destino:** `03_Logisim/01_Referencias_Circ/`
   - **Preservação de categorias técnicas exatas:**
     - `01_VALIDADOS/`
     - `02_ABREM_NAO_VALIDADOS/`
     - `03_COM_PROBLEMA/`
     - `04_REGISTROS_DE_VALIDACAO/` (diretório estruturado)
   - **Quantidade de arquivos:** 11 circuitos .circ.

5. **Eliminação da Camada Intermediária `ARQUITETURA/`:**
   - Após a movimentação de todos os seus conteúdos, a pasta `ARQUITETURA/` ficará vazia e será removida.

6. **Estrutura Final Desejada:**
   - `01_Material_Professor/`
   - `02_Meus_Arquivos/`
   - `03_Logisim/` (com `01_Referencias_Circ/`, `02_Projetos/`, `03_Testes/`, `README.md`)
   - `04_Verilog/` (com `Projetos/`, `Testes/`, `README.md`)
   - `05_Trabalhos/`
   - `06_Avaliacoes/`
   - `07_Documentacao/`
   - `08_Historico/`
   - `README.md`
   - `.gitignore`

---

## 5. Árvore Completa da Estrutura Atual (Pré-Movimentação)

```
/home/hilay/Projetos/PUC/PUC-Arquitetura-Computadores-I
├── 01_Material_Professor
│   ├── 2026-2_arq1
│   │   ├── 2026-2_ARQ1_001.txt
│   │   ├── 2026-2_ARQ1_002.txt
│   │   ├── 2026-2_ARQ1_003.txt
│   │   ├── 2026-2_ARQ1_004.txt
│   │   ├── 2026-2_ARQ1_005.txt
│   │   ├── 2026-2_ARQ1_006_Mapa_de_Veitch-Karnaugh_(exemplos).pdf
│   │   ├── 2026-2_ARQ1_006.txt
│   │   ├── 2026-2_ARQ1_007.txt
│   │   ├── 2026-2_ARQ1_5632100_T1_(M)_G01_08-09a.zip
│   │   ├── 2026-2_ARQ1_5632100_T1_(M)_G02_08-16a.zip
│   │   ├── 2026-2_ARQ1_5632100_T1_(M)_G03_08-23a.zip
│   │   ├── 2026-2_ARQ1_5632100_T1_(M)_G04_08-30a.zip
│   │   ├── 2026-2_ARQ1_5632100_T1_(M)_G05_09-05a.zip
│   │   ├── 2026-2_ARQ1_5632100_T1_(M)_G06_09-13a.zip
│   │   ├── 2026-2_ARQ1_5632100_T1_(M)_G07_09-20a.zip
│   │   ├── 2026-2_arq1_apostila
│   │   │   ├── 2026-2_Estudar_em_Ciência_da_Computação_com_IA.pdf
│   │   │   ├── capitulo_01.pdf
│   │   │   ├── capitulo_01_.pdf
│   │   │   ├── capitulo_02.pdf
│   │   │   ├── capitulo_03a.pdf
│   │   │   ├── capitulo_03b.pdf
│   │   │   ├── capitulo_03c.pdf
│   │   │   ├── capitulo_03d.pdf
│   │   │   ├── capitulo_03e.pdf
│   │   │   ├── capitulo_03f.pdf
│   │   │   ├── capitulo_03g.pdf
│   │   │   ├── Cartilha_para_Iniciação_Cientifica.pdf
│   │   │   └── Verilog.pdf
│   │   ├── 2026-2_arq1_bibliografia.pdf
│   │   ├── 2026-2_arq1_cronograma.pdf
│   │   ├── 2026-2_arq1_guias
│   │   │   ├── 2026-1_arq1_guia_16.pdf
│   │   │   ├── 2026-2_arq1_artigo.pdf
│   │   │   ├── 2026-2_arq1_guia_00.pdf
│   │   │   ├── 2026-2_arq1_guia_01.pdf
│   │   │   ├── 2026-2_arq1_guia_02.pdf
│   │   │   ├── 2026-2_arq1_guia_03.pdf
│   │   │   ├── 2026-2_arq1_guia_04.pdf
│   │   │   ├── 2026-2_arq1_guia_05.pdf
│   │   │   ├── 2026-2_arq1_guia_06.pdf
│   │   │   ├── 2026-2_arq1_guia_07.pdf
│   │   │   ├── 2026-2_arq1_guia_08.pdf
│   │   │   ├── 2026-2_arq1_guia_09.pdf
│   │   │   ├── 2026-2_arq1_guia_10.pdf
│   │   │   ├── 2026-2_arq1_guia_11.pdf
│   │   │   ├── 2026-2_arq1_guia_12.pdf
│   │   │   ├── 2026-2_arq1_guia_13.pdf
│   │   │   ├── 2026-2_arq1_guia_14.pdf
│   │   │   ├── 2026-2_arq1_guia_15.pdf
│   │   │   ├── 2026-2_table_templates.txt
│   │   │   └── README.txt
│   │   ├── 2026-2_arq1_instrucoes.txt
│   │   ├── 2026-2_arq1_links.txt
│   │   └── 2026-2_arq1_programas
│   │       ├── 2026-2_arq1_README.txt
│   │       ├── 8085
│   │       │   ├── 8085AH_datasheet.pdf
│   │       │   ├── 8085Compiler_v1_0.jar
│   │       │   ├── 8085Features.pdf
│   │       │   ├── 8085Simulator_v2_0.jar
│   │       │   ├── backup.dat
│   │       │   └── settings.dat
│   │       ├── CPUSim_v3_9_0
│   │       │   ├── CPUSim3.4UserManual.pdf
│   │       │   ├── CPUSim3.9.0.app
│   │       │   │   └── Contents
│   │       │   │       ├── Info.plist
│   │       │   │       ├── MacOS
│   │       │   │       │   └── JavaApplicationStub
│   │       │   │       ├── PkgInfo
│   │       │   │       └── Resources
│   │       │   │           ├── CPUIcon3.icns
│   │       │   │           └── Java
│   │       │   │               ├── CPUSim3.9.jar
│   │       │   │               ├── CPUSimHelp3.9.jar
│   │       │   │               ├── cpusim_logo.jpg
│   │       │   │               └── jhall.jar
│   │       │   ├── CPUSim3.9.jar
│   │       │   ├── Cpusim.bat
│   │       │   ├── CPUSimHelp3.9.jar
│   │       │   ├── cpusim_logo.jpg
│   │       │   ├── Cpusim.sh
│   │       │   ├── InstallationInstructions.txt
│   │       │   ├── jhall.jar
│   │       │   ├── SampleAssignments
│   │       │   │   ├── .DS_Store
│   │       │   │   ├── W1-0.a
│   │       │   │   ├── Wombat1.cpu
│   │       │   │   └── Wombat1.html
│   │       │   └── What is new in 3.9.0.txt
│   │       ├── Icarus_Verilog_v12
│   │       │   ├── bin
│   │       │   │   ├── iverilog.exe
│   │       │   │   ├── iverilog-vpi.exe
│   │       │   │   ├── libbz2-1.dll
│   │       │   │   ├── libgcc_s_seh-1.dll
│   │       │   │   ├── libhistory8.dll
│   │       │   │   ├── libreadline8.dll
│   │       │   │   ├── libstdc++-6.dll
│   │       │   │   ├── libtermcap-0.dll
│   │       │   │   ├── libwinpthread-1.dll
│   │       │   │   ├── vvp.exe
│   │       │   │   └── zlib1.dll
│   │       │   ├── compile.bat
│   │       │   ├── compile.sh
│   │       │   ├── gtkwave
│   │       │   │   ├── bin
│   │       │   │   │   ├── evcd2vcd.exe
│   │       │   │   │   ├── fst2vcd.exe
│   │       │   │   │   ├── fstminer.exe
│   │       │   │   │   ├── ghwdump.exe
│   │       │   │   │   ├── gtkwave.exe
│   │       │   │   │   ├── libatk-1.0-0.dll
│   │       │   │   │   ├── libbz2-1.dll
│   │       │   │   │   ├── libcairo-2.dll
│   │       │   │   │   ├── libexpat-1.dll
│   │       │   │   │   ├── libffi-6.dll
│   │       │   │   │   ├── libfontconfig-1.dll
│   │       │   │   │   ├── libfreetype-6.dll
│   │       │   │   │   ├── libgcc_s_seh-1.dll
│   │       │   │   │   ├── libgdk_pixbuf-2.0-0.dll
│   │       │   │   │   ├── libgdk-win32-2.0-0.dll
│   │       │   │   │   ├── libgio-2.0-0.dll
│   │       │   │   │   ├── libglib-2.0-0.dll
│   │       │   │   │   ├── libgmodule-2.0-0.dll
│   │       │   │   │   ├── libgobject-2.0-0.dll
│   │       │   │   │   ├── libgraphite2.dll
│   │       │   │   │   ├── libgtk-win32-2.0-0.dll
│   │       │   │   │   ├── libharfbuzz-0.dll
│   │       │   │   │   ├── libiconv-2.dll
│   │       │   │   │   ├── libintl-8.dll
│   │       │   │   │   ├── liblzma-5.dll
│   │       │   │   │   ├── libpango-1.0-0.dll
│   │       │   │   │   ├── libpangocairo-1.0-0.dll
│   │       │   │   │   ├── libpangoft2-1.0-0.dll
│   │       │   │   │   ├── libpangowin32-1.0-0.dll
│   │       │   │   │   ├── libpcre-1.dll
│   │       │   │   │   ├── libpixman-1-0.dll
│   │       │   │   │   ├── libpng16-16.dll
│   │       │   │   │   ├── libstdc++-6.dll
│   │       │   │   │   ├── libwinpthread-1.dll
│   │       │   │   │   ├── lxt2miner.exe
│   │       │   │   │   ├── lxt2vcd.exe
│   │       │   │   │   ├── rtlbrowse.exe
│   │       │   │   │   ├── shmidcat.exe
│   │       │   │   │   ├── tcl86.dll
│   │       │   │   │   ├── tk86.dll
│   │       │   │   │   ├── twinwave.exe
│   │       │   │   │   ├── vcd2fst.exe
│   │       │   │   │   ├── vcd2lxt2.exe
│   │       │   │   │   ├── vcd2lxt.exe
│   │       │   │   │   ├── vcd2vzt.exe
│   │       │   │   │   ├── vermin.exe
│   │       │   │   │   ├── vzt2vcd.exe
│   │       │   │   │   ├── vztminer.exe
│   │       │   │   │   ├── xml2stems.exe
│   │       │   │   │   └── zlib1.dll
│   │       │   │   ├── lib
│   │       │   │   │   ├── gdk-pixbuf-2.0
│   │       │   │   │   │   └── 2.10.0
│   │       │   │   │   │       ├── loaders
│   │       │   │   │   │       │   ├── libpixbufloader-ani.a
│   │       │   │   │   │       │   ├── libpixbufloader-ani.dll
│   │       │   │   │   │       │   ├── libpixbufloader-ani.dll.a
│   │       │   │   │   │       │   ├── libpixbufloader-icns.a
│   │       │   │   │   │       │   ├── libpixbufloader-icns.dll
│   │       │   │   │   │       │   ├── libpixbufloader-icns.dll.a
│   │       │   │   │   │       │   ├── libpixbufloader-pnm.a
│   │       │   │   │   │       │   ├── libpixbufloader-pnm.dll
│   │       │   │   │   │       │   ├── libpixbufloader-pnm.dll.a
│   │       │   │   │   │       │   ├── libpixbufloader-qtif.a
│   │       │   │   │   │       │   ├── libpixbufloader-qtif.dll
│   │       │   │   │   │       │   ├── libpixbufloader-qtif.dll.a
│   │       │   │   │   │       │   ├── libpixbufloader-svg.a
│   │       │   │   │   │       │   ├── libpixbufloader-svg.dll
│   │       │   │   │   │       │   ├── libpixbufloader-svg.dll.a
│   │       │   │   │   │       │   ├── libpixbufloader-tga.a
│   │       │   │   │   │       │   ├── libpixbufloader-tga.dll
│   │       │   │   │   │       │   ├── libpixbufloader-tga.dll.a
│   │       │   │   │   │       │   ├── libpixbufloader-xbm.a
│   │       │   │   │   │       │   ├── libpixbufloader-xbm.dll
│   │       │   │   │   │       │   ├── libpixbufloader-xbm.dll.a
│   │       │   │   │   │       │   ├── libpixbufloader-xpm.a
│   │       │   │   │   │       │   ├── libpixbufloader-xpm.dll
│   │       │   │   │   │       │   └── libpixbufloader-xpm.dll.a
│   │       │   │   │   │       └── loaders.cache
│   │       │   │   │   ├── tcl8
│   │       │   │   │   │   ├── 8.4
│   │       │   │   │   │   │   ├── platform
│   │       │   │   │   │   │   │   └── shell-1.1.4.tm
│   │       │   │   │   │   │   └── platform-1.0.14.tm
│   │       │   │   │   │   ├── 8.5
│   │       │   │   │   │   │   ├── msgcat-1.6.1.tm
│   │       │   │   │   │   │   └── tcltest-2.4.1.tm
│   │       │   │   │   │   ├── 8.6
│   │       │   │   │   │   │   ├── http-2.8.11.tm
│   │       │   │   │   │   │   └── tdbc
│   │       │   │   │   │   │       └── sqlite3-1.0.5.tm
│   │       │   │   │   │   └── tclConfig.sh
│   │       │   │   │   ├── tcl8.6
│   │       │   │   │   │   ├── auto.tcl
│   │       │   │   │   │   ├── clock.tcl
│   │       │   │   │   │   ├── encoding
│   │       │   │   │   │   │   ├── ascii.enc
│   │       │   │   │   │   │   ├── big5.enc
│   │       │   │   │   │   │   ├── cp1250.enc
│   │       │   │   │   │   │   ├── cp1251.enc
│   │       │   │   │   │   │   ├── cp1252.enc
│   │       │   │   │   │   │   ├── cp1253.enc
│   │       │   │   │   │   │   ├── cp1254.enc
│   │       │   │   │   │   │   ├── cp1255.enc
│   │       │   │   │   │   │   ├── cp1256.enc
│   │       │   │   │   │   │   ├── cp1257.enc
│   │       │   │   │   │   │   ├── cp1258.enc
│   │       │   │   │   │   │   ├── cp437.enc
│   │       │   │   │   │   │   ├── cp737.enc
│   │       │   │   │   │   │   ├── cp775.enc
│   │       │   │   │   │   │   ├── cp850.enc
│   │       │   │   │   │   │   ├── cp852.enc
│   │       │   │   │   │   │   ├── cp855.enc
│   │       │   │   │   │   │   ├── cp857.enc
│   │       │   │   │   │   │   ├── cp860.enc
│   │       │   │   │   │   │   ├── cp861.enc
│   │       │   │   │   │   │   ├── cp862.enc
│   │       │   │   │   │   │   ├── cp863.enc
│   │       │   │   │   │   │   ├── cp864.enc
│   │       │   │   │   │   │   ├── cp865.enc
│   │       │   │   │   │   │   ├── cp866.enc
│   │       │   │   │   │   │   ├── cp869.enc
│   │       │   │   │   │   │   ├── cp874.enc
│   │       │   │   │   │   │   ├── cp932.enc
│   │       │   │   │   │   │   ├── cp936.enc
│   │       │   │   │   │   │   ├── cp949.enc
│   │       │   │   │   │   │   ├── cp950.enc
│   │       │   │   │   │   │   ├── dingbats.enc
│   │       │   │   │   │   │   ├── ebcdic.enc
│   │       │   │   │   │   │   ├── euc-cn.enc
│   │       │   │   │   │   │   ├── euc-jp.enc
│   │       │   │   │   │   │   ├── euc-kr.enc
│   │       │   │   │   │   │   ├── gb12345.enc
│   │       │   │   │   │   │   ├── gb1988.enc
│   │       │   │   │   │   │   ├── gb2312.enc
│   │       │   │   │   │   │   ├── gb2312-raw.enc
│   │       │   │   │   │   │   ├── iso2022.enc
│   │       │   │   │   │   │   ├── iso2022-jp.enc
│   │       │   │   │   │   │   ├── iso2022-kr.enc
│   │       │   │   │   │   │   ├── iso8859-10.enc
│   │       │   │   │   │   │   ├── iso8859-13.enc
│   │       │   │   │   │   │   ├── iso8859-14.enc
│   │       │   │   │   │   │   ├── iso8859-15.enc
│   │       │   │   │   │   │   ├── iso8859-16.enc
│   │       │   │   │   │   │   ├── iso8859-1.enc
│   │       │   │   │   │   │   ├── iso8859-2.enc
│   │       │   │   │   │   │   ├── iso8859-3.enc
│   │       │   │   │   │   │   ├── iso8859-4.enc
│   │       │   │   │   │   │   ├── iso8859-5.enc
│   │       │   │   │   │   │   ├── iso8859-6.enc
│   │       │   │   │   │   │   ├── iso8859-7.enc
│   │       │   │   │   │   │   ├── iso8859-8.enc
│   │       │   │   │   │   │   ├── iso8859-9.enc
│   │       │   │   │   │   │   ├── jis0201.enc
│   │       │   │   │   │   │   ├── jis0208.enc
│   │       │   │   │   │   │   ├── jis0212.enc
│   │       │   │   │   │   │   ├── koi8-r.enc
│   │       │   │   │   │   │   ├── koi8-u.enc
│   │       │   │   │   │   │   ├── ksc5601.enc
│   │       │   │   │   │   │   ├── macCentEuro.enc
│   │       │   │   │   │   │   ├── macCroatian.enc
│   │       │   │   │   │   │   ├── macCyrillic.enc
│   │       │   │   │   │   │   ├── macDingbats.enc
│   │       │   │   │   │   │   ├── macGreek.enc
│   │       │   │   │   │   │   ├── macIceland.enc
│   │       │   │   │   │   │   ├── macJapan.enc
│   │       │   │   │   │   │   ├── macRoman.enc
│   │       │   │   │   │   │   ├── macRomania.enc
│   │       │   │   │   │   │   ├── macThai.enc
│   │       │   │   │   │   │   ├── macTurkish.enc
│   │       │   │   │   │   │   ├── macUkraine.enc
│   │       │   │   │   │   │   ├── shiftjis.enc
│   │       │   │   │   │   │   ├── symbol.enc
│   │       │   │   │   │   │   └── tis-620.enc
│   │       │   │   │   │   ├── history.tcl
│   │       │   │   │   │   ├── http1.0
│   │       │   │   │   │   │   ├── http.tcl
│   │       │   │   │   │   │   └── pkgIndex.tcl
│   │       │   │   │   │   ├── init.tcl
│   │       │   │   │   │   ├── msgs
│   │       │   │   │   │   │   ├── af.msg
│   │       │   │   │   │   │   ├── af_za.msg
│   │       │   │   │   │   │   ├── ar_in.msg
│   │       │   │   │   │   │   ├── ar_jo.msg
│   │       │   │   │   │   │   ├── ar_lb.msg
│   │       │   │   │   │   │   ├── ar.msg
│   │       │   │   │   │   │   ├── ar_sy.msg
│   │       │   │   │   │   │   ├── be.msg
│   │       │   │   │   │   │   ├── bg.msg
│   │       │   │   │   │   │   ├── bn_in.msg
│   │       │   │   │   │   │   ├── bn.msg
│   │       │   │   │   │   │   ├── ca.msg
│   │       │   │   │   │   │   ├── cs.msg
│   │       │   │   │   │   │   ├── da.msg
│   │       │   │   │   │   │   ├── de_at.msg
│   │       │   │   │   │   │   ├── de_be.msg
│   │       │   │   │   │   │   ├── de.msg
│   │       │   │   │   │   │   ├── el.msg
│   │       │   │   │   │   │   ├── en_au.msg
│   │       │   │   │   │   │   ├── en_be.msg
│   │       │   │   │   │   │   ├── en_bw.msg
│   │       │   │   │   │   │   ├── en_ca.msg
│   │       │   │   │   │   │   ├── en_gb.msg
│   │       │   │   │   │   │   ├── en_hk.msg
│   │       │   │   │   │   │   ├── en_ie.msg
│   │       │   │   │   │   │   ├── en_in.msg
│   │       │   │   │   │   │   ├── en_nz.msg
│   │       │   │   │   │   │   ├── en_ph.msg
│   │       │   │   │   │   │   ├── en_sg.msg
│   │       │   │   │   │   │   ├── en_za.msg
│   │       │   │   │   │   │   ├── en_zw.msg
│   │       │   │   │   │   │   ├── eo.msg
│   │       │   │   │   │   │   ├── es_ar.msg
│   │       │   │   │   │   │   ├── es_bo.msg
│   │       │   │   │   │   │   ├── es_cl.msg
│   │       │   │   │   │   │   ├── es_co.msg
│   │       │   │   │   │   │   ├── es_cr.msg
│   │       │   │   │   │   │   ├── es_do.msg
│   │       │   │   │   │   │   ├── es_ec.msg
│   │       │   │   │   │   │   ├── es_gt.msg
│   │       │   │   │   │   │   ├── es_hn.msg
│   │       │   │   │   │   │   ├── es.msg
│   │       │   │   │   │   │   ├── es_mx.msg
│   │       │   │   │   │   │   ├── es_ni.msg
│   │       │   │   │   │   │   ├── es_pa.msg
│   │       │   │   │   │   │   ├── es_pe.msg
│   │       │   │   │   │   │   ├── es_pr.msg
│   │       │   │   │   │   │   ├── es_py.msg
│   │       │   │   │   │   │   ├── es_sv.msg
│   │       │   │   │   │   │   ├── es_uy.msg
│   │       │   │   │   │   │   ├── es_ve.msg
│   │       │   │   │   │   │   ├── et.msg
│   │       │   │   │   │   │   ├── eu_es.msg
│   │       │   │   │   │   │   ├── eu.msg
│   │       │   │   │   │   │   ├── fa_in.msg
│   │       │   │   │   │   │   ├── fa_ir.msg
│   │       │   │   │   │   │   ├── fa.msg
│   │       │   │   │   │   │   ├── fi.msg
│   │       │   │   │   │   │   ├── fo_fo.msg
│   │       │   │   │   │   │   ├── fo.msg
│   │       │   │   │   │   │   ├── fr_be.msg
│   │       │   │   │   │   │   ├── fr_ca.msg
│   │       │   │   │   │   │   ├── fr_ch.msg
│   │       │   │   │   │   │   ├── fr.msg
│   │       │   │   │   │   │   ├── ga_ie.msg
│   │       │   │   │   │   │   ├── ga.msg
│   │       │   │   │   │   │   ├── gl_es.msg
│   │       │   │   │   │   │   ├── gl.msg
│   │       │   │   │   │   │   ├── gv_gb.msg
│   │       │   │   │   │   │   ├── gv.msg
│   │       │   │   │   │   │   ├── he.msg
│   │       │   │   │   │   │   ├── hi_in.msg
│   │       │   │   │   │   │   ├── hi.msg
│   │       │   │   │   │   │   ├── hr.msg
│   │       │   │   │   │   │   ├── hu.msg
│   │       │   │   │   │   │   ├── id_id.msg
│   │       │   │   │   │   │   ├── id.msg
│   │       │   │   │   │   │   ├── is.msg
│   │       │   │   │   │   │   ├── it_ch.msg
│   │       │   │   │   │   │   ├── it.msg
│   │       │   │   │   │   │   ├── ja.msg
│   │       │   │   │   │   │   ├── kl_gl.msg
│   │       │   │   │   │   │   ├── kl.msg
│   │       │   │   │   │   │   ├── kok_in.msg
│   │       │   │   │   │   │   ├── kok.msg
│   │       │   │   │   │   │   ├── ko_kr.msg
│   │       │   │   │   │   │   ├── ko.msg
│   │       │   │   │   │   │   ├── kw_gb.msg
│   │       │   │   │   │   │   ├── kw.msg
│   │       │   │   │   │   │   ├── lt.msg
│   │       │   │   │   │   │   ├── lv.msg
│   │       │   │   │   │   │   ├── mk.msg
│   │       │   │   │   │   │   ├── mr_in.msg
│   │       │   │   │   │   │   ├── mr.msg
│   │       │   │   │   │   │   ├── ms.msg
│   │       │   │   │   │   │   ├── ms_my.msg
│   │       │   │   │   │   │   ├── mt.msg
│   │       │   │   │   │   │   ├── nb.msg
│   │       │   │   │   │   │   ├── nl_be.msg
│   │       │   │   │   │   │   ├── nl.msg
│   │       │   │   │   │   │   ├── nn.msg
│   │       │   │   │   │   │   ├── pl.msg
│   │       │   │   │   │   │   ├── pt_br.msg
│   │       │   │   │   │   │   ├── pt.msg
│   │       │   │   │   │   │   ├── ro.msg
│   │       │   │   │   │   │   ├── ru.msg
│   │       │   │   │   │   │   ├── ru_ua.msg
│   │       │   │   │   │   │   ├── sh.msg
│   │       │   │   │   │   │   ├── sk.msg
│   │       │   │   │   │   │   ├── sl.msg
│   │       │   │   │   │   │   ├── sq.msg
│   │       │   │   │   │   │   ├── sr.msg
│   │       │   │   │   │   │   ├── sv.msg
│   │       │   │   │   │   │   ├── sw.msg
│   │       │   │   │   │   │   ├── ta_in.msg
│   │       │   │   │   │   │   ├── ta.msg
│   │       │   │   │   │   │   ├── te_in.msg
│   │       │   │   │   │   │   ├── te.msg
│   │       │   │   │   │   │   ├── th.msg
│   │       │   │   │   │   │   ├── tr.msg
│   │       │   │   │   │   │   ├── uk.msg
│   │       │   │   │   │   │   ├── vi.msg
│   │       │   │   │   │   │   ├── zh_cn.msg
│   │       │   │   │   │   │   ├── zh_hk.msg
│   │       │   │   │   │   │   ├── zh.msg
│   │       │   │   │   │   │   ├── zh_sg.msg
│   │       │   │   │   │   │   └── zh_tw.msg
│   │       │   │   │   │   ├── opt0.4
│   │       │   │   │   │   │   ├── optparse.tcl
│   │       │   │   │   │   │   └── pkgIndex.tcl
│   │       │   │   │   │   ├── package.tcl
│   │       │   │   │   │   ├── parray.tcl
│   │       │   │   │   │   ├── safe.tcl
│   │       │   │   │   │   ├── tclIndex
│   │       │   │   │   │   ├── tm.tcl
│   │       │   │   │   │   ├── tzdata
│   │       │   │   │   │   │   ├── Africa
│   │       │   │   │   │   │   │   ├── Abidjan
│   │       │   │   │   │   │   │   ├── Accra
│   │       │   │   │   │   │   │   ├── Addis_Ababa
│   │       │   │   │   │   │   │   ├── Algiers
│   │       │   │   │   │   │   │   ├── Asmara
│   │       │   │   │   │   │   │   ├── Asmera
│   │       │   │   │   │   │   │   ├── Bamako
│   │       │   │   │   │   │   │   ├── Bangui
│   │       │   │   │   │   │   │   ├── Banjul
│   │       │   │   │   │   │   │   ├── Bissau
│   │       │   │   │   │   │   │   ├── Blantyre
│   │       │   │   │   │   │   │   ├── Brazzaville
│   │       │   │   │   │   │   │   ├── Bujumbura
│   │       │   │   │   │   │   │   ├── Cairo
│   │       │   │   │   │   │   │   ├── Casablanca
│   │       │   │   │   │   │   │   ├── Ceuta
│   │       │   │   │   │   │   │   ├── Conakry
│   │       │   │   │   │   │   │   ├── Dakar
│   │       │   │   │   │   │   │   ├── Dar_es_Salaam
│   │       │   │   │   │   │   │   ├── Djibouti
│   │       │   │   │   │   │   │   ├── Douala
│   │       │   │   │   │   │   │   ├── El_Aaiun
│   │       │   │   │   │   │   │   ├── Freetown
│   │       │   │   │   │   │   │   ├── Gaborone
│   │       │   │   │   │   │   │   ├── Harare
│   │       │   │   │   │   │   │   ├── Johannesburg
│   │       │   │   │   │   │   │   ├── Juba
│   │       │   │   │   │   │   │   ├── Kampala
│   │       │   │   │   │   │   │   ├── Khartoum
│   │       │   │   │   │   │   │   ├── Kigali
│   │       │   │   │   │   │   │   ├── Kinshasa
│   │       │   │   │   │   │   │   ├── Lagos
│   │       │   │   │   │   │   │   ├── Libreville
│   │       │   │   │   │   │   │   ├── Lome
│   │       │   │   │   │   │   │   ├── Luanda
│   │       │   │   │   │   │   │   ├── Lubumbashi
│   │       │   │   │   │   │   │   ├── Lusaka
│   │       │   │   │   │   │   │   ├── Malabo
│   │       │   │   │   │   │   │   ├── Maputo
│   │       │   │   │   │   │   │   ├── Maseru
│   │       │   │   │   │   │   │   ├── Mbabane
│   │       │   │   │   │   │   │   ├── Mogadishu
│   │       │   │   │   │   │   │   ├── Monrovia
│   │       │   │   │   │   │   │   ├── Nairobi
│   │       │   │   │   │   │   │   ├── Ndjamena
│   │       │   │   │   │   │   │   ├── Niamey
│   │       │   │   │   │   │   │   ├── Nouakchott
│   │       │   │   │   │   │   │   ├── Ouagadougou
│   │       │   │   │   │   │   │   ├── Porto-Novo
│   │       │   │   │   │   │   │   ├── Sao_Tome
│   │       │   │   │   │   │   │   ├── Timbuktu
│   │       │   │   │   │   │   │   ├── Tripoli
│   │       │   │   │   │   │   │   ├── Tunis
│   │       │   │   │   │   │   │   └── Windhoek
│   │       │   │   │   │   │   ├── America
│   │       │   │   │   │   │   │   ├── Adak
│   │       │   │   │   │   │   │   ├── Anchorage
│   │       │   │   │   │   │   │   ├── Anguilla
│   │       │   │   │   │   │   │   ├── Antigua
│   │       │   │   │   │   │   │   ├── Araguaina
│   │       │   │   │   │   │   │   ├── Argentina
│   │       │   │   │   │   │   │   │   ├── Buenos_Aires
│   │       │   │   │   │   │   │   │   ├── Catamarca
│   │       │   │   │   │   │   │   │   ├── ComodRivadavia
│   │       │   │   │   │   │   │   │   ├── Cordoba
│   │       │   │   │   │   │   │   │   ├── Jujuy
│   │       │   │   │   │   │   │   │   ├── La_Rioja
│   │       │   │   │   │   │   │   │   ├── Mendoza
│   │       │   │   │   │   │   │   │   ├── Rio_Gallegos
│   │       │   │   │   │   │   │   │   ├── Salta
│   │       │   │   │   │   │   │   │   ├── San_Juan
│   │       │   │   │   │   │   │   │   ├── San_Luis
│   │       │   │   │   │   │   │   │   ├── Tucuman
│   │       │   │   │   │   │   │   │   └── Ushuaia
│   │       │   │   │   │   │   │   ├── Aruba
│   │       │   │   │   │   │   │   ├── Asuncion
│   │       │   │   │   │   │   │   ├── Atikokan
│   │       │   │   │   │   │   │   ├── Atka
│   │       │   │   │   │   │   │   ├── Bahia
│   │       │   │   │   │   │   │   ├── Bahia_Banderas
│   │       │   │   │   │   │   │   ├── Barbados
│   │       │   │   │   │   │   │   ├── Belem
│   │       │   │   │   │   │   │   ├── Belize
│   │       │   │   │   │   │   │   ├── Blanc-Sablon
│   │       │   │   │   │   │   │   ├── Boa_Vista
│   │       │   │   │   │   │   │   ├── Bogota
│   │       │   │   │   │   │   │   ├── Boise
│   │       │   │   │   │   │   │   ├── Buenos_Aires
│   │       │   │   │   │   │   │   ├── Cambridge_Bay
│   │       │   │   │   │   │   │   ├── Campo_Grande
│   │       │   │   │   │   │   │   ├── Cancun
│   │       │   │   │   │   │   │   ├── Caracas
│   │       │   │   │   │   │   │   ├── Catamarca
│   │       │   │   │   │   │   │   ├── Cayenne
│   │       │   │   │   │   │   │   ├── Cayman
│   │       │   │   │   │   │   │   ├── Chicago
│   │       │   │   │   │   │   │   ├── Chihuahua
│   │       │   │   │   │   │   │   ├── Coral_Harbour
│   │       │   │   │   │   │   │   ├── Cordoba
│   │       │   │   │   │   │   │   ├── Costa_Rica
│   │       │   │   │   │   │   │   ├── Creston
│   │       │   │   │   │   │   │   ├── Cuiaba
│   │       │   │   │   │   │   │   ├── Curacao
│   │       │   │   │   │   │   │   ├── Danmarkshavn
│   │       │   │   │   │   │   │   ├── Dawson
│   │       │   │   │   │   │   │   ├── Dawson_Creek
│   │       │   │   │   │   │   │   ├── Denver
│   │       │   │   │   │   │   │   ├── Detroit
│   │       │   │   │   │   │   │   ├── Dominica
│   │       │   │   │   │   │   │   ├── Edmonton
│   │       │   │   │   │   │   │   ├── Eirunepe
│   │       │   │   │   │   │   │   ├── El_Salvador
│   │       │   │   │   │   │   │   ├── Ensenada
│   │       │   │   │   │   │   │   ├── Fortaleza
│   │       │   │   │   │   │   │   ├── Fort_Nelson
│   │       │   │   │   │   │   │   ├── Fort_Wayne
│   │       │   │   │   │   │   │   ├── Glace_Bay
│   │       │   │   │   │   │   │   ├── Godthab
│   │       │   │   │   │   │   │   ├── Goose_Bay
│   │       │   │   │   │   │   │   ├── Grand_Turk
│   │       │   │   │   │   │   │   ├── Grenada
│   │       │   │   │   │   │   │   ├── Guadeloupe
│   │       │   │   │   │   │   │   ├── Guatemala
│   │       │   │   │   │   │   │   ├── Guayaquil
│   │       │   │   │   │   │   │   ├── Guyana
│   │       │   │   │   │   │   │   ├── Halifax
│   │       │   │   │   │   │   │   ├── Havana
│   │       │   │   │   │   │   │   ├── Hermosillo
│   │       │   │   │   │   │   │   ├── Indiana
│   │       │   │   │   │   │   │   │   ├── Indianapolis
│   │       │   │   │   │   │   │   │   ├── Knox
│   │       │   │   │   │   │   │   │   ├── Marengo
│   │       │   │   │   │   │   │   │   ├── Petersburg
│   │       │   │   │   │   │   │   │   ├── Tell_City
│   │       │   │   │   │   │   │   │   ├── Vevay
│   │       │   │   │   │   │   │   │   ├── Vincennes
│   │       │   │   │   │   │   │   │   └── Winamac
│   │       │   │   │   │   │   │   ├── Indianapolis
│   │       │   │   │   │   │   │   ├── Inuvik
│   │       │   │   │   │   │   │   ├── Iqaluit
│   │       │   │   │   │   │   │   ├── Jamaica
│   │       │   │   │   │   │   │   ├── Jujuy
│   │       │   │   │   │   │   │   ├── Juneau
│   │       │   │   │   │   │   │   ├── Kentucky
│   │       │   │   │   │   │   │   │   ├── Louisville
│   │       │   │   │   │   │   │   │   └── Monticello
│   │       │   │   │   │   │   │   ├── Knox_IN
│   │       │   │   │   │   │   │   ├── Kralendijk
│   │       │   │   │   │   │   │   ├── La_Paz
│   │       │   │   │   │   │   │   ├── Lima
│   │       │   │   │   │   │   │   ├── Los_Angeles
│   │       │   │   │   │   │   │   ├── Louisville
│   │       │   │   │   │   │   │   ├── Lower_Princes
│   │       │   │   │   │   │   │   ├── Maceio
│   │       │   │   │   │   │   │   ├── Managua
│   │       │   │   │   │   │   │   ├── Manaus
│   │       │   │   │   │   │   │   ├── Marigot
│   │       │   │   │   │   │   │   ├── Martinique
│   │       │   │   │   │   │   │   ├── Matamoros
│   │       │   │   │   │   │   │   ├── Mazatlan
│   │       │   │   │   │   │   │   ├── Mendoza
│   │       │   │   │   │   │   │   ├── Menominee
│   │       │   │   │   │   │   │   ├── Merida
│   │       │   │   │   │   │   │   ├── Metlakatla
│   │       │   │   │   │   │   │   ├── Mexico_City
│   │       │   │   │   │   │   │   ├── Miquelon
│   │       │   │   │   │   │   │   ├── Moncton
│   │       │   │   │   │   │   │   ├── Monterrey
│   │       │   │   │   │   │   │   ├── Montevideo
│   │       │   │   │   │   │   │   ├── Montreal
│   │       │   │   │   │   │   │   ├── Montserrat
│   │       │   │   │   │   │   │   ├── Nassau
│   │       │   │   │   │   │   │   ├── New_York
│   │       │   │   │   │   │   │   ├── Nipigon
│   │       │   │   │   │   │   │   ├── Nome
│   │       │   │   │   │   │   │   ├── Noronha
│   │       │   │   │   │   │   │   ├── North_Dakota
│   │       │   │   │   │   │   │   │   ├── Beulah
│   │       │   │   │   │   │   │   │   ├── Center
│   │       │   │   │   │   │   │   │   └── New_Salem
│   │       │   │   │   │   │   │   ├── Ojinaga
│   │       │   │   │   │   │   │   ├── Panama
│   │       │   │   │   │   │   │   ├── Pangnirtung
│   │       │   │   │   │   │   │   ├── Paramaribo
│   │       │   │   │   │   │   │   ├── Phoenix
│   │       │   │   │   │   │   │   ├── Port-au-Prince
│   │       │   │   │   │   │   │   ├── Porto_Acre
│   │       │   │   │   │   │   │   ├── Port_of_Spain
│   │       │   │   │   │   │   │   ├── Porto_Velho
│   │       │   │   │   │   │   │   ├── Puerto_Rico
│   │       │   │   │   │   │   │   ├── Punta_Arenas
│   │       │   │   │   │   │   │   ├── Rainy_River
│   │       │   │   │   │   │   │   ├── Rankin_Inlet
│   │       │   │   │   │   │   │   ├── Recife
│   │       │   │   │   │   │   │   ├── Regina
│   │       │   │   │   │   │   │   ├── Resolute
│   │       │   │   │   │   │   │   ├── Rio_Branco
│   │       │   │   │   │   │   │   ├── Rosario
│   │       │   │   │   │   │   │   ├── Santa_Isabel
│   │       │   │   │   │   │   │   ├── Santarem
│   │       │   │   │   │   │   │   ├── Santiago
│   │       │   │   │   │   │   │   ├── Santo_Domingo
│   │       │   │   │   │   │   │   ├── Sao_Paulo
│   │       │   │   │   │   │   │   ├── Scoresbysund
│   │       │   │   │   │   │   │   ├── Shiprock
│   │       │   │   │   │   │   │   ├── Sitka
│   │       │   │   │   │   │   │   ├── St_Barthelemy
│   │       │   │   │   │   │   │   ├── St_Johns
│   │       │   │   │   │   │   │   ├── St_Kitts
│   │       │   │   │   │   │   │   ├── St_Lucia
│   │       │   │   │   │   │   │   ├── St_Thomas
│   │       │   │   │   │   │   │   ├── St_Vincent
│   │       │   │   │   │   │   │   ├── Swift_Current
│   │       │   │   │   │   │   │   ├── Tegucigalpa
│   │       │   │   │   │   │   │   ├── Thule
│   │       │   │   │   │   │   │   ├── Thunder_Bay
│   │       │   │   │   │   │   │   ├── Tijuana
│   │       │   │   │   │   │   │   ├── Toronto
│   │       │   │   │   │   │   │   ├── Tortola
│   │       │   │   │   │   │   │   ├── Vancouver
│   │       │   │   │   │   │   │   ├── Virgin
│   │       │   │   │   │   │   │   ├── Whitehorse
│   │       │   │   │   │   │   │   ├── Winnipeg
│   │       │   │   │   │   │   │   ├── Yakutat
│   │       │   │   │   │   │   │   └── Yellowknife
│   │       │   │   │   │   │   ├── Antarctica
│   │       │   │   │   │   │   │   ├── Casey
│   │       │   │   │   │   │   │   ├── Davis
│   │       │   │   │   │   │   │   ├── DumontDUrville
│   │       │   │   │   │   │   │   ├── Macquarie
│   │       │   │   │   │   │   │   ├── Mawson
│   │       │   │   │   │   │   │   ├── McMurdo
│   │       │   │   │   │   │   │   ├── Palmer
│   │       │   │   │   │   │   │   ├── Rothera
│   │       │   │   │   │   │   │   ├── South_Pole
│   │       │   │   │   │   │   │   ├── Syowa
│   │       │   │   │   │   │   │   ├── Troll
│   │       │   │   │   │   │   │   └── Vostok
│   │       │   │   │   │   │   ├── Arctic
│   │       │   │   │   │   │   │   └── Longyearbyen
│   │       │   │   │   │   │   ├── Asia
│   │       │   │   │   │   │   │   ├── Aden
│   │       │   │   │   │   │   │   ├── Almaty
│   │       │   │   │   │   │   │   ├── Amman
│   │       │   │   │   │   │   │   ├── Anadyr
│   │       │   │   │   │   │   │   ├── Aqtau
│   │       │   │   │   │   │   │   ├── Aqtobe
│   │       │   │   │   │   │   │   ├── Ashgabat
│   │       │   │   │   │   │   │   ├── Ashkhabad
│   │       │   │   │   │   │   │   ├── Atyrau
│   │       │   │   │   │   │   │   ├── Baghdad
│   │       │   │   │   │   │   │   ├── Bahrain
│   │       │   │   │   │   │   │   ├── Baku
│   │       │   │   │   │   │   │   ├── Bangkok
│   │       │   │   │   │   │   │   ├── Barnaul
│   │       │   │   │   │   │   │   ├── Beirut
│   │       │   │   │   │   │   │   ├── Bishkek
│   │       │   │   │   │   │   │   ├── Brunei
│   │       │   │   │   │   │   │   ├── Calcutta
│   │       │   │   │   │   │   │   ├── Chita
│   │       │   │   │   │   │   │   ├── Choibalsan
│   │       │   │   │   │   │   │   ├── Chongqing
│   │       │   │   │   │   │   │   ├── Chungking
│   │       │   │   │   │   │   │   ├── Colombo
│   │       │   │   │   │   │   │   ├── Dacca
│   │       │   │   │   │   │   │   ├── Damascus
│   │       │   │   │   │   │   │   ├── Dhaka
│   │       │   │   │   │   │   │   ├── Dili
│   │       │   │   │   │   │   │   ├── Dubai
│   │       │   │   │   │   │   │   ├── Dushanbe
│   │       │   │   │   │   │   │   ├── Famagusta
│   │       │   │   │   │   │   │   ├── Gaza
│   │       │   │   │   │   │   │   ├── Harbin
│   │       │   │   │   │   │   │   ├── Hebron
│   │       │   │   │   │   │   │   ├── Ho_Chi_Minh
│   │       │   │   │   │   │   │   ├── Hong_Kong
│   │       │   │   │   │   │   │   ├── Hovd
│   │       │   │   │   │   │   │   ├── Irkutsk
│   │       │   │   │   │   │   │   ├── Istanbul
│   │       │   │   │   │   │   │   ├── Jakarta
│   │       │   │   │   │   │   │   ├── Jayapura
│   │       │   │   │   │   │   │   ├── Jerusalem
│   │       │   │   │   │   │   │   ├── Kabul
│   │       │   │   │   │   │   │   ├── Kamchatka
│   │       │   │   │   │   │   │   ├── Karachi
│   │       │   │   │   │   │   │   ├── Kashgar
│   │       │   │   │   │   │   │   ├── Kathmandu
│   │       │   │   │   │   │   │   ├── Katmandu
│   │       │   │   │   │   │   │   ├── Khandyga
│   │       │   │   │   │   │   │   ├── Kolkata
│   │       │   │   │   │   │   │   ├── Krasnoyarsk
│   │       │   │   │   │   │   │   ├── Kuala_Lumpur
│   │       │   │   │   │   │   │   ├── Kuching
│   │       │   │   │   │   │   │   ├── Kuwait
│   │       │   │   │   │   │   │   ├── Macao
│   │       │   │   │   │   │   │   ├── Macau
│   │       │   │   │   │   │   │   ├── Magadan
│   │       │   │   │   │   │   │   ├── Makassar
│   │       │   │   │   │   │   │   ├── Manila
│   │       │   │   │   │   │   │   ├── Muscat
│   │       │   │   │   │   │   │   ├── Nicosia
│   │       │   │   │   │   │   │   ├── Novokuznetsk
│   │       │   │   │   │   │   │   ├── Novosibirsk
│   │       │   │   │   │   │   │   ├── Omsk
│   │       │   │   │   │   │   │   ├── Oral
│   │       │   │   │   │   │   │   ├── Phnom_Penh
│   │       │   │   │   │   │   │   ├── Pontianak
│   │       │   │   │   │   │   │   ├── Pyongyang
│   │       │   │   │   │   │   │   ├── Qatar
│   │       │   │   │   │   │   │   ├── Qyzylorda
│   │       │   │   │   │   │   │   ├── Rangoon
│   │       │   │   │   │   │   │   ├── Riyadh
│   │       │   │   │   │   │   │   ├── Saigon
│   │       │   │   │   │   │   │   ├── Sakhalin
│   │       │   │   │   │   │   │   ├── Samarkand
│   │       │   │   │   │   │   │   ├── Seoul
│   │       │   │   │   │   │   │   ├── Shanghai
│   │       │   │   │   │   │   │   ├── Singapore
│   │       │   │   │   │   │   │   ├── Srednekolymsk
│   │       │   │   │   │   │   │   ├── Taipei
│   │       │   │   │   │   │   │   ├── Tashkent
│   │       │   │   │   │   │   │   ├── Tbilisi
│   │       │   │   │   │   │   │   ├── Tehran
│   │       │   │   │   │   │   │   ├── Tel_Aviv
│   │       │   │   │   │   │   │   ├── Thimbu
│   │       │   │   │   │   │   │   ├── Thimphu
│   │       │   │   │   │   │   │   ├── Tokyo
│   │       │   │   │   │   │   │   ├── Tomsk
│   │       │   │   │   │   │   │   ├── Ujung_Pandang
│   │       │   │   │   │   │   │   ├── Ulaanbaatar
│   │       │   │   │   │   │   │   ├── Ulan_Bator
│   │       │   │   │   │   │   │   ├── Urumqi
│   │       │   │   │   │   │   │   ├── Ust-Nera
│   │       │   │   │   │   │   │   ├── Vientiane
│   │       │   │   │   │   │   │   ├── Vladivostok
│   │       │   │   │   │   │   │   ├── Yakutsk
│   │       │   │   │   │   │   │   ├── Yangon
│   │       │   │   │   │   │   │   ├── Yekaterinburg
│   │       │   │   │   │   │   │   └── Yerevan
│   │       │   │   │   │   │   ├── Atlantic
│   │       │   │   │   │   │   │   ├── Azores
│   │       │   │   │   │   │   │   ├── Bermuda
│   │       │   │   │   │   │   │   ├── Canary
│   │       │   │   │   │   │   │   ├── Cape_Verde
│   │       │   │   │   │   │   │   ├── Faeroe
│   │       │   │   │   │   │   │   ├── Faroe
│   │       │   │   │   │   │   │   ├── Jan_Mayen
│   │       │   │   │   │   │   │   ├── Madeira
│   │       │   │   │   │   │   │   ├── Reykjavik
│   │       │   │   │   │   │   │   ├── South_Georgia
│   │       │   │   │   │   │   │   ├── Stanley
│   │       │   │   │   │   │   │   └── St_Helena
│   │       │   │   │   │   │   ├── Australia
│   │       │   │   │   │   │   │   ├── ACT
│   │       │   │   │   │   │   │   ├── Adelaide
│   │       │   │   │   │   │   │   ├── Brisbane
│   │       │   │   │   │   │   │   ├── Broken_Hill
│   │       │   │   │   │   │   │   ├── Canberra
│   │       │   │   │   │   │   │   ├── Currie
│   │       │   │   │   │   │   │   ├── Darwin
│   │       │   │   │   │   │   │   ├── Eucla
│   │       │   │   │   │   │   │   ├── Hobart
│   │       │   │   │   │   │   │   ├── LHI
│   │       │   │   │   │   │   │   ├── Lindeman
│   │       │   │   │   │   │   │   ├── Lord_Howe
│   │       │   │   │   │   │   │   ├── Melbourne
│   │       │   │   │   │   │   │   ├── North
│   │       │   │   │   │   │   │   ├── NSW
│   │       │   │   │   │   │   │   ├── Perth
│   │       │   │   │   │   │   │   ├── Queensland
│   │       │   │   │   │   │   │   ├── South
│   │       │   │   │   │   │   │   ├── Sydney
│   │       │   │   │   │   │   │   ├── Tasmania
│   │       │   │   │   │   │   │   ├── Victoria
│   │       │   │   │   │   │   │   ├── West
│   │       │   │   │   │   │   │   └── Yancowinna
│   │       │   │   │   │   │   ├── Brazil
│   │       │   │   │   │   │   │   ├── Acre
│   │       │   │   │   │   │   │   ├── DeNoronha
│   │       │   │   │   │   │   │   ├── East
│   │       │   │   │   │   │   │   └── West
│   │       │   │   │   │   │   ├── Canada
│   │       │   │   │   │   │   │   ├── Atlantic
│   │       │   │   │   │   │   │   ├── Central
│   │       │   │   │   │   │   │   ├── Eastern
│   │       │   │   │   │   │   │   ├── East-Saskatchewan
│   │       │   │   │   │   │   │   ├── Mountain
│   │       │   │   │   │   │   │   ├── Newfoundland
│   │       │   │   │   │   │   │   ├── Pacific
│   │       │   │   │   │   │   │   ├── Saskatchewan
│   │       │   │   │   │   │   │   └── Yukon
│   │       │   │   │   │   │   ├── CET
│   │       │   │   │   │   │   ├── Chile
│   │       │   │   │   │   │   │   ├── Continental
│   │       │   │   │   │   │   │   └── EasterIsland
│   │       │   │   │   │   │   ├── CST6CDT
│   │       │   │   │   │   │   ├── Cuba
│   │       │   │   │   │   │   ├── EET
│   │       │   │   │   │   │   ├── Egypt
│   │       │   │   │   │   │   ├── Eire
│   │       │   │   │   │   │   ├── EST
│   │       │   │   │   │   │   ├── EST5EDT
│   │       │   │   │   │   │   ├── Etc
│   │       │   │   │   │   │   │   ├── GMT
│   │       │   │   │   │   │   │   ├── GMT+0
│   │       │   │   │   │   │   │   ├── GMT-0
│   │       │   │   │   │   │   │   ├── GMT0
│   │       │   │   │   │   │   │   ├── GMT+1
│   │       │   │   │   │   │   │   ├── GMT-1
│   │       │   │   │   │   │   │   ├── GMT+10
│   │       │   │   │   │   │   │   ├── GMT-10
│   │       │   │   │   │   │   │   ├── GMT+11
│   │       │   │   │   │   │   │   ├── GMT-11
│   │       │   │   │   │   │   │   ├── GMT+12
│   │       │   │   │   │   │   │   ├── GMT-12
│   │       │   │   │   │   │   │   ├── GMT-13
│   │       │   │   │   │   │   │   ├── GMT-14
│   │       │   │   │   │   │   │   ├── GMT+2
│   │       │   │   │   │   │   │   ├── GMT-2
│   │       │   │   │   │   │   │   ├── GMT+3
│   │       │   │   │   │   │   │   ├── GMT-3
│   │       │   │   │   │   │   │   ├── GMT+4
│   │       │   │   │   │   │   │   ├── GMT-4
│   │       │   │   │   │   │   │   ├── GMT+5
│   │       │   │   │   │   │   │   ├── GMT-5
│   │       │   │   │   │   │   │   ├── GMT+6
│   │       │   │   │   │   │   │   ├── GMT-6
│   │       │   │   │   │   │   │   ├── GMT+7
│   │       │   │   │   │   │   │   ├── GMT-7
│   │       │   │   │   │   │   │   ├── GMT+8
│   │       │   │   │   │   │   │   ├── GMT-8
│   │       │   │   │   │   │   │   ├── GMT+9
│   │       │   │   │   │   │   │   ├── GMT-9
│   │       │   │   │   │   │   │   ├── Greenwich
│   │       │   │   │   │   │   │   ├── UCT
│   │       │   │   │   │   │   │   ├── Universal
│   │       │   │   │   │   │   │   ├── UTC
│   │       │   │   │   │   │   │   └── Zulu
│   │       │   │   │   │   │   ├── Europe
│   │       │   │   │   │   │   │   ├── Amsterdam
│   │       │   │   │   │   │   │   ├── Andorra
│   │       │   │   │   │   │   │   ├── Astrakhan
│   │       │   │   │   │   │   │   ├── Athens
│   │       │   │   │   │   │   │   ├── Belfast
│   │       │   │   │   │   │   │   ├── Belgrade
│   │       │   │   │   │   │   │   ├── Berlin
│   │       │   │   │   │   │   │   ├── Bratislava
│   │       │   │   │   │   │   │   ├── Brussels
│   │       │   │   │   │   │   │   ├── Bucharest
│   │       │   │   │   │   │   │   ├── Budapest
│   │       │   │   │   │   │   │   ├── Busingen
│   │       │   │   │   │   │   │   ├── Chisinau
│   │       │   │   │   │   │   │   ├── Copenhagen
│   │       │   │   │   │   │   │   ├── Dublin
│   │       │   │   │   │   │   │   ├── Gibraltar
│   │       │   │   │   │   │   │   ├── Guernsey
│   │       │   │   │   │   │   │   ├── Helsinki
│   │       │   │   │   │   │   │   ├── Isle_of_Man
│   │       │   │   │   │   │   │   ├── Istanbul
│   │       │   │   │   │   │   │   ├── Jersey
│   │       │   │   │   │   │   │   ├── Kaliningrad
│   │       │   │   │   │   │   │   ├── Kiev
│   │       │   │   │   │   │   │   ├── Kirov
│   │       │   │   │   │   │   │   ├── Lisbon
│   │       │   │   │   │   │   │   ├── Ljubljana
│   │       │   │   │   │   │   │   ├── London
│   │       │   │   │   │   │   │   ├── Luxembourg
│   │       │   │   │   │   │   │   ├── Madrid
│   │       │   │   │   │   │   │   ├── Malta
│   │       │   │   │   │   │   │   ├── Mariehamn
│   │       │   │   │   │   │   │   ├── Minsk
│   │       │   │   │   │   │   │   ├── Monaco
│   │       │   │   │   │   │   │   ├── Moscow
│   │       │   │   │   │   │   │   ├── Nicosia
│   │       │   │   │   │   │   │   ├── Oslo
│   │       │   │   │   │   │   │   ├── Paris
│   │       │   │   │   │   │   │   ├── Podgorica
│   │       │   │   │   │   │   │   ├── Prague
│   │       │   │   │   │   │   │   ├── Riga
│   │       │   │   │   │   │   │   ├── Rome
│   │       │   │   │   │   │   │   ├── Samara
│   │       │   │   │   │   │   │   ├── San_Marino
│   │       │   │   │   │   │   │   ├── Sarajevo
│   │       │   │   │   │   │   │   ├── Saratov
│   │       │   │   │   │   │   │   ├── Simferopol
│   │       │   │   │   │   │   │   ├── Skopje
│   │       │   │   │   │   │   │   ├── Sofia
│   │       │   │   │   │   │   │   ├── Stockholm
│   │       │   │   │   │   │   │   ├── Tallinn
│   │       │   │   │   │   │   │   ├── Tirane
│   │       │   │   │   │   │   │   ├── Tiraspol
│   │       │   │   │   │   │   │   ├── Ulyanovsk
│   │       │   │   │   │   │   │   ├── Uzhgorod
│   │       │   │   │   │   │   │   ├── Vaduz
│   │       │   │   │   │   │   │   ├── Vatican
│   │       │   │   │   │   │   │   ├── Vienna
│   │       │   │   │   │   │   │   ├── Vilnius
│   │       │   │   │   │   │   │   ├── Volgograd
│   │       │   │   │   │   │   │   ├── Warsaw
│   │       │   │   │   │   │   │   ├── Zagreb
│   │       │   │   │   │   │   │   ├── Zaporozhye
│   │       │   │   │   │   │   │   └── Zurich
│   │       │   │   │   │   │   ├── GB
│   │       │   │   │   │   │   ├── GB-Eire
│   │       │   │   │   │   │   ├── GMT
│   │       │   │   │   │   │   ├── GMT+0
│   │       │   │   │   │   │   ├── GMT-0
│   │       │   │   │   │   │   ├── GMT0
│   │       │   │   │   │   │   ├── Greenwich
│   │       │   │   │   │   │   ├── Hongkong
│   │       │   │   │   │   │   ├── HST
│   │       │   │   │   │   │   ├── Iceland
│   │       │   │   │   │   │   ├── Indian
│   │       │   │   │   │   │   │   ├── Antananarivo
│   │       │   │   │   │   │   │   ├── Chagos
│   │       │   │   │   │   │   │   ├── Christmas
│   │       │   │   │   │   │   │   ├── Cocos
│   │       │   │   │   │   │   │   ├── Comoro
│   │       │   │   │   │   │   │   ├── Kerguelen
│   │       │   │   │   │   │   │   ├── Mahe
│   │       │   │   │   │   │   │   ├── Maldives
│   │       │   │   │   │   │   │   ├── Mauritius
│   │       │   │   │   │   │   │   ├── Mayotte
│   │       │   │   │   │   │   │   └── Reunion
│   │       │   │   │   │   │   ├── Iran
│   │       │   │   │   │   │   ├── Israel
│   │       │   │   │   │   │   ├── Jamaica
│   │       │   │   │   │   │   ├── Japan
│   │       │   │   │   │   │   ├── Kwajalein
│   │       │   │   │   │   │   ├── Libya
│   │       │   │   │   │   │   ├── MET
│   │       │   │   │   │   │   ├── Mexico
│   │       │   │   │   │   │   │   ├── BajaNorte
│   │       │   │   │   │   │   │   ├── BajaSur
│   │       │   │   │   │   │   │   └── General
│   │       │   │   │   │   │   ├── MST
│   │       │   │   │   │   │   ├── MST7MDT
│   │       │   │   │   │   │   ├── Navajo
│   │       │   │   │   │   │   ├── NZ
│   │       │   │   │   │   │   ├── NZ-CHAT
│   │       │   │   │   │   │   ├── Pacific
│   │       │   │   │   │   │   │   ├── Apia
│   │       │   │   │   │   │   │   ├── Auckland
│   │       │   │   │   │   │   │   ├── Bougainville
│   │       │   │   │   │   │   │   ├── Chatham
│   │       │   │   │   │   │   │   ├── Chuuk
│   │       │   │   │   │   │   │   ├── Easter
│   │       │   │   │   │   │   │   ├── Efate
│   │       │   │   │   │   │   │   ├── Enderbury
│   │       │   │   │   │   │   │   ├── Fakaofo
│   │       │   │   │   │   │   │   ├── Fiji
│   │       │   │   │   │   │   │   ├── Funafuti
│   │       │   │   │   │   │   │   ├── Galapagos
│   │       │   │   │   │   │   │   ├── Gambier
│   │       │   │   │   │   │   │   ├── Guadalcanal
│   │       │   │   │   │   │   │   ├── Guam
│   │       │   │   │   │   │   │   ├── Honolulu
│   │       │   │   │   │   │   │   ├── Johnston
│   │       │   │   │   │   │   │   ├── Kiritimati
│   │       │   │   │   │   │   │   ├── Kosrae
│   │       │   │   │   │   │   │   ├── Kwajalein
│   │       │   │   │   │   │   │   ├── Majuro
│   │       │   │   │   │   │   │   ├── Marquesas
│   │       │   │   │   │   │   │   ├── Midway
│   │       │   │   │   │   │   │   ├── Nauru
│   │       │   │   │   │   │   │   ├── Niue
│   │       │   │   │   │   │   │   ├── Norfolk
│   │       │   │   │   │   │   │   ├── Noumea
│   │       │   │   │   │   │   │   ├── Pago_Pago
│   │       │   │   │   │   │   │   ├── Palau
│   │       │   │   │   │   │   │   ├── Pitcairn
│   │       │   │   │   │   │   │   ├── Pohnpei
│   │       │   │   │   │   │   │   ├── Ponape
│   │       │   │   │   │   │   │   ├── Port_Moresby
│   │       │   │   │   │   │   │   ├── Rarotonga
│   │       │   │   │   │   │   │   ├── Saipan
│   │       │   │   │   │   │   │   ├── Samoa
│   │       │   │   │   │   │   │   ├── Tahiti
│   │       │   │   │   │   │   │   ├── Tarawa
│   │       │   │   │   │   │   │   ├── Tongatapu
│   │       │   │   │   │   │   │   ├── Truk
│   │       │   │   │   │   │   │   ├── Wake
│   │       │   │   │   │   │   │   ├── Wallis
│   │       │   │   │   │   │   │   └── Yap
│   │       │   │   │   │   │   ├── Poland
│   │       │   │   │   │   │   ├── Portugal
│   │       │   │   │   │   │   ├── PRC
│   │       │   │   │   │   │   ├── PST8PDT
│   │       │   │   │   │   │   ├── ROC
│   │       │   │   │   │   │   ├── ROK
│   │       │   │   │   │   │   ├── Singapore
│   │       │   │   │   │   │   ├── SystemV
│   │       │   │   │   │   │   │   ├── AST4
│   │       │   │   │   │   │   │   ├── AST4ADT
│   │       │   │   │   │   │   │   ├── CST6
│   │       │   │   │   │   │   │   ├── CST6CDT
│   │       │   │   │   │   │   │   ├── EST5
│   │       │   │   │   │   │   │   ├── EST5EDT
│   │       │   │   │   │   │   │   ├── HST10
│   │       │   │   │   │   │   │   ├── MST7
│   │       │   │   │   │   │   │   ├── MST7MDT
│   │       │   │   │   │   │   │   ├── PST8
│   │       │   │   │   │   │   │   ├── PST8PDT
│   │       │   │   │   │   │   │   ├── YST9
│   │       │   │   │   │   │   │   └── YST9YDT
│   │       │   │   │   │   │   ├── Turkey
│   │       │   │   │   │   │   ├── UCT
│   │       │   │   │   │   │   ├── Universal
│   │       │   │   │   │   │   ├── US
│   │       │   │   │   │   │   │   ├── Alaska
│   │       │   │   │   │   │   │   ├── Aleutian
│   │       │   │   │   │   │   │   ├── Arizona
│   │       │   │   │   │   │   │   ├── Central
│   │       │   │   │   │   │   │   ├── Eastern
│   │       │   │   │   │   │   │   ├── East-Indiana
│   │       │   │   │   │   │   │   ├── Hawaii
│   │       │   │   │   │   │   │   ├── Indiana-Starke
│   │       │   │   │   │   │   │   ├── Michigan
│   │       │   │   │   │   │   │   ├── Mountain
│   │       │   │   │   │   │   │   ├── Pacific
│   │       │   │   │   │   │   │   ├── Pacific-New
│   │       │   │   │   │   │   │   └── Samoa
│   │       │   │   │   │   │   ├── UTC
│   │       │   │   │   │   │   ├── WET
│   │       │   │   │   │   │   ├── W-SU
│   │       │   │   │   │   │   └── Zulu
│   │       │   │   │   │   └── word.tcl
│   │       │   │   │   └── tk8.6
│   │       │   │   │       ├── bgerror.tcl
│   │       │   │   │       ├── button.tcl
│   │       │   │   │       ├── choosedir.tcl
│   │       │   │   │       ├── clrpick.tcl
│   │       │   │   │       ├── comdlg.tcl
│   │       │   │   │       ├── console.tcl
│   │       │   │   │       ├── demos
│   │       │   │   │       │   ├── anilabel.tcl
│   │       │   │   │       │   ├── aniwave.tcl
│   │       │   │   │       │   ├── arrow.tcl
│   │       │   │   │       │   ├── bind.tcl
│   │       │   │   │       │   ├── bitmap.tcl
│   │       │   │   │       │   ├── browse
│   │       │   │   │       │   ├── button.tcl
│   │       │   │   │       │   ├── check.tcl
│   │       │   │   │       │   ├── clrpick.tcl
│   │       │   │   │       │   ├── colors.tcl
│   │       │   │   │       │   ├── combo.tcl
│   │       │   │   │       │   ├── cscroll.tcl
│   │       │   │   │       │   ├── ctext.tcl
│   │       │   │   │       │   ├── dialog1.tcl
│   │       │   │   │       │   ├── dialog2.tcl
│   │       │   │   │       │   ├── en.msg
│   │       │   │   │       │   ├── entry1.tcl
│   │       │   │   │       │   ├── entry2.tcl
│   │       │   │   │       │   ├── entry3.tcl
│   │       │   │   │       │   ├── filebox.tcl
│   │       │   │   │       │   ├── floor.tcl
│   │       │   │   │       │   ├── fontchoose.tcl
│   │       │   │   │       │   ├── form.tcl
│   │       │   │   │       │   ├── goldberg.tcl
│   │       │   │   │       │   ├── hello
│   │       │   │   │       │   ├── hscale.tcl
│   │       │   │   │       │   ├── icon.tcl
│   │       │   │   │       │   ├── image1.tcl
│   │       │   │   │       │   ├── image2.tcl
│   │       │   │   │       │   ├── images
│   │       │   │   │       │   │   ├── earth.gif
│   │       │   │   │       │   │   ├── earthris.gif
│   │       │   │   │       │   │   ├── flagdown.xbm
│   │       │   │   │       │   │   ├── flagup.xbm
│   │       │   │   │       │   │   ├── gray25.xbm
│   │       │   │   │       │   │   ├── letters.xbm
│   │       │   │   │       │   │   ├── noletter.xbm
│   │       │   │   │       │   │   ├── ouster.png
│   │       │   │   │       │   │   ├── pattern.xbm
│   │       │   │   │       │   │   ├── tcllogo.gif
│   │       │   │   │       │   │   └── teapot.ppm
│   │       │   │   │       │   ├── items.tcl
│   │       │   │   │       │   ├── ixset
│   │       │   │   │       │   ├── knightstour.tcl
│   │       │   │   │       │   ├── labelframe.tcl
│   │       │   │   │       │   ├── label.tcl
│   │       │   │   │       │   ├── license.terms
│   │       │   │   │       │   ├── mclist.tcl
│   │       │   │   │       │   ├── menubu.tcl
│   │       │   │   │       │   ├── menu.tcl
│   │       │   │   │       │   ├── msgbox.tcl
│   │       │   │   │       │   ├── nl.msg
│   │       │   │   │       │   ├── paned1.tcl
│   │       │   │   │       │   ├── paned2.tcl
│   │       │   │   │       │   ├── pendulum.tcl
│   │       │   │   │       │   ├── plot.tcl
│   │       │   │   │       │   ├── puzzle.tcl
│   │       │   │   │       │   ├── radio.tcl
│   │       │   │   │       │   ├── README
│   │       │   │   │       │   ├── rmt
│   │       │   │   │       │   ├── rolodex
│   │       │   │   │       │   ├── ruler.tcl
│   │       │   │   │       │   ├── sayings.tcl
│   │       │   │   │       │   ├── search.tcl
│   │       │   │   │       │   ├── spin.tcl
│   │       │   │   │       │   ├── states.tcl
│   │       │   │   │       │   ├── style.tcl
│   │       │   │   │       │   ├── tclIndex
│   │       │   │   │       │   ├── tcolor
│   │       │   │   │       │   ├── textpeer.tcl
│   │       │   │   │       │   ├── text.tcl
│   │       │   │   │       │   ├── timer
│   │       │   │   │       │   ├── toolbar.tcl
│   │       │   │   │       │   ├── tree.tcl
│   │       │   │   │       │   ├── ttkbut.tcl
│   │       │   │   │       │   ├── ttkmenu.tcl
│   │       │   │   │       │   ├── ttknote.tcl
│   │       │   │   │       │   ├── ttkpane.tcl
│   │       │   │   │       │   ├── ttkprogress.tcl
│   │       │   │   │       │   ├── ttkscale.tcl
│   │       │   │   │       │   ├── twind.tcl
│   │       │   │   │       │   ├── unicodeout.tcl
│   │       │   │   │       │   ├── vscale.tcl
│   │       │   │   │       │   └── widget
│   │       │   │   │       ├── dialog.tcl
│   │       │   │   │       ├── entry.tcl
│   │       │   │   │       ├── focus.tcl
│   │       │   │   │       ├── fontchooser.tcl
│   │       │   │   │       ├── iconlist.tcl
│   │       │   │   │       ├── icons.tcl
│   │       │   │   │       ├── images
│   │       │   │   │       │   ├── logo100.gif
│   │       │   │   │       │   ├── logo64.gif
│   │       │   │   │       │   ├── logo.eps
│   │       │   │   │       │   ├── logoLarge.gif
│   │       │   │   │       │   ├── logoMed.gif
│   │       │   │   │       │   ├── pwrdLogo100.gif
│   │       │   │   │       │   ├── pwrdLogo150.gif
│   │       │   │   │       │   ├── pwrdLogo175.gif
│   │       │   │   │       │   ├── pwrdLogo200.gif
│   │       │   │   │       │   ├── pwrdLogo75.gif
│   │       │   │   │       │   ├── pwrdLogo.eps
│   │       │   │   │       │   ├── README
│   │       │   │   │       │   └── tai-ku.gif
│   │       │   │   │       ├── listbox.tcl
│   │       │   │   │       ├── megawidget.tcl
│   │       │   │   │       ├── menu.tcl
│   │       │   │   │       ├── mkpsenc.tcl
│   │       │   │   │       ├── msgbox.tcl
│   │       │   │   │       ├── msgs
│   │       │   │   │       │   ├── cs.msg
│   │       │   │   │       │   ├── da.msg
│   │       │   │   │       │   ├── de.msg
│   │       │   │   │       │   ├── el.msg
│   │       │   │   │       │   ├── en_gb.msg
│   │       │   │   │       │   ├── en.msg
│   │       │   │   │       │   ├── eo.msg
│   │       │   │   │       │   ├── es.msg
│   │       │   │   │       │   ├── fr.msg
│   │       │   │   │       │   ├── hu.msg
│   │       │   │   │       │   ├── it.msg
│   │       │   │   │       │   ├── nl.msg
│   │       │   │   │       │   ├── pl.msg
│   │       │   │   │       │   ├── pt.msg
│   │       │   │   │       │   ├── ru.msg
│   │       │   │   │       │   └── sv.msg
│   │       │   │   │       ├── obsolete.tcl
│   │       │   │   │       ├── optMenu.tcl
│   │       │   │   │       ├── palette.tcl
│   │       │   │   │       ├── panedwindow.tcl
│   │       │   │   │       ├── pkgIndex.tcl
│   │       │   │   │       ├── safetk.tcl
│   │       │   │   │       ├── scale.tcl
│   │       │   │   │       ├── scrlbar.tcl
│   │       │   │   │       ├── spinbox.tcl
│   │       │   │   │       ├── tclIndex
│   │       │   │   │       ├── tearoff.tcl
│   │       │   │   │       ├── text.tcl
│   │       │   │   │       ├── tkfbox.tcl
│   │       │   │   │       ├── tk.tcl
│   │       │   │   │       ├── ttk
│   │       │   │   │       │   ├── altTheme.tcl
│   │       │   │   │       │   ├── aquaTheme.tcl
│   │       │   │   │       │   ├── button.tcl
│   │       │   │   │       │   ├── clamTheme.tcl
│   │       │   │   │       │   ├── classicTheme.tcl
│   │       │   │   │       │   ├── combobox.tcl
│   │       │   │   │       │   ├── cursors.tcl
│   │       │   │   │       │   ├── defaults.tcl
│   │       │   │   │       │   ├── entry.tcl
│   │       │   │   │       │   ├── fonts.tcl
│   │       │   │   │       │   ├── menubutton.tcl
│   │       │   │   │       │   ├── notebook.tcl
│   │       │   │   │       │   ├── panedwindow.tcl
│   │       │   │   │       │   ├── progress.tcl
│   │       │   │   │       │   ├── scale.tcl
│   │       │   │   │       │   ├── scrollbar.tcl
│   │       │   │   │       │   ├── sizegrip.tcl
│   │       │   │   │       │   ├── spinbox.tcl
│   │       │   │   │       │   ├── treeview.tcl
│   │       │   │   │       │   ├── ttk.tcl
│   │       │   │   │       │   ├── utils.tcl
│   │       │   │   │       │   ├── vistaTheme.tcl
│   │       │   │   │       │   ├── winTheme.tcl
│   │       │   │   │       │   └── xpTheme.tcl
│   │       │   │   │       ├── unsupported.tcl
│   │       │   │   │       └── xmfbox.tcl
│   │       │   │   └── share
│   │       │   │       ├── applications
│   │       │   │       │   └── gtkwave.desktop
│   │       │   │       ├── gtkwave
│   │       │   │       │   ├── examples
│   │       │   │       │   │   ├── des.gtkw
│   │       │   │       │   │   ├── des.tcl
│   │       │   │       │   │   ├── des.v
│   │       │   │       │   │   ├── des.vzt
│   │       │   │       │   │   ├── gtkwaverc
│   │       │   │       │   │   ├── transaction.c
│   │       │   │       │   │   ├── transaction.fst
│   │       │   │       │   │   └── transaction.gtkw
│   │       │   │       │   └── gtkwave.odt
│   │       │   │       ├── icons
│   │       │   │       │   ├── gnome
│   │       │   │       │   │   ├── 16x16
│   │       │   │       │   │   │   └── mimetypes
│   │       │   │       │   │   │       ├── gnome-mime-application-vnd.gtkwave-ae2.png
│   │       │   │       │   │   │       ├── gnome-mime-application-vnd.gtkwave-aet.png
│   │       │   │       │   │   │       ├── gnome-mime-application-vnd.gtkwave-evcd.png
│   │       │   │       │   │   │       ├── gnome-mime-application-vnd.gtkwave-fst.png
│   │       │   │       │   │   │       ├── gnome-mime-application-vnd.gtkwave-ghw.png
│   │       │   │       │   │   │       ├── gnome-mime-application-vnd.gtkwave-gtkw.png
│   │       │   │       │   │   │       ├── gnome-mime-application-vnd.gtkwave-lx2.png
│   │       │   │       │   │   │       ├── gnome-mime-application-vnd.gtkwave-lxt2.png
│   │       │   │       │   │   │       ├── gnome-mime-application-vnd.gtkwave-lxt.png
│   │       │   │       │   │   │       ├── gnome-mime-application-vnd.gtkwave-vcd.png
│   │       │   │       │   │   │       ├── gnome-mime-application-vnd.gtkwave-vzt.png
│   │       │   │       │   │   │       └── gtkwave.png
│   │       │   │       │   │   ├── 32x32
│   │       │   │       │   │   │   └── mimetypes
│   │       │   │       │   │   │       ├── gnome-mime-application-vnd.gtkwave-ae2.png
│   │       │   │       │   │   │       ├── gnome-mime-application-vnd.gtkwave-aet.png
│   │       │   │       │   │   │       ├── gnome-mime-application-vnd.gtkwave-evcd.png
│   │       │   │       │   │   │       ├── gnome-mime-application-vnd.gtkwave-fst.png
│   │       │   │       │   │   │       ├── gnome-mime-application-vnd.gtkwave-ghw.png
│   │       │   │       │   │   │       ├── gnome-mime-application-vnd.gtkwave-gtkw.png
│   │       │   │       │   │   │       ├── gnome-mime-application-vnd.gtkwave-lx2.png
│   │       │   │       │   │   │       ├── gnome-mime-application-vnd.gtkwave-lxt2.png
│   │       │   │       │   │   │       ├── gnome-mime-application-vnd.gtkwave-lxt.png
│   │       │   │       │   │   │       ├── gnome-mime-application-vnd.gtkwave-vcd.png
│   │       │   │       │   │   │       ├── gnome-mime-application-vnd.gtkwave-vzt.png
│   │       │   │       │   │   │       └── gtkwave.png
│   │       │   │       │   │   └── 48x48
│   │       │   │       │   │       └── mimetypes
│   │       │   │       │   │           ├── gnome-mime-application-vnd.gtkwave-ae2.png
│   │       │   │       │   │           ├── gnome-mime-application-vnd.gtkwave-aet.png
│   │       │   │       │   │           ├── gnome-mime-application-vnd.gtkwave-evcd.png
│   │       │   │       │   │           ├── gnome-mime-application-vnd.gtkwave-fst.png
│   │       │   │       │   │           ├── gnome-mime-application-vnd.gtkwave-ghw.png
│   │       │   │       │   │           ├── gnome-mime-application-vnd.gtkwave-gtkw.png
│   │       │   │       │   │           ├── gnome-mime-application-vnd.gtkwave-lx2.png
│   │       │   │       │   │           ├── gnome-mime-application-vnd.gtkwave-lxt2.png
│   │       │   │       │   │           ├── gnome-mime-application-vnd.gtkwave-lxt.png
│   │       │   │       │   │           ├── gnome-mime-application-vnd.gtkwave-vcd.png
│   │       │   │       │   │           ├── gnome-mime-application-vnd.gtkwave-vzt.png
│   │       │   │       │   │           └── gtkwave.png
│   │       │   │       │   ├── gtkwave_256x256x32.png
│   │       │   │       │   ├── gtkwave_files_256x256x32.png
│   │       │   │       │   └── gtkwave_savefiles_256x256x32.png
│   │       │   │       ├── man
│   │       │   │       │   ├── man1
│   │       │   │       │   │   ├── evcd2vcd.1
│   │       │   │       │   │   ├── fst2vcd.1
│   │       │   │       │   │   ├── fstminer.1
│   │       │   │       │   │   ├── ghwdump.1
│   │       │   │       │   │   ├── gtkwave.1
│   │       │   │       │   │   ├── lxt2miner.1
│   │       │   │       │   │   ├── lxt2vcd.1
│   │       │   │       │   │   ├── rtlbrowse.1
│   │       │   │       │   │   ├── shmidcat.1
│   │       │   │       │   │   ├── twinwave.1
│   │       │   │       │   │   ├── vcd2fst.1
│   │       │   │       │   │   ├── vcd2lxt.1
│   │       │   │       │   │   ├── vcd2lxt2.1
│   │       │   │       │   │   ├── vcd2vzt.1
│   │       │   │       │   │   ├── vermin.1
│   │       │   │       │   │   ├── vzt2vcd.1
│   │       │   │       │   │   ├── vztminer.1
│   │       │   │       │   │   └── xml2stems.1
│   │       │   │       │   └── man5
│   │       │   │       │       └── gtkwaverc.5
│   │       │   │       └── mime
│   │       │   │           └── packages
│   │       │   │               ├── x-gtkwave-extension-ae2.xml
│   │       │   │               ├── x-gtkwave-extension-aet.xml
│   │       │   │               ├── x-gtkwave-extension-evcd.xml
│   │       │   │               ├── x-gtkwave-extension-fst.xml
│   │       │   │               ├── x-gtkwave-extension-ghw.xml
│   │       │   │               ├── x-gtkwave-extension-gtkw.xml
│   │       │   │               ├── x-gtkwave-extension-lx2.xml
│   │       │   │               ├── x-gtkwave-extension-lxt2.xml
│   │       │   │               ├── x-gtkwave-extension-lxt.xml
│   │       │   │               ├── x-gtkwave-extension-vcd.xml
│   │       │   │               └── x-gtkwave-extension-vzt.xml
│   │       │   ├── hello.v
│   │       │   ├── hello.vvp
│   │       │   ├── icarus.ico
│   │       │   ├── Icarus Verilog.url
│   │       │   ├── include
│   │       │   │   └── iverilog
│   │       │   │       ├── acc_user.h
│   │       │   │       ├── ivl_target.h
│   │       │   │       ├── _pli_types.h
│   │       │   │       ├── sv_vpi_user.h
│   │       │   │       ├── veriuser.h
│   │       │   │       └── vpi_user.h
│   │       │   ├── iverilog_manual.txt
│   │       │   ├── lib
│   │       │   │   ├── ivl
│   │       │   │   │   ├── blif.conf
│   │       │   │   │   ├── blif-s.conf
│   │       │   │   │   ├── blif.tgt
│   │       │   │   │   ├── cadpli.vpl
│   │       │   │   │   ├── include
│   │       │   │   │   │   ├── constants.vams
│   │       │   │   │   │   └── disciplines.vams
│   │       │   │   │   ├── ivl.exe
│   │       │   │   │   ├── ivlpp.exe
│   │       │   │   │   ├── libbz2-1.dll
│   │       │   │   │   ├── libgcc_s_seh-1.dll
│   │       │   │   │   ├── libhistory8.dll
│   │       │   │   │   ├── libreadline8.dll
│   │       │   │   │   ├── libstdc++-6.dll
│   │       │   │   │   ├── libtermcap-0.dll
│   │       │   │   │   ├── libwinpthread-1.dll
│   │       │   │   │   ├── null.conf
│   │       │   │   │   ├── null-s.conf
│   │       │   │   │   ├── null.tgt
│   │       │   │   │   ├── pcb.conf
│   │       │   │   │   ├── pcb-s.conf
│   │       │   │   │   ├── pcb.tgt
│   │       │   │   │   ├── sizer.conf
│   │       │   │   │   ├── sizer-s.conf
│   │       │   │   │   ├── sizer.tgt
│   │       │   │   │   ├── stub.conf
│   │       │   │   │   ├── stub-s.conf
│   │       │   │   │   ├── stub.tgt
│   │       │   │   │   ├── system.vpi
│   │       │   │   │   ├── v2005_math.vpi
│   │       │   │   │   ├── v2009.vpi
│   │       │   │   │   ├── va_math.vpi
│   │       │   │   │   ├── vhdl.conf
│   │       │   │   │   ├── vhdlpp.exe
│   │       │   │   │   ├── vhdl-s.conf
│   │       │   │   │   ├── vhdl_sys.vpi
│   │       │   │   │   ├── vhdl_textio.vpi
│   │       │   │   │   ├── vhdl.tgt
│   │       │   │   │   ├── vlog95.conf
│   │       │   │   │   ├── vlog95-s.conf
│   │       │   │   │   ├── vlog95.tgt
│   │       │   │   │   ├── vpi_debug.vpi
│   │       │   │   │   ├── vvp.conf
│   │       │   │   │   ├── vvp-s.conf
│   │       │   │   │   ├── vvp.tgt
│   │       │   │   │   └── zlib1.dll
│   │       │   │   ├── libveriuser.a
│   │       │   │   └── libvpi.a
│   │       │   ├── Makefile
│   │       │   ├── samples
│   │       │   │   ├── hello.vl
│   │       │   │   ├── lfsr16.v
│   │       │   │   ├── QUICK_START.txt
│   │       │   │   ├── sqrt-virtex.v
│   │       │   │   └── sqrt.vl
│   │       │   └── share
│   │       │       └── man
│   │       │           └── man1
│   │       │               ├── iverilog.1
│   │       │               ├── iverilog-vpi.1
│   │       │               └── vvp.1
│   │       ├── JFLAP_v7_1
│   │       │   └── JFLAP_v7_1.jar
│   │       └── Logisim
│   │           ├── Logisim_Tutorial.pdf
│   │           └── Logisim_v2_16_2_2.jar
│   ├── 2026-2_ARQ1_008.txt
│   ├── 2026-2_arq1_cronograma.pdf
│   ├── 2026-2_ARQ1_exemplo_007.v
│   ├── 2026-2_arq1_instrucoes.txt
│   ├── 2026-2_arq1_preparacao_01.pdf
│   ├── 2026-2_arq1.zip
│   └── hello.vvp
├── 02_Meus_Arquivos
│   └── 897891-Lucas_Junio_Quirino_Teixeira
│       └── entrega_G09
│           └── 897891-Lucas_Junio_Quirino_Teixeira
├── 03_Logisim
│   ├── 01_Referencias_Circ
│   │   ├── 01_Validados
│   │   │   ├── Guia_04.circ
│   │   │   ├── Guia_05.circ
│   │   │   ├── Guia_06.circ
│   │   │   └── Guia_07.circ
│   │   ├── 02_Abrem_Nao_Validados
│   │   │   ├── Guia_08.circ
│   │   │   ├── Guia_08_final_estrutura(1).circ
│   │   │   └── Guia_08_final_estrutura.circ
│   │   ├── 03_Com_Problema
│   │   │   ├── Guia_08.circ
│   │   │   ├── Guia_08_Logisim.circ
│   │   │   ├── Guia_08_montado.circ
│   │   │   └── Guia_08_SomadorCompleto_Logisim.circ
│   │   ├── 04_REGISTROS_DE_VALIDACAO
│   │   └── README.md
│   ├── 02_Projetos
│   ├── 03_Testes
│   ├── 04_Registros_Validacao
│   └── README.md
├── 04_Verilog
│   ├── Projetos
│   ├── README.md
│   └── Testes
├── 05_Trabalhos
├── 06_Avaliacoes
├── 07_Documentacao
├── ARQUITETURA
│   ├── Meus Arquivos
│   │   ├── 897891-Lucas_Junio_Quirino_Teixeira
│   │   │   └── entrega_G08
│   │   │       └── 897891-Lucas_Junio_Quirino_Teixeira
│   │   │           ├── Guia_0801.v
│   │   │           ├── Guia_0802.v
│   │   │           ├── Guia_0803.v
│   │   │           ├── Guia_0804.v
│   │   │           ├── Guia_0805.v
│   │   │           └── Guia_08.txt
│   │   └── entregues
│   │       ├── entrega_09-08
│   │       │   ├── 897891-Lucas_Junio_Quirino_Teixeira
│   │       │   │   ├── Guia_0101_saida.txt
│   │       │   │   ├── Guia_0101.v
│   │       │   │   ├── Guia_0102_saida.txt
│   │       │   │   ├── Guia_0102.v
│   │       │   │   ├── Guia_0103_saida.txt
│   │       │   │   ├── Guia_0103.v
│   │       │   │   ├── Guia_0104_saida.txt
│   │       │   │   ├── Guia_0104.v
│   │       │   │   ├── Guia_0105_saida.txt
│   │       │   │   ├── Guia_0105.v
│   │       │   │   └── Guia_01.txt
│   │       │   └── 897891-Lucas_Junio_Quirino_Teixeira.zip
│   │       ├── entrega_16-08
│   │       │   ├── 897891-Lucas_Junio_Quirino_Teixeira
│   │       │   │   ├── Guia_0201_saida.txt
│   │       │   │   ├── Guia_0201.v
│   │       │   │   ├── Guia_0202_saida.txt
│   │       │   │   ├── Guia_0202.v
│   │       │   │   ├── Guia_0203_saida.txt
│   │       │   │   ├── Guia_0203.v
│   │       │   │   ├── Guia_0204_saida.txt
│   │       │   │   ├── Guia_0204.v
│   │       │   │   ├── Guia_0205_saida.txt
│   │       │   │   ├── Guia_0205.v
│   │       │   │   └── Guia_02.txt
│   │       │   └── 897891-Lucas_Junio_Quirino_Teixeira.zip
│   │       ├── entrega_23-08
│   │       │   ├── 897891-Lucas_Junio_Quirino_Teixeira
│   │       │   │   ├── Guia_0301_saida.txt
│   │       │   │   ├── Guia_0301.v
│   │       │   │   ├── Guia_0302_saida.txt
│   │       │   │   ├── Guia_0302.v
│   │       │   │   ├── Guia_0303_saida.txt
│   │       │   │   ├── Guia_0303.v
│   │       │   │   ├── Guia_0304_saida.txt
│   │       │   │   ├── Guia_0304.v
│   │       │   │   ├── Guia_0305_saida.txt
│   │       │   │   ├── Guia_0305.v
│   │       │   │   └── Guia_03.txt
│   │       │   └── 897891-Lucas_Junio_Quirino_Teixeira.zip
│   │       ├── entrega_30-08
│   │       │   ├── 897891-Lucas_Junio_Quirino_Teixeira
│   │       │   │   ├── Guia_0401_saida.txt
│   │       │   │   ├── Guia_0401.v
│   │       │   │   ├── Guia_0402_saida.txt
│   │       │   │   ├── Guia_0402.v
│   │       │   │   ├── Guia_0403_saida.txt
│   │       │   │   ├── Guia_0403.v
│   │       │   │   ├── Guia_0404_saida.txt
│   │       │   │   ├── Guia_0404.v
│   │       │   │   ├── Guia_0405_saida.txt
│   │       │   │   ├── Guia_0405.v
│   │       │   │   ├── Guia_04.circ
│   │       │   │   └── Guia_04.txt
│   │       │   └── 897891-Lucas_Junio_Quirino_Teixeira.zip
│   │       ├── entrega_G05
│   │       │   ├── 897891-Lucas_Junio_Quirino_Teixeira
│   │       │   │   ├── Guia_0501_saida.txt
│   │       │   │   ├── Guia_0501.v
│   │       │   │   ├── Guia_0502_saida.txt
│   │       │   │   ├── Guia_0502.v
│   │       │   │   ├── Guia_0503_saida.txt
│   │       │   │   ├── Guia_0503.v
│   │       │   │   ├── Guia_0504_saida.txt
│   │       │   │   ├── Guia_0504.v
│   │       │   │   ├── Guia_0505_saida.txt
│   │       │   │   ├── Guia_0505.v
│   │       │   │   ├── Guia_0506_saida.txt
│   │       │   │   ├── Guia_0506.v
│   │       │   │   ├── Guia_05.circ
│   │       │   │   └── Guia_05.txt
│   │       │   ├── 897891-Lucas_Junio_Quirino_Teixeira.zip
│   │       │   ├── Guia_0601_saida.txt
│   │       │   ├── Guia_0602_saida.txt
│   │       │   ├── Guia_0603_saida.txt
│   │       │   ├── Guia_0604_saida.txt
│   │       │   ├── Guia_0605_saida.txt
│   │       │   └── Guia_0606_saida.txt
│   │       ├── entrega_G06
│   │       │   ├── 897891-Lucas_Junio_Quirino_Teixeira
│   │       │   │   ├── Guia_0601_saida.txt
│   │       │   │   ├── Guia_0601.v
│   │       │   │   ├── Guia_0602_saida.txt
│   │       │   │   ├── Guia_0602.v
│   │       │   │   ├── Guia_0603_saida.txt
│   │       │   │   ├── Guia_0603.v
│   │       │   │   ├── Guia_0604_saida.txt
│   │       │   │   ├── Guia_0604.v
│   │       │   │   ├── Guia_0605_saida.txt
│   │       │   │   ├── Guia_0605.v
│   │       │   │   ├── Guia_0606_saida.txt
│   │       │   │   ├── Guia_0606.v
│   │       │   │   ├── Guia_06.circ
│   │       │   │   └── Guia_06.txt
│   │       │   └── 897891-Lucas_Junio_Quirino_Teixeira.zip
│   │       └── entrega_G07
│   │           ├── 897891-Lucas_Junio_Quirino_Teixeira
│   │           │   ├── Guia_0701_saida.txt
│   │           │   ├── Guia_0701.v
│   │           │   ├── Guia_0702_saida.txt
│   │           │   ├── Guia_0702.v
│   │           │   ├── Guia_0703_saida.txt
│   │           │   ├── Guia_0703.v
│   │           │   ├── Guia_0704_saida.txt
│   │           │   ├── Guia_0704.v
│   │           │   ├── Guia_0705_saida.txt
│   │           │   ├── Guia_0705.v
│   │           │   ├── Guia_07.circ
│   │           │   └── Guia_07.txt
│   │           └── 897891-Lucas_Junio_Quirino_Teixeira.zip
│   └── REFERENCIAS_CIRC
│       ├── 01_VALIDADOS
│       │   ├── Guia_04.circ
│       │   ├── Guia_05.circ
│       │   ├── Guia_06.circ
│       │   └── Guia_07.circ
│       ├── 02_ABREM_NAO_VALIDADOS
│       │   ├── Guia_08.circ
│       │   ├── Guia_08_final_estrutura(1).circ
│       │   └── Guia_08_final_estrutura.circ
│       └── 03_COM_PROBLEMA
│           ├── Guia_08.circ
│           ├── Guia_08_Logisim.circ
│           ├── Guia_08_montado.circ
│           └── Guia_08_SomadorCompleto_Logisim.circ
├── .gitignore
├── ORGANIZACAO_ANTES.md
└── README.md

132 directories, 1457 files
```
