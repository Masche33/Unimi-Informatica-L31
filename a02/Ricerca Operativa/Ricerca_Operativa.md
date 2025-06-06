---
title: Ricerca Operativa
author: Matteo Mascherpa
date: a.a 2024-2025
lang: it-IT
geometry: margin=2.5cm
toc: true
toc-depth: 2
numbersections: true
secnumdepth: 3
header-includes: |
    \usepackage{fancyhdr}
    \pagestyle{fancy}
    \usepackage{tcolorbox}
    \tcbuselibrary{breakable}
    \usepackage{booktabs}
    \usepackage{array}
    \usepackage{tikz}
    \usetikzlibrary{calc}
    \usepackage{subcaption}
    \usepackage{amsmath}
    \usepackage{amssymb}
    \usepackage{graphicx}
    \usepackage{pgfplots}
    \usepackage{float}
    \usepackage{mathtools}

    \pgfplotsset{compat=1.16}



---

```{=latex}
\vspace{2em}
\newpage
```

# Introduzione

$\quad$Con lo scalare improvviso delle imprese della rivoluzione industriale è diventata preponderante la necessità di allocare al meglio le risorse disponibili. Spesso se un'operazione cresce velocemente è facile che ogni compartimento diventi un'entità a sé stante rendendo complessa la gestione. Da questa necessità è emersa la \textit{Ricerca operativa} che è maturata ed è stata sfruttata per la prima volta nella seconda guerra mondiale. Servì per allocare nel miglior modo le poche risorse inglesi per evitare di soccombere ai tedeschi. Con l'avvenire dei computer poi questa materia ha avuto una spinta che la ha portata alla situazione attuale.

## Attributi di una decisione

$\quad$Una buona decisione è carattericcata da:

1. ***Efficace***: Raggiunge lo scopo prefissato.
2. ***Efficente***: Nel raggiungere lo scopo prefissato lo fa in modo da sprecare meno risorse possibile.
3. ***Tempestiva***: Viene attuata in un arco di tempo coerente con l'orizzonte degli eventi prefissato(strategico(immediato), tattico(medio peridio), operativo(a lungo periodo)).
4. ***Robusta***: Rimane la una buona scelta anche in caso in caso di variazioni trascurabili.
5. ***Giustificabile***: Se si ha il compito di spiegare il motivo della decisione si può fare senza dover usare sotterfugi e depistaggi.

# Panoramica all'approccio della modellazione

$\quad$Nonostante la parte più preponderante della materia sia composta da metodi matematici non si deve dimenticare che una parte dello sforzo è la *raccolta dei dati*.

Un riassunto delle varie fasi di uno studio sono:

1. Definire il problema e ottenere i dati.
2. Formulare il modello matematico che rappresenti il problema.
3. Sviluppare la procedura per derivare la soluzione del problema dal modello.
4. Test, miglioramento, rifinitura fino a quando si è soddisfatti.
5. Preparare l'applicazione operativa della soluzione.
6. Implementazione della soluzione trovata.

## Definire il problema

$\quad$Solitamente il problema da risolvere è descritto in termini vaghi, va quindi trovato un modo per formalizzarlo. Solitamente, non si deve dare la "soluzione" ma un insieme di diverse alternative dove il cliente sceglierà quella che più lo aggrada in base a quale soluzione lo attrae di più(Alcuni potrebbero volere una estrema rapidità altri una maggiore robustezza). Per prima cosa si deve discernere i **principi fondamentali**, che saranno quelli che guideranno la scelta finale. Generalmente per le imprese i punti salienti sono: *Proprietario, Imppiegati, Clienti, Fornitori, Governo/nazione*.

## Formulo il modello matematico

$\quad$Il modello matematico sono versioni idealizzate della realtà per una più facile lavorazione. Esso è composto da ***variabili decisionali***, $(x_1,\dots,x_n)$ che rappresentano i valori come valori determinati. Le misure delle prestazioni con le ***funzioni obiettivo*** espresse come funzioni aritmetiche, $(P=3x_1+2x_2+\dots+mx_n)$. Ci sono anche modi per avere delle restrizioni, chiamate ***vincoli***, espresse come equazioni, $(3x_1+2x_2+\dots+mx_n<10)$. Le costanti del modello vengono chiamate ***parametro del modello***. Solitamente, per motivo di incertezza, i parametri non sono altro che grezze stime, concetto a cui ci si riferisce come ***sensitività d'analisi***. Una volta modellato il problema esso non diventa altro che un problema di programmazione lineare. Bisogna evitare però di creare un modello insoddisfaciibile essendo il modello astratto e idealizzato ma con un utilizzo concreto. Un criterio per giudicare un modello è la relativa correttezza in base alle scelte prese. Nello sviluppo del modello è buona pratica da cominciare da un nucleo ristretto e arricchirlo, questo processo si chiama ***arricchimento del modello***. In caso gli obiettivi fossero molteplici essi vengono trasformati in una misura composita chiamata: ***Misura globale delle prestazioni***.

## Sviluppare la procedura

$\quad$Solitamente un passo semplice dove applicare al modello sviluppato precedentemente un *algoritmo standard*, la parte più complessa è l'*analisi postottimale*. Gli algoritmi infatti restituiscono la soluzione *ottime* per il modello dato, il problema è che il modello dato essendo un astrazione può quasi sempre essere migliorato per ottenere una nuova soluzione migliore. **Herbert Simon**, nobel per l'economia, ha definito "*satisficing*" (*soddisfacente*) la tendenza dei manager a cercare una soluzione "*abbastanza buona*" e non per forza ottima. Bisogna, nella modifica del modello porre attenzione alla *sensitività delle analisi*, cioè determinare quale parametro modifica considerevomente la soluzione e la sposta di più verso un obiettivo che più si confà alla realtà del problema.

## Test, Miglioramento, e rifinatura

$\quad$Essendo i casi della realtà, al contrario degli esempi didattici, enormi è delirante aspettarsi che la prima soluzione trovata sia quella che alla fine si andrà ad attuare. Per questo esiste questa fase dove il modello viene messo sotto stress fino ad arrivare ad un livello soddisfacente. Non ci si può neanche aspettare di arrivare alla versione perfetta, si punta perciò alla minimizzazione dei bachi. Questo processo si chiama **validazione del modello**. Visto l'ammontare di tempo speso nelle fasi precedenti è facile trascurare, per dimenticanza, vari dettagli. Per questo è spesso consigliato che a questo processo venga aggiunto nel team un elemento totalmente avulso dal progetto. Tra gli errori più frequenti ci sono gli errori di incosistenze nelle unità dei valori, *consistenza dimensionale*. Un approccio sistematico è il *test a retrospettiva*. Ciò consiste nell'utilizzo di dati passati per ricostruire vecchi scenari simili e determinare la risposta del modello. Lo svantaggio è che i dati usati per i test sono gli stessi usati per creare il modello quindi non i migliori per trovare le falle.

## Preparazione dell'applicazione

$\quad$Una volta testato il modello ed essere arrivati ad una versione da adottare allora si deve creare una documentazione estesa che spieghi ogni dettaglio del modello. Il sistema che verrà creato sarà quasi certamente informatizzato. In questa fase si creano le *basi di dati* e *sistemi di gestione delle informazioni*. In caso le decisioni da prendere siano interattive si crea un *sistema di supporto alle decisioni* in modo da avere un rapido accesso alle possibili migliori decisioni.

## Implementazione

$\quad$La fase critica in cui le scelte prese in precedenza vanno, finalmente, attuate nel modo più accurato possibile al modello ricavato dai mesi di lavoro. Tasselli importanti nell'applicazione sono la comunicazione tra reparti. se tutto viene svolto in cordinazione tra i vari capi reparto il modello potrà essere utilizzato per anni, per questo è importante un riscontro costante per potere avere aggiustamenti minori che vanno documentati e motivati. Grazie a questo si potrà andare avanti fino a quando non cambieranno le necessità che il modello soddisfaceva.

# Programmazione Lineare

$\quad$In breve l'applicazione più comune per la programmazione lineare è l'allocazione di *risorse limitate*. La *programmazione lineare* usa modelli matematici, dove lineare indica che le funzioni utilizzate devono essere lineari. Un metodo efficente per trovare la soluzione è l'**algoritmo del simplesso**.

## Prototipo Esempio

### Il problema

$\quad$Il problema è così formulato:

```{=latex}
\begin{tcolorbox}[
    colback=lightgray,
    colframe=black,
    coltext=black,
    title={\fontsize{13}{15}\selectfont Problema di PL Schiopparelli \& Co},
    colbacktitle=black,
    coltitle=white,
    breakable
  ]
  Schiopparelli \& CO produce vetri di alta qualità e ha $3$ stabilimenti. Lo scopo è massimizzare il guadagno bilanciando la quantità dei vari prodotti.
  \begin{itemize}
    \item \textbf{Stabilimento 1:} Crea gli infissi in alluminio.
    \item \textbf{Stabilimento 2/3:} Creano e assemblano le fenistre.
  \end{itemize}
  I prodotti sono:
  \begin{itemize}
    \item \textbf{Portafinistra:} Alta $2,4m$ con infissi in alluminio.\\  \hspace*{5mm} Necessita \textit{Stabilimento 1 e 3}
    \item \textbf{Doppia finestra:} $1,2m$ x $1,8m$ con infissi in legno.\\  \hspace*{5mm} Necessita \textit{Stabilimento 2 e 3}
  \end{itemize}
  I dati necessari:
  \begin{itemize}
    \item Numero di ore di lavoro disponibili a settimana in ogni stabilimento per ogni prodotto.
    \item Numero di ore necessarie per assemblare ogni prodotto.
    \item Profitto per ogni insieme di prodotti
  \end{itemize}

  \textbf{Modello risultante}: \\ \\
  \begin{tabular}{cccc}
    \toprule
                                & \multicolumn{2}{c}{\textbf{Tempi di produzione per lotto}} &                                                                          \\
    \cmidrule(lr){2-3}
    \textbf{Stabilimento}       & \textbf{Prod. 1}                                           & \textbf{Prod. 2} & \parbox{1.5in}{\textbf{Produzione a settimana ($h$)}} \\
    \midrule
    1                           & 1                                                          & 0                & 4                                                     \\
    2                           & 0                                                          & 2                & 12                                                    \\
    3                           & 3                                                          & 2                & 18                                                    \\
    \midrule
    \textbf{Profitto per lotto} & \$3,000                                                    & \$5,000          &                                                       \\
    \bottomrule
  \end{tabular}
\end{tcolorbox}
```


### Formulazione per la programmazione lineare

Il modello allora per il problema.

$$
  \begin{cases}
    x_1 = \text{N° lotti prod. 1 per settimana}                 \\
    x_2 = \text{N° lotti prod. 2 per settimana}                 \\
    Z = \text{Profitto totale per settimana(in migliaia di \$)} \\
  \end{cases}
$$

$\quad$Quindi $x_1$,$x_2$ sono *variabili decisionali* del modello. Dalla tabella precedente si ottiene $Z = 3x_1+tx_2$. L'obiettivo è trovare i valori $x_1$,$x_2$ tale che $Z$ abbia il valore massimo. Introduciamo ora i vincoli degli orari dei vari stabilimenti. Lo stabilimento 1: $x_1\le4$, stabilimento 2: $2x_2\le12$, stabilimento 3: $3x_1+2x_2\le18$, e infine i *limiti di positività*. Si arriva quindi al sistema:

$$ \text{Modello}=
  \begin{cases}
    x_1 \le 4          \\
    2x_2 \le 12        \\
    3x_1 + 2x_2 \le 18 \\
    x_1 \ge 0          \\
    x_2 \ge 0          \\
    Z = 3x_1 + 5x_2
  \end{cases}
$$

## Soluzione dei grafici

$\quad$Avendo questo problema due *variabili decisionali* su può usare un grafico bidimensionale. Analazziamo la soluzione passo passo. In *blu* ci sono i vincoli di positività $x_1\ge0$, $x_2\ge0$. In *rosso* il inseriamo i vincoli $x_1\le4$ e $2x_2\le12$ e $3x_1+2x_2\le18$. In *verde* l'area delle possibili soluzioni. Si arriva quindi al punto di scegliere un punto che massimizzi $Z=3x_1+5x_2$. Da qui si avanza con il metodo *trial and error* prendendo un valore arbitrario.

```{=latex}
\begin{figure}[ht]
  \centering
  \begin{subfigure}[b]{0.45\textwidth}
    \begin{tikzpicture}
      \begin{axis}[
          xlabel={$x_1$},
          ylabel={$x_2$},
          grid=major,
          axis lines=left,
          xmin=0, xmax=5,
          ymin=0, ymax=10,
          title={Soluzione grafica}
        ]

        %Primo punto
        \draw[blue] (axis cs:0,0) -- (axis cs:0,10);
        \addplot[blue, domain=0:10, samples=100] {0};
        %Secondo punto
        \draw[red] (axis cs:4,0) -- (axis cs:4,10) node[pos=0.8, above, rotate=90] {\textcolor{blue}{$x_1\le4$}};
        \addplot[red, domain=0:10, samples=10] {6} node[pos=0.1, above] {\textcolor{blue}{$2x_2\le18$}};
        \addplot[red, domain=0:10, samples=10] {-3/2*x+9} node[pos=0.4, above, rotate=-33]{\textcolor{blue}{$3x_1+2x_2\le18$}};

        %Terzo punto

        \coordinate (A) at (axis cs:0,0);
        \coordinate (B) at (axis cs:0,6);
        \coordinate (C) at (axis cs:2,6);
        \coordinate (D) at (axis cs:4,3);
        \coordinate (E) at (axis cs:4,0);

        \fill[green, opacity=0.5] (A) -- (B) -- (C) -- (D) -- (E) -- cycle;
        \draw[green, thick] (A) -- (B) -- (C) -- (D) -- (E) -- cycle;
      \end{axis}
    \end{tikzpicture}
    \caption{Soluzione grafica}
  \end{subfigure}
  \quad
  \begin{subfigure}[b]{0.45\textwidth}
    \begin{tikzpicture}
      \begin{axis}[
          xlabel={$x_1$},
          ylabel={$x_2$},
          grid=major,
          axis lines=left,
          xmin=0, xmax=6,
          ymin=0, ymax=10,
          title={Possibili soluzioni}
        ]
        \addplot[red, domain=0:10, samples=10] {-3/5*x+36/5} node[pos=0.2, above, rotate=-15]{\textcolor{blue}{$Z=36=3x_1+5x_2$}};
        \addplot[red, domain=0:10, samples=10] {-3/5*x+20/5} node[pos=0.2, above, rotate=-15]{\textcolor{blue}{$Z=20=3x_1+5x_2$}};
        \addplot[red, domain=0:10, samples=10] {-3/5*x+10/5} node[pos=0.2, above, rotate=-15]{\textcolor{blue}{$Z=10=3x_1+5x_2$}};



        \coordinate (A) at (axis cs:0,0);
        \coordinate (B) at (axis cs:0,6);
        \coordinate (C) at (axis cs:2,6);
        \coordinate (D) at (axis cs:4,3);
        \coordinate (E) at (axis cs:4,0);

        \fill[green, opacity=0.1] (A) -- (B) -- (C) -- (D) -- (E) -- cycle;
        \draw[green, thick] (A) -- (B) -- (C) -- (D) -- (E) -- cycle;

      \end{axis}
    \end{tikzpicture}
    \caption{Possibili soluzioni}
  \end{subfigure}

\end{figure}
```


$\quad$Si noti nel grafico a sinistra che tutte le rette sono parallele, infatti sono tutte forme di una funzione chiamata **slope-intercept form**, in questo caso è $x_2=-\frac{3}{5}x_1+\frac{1}{5}Z$. Nel grafico a destra si può vedere che la soluzione massima sia $(x_1=2,x_2=6)$ portando $Z=36$.

```{=latex}
\begin{tcolorbox}[
    colback=lightgray,
    colframe=black,
    coltext=black,
    title=ATTENZIONE,
    colbacktitle=black,
    coltitle=lightgray,
    breakable
  ]
  Nell'esempio fornito si può utilizzare un piano per la scaristà di parametri, ma con il crescere del numero di parametri cresce il numero di dimensioni del grafico. In caso la regione ammissibile diventa un poliedro che può essere: vuoto in caso non esistano soluzioni ammissibili, illimitato in caso in almeno una dimensione non esiste il valore ottimo. Esiste poi un almeno un vertice di tale poliedro che corrisponde ad un valore ottimo. In ogni caso il poliedro è convesso.
\end{tcolorbox}
```

## Modello di programmazione lineare

$\quad$Abbiamo visto come trovare la soluzione graficamente, ora vediamo l'approccio di programmazione lineare. Cominciamo ora con termini necessari e notazione. *Risorse e attività, dove $m$ indica il numero di risorse utilizzabili e $n$ il numero di attività considerate. Lo scopo in questo caso è trovare i livelli delle attività per avere la migliore prestazione globale. Di seguito la lista di simboli e il grafico generici per la programmazione lineare.

- $Z$: Valore totale delle prestazioni.
- $x_j$: Livello dell'attività $j\in[1,n]$.
- $c_j$: Incremento in $Z$ per ogni incremento unitario dell'attività $j$.
- $b_i$: Ammontare delle risorse $i$ disponibili per l'attività. $i\in[1,m]$.
- $a_{ij}$: Valore della risorsa $i$ consumata da ogni unità di attività $j$.


```{=latex}
\centering
    \includegraphics[width=300px, height=100px]{./photos/Modello_Prog_Lineare.png}

```

```{=latex}
\raggedright

```

## Forma standard del modello


Dalla tabella precedente si deriva il modello generale(**forma standard**) dal quale si può derivare il modello per il problema che abbia già risolto graficamente.

### Modello generale

$$
\begin{cases}
    \begin{rcases}
      Z = c_1x_1 + \dots + c_nx_n \hspace{1.75cm}
    \end{rcases} \text{Funzione obiettivo, da massimizzare} \\
    \begin{rcases}
      a_{11}x_1 + a_{12}+\dots + a_{1n}x_n \le b_1 \\
      a_{21}x_1 + a_{22}+\dots + a_{2n}x_n \le b_2 \\
      \vdots                                       \\
      a_{m1}x_1 + a_{m2}+\dots + a_{mn}x_n \le b_m \\
    \end{rcases} \text{Vincoli funzionali}            \\
    \begin{rcases}
      x_1\ge0 \\
      \vdots  \\
      x_n \ge 0 \hspace{4.10cm}
    \end{rcases} \text{Vincoli di non negatività}
  \end{cases}
$$

```{=latex}
\begin{tcolorbox}[
    colback=lightgray,
    colframe=black,
    coltext=black,
    title={\fontsize{13}{15}\selectfont Versioni Alternative},
    colbacktitle=black,
    coltitle=white,
    breakable
  ]
  \begin{itemize}
    \item Minimizzare la \textit{funzione obiettivo}.
    \item Rivoltare i \textit{vincoli funzionali} in modo da avere $\ge$.
    \item Porre un \textit{vincolo funzionale} a un ugualianza.
    \item Eliminare \textit{vincoli di non negatività}.
  \end{itemize}
\end{tcolorbox}
```
### Soluzione del modello

$\quad$Il termine è utilizzato per indicare il metodo di soluzione del modello. Una **soluzione accettabile** è una soluzione dove tutti vincoli sono soddisfatti. Una **soluzione inaccettabile** è una soluzione dove almeno un vincolo non è soddisfatto. La **regione accettabile** è l'insieme di tutte le possibili soluzioni. La **soluzione ottima** è la soluzione accettabile più favorevole alla funzione obiettivo. É possibile che non esista una soluzione. La maggior parte dei modelli ha una soluzione ottima, ma non è impossibile che ne esistano più di una. Potrebbe accadere che non esistano soluzioni ottimali, che succede in caso non esista una soluzione accettabile o se i limiti non prevengono la funzione obiettivo($Z$), al secondo caso ci si riferisce come $Z$ **svincolata** o **obiettivo svincolato**. Una soluzione che si trova a un angolo della regione accettabile si chiama **soluzione accettabile ad angolo**, (CPF).

```{=latex}

\begin{tikzpicture}
  \begin{axis}[
      xlabel={$x_1$},
      ylabel={$x_2$},
      grid=major,
      axis lines=left,
      xmin=0, xmax=6,
      ymin=0, ymax=10,
      title={Possibili soluzioni}
    ]
    \coordinate (A) at (axis cs:0,0);
    \coordinate (B) at (axis cs:0,6);
    \coordinate (C) at (axis cs:2,6);
    \coordinate (D) at (axis cs:4,3);
    \coordinate (E) at (axis cs:4,0);

    \fill[gray, opacity=0.5] (A) -- (B) -- (C) -- (D) -- (E) -- cycle;
    \draw[black, thick] (A) -- (B) -- (C) -- (D) -- (E) -- cycle;
    \draw[opacity=0](1,1) -- (3,3) node[pos=0.5, above, opacity=1]{Regione accettabile};
  \end{axis}
\end{tikzpicture}
```

## Soluzione aritmetica del modello

$\quad$Metodo per risolvere il modello evitando di utilizzare il grafico. Si parte quindi dal *modello lineare* per portarlo in forma standard e poi risolverlo. Per portare il modello in forma standard tutti i vincoli di *disuguaglianza* devono essere trasformati in *vincoli di ugualianza* e la funzione obiettivo $Z$ vengono poste in forma di minizzazione. 

$\quad$Per poter portare ogni vincolo di *disuguaglianza* ad un vincolo di *ugualianza* si aggiunge una variabile di *slack* per ogni vincolo in gorma di disuguaglianza.


$$
  \begin{cases}
    Z = x_1 + 3x_2 - 3x_3     \\
    -3x_1 + 2x_2 - 2x_3 \le 9 \\
    -4x_1 - 3x_2 + 3x_3 \le 8 \\
    x_1 \ge 0,
    x_2 \ge 0,
    x_3 \ge 0
  \end{cases}
  \to
  \begin{cases}
    Z = x_1 + 3x_2 - 3x_3                         \\
    -3x_1 + 2x_2 - 2x_3 \textcolor{red}{+x_4 =} 9 \\
    -4x_1 - 3x_2 + 3x_3 \textcolor{red}{+x_5 =} 8 \\
    x_1 \ge 0,
    x_2 \ge 0,
    x_3 \ge 0                                     \\
    \textcolor{red}{x_4 \ge 0, x_5 \ge 0}
  \end{cases}
$$

$\quad$Si passa così da un sistema da $m$ vincoli e $n$ variabili ad un modello con $m$ vincoli e $n+m$ variabili. Si rimane quindi con una matrice che, a meno di vincoli ridondanti, ha *Rango* $m$. Il sistema ha una soluzione univoca se eliminando gli $n$ gradi di libertà usando $n$ variabili.

```{=latex}

\begin{tcolorbox}[
    colback=lightgray,
    colframe=black,
    coltext=black,
    title=Teorema di Rouché Capelli,
    colbacktitle=black,
    coltitle=lightgray,
    breakable
  ]
  Data una matrice in forma $A'=[A|b]$ dove $A$ è una matrice $m\ x\ n$ e $b$ un vettore di $n$ elementi allora:
  \begin{enumerate}
    \item Se il sistema è risolubile la soluzione è unica se, e solo se, $r(A')=k$ dove $k$ è il numero di incognite del sistema.
    \item Se il sistema è risolubile si hanno $\infty^j$ soluzioni($j$ gradi di infinito) se, e solo se, $j=k-r(A')$.
  \end{enumerate}
\end{tcolorbox}
```

$\quad$La soluzione poi si trova estrapolando la base($B$) dal modello dove il resto del modello lo chiamiamo $N$. Il modello allora lo si può riscrivere in forma $[B|N]$. Riscrivo quindi il modello nella forma $B_{x_B}+N_{x_N}=b$ dove $x_B$ e $x_N$ sono le soluzioni del sistema. La soluzione si ottiene dopo aver posto a $0$ tutte le $n$ variabili che non appartengono a $B$. Per farlo si inverte la matrice $B$, quindi si ottiene: $x_B=B^{-1}b-B^{-1}N_{X_N}$ da qui si comprende il motivo di porre $X_N$ a $0$ visto che la soluzione è:$X_N=0, X_B = B^{-1}b$.

### Degenerazione del modello

La degenerazione si ottiene quando si pone a $0$ un parametro interno alla base $B$. Questo porta ad avere più soluzioni basiche decidibili.

### Teorema fondamentale della PL

Dato il problema lineare in forma standard
$$Z=\text{min}\{c^Tx:Ax=b, \ge 0 \}$$

con $A|r(A)=m$

- Se esiste una *soluzione ammissibile* esiste anche una soluzione di base.
- Se esiste una *soluzione ottima* esiste una soluzione ottima di base.

## Assunzioni sulla programmazione lineare

### Proporzionalità

Il contributo di ogni attività al \textit{valore della funzione obiettivo $Z$} è proporzionale al livello dell'attività $x_j$ rappresentata da $c_jx_j$ in $Z$. Come il contributo nei vincoli funzionali è proporzionale al livello di $x_j$ rappresentato da prodotto $a_{ij}x_j$. L'assunzione dice dunque esclude ogni esponente diverso da quello neutro$(1)$ per ogni variabile nel modello lineare.

### Addività

Ogni funzione nel modello lineare è la somma dei contributi individuali delle rispettive attività.

### Divisilibilità

Le variabili di decisione in un modello di programmazione lineare possono avere un qualsiasi valore, (anche non interi) per soddisfare i vincoli. Quindi i valori non sono obbligatoriamente interi, quindi un attività può essere svolta a livelli frazionati.

### Certezza

Il valore assegnato ad ogni parametro si assume sia una costante conosciuta.

# Risolvere i problemi di PL con l'algoritmo del simplesso:

Arrivati a questo punti si deve introdurre l'*algoritmo del simplesso* una procedura generale per risolvere problemi di programmazione lineare sviluppato da **George Dantzig** nel 1947.

## Il concetto

```{=latex}
\centering
    \includegraphics[width=500px, height=200px]{./photos/Soluzione_grafica.png}
```

```{=latex}
\raggedright
```

$\quad$Si noti come i punti evidenziati(CFP) non siano altro che l'intersezione di due \textit{vincoli}, alcuni sono al limitare e altri no, rispettivamente quelli \textit{verdi} e quelli \textit{rossi}, se ora questa affermazione lascia il tempo che trova più tardi sarà importante.


```{=latex}
\begin{tcolorbox}[
    colback=lightgray,
    colframe=black,
    coltext=black,
    title=Definizione del simplesso,
    colbacktitle=black,
    coltitle=lightgray,
    breakable
  ]
  Per ogni problema lineare con $n$ variabili di decisione due CPF sono \textit{adiacenti} se condividono $n-1$ vincoli. Due CPF adiacenti sono uniti da un segmento sulle dimensioni dei vincoli condivisi. Ci si riferisce a questo segmento come: \textbf{Spigolo} della regione accettabile.
\end{tcolorbox}
```

Per la soluzione si usa il **test di ottimalità**:

```{=latex}

\begin{tcolorbox}[
    colback=lightgray,
    colframe=black,
    coltext=black,
    title=Test di ottimalità,
    colbacktitle=black,
    coltitle=lightgray,
    breakable
  ]
  Considerando un qualsiasi problema di programmazione lineare che possiede almeno una soluzione ottimale. Se una soluzione CPF non ha \textit{adiacenze} migliori allora quella soluzione è la soluzione migliore.
\end{tcolorbox}


\begin{tcolorbox}[
    colback=lightgray,
    colframe=black,
    coltext=black,
    title=Test di illimitatezza,
    colbacktitle=black,
    coltitle=lightgray,
    breakable
  ]
  Si dice illimitato un problema se non esistono candidati pivot su una colonna con costo ridotto negativo.
\end{tcolorbox}
```

### Algoritmo

```{=latex}
\begin{tcolorbox}[
    colback=lightgray,
    colframe=black,
    coltext=black,
    title=Algoritmo del simplesso,
    colbacktitle=black,
    coltitle=lightgray,
    breakable
  ]
  while ($\lnot$ inaccettabile(b,c))$\land$ ($\lnot$ Baseaccettabile(b)) do\\
  Pivot(A,b,c)\\
  if(inaccettabile(b,c)) then\\
  Stop: Problema inammissibile\\
  else\\
  while($\lnot$ Ottimale(c))$\land$ ($\lnot$ Illimitato(A,c)) do\\
  Pivot(A,b,c)\\
  if(Ottimale(c)) then\\
  Stop: Soluzione ottima\\
  else\\
  Stop: Problema illimitato\\
\end{tcolorbox}

```

## Variabili artificiali:

$\quad$Dato un modello di programmazione lineare in forma standard con $n$ variabili e $m$ vincoli nella forma: $Z=$min$\{C^Tx:Ax=b\}$. Si può introdurre una variabile artificiale $u_i\ge0\ \forall i \in [1,m]$. Così si ottiene il problema artificiale $Z^a=$min\{$e^Tu:Ax+Iu=b$\} con $e^T=[1,\dots,1]$. Si può dimostrare che il problema $Z^a\cong Z$ ma la differenza fondamentale è che trovare una base iniziale in $Z^a$ è estremamente semplice e da lì si può risolvere il modello tramite l'algoritmo del simplesso. Infatti con la sostituzione $u_i=b_i-\sum_{j=1}^{n}a_{ij}x_j$ si ottiene una riga del \textit{tablue} con una riga tutta uguale a zero. Si arriva quindi a una soluzione iniziale dove $x=0$ e $u=b$ ma ammissibile. Si è trovata una soluzione ottimale se si trova $Z^a=0$ altrimenti $Z$ è inammissibile.

### Evitare $m$ passi per rendere non basiche $m$ variabili

Per evitare gli $m$ passi si possono usare dele variabili di slack.
$$
  \begin{cases}
    \text{Min} (Z=\sum_{j=1}^{n}c_jx_j)              \\
    \sum_{j=1}^{n}a_{ij}x_j\ge b_i \forall i \in I_1 \\
    \sum_{j=1}^{n}a_{ij}x_j\le b_i \forall i \in I_2 \\
    \sum_{j=1}^{n}a_{ij}x_j = b_i \forall i \in I_3  \\
    x\ge 0
  \end{cases}
  \to
  \begin{cases}
    \text{Min} (Z=\sum_{j=1}^{n}c_jx_j)                                         \\
    \sum_{j=1}^{n}a_{ij}x_j+\textcolor{red}{\hat{x_i}}\ge b_i \forall i \in I_1 \\
    \sum_{j=1}^{n}a_{ij}x_j-\textcolor{red}{\hat{x_i}}\le b_i \forall i \in I_2 \\
    \sum_{j=1}^{n}a_{ij}x_j = b_i \forall i \in I_3                             \\
    x, \hat{x} \ge 0
  \end{cases}
$$
$\quad$Le variabili $\hat{x_i}$ per $i \in I_1$ soddisfano la prima condizione della forma canonica. Invece sia $h\in I_2|h=\text{max}_{i\in I_2} {b_i}$ sottraendo ogni riga nella forma $\le$ si ottengono i vincoli equivalenti con termine noto non-negativo e variabile $\hat{x_i}$. Si necessita quindi di inserire variabili artificiali soòo per il vincolo $h$ e per i vincoli in $I_3$.

### Metodo "*Big M*"

$\quad$Al posti di eliminare dal problema il problema delle varibiali aritificiali $x$ è possibile le variabili $u$ e penalizzarle. Si risolve il problema $Z^a=\text{min}(c^Tx+w^Tu:Ax+Iu=b)|w^T=[M,\dots,M]$ sia un vettore di coefficenti abbastanza grandi in modo che ogni soluzione con $u_i$ sia penalizzata a tal punto da rendere favorevoli solo le soluzioni influenzate da $c^T$ cioè quelle che appartengono anche a $Z$ originale.

### Balinsky-Gomery

$\quad$Quest'algoritmo trascura temporaneamente la funzione obiettivo e minimizza l'inammissibilità del vincolo violato finché si trova una base ammissibile o si scopre che il problema è inammissibile.

## Risolvere il problema d'esempio:

```{=latex}
\newcommand*\circled[1]{\tikz[baseline=(char.base)]{
            \node[shape=circle,draw,inner sep=1pt] (char) {#1};}}
\definecolor{darkgreen}{rgb}{0.0, 0.56, 0.22}


\begin{minipage}{0.55\textwidth}
  Dato che nel nostro problema $n=2$ i CPF adiacenti devono condividere un vincolo.
\end{minipage}
\hfill
\begin{minipage}{0.30\textwidth}
  \begin{tabular}{|c|c|}
    \hline
    \textbf{CPF} & \textbf{Adiacenze} \\
    \hline
    $(0,0)$      & $(0,6),(4,0)$      \\
    $(0,6)$      & $(2,6),(0,0)$      \\
    $(2,6)$      & $(4,3),(0,6)$      \\
    $(4,3)$      & $(4,0),(2,6)$      \\
    $(4,0)$      & $(0,0),(4,3)$      \\
    \hline
  \end{tabular}
\end{minipage}


\begin{tcolorbox}[
    colback=lightgray,
    colframe=black,
    coltext=black,
    title=Esempio di algoritmo del simplesso,
    colbacktitle=black,
    coltitle=lightgray,
    breakable
  ]
  \textbf{Inizializzazione}: \\
  Prendo $(0,0)$ come soluzione CPF da esaminare, non c'è un vero e proprio criterio per scegliere in questo caso era solo il più semplice. \\
  \circled{1}\textbf{Test di ottimalità}: \\
  \textcolor{red}{Fallito}, non è ottimale, esiste una soluzione migliore adiacente. \\
  \textbf{Iterazione 1:}
  Mi muovo verso $(0,6)$ usando i seguenti step.
  \begin{enumerate}
    \item Considero(nella tabella) i due CPF adiacenti $(0,6)$ e $(4,0)$, da cui vien fuori: $(0,6): Z=3\cdot 0 + 6 \cdot 5 = 30$ e $(4,0): Z=3 \cdot 4 + 5 \cdot 0 = 12$. Ora prendo il valore che massimizza $Z$, quindi $(0,6)$ mi muoverò nella direzione di $x_2$ fino a trovare il primo CPF.
    \item Mi fermo all'incontrare primo vincolo incontrato: $2x_2 \le 12$ per evitare di uscire dalla \textit{regione accettabile}.
    \item Risolvo l'intersezione del nuovo insieme di vincoli.
  \end{enumerate}

  \circled{2}\textbf{Test di ottimalità}: \\
  \textcolor{red}{Fallito}, non è ottimale, esiste una soluzione migliore adiacente. \\

  \textbf{Iterazione 2:}
  Mi muovo verso $(2,6)$ usando i seguenti step.
  \begin{enumerate}
    \item Considero(nella tabella) i due CPF adiacenti $(2,6)$ e $(0,0)$, da cui vien fuori: $(0,0): Z=3\cdot 0 + 6 \cdot 0 = 0$ e $(2,6): Z=3 \cdot 2 + 5 \cdot 6 = 36$. Ora prendo il valore che massimizza $Z$, quindi $(2,6)$ mi muoverò nella direzione di $x_1$ fino a trovare il primo CPF.
    \item Mi fermo all'incontrare primo vincolo incontrato: $3x_1+2x_2\le18$ per evitare di uscire dalla \textit{regione accettabile}.
    \item Risolvo l'intersezione del nuovo insieme di vincoli.
  \end{enumerate}

  \circled{3}\textbf{Test di ottimalità}: \\
  \textcolor{darkgreen}{Passato}, è ottimale, non esiste una soluzione migliore adiacente. Ho trovato la soluzione migliore.\\

\end{tcolorbox}
```

### Concetti della soluzione:

1. Il simplesso si concentra esclusivamnete sui CPF perché se esite una soluzione migliore ne esiste una che coincide con un CPF.
2. Il simplesso è algoritmo \textit{iterativo}.
```{=latex}
\centering
    \includegraphics[width=400px, height=100px]{./photos/Iterazione.png}
```

```{=latex}
\raggedright
```
3. Se possibile per l'inizializzazione si sceglie l'origine in modo da eliminare entropia iniziale.
4. Computazionalmente è più efficente confrontare il CPF adiacenti.
5. Dopo aver trovato un CPF controlla se ne esiste uno adiacente migliore, cerca per ogni paramatro quale deve essere modificato per incrementare di più la funzione obiettivo. O per meglio dire quale incrementa di più il rateo di incremento di $Z$

## Il metodo del simplesso

$\quad$Per quanto graficamente sia più facile da comprendere queseto metodo non si può tradurre computazionalmente, per poterlo rendere computabile lo si deve formalizzare aritmeticamente. Come nel capitolo precedente per la soluzione aritmetica si pone il modello in forma aumentata.


$$
  \begin{cases}
    Z = 3x_1 + 5x_2 \\
    x_1 \le 4       \\
    2x_2 \le 12     \\
    3x_1+2x_2\le 18 \\
    x_1 \ge 0,
    x_2 \ge 0
  \end{cases}
  \to
  \begin{cases}
    Z = 3x_1 + 5x_2                     \\
    x_1 \textcolor{red}{+x_3 =}  4      \\
    2x_2 \textcolor{red}{+x_4 =}  12    \\
    3x_1+2x_2\textcolor{red}{+x_5 =} 18 \\
    x_1 \ge 0,
    x_2 \ge 0,
    \textcolor{red}{x_3 \ge 0, x_4 \ge 0, x_5 \ge 0}
  \end{cases}
$$

$quad$Si può notare dal nuovo modello che se una delle variabili di slack(*in rosso*) sono poste a zero allora la soluzione si sul limite di un vincolo. Un valore maggiore di $0$ invece lo porta nella *regione accettabile* e un valore negativo lo porta nella *regione inaccettabile*. Per meglio comprendere viene comodo un esempio, ma prima si deve introdurre un po di terminologia.

```{=latex}
\definecolor{darkgreen}{rgb}{0.0, 0.56, 0.22}
\definecolor{lightgray}{rgb}{0.85, 0.85, 0.85}

\tikzset{terminal/.style={
  % The shape:
  rectangle,minimum size=6mm,rounded corners=3mm,
  % The rest
  very thick,draw=black!50,
  top color=lightgray,bottom color=black!20,
  font=\ttfamily}}
\begin{itemize}
  \item \textbf{Soluzione aumentata:} \\
        Soluzione per le variabili originali, \textit{di decisione}, che devono essere aumentate dal valore corrispondente della \textit{variabile di slack}. \\
        \begin{tcolorbox}[
            colback=lightgray,
            colframe=black,
            coltext=black,
            title=Esempio,
            colbacktitle=black,
            coltitle=lightgray,
            breakable
          ]
          Una soluzione normale sarebbe: $(x_1:3,x_2:2) \to (x_1:3,x_2:2, x_3:1, x_4:8, x_5:5) $
        \end{tcolorbox}
  \item \textbf{Soluzione basica:} \\
        È una soluzione CPF aumentata che può trovarsi all'interno o all'esterno della regione accettabile, che porta al condetto di \textit{soluzione basica accettabile} una soluzione basica ha le seguenti proprietà:
        \begin{enumerate}
          \item Ogni variabile può essere o \textit{basica} o \textit{non basica}. \\
                L'insieme dei coefficenti delle variabili basiche si scrive $B_{x_B}$, l'insieme dei coefficenti delle variabili non basiche si scrive $N_{x_N}$. Questo porta il modello a poter essere riscritto così: $B_{x_B}+N_{x_N}=b$
          \item Il numero di \textit{variabili basiche} è uguale al numero di vincoli funzionali, parimenti il numero di \textit{variabili non basiche} sono il grado di libertà.
          \item Le \textit{variabili non basiche} sono settate a $0$.
          \item I valori delle variabili basiche sono ottenute simultaneamente.
          \item Se le \textit{variabili basiche} soddisfano i vincoli di non negatività alla la soluzione basica è accettabile.
        \end{enumerate}
  \item \textbf{Soluzione basica accettabile:}\\
        Come da nome una \textit{soluzione basica} ma con il vincolo di trovarsi nella regione accettabile.
  \item \textbf{Gradi di libertà:} \\
        Differenza tra in numeri di variabili, (\textit{variabili di decisione} + \textit{variabili di slack}) e il numero di \textit{vincoli funzionali}. Indica il numero di variabili che possono essere poste ad un valore aribtrario, $0$, per poter ottenere una soluzione per le variabili rimanenti.
\end{itemize}
```

## L'algebra dell'algoritmo del simplesso

$\quad$In questo paragrafo verranno rielaborati i punti precedenti per illustrare la connessione tra interpretazione geometrica e algebrica. Ci si riferisce allo stesso problema d'esempio usato precedentemente, in caso di dubbi sui passaggi si faccia riferimento lì.

```{=latex}
\begin{tcolorbox}[
    colback=lightgray,
    colframe=black,
    coltext=black,
    title=Algebra dell'esempio del simplesso,
    colbacktitle=black,
    coltitle=lightgray,
    breakable
  ]
  \begin{itemize}
    \item \textbf{Inizializzazione}: \\
          Scelgo di mettere $x_1, x_2$ al di fuori della base, in modo da trovare immediatamente i valori di $x_3, x_4, x_5$.
          $$
            \begin{cases}
              Z = 3x_1 + 5x_2           \\
              0+x_3 =  4 \to x_3=4      \\
              0 +x_4 =  12 \to x_4 = 12 \\
              0+0+x_5 = 18 \to x_5 = 18 \\
              x_1 \ge 0,
              x_2 \ge 0,
              x_3 \ge 0,
              x_4 \ge 0,
              x_5 \ge 0
            \end{cases}
          $$
          Si trova quindi la soluzione $(0,0,4,12,18)$.
    \item \circled{1}\textbf{Test di ottimalità} \\
          La funzione obiettivo $Z=3x_1+5x_2=0$. Essendo però i ratei di incremenento positivi i valori possono incrementare. Visto che tutte le altre BF esaminate hanno almeno un parametro maggiore di $0$ allora il valore attuale non è il migliore.
    \item \textbf{Iterazione 1:}
          \begin{enumerate}
            \item \textbf{Determinare la direzione}:
                  L'incrementare di una variabile non basica corrisponde al muoversi in una delle dimensioni. Data la funzione obiettivo $Z=3x_1+5x_2$ so che il coefficente di $x_1$ è $3$ e $x_2$ è $5$, prendo il maggiore: $5$.
            \item \textbf{Dove fermarsi} \\
                  Si vuole incrementare il più possibile il valore di un parametro ma rimanendo nella regione accettabile.
                  $$
                    \begin{cases}
                      Z = 3x_1 + 5x_2                        \\
                      x_1+x_3 =  4 \to x_3=4                 \\
                      2x_2 +x_4 =  12 \to x_4 = 12 - 2x_2    \\
                      3x_1+2x_2+x_5 = 18 \to x_5 = 18 - 2x_2 \\
                      x_1 \ge 0,
                      x_2 \ge 0,
                      x_3 \ge 0,
                      x_4 \ge 0,
                      x_5 \ge 0
                    \end{cases}
                  $$
                  Dal quale si estrapolano i vincoli:
                  $
                    \\
                    x_4=12-2x_2\ge 0 \Rightarrow x_2\le \frac{12}{2}=6 \\
                    x_5=18-2x\ge 0 \Rightarrow x_2 \le \frac{18}{2}=9
                  $
                  Porto $x_4$ a $0$ ottengo $x_2=6$ incrementarlo ulteriormente violerebbe i vincoli. Ci si riferisce a questi calcoli come \textbf{test di rateo minimo}. Quando una variabile viene portata "esce" dalla base e lascia entrare la variabile che viene incrementata.
            \item \textbf{Risolvere per la nuova BF}: \\
                  L'incrementare di $x_2=0\to x_2=6$ sposta il problema ad una nuova BF.
                  \begin{tabular}{ c c c }
                                         & Soluzione BF iniziale & Nuova soluzione BF    \\
                    Variabili non-basice & $x_1=0,x_2=0$         & $x_1,x_4$             \\
                    Variabili basiche    & $x_3=4,x_4=12,x_5=18$ & $x_3=?, x_2=6, x_5=?$
                  \end{tabular}
                  Una volta svolta questa operazione di sostituzione, $x_2$ ha sostituito $x_4$ nella base. Per ottenere lo stesso risultato nella forma algebrica si svolgono semplici operazioni algebriche. \textit{Moltiplicazione} e \textit{divisioni} per un numero diverso da $0$ e \textit{Sommare} o \textit{sottrarre} un'equazione per un altra. Si arriva al risultato desiderato, cioè, il modello trasformato, tramite l'\textit{eliminazione gaussiana} arrivando a:
                  $$
                    \begin{cases}
                      Z-3x_1+\frac{5}{2}x_4=30 \\
                      x_1+x_3=4                \\
                      x_2 + \frac{1}{2}x_4=6   \\
                      3x_1-x_4+x_5=6
                    \end{cases}
                  $$

          \end{enumerate}
    \item \circled{2}\textbf{Test di ottimalità}
          Data la funzione obiettivo $Z=30+3x_1-\frac{5}{2}x_4$ tutti e due i valori non basici posso incrementati ma scelgo $x_1$ visto che ha un coefficente positivo.
    \item \textbf{Iterazione 2:}
          Come nell'iterazione precedente si sceglie una direzione, forzata dalla negatività del coefficente di $x_4$. Dal modello si estrapola:
          $ \\
            x_3=4-x_1 \ge 0 \Rightarrow x_1 \le 4 = 4 \\
            x_2 = 6 \ge 0 \Rightarrow \text{Senza limiti} \\
            x_5= 6-3x_1\ge0\Rightarrow x_1 \le \frac{6}{3} = 2\\
          $
          Nuovamente al terzo step dell'iterazione si usano l'\textit{eliminazione Gaussiana} per scambiare $x_1$ e $x_5$ che restistuisce:
          $$
            \begin{cases}
              Z-\frac{3}{2}x_4+x_5=36             \\
              x_3+\frac{1}{3}x_4-\frac{1}{3}x_5=2 \\
              x_2 + \frac{1}{2}x_4=6              \\
              x_1 -\frac{1}{3}x_4+\frac{1}{3}x_5=2
            \end{cases}
          $$

          La soluzione attuale è quindi $Z=-36-\frac{3}{2}x_4-x_5$, visto che incrementando un qualsiasi valore della funzione obiettivo peggioreremmo il valore di $Z$ possiamo dire con cercettezza che abbiamo trovato una soluzione ottima.
  \end{itemize}
\end{tcolorbox}
```

## Soluzione Tabulare

$\quad$Nonostante ne si sia discusso estensivamente c'è un altro modo per visualizzare la risoluzione del modello. La soluzione *geometrica* serve ad avere una rapida visualizzazione del problema, mentre la versione aritmetica è la più adatta per una risoluzione tramite un programma. C'è una via di mezzo che concilia la semplicità di comprensione tra uomo e computer, la versione **tabulare**. In questo contesto la tabella che useremo si chiama *tablue*.


```{=latex}
$$
\begin{cases}
    Z - 3x_1 - 5x_2 = 0 \\
    x_1 + x_3 = 4 \\
    2x_2 + x_4 = 12 \\
    3x_1 + 2x_2 + x_5 = 18
\end{cases} 
$$
$$
\Downarrow
$$
\centering

\begin{tabular}{|c|c|c|c|c|c|c|c|}
  \hline
  {\textbf{Variabili basiche}} & \multicolumn{6}{|c|}{\textbf{Coefficenti}} & \textbf{Vincoli}                                                                          \\
  \cline{1-7}
                               & $\mathbf{Z}$                               & $\mathbf{x_1}$   & $\mathbf{x_2}$ & $\mathbf{x_3}$ & $\mathbf{x_4}$ & $\mathbf{x_5}$ &    \\
  \hline
  $Z$                          & 1                                          & -3               & -5             & 0              & 0              & 0              & 0  \\
  $x_3$                        & 0                                          & 1                & 0              & 1              & 0              & 0              & 4  \\
  $x_4$                        & 0                                          & 0                & 2              & 0              & 1              & 0              & 12 \\
  $x_5$                        & 0                                          & 3                & 2              & 0              & 0              & 1              & 18 \\
  \hline
\end{tabular} 
```


```{=latex}
\raggedright
```

### Riassunto del metodo del simplesso

$\quad$Visto che sarebbe inutile ripetere quello che è stato detto nel paragrafo precedente si darà per scontato che si sia compreso i concetti e si evidenzieranno solo riassuntivamente i passaggi che non mutano.

#### Inizilizzazione:

Si introducono le variabili di slack e si decide che le variabili di decisione siano al di fuori della base(rosso) e complementarmente le variabili di slack siano nella base(blue). 

#### Test di ottimalità:

La soluzione BF è ottima se e solo se ogni coefficente nella funzione obiettivo è non negativa, ergo il test di ottimalità non è passato.

```{=latex}
\begin{table}[h]
  \centering
  \begin{tabular}{|c|c|c|c|c|c|c|c|c|}
    \hline
    {\textbf{Variabili basiche}} & \multicolumn{6}{|c|}{\textbf{Coefficenti}} & \textbf{Vincoli}    & \textbf{Rateo}                                                                                                     \\
    \cline{1-9}
                                 & $\mathbf{Z}$                               & $\mathbf{x_1}$      & $\mathbf{x_2}$           & $\mathbf{x_3}$      & $\mathbf{x_4}$      & $\mathbf{x_5}$      &    &                  \\
    \hline
    $Z$                          & 1                                          & -3                  & -5                       & 0                   & 0                   & 0                   & 0  &                  \\
    $x_3$                        & 0                                          & 1                   & \textcolor{darkgreen}{0} & 1                   & 0                   & 0                   & 4  &                  \\
    $x_4$                        & 0                                          & \textcolor{blue}{0} & \textcolor{red}{2}       & \textcolor{blue}{0} & \textcolor{blue}{1} & \textcolor{blue}{0} & 12 & $\frac{12}{2}=6$ \\
    $x_5$                        & 0                                          & 3                   & \textcolor{darkgreen}{2} & 0                   & 0                   & 1                   & 18 & $\frac{18}{2}=9$ \\
    \hline
  \end{tabular}
\end{table}
```

$\quad$I passaggi da svolgere sono i segunti e generano il tablue successivo:

- Dividere la *riga pivot* per il valore del *numero di pivot*.
- Sommare la nuova riga di pivot per il coeffincente di pivot, ($|\text{n pivot}|\cdot \text{riga}$), ad ogni altra riga che abbia nella colonna di pivot un valore negativo. 
- Per ogni riga che nella colonna di pivot ha un valore positivo, sottrarre la nuova riga di pivot per il coeffincente di pivot, ($|\text{n pivot}|\cdot \text{riga}$).

```{=latex}

\begin{tcolorbox}[
    colback=lightgray,
    colframe=black,
    coltext=black,
    title=Attenzione,
    colbacktitle=black,
    coltitle=lightgray,
    breakable
  ]
  Si può notare, che le variabile basiche nel \textit{tablue} hanno la forma della matrice $I$ di identità. Infatti dopo la prima iterazione dove $x_2$ prende il posto di $x_4$ i vettori che formano la base della matrice sono le nuove variabili di base: ($x_2, x_3, x_5$)
\end{tcolorbox}
```

```{=latex}

\begin{table}[h]
  \centering
  \begin{tabular}{|c|c|c|c|c|c|c|c|}
    \hline
    {\textbf{Variabili basiche}} & \multicolumn{6}{|c|}{\textbf{Coefficenti}} & \textbf{Vincoli}                                                                          \\
    \cline{1-8}
                                 & $\mathbf{Z}$                               & $\mathbf{x_1}$   & $\mathbf{x_2}$ & $\mathbf{x_3}$ & $\mathbf{x_4}$ & $\mathbf{x_5}$ &    \\
    \hline
    $Z$                          & 1                                          & -3               & 0              & 0              & $\frac{5}{2}$  & 0              & 30 \\
    $x_3$                        & 0                                          & 1                & 0              & 1              & 0              & 0              & 4  \\
    $x_2$                        & 0                                          & 0                & 1              & 0              & $\frac{1}{2}$  & 0              & 6  \\
    $x_5$                        & 0                                          & 3                & 0              & 0              & -1             & 1              & 6  \\
    \hline
  \end{tabular}
\end{table}
```

$\quad$Da qui, si continua con il normale svoglimento dell'algoritmo del simplesso, nello stesso modo evidenziato precendentemente, quindi si eviteranno commenti che ormai potrebbero essere ridondanti. Nell'ultimo tablue, visto che $x_1, x_2$ sono nella base si è arrivati alla soluzione ottima che il valore del vincolo, in verde.

```{=latex}

\begin{table}[h]
  \centering
  \begin{tabular}{|c|c|c|c|c|c|c|c|c|}
    \hline
    {\textbf{Numero iterazione}} & {\textbf{Variabili basiche}} & \multicolumn{6}{|c|}{\textbf{Coefficenti}} & \textbf{Vincoli}                                                                                                                                 \\
    \cline{1-8}
                                 &                              & $\mathbf{Z}$                               & $\mathbf{x_1}$           & $\mathbf{x_2}$           & $\mathbf{x_3}$      & $\mathbf{x_4}$      & $\mathbf{x_5}$      &                          \\
    \hline
    0                            & $Z$                          & 1                                          & -3                       & \textcolor{darkgreen}{5} & 0                   & 0                   & 0                   & 0                        \\
                                 & $x_3$                        & 0                                          & 1                        & \textcolor{darkgreen}{0} & 1                   & 0                   & 0                   & 4                        \\
                                 & $x_4$                        & 0                                          & \textcolor{blue}{0}      & \textcolor{red}{2}       & \textcolor{blue}{0} & \textcolor{blue}{1} & \textcolor{blue}{0} & \textcolor{blue}{12}     \\
                                 & $x_5$                        & 0                                          & 3                        & \textcolor{darkgreen}{2} & 0                   & 0                   & 1                   & 18                       \\
    \hline
    1                            & $Z$                          & 1                                          & -3                       & 0                        & 0                   & $\frac{5}{2}$       & 0                   & 30                       \\
                                 & $x_3$                        & 0                                          & \textcolor{darkgreen}{1} & 0                        & 1                   & 0                   & 0                   & 4                        \\
                                 & $x_2$                        & 0                                          & \textcolor{darkgreen}{0} & 1                        & 0                   & $\frac{1}{2}$       & 0                   & 6                        \\
                                 & $x_5$                        & 0                                          & \textcolor{red}{3}       & \textcolor{blue}{0}      & \textcolor{blue}{0} & \textcolor{blue}{0} & \textcolor{blue}{1} & \textcolor{blue}{6}      \\
    \hline
    2                            & $Z$                          & 1                                          & 0                        & 0                        & 0                   & $\frac{3}{2}$       & 1                   & 36                       \\
                                 & $x_3$                        & 0                                          & 0                        & 0                        & 1                   & $\frac{1}{3}$       & -$\frac{1}{3}$      & 2                        \\
                                 & $x_2$                        & 0                                          & 0                        & 1                        & 0                   & $\frac{1}{2}$       & 0                   & \textcolor{darkgreen}{6} \\
                                 & $x_1$                        & 0                                          & 1                        & 0                        & 0                   & -$\frac{1}{3}$      & $\frac{1}{3}$       & \textcolor{darkgreen}{2} \\
    \hline
  \end{tabular}
\end{table}
```

## Forma Canonica

$\quad$Dato un modello in forma standard, nella forma di una funzione obiettivo ($Z=C_B^Tx_B+C^T_Nx_N$) e un matrice che rappresenta le funzioni di vincolo($B_{X_B}+N_{X_N}=b$) si può riscrive il modello in modo di poter trovare $x_B$.


$$
  \begin{cases}
    Z=C_B^Tx_B+C^T_Nx_N \\
    B_{X_B}+N_{X_N}=b   \\
    X_B, X_N \ge 0
  \end{cases}
  \overset{\text{Moltiplico per } B^{-1}}{\Longrightarrow}
  \begin{cases}
    Z=C_B^Tx_B+C^T_Nx_N       \\
    Ix_B+(B^{-1}N)x_N=B^{-1}b \\
    X_B, X_N \ge 0
  \end{cases}
  \to x_B= (B^{-1}N)x_n=B^{-1}b
$$

$\quad$Si è ora trovata la funzione per trovare il valore di $x_B$. Ora l'idea è vedere cosa succede se insieriamo nella funzione obiettivo il valore dei coefficenti della base.
$$
  \begin{cases}
    Z=C_B^Tx_B+C^T_Nx_N       \\
    Ix_B+(B^{-1}N)x_N=B^{-1}b \\
    X_B, X_N \ge 0
  \end{cases}
  \overset{\text{Inserisco }x_B}{\Longrightarrow}
  \begin{cases}
    Z=C_B^TB^{-1}b+(C^T_N-C^T_BB^{-1}N)x_N \\
    Ix_B+(B^{-1}N)x_N=B^{-1}b              \\
    X_B, X_N \ge 0
  \end{cases} 
  {\Rightarrow}
  \begin{cases}
    Z=Z_B+\overline{C}^T_Nx_N         \\
    Ix_B+\overline{N}x_N=\overline{b} \\
    X_B, X_N \ge 0
  \end{cases}
$$

# Teoria della dualità

$\quad$Uno dei concetti più importanti nella programmazione lineare è il concetto di **dualità**. Ogni problema di programmazione lineare ha associato un altro problema chiamato **dualità**. La relazione tra due problemi duali, dove quello originale si chiama **primale** è molto utile in vari ambiti. Uno degli usi fondamentali è l'implentazioine della *analisi della sensitività*. Questa connessione deriva dal fatto che i valori del modelli primale sono stime di condizioni future, l'effetto sulle soluzioni prevale quando in realtà andrebbe ultreriormente investigato.

## Essenza della teoria della dualità:

Dato un problema primale il problema duale si trova invertendo: funzione obiettivo e vincoli funzionali. (Nota bene: $n$ è il numero di parametri e $m$ è il numero di vincoli)

$$
  \overset{\text{Prob. primale}}{
    \begin{cases}
      \text{Max}(Z=\sum_{j=1}^{n}c_jx_j)        \\
      \sum_{j=1}^{n}a_{ij}x_j\le b_b|i\in [1,m] \\
      x_j\ge 0|j\in [1,n]
    \end{cases}
  }
  \hspace{3cm}
  \overset{\text{Prob. Duale}}{
    \begin{cases}
      \text{Min}(Z=\sum_{j=1}^{m}b_iy_i)        \\
      \sum_{i=1}^{m}a_{ij}y_i\ge c_j|j\in [1,n] \\
      y_i\ge 0|j\in [1,n]
    \end{cases}
  }
$$

$\quad$Si noti che dove il problema priamrio è in forma di massimizzazione allora il problema duale è in forma di minimizzazione. Il problema duale usa anche gli stessi parametri. Le differenze sono le seguenti.

- I coefficenti della funzione obiettivo del problema primale si trovato come parametri nelle funzioni di vincolo del problema duale.
- I parametri del problema primale sono i coefficenti delle funzioni obiettivo del problema duale. 
- I coefficenti di una variabile nelle funzioni di vincolo di un problema primale sono i coefficenti della funzione vincolo del problema duale.

$\quad$Queste differenze si notato al meglio in notazione matriciale.

$$
  \overset{\text{Prob. primale}}{
    \begin{cases}
      \text{Max}(Z=\textcolor{red}{c}x)                 \\
      \textcolor{blue}{A}x \le \textcolor{darkgreen}{b} \\
      x \ge 0
    \end{cases}
  }
  \hspace{3cm}
  \overset{\text{Prob. Duale}}{
    \begin{cases}
      \text{Min}(W=y\textcolor{darkgreen}{b})         \\
      \textcolor{blue}{A^{T}}y \ge \textcolor{red}{c} \\
      y \ge 0
    \end{cases}
  }
$$

```{=latex}
\begin{tcolorbox}[
    colback=lightgray,
    colframe=black,
    coltext=black,
    title=Esempio,
    colbacktitle=black,
    coltitle=lightgray,
    breakable
  ]
  Creiamo il problema duale dell'esercizio della Schiopparelli \& co. Dato il solito modello. Troviamo prima di tutto $\overline{x}, \overline{c}, \overline{b}, A$.\\
  \begin{equation*}
    \begin{cases}
      \text{Max}\ Z = 3x_1 + 5x_2 \\
      x_1 \le 4                   \\
      2x_2 \le 12                 \\
      3x_1 + 2x_2 \le 18          \\
      x_1, x_2, x_3 \ge 0
    \end{cases}
  \end{equation*}
  \begin{equation*}
    \begin{array}{cccc}
      \overline{x} = \begin{bmatrix} x_1 & x_2 \end{bmatrix},  &
      \overline{c} = \begin{bmatrix} 3 & 5 \end{bmatrix},      &
      \overline{b} = \begin{bmatrix} 4 & 12 & 18 \end{bmatrix} &
      A = \begin{bmatrix} 1 & 0\\ 0 & 2 \\ 3 & 2\end{bmatrix}
    \end{array}
  \end{equation*}
  $
    \begin{cases}
      \text{Min}(W=y\textcolor{darkgreen}{b})         \\
      \textcolor{blue}{A^{T}}y \ge \textcolor{red}{c} \\
      y \ge 0
    \end{cases}
    \to
    \begin{cases}
      \text{Min}(W=4y_1+12y_2+18y_3) \\
      y_1+3y_3 \ge 3                 \\
      2y_2+2y_3 \ge 5                \\
      y \ge 0
    \end{cases}
  $
\end{tcolorbox}
```

Si può ora notare la relazione tra il problema primale e il problema duale.

- I parametri per un vincolo in uno dei due problemi sono i coefficenti di una variabile nell'altro problema
- I coefficenti della funzione obiettivo di uno dei due problemi sono i parametri delle funzioni di vincolo dell'altro problema.
- Si può anche notare che su un problema ha $n$ parametri nella funzione obiettivo e $m$ vincoli allora il problema duale avrà $m$ parametri nella funzione obiettivo e $n$ vincoli allora il problema duale

### Relazione dei problemi primali-duali

#### Proprietà di dualità debole:

Se $\overline{x}$ è accetabile per la soluzione per problema primale e $\overline{y}$ è accettabile per la soluzione di del problema duale allora $\overline{c}\overline{x}\le \overline{y}\overline{b}$. Quest'affermazione deve valore per ogni coppia di soluzione accetabili, il valore massimo di $Z=cx$ è uguale al valore minimo possibile per $W=yb$.

```{=latex}
\begin{tcolorbox}[
    colback=lightgray,
    colframe=black,
    coltext=black,
    title=Dimostrazione,
    colbacktitle=black,
    coltitle=lightgray,
    breakable
  ]
  \textbf{Dimostrazione:}\\
  Data una coppia  di problema composti da uno \textit{primale} e uno \textit{duale} così formulati:\\
  \hspace{3cm}P: Max $Z=c^Tx, Ax \le b, x (\in X) \ge 0$\\
  \hspace{3cm}D: Min $W=b^Ty, A^Ty\ge c, y(\in X) \ge 0$\\
  $$
    \begin{cases}
      A^T_{n \ m}\overline{y}_m \ge \overline{c}_n \\
      \overline{x}_n \ge 0                         \\
    \end{cases}
    {\Rightarrow} \underset{\overline{x}_{n\ 1}\cdot A_{n\ m} = \alpha_{1\ m} \\ \alpha_{1 m}\cdot \overline{y}_{1\ m} = k}{\overline{x}_n^TA^T_{n\ m}\overline{y}^T_m} \ge \underset{\text{Scalare}}{\overline{x}_n^T\overline{c}_n} \Leftrightarrow \underbrace{\overline{c}_n^T\overline{x}_n}_{Z} \le \overline{x}_n^TA_{n\ m}^T\overline{y_m}^T
  $$
  $$
    \begin{cases}
      A\overline{x} \le \overline{b} \\
      \overline{y}\ge 0              \\
    \end{cases}
    {\Rightarrow} \overline{y}_m^TA_{m\ n}\overline{x}_n \ge \overline{y}_m^Tb_m \Leftrightarrow \underbrace{\overline{b}_m^T\overline{y}_m}_{W} \ge \overline{y}_m^TA_{m\ n}\overline{x}_n
  $$
  In entrambi casi il secondo membro è uno scalare che porta a poter scrivere $\overline{x}^TA^T\overline{y}=(\overline{x}^TA^T\overline{y})^T$ visto che il trasposto di uno scalare è sé stesso. Ma per la proprietà $(BA)^T=B^TA^T$ posso scrivere $(\overline{x}^TA^T\overline{y})^T=\overline{y}^T (A^T)^T (\overline{x}^T)^T$. Tolgo le trasposte ridontanti e ottengo $(\overline{x}^TA^T\overline{y})^T=\overline{y}^TA\overline{x}$ arrivando allora a poter riassumere tutto così:
  $$\overline{x}^T A^T \overline{y} = (\overline{x}^T A^T \overline{y})^T = \overline{y}^T (A^T)^T (\overline{x}^T)^T = \overline{y}^T A \overline{x}$$

  Assemblando il tutto:
  $$\underset{Z(\overline{x})}{c^T \overline{x}} \leq \overline{x}^T A^T \overline{y} = \overline{y}^T A \overline{x} \leq \underset{W(\overline{y})}{b^T \overline{y}}$$
\end{tcolorbox}
```

A questo teorema seguono due corollari:

- Se $\overline{x} \in X, \overline{y} \in Y, z(\overline{x})=w(\overline{y})$ allora $\overline{x}=x^{\ast}, \overline{y}=y^{\ast}, z(\overline{x})=z^{\ast}, w(\overline{y})=w^{\ast}$
- Se il problema prilame è *illimitato* allora il suo duale è *inammissibile*.

#### Lemma di Farkas: \\

Il lemma di Farkas dice che dato $A_{m\ n}\overline{x}_m=\overline{b}_m$ allora una sola delle seguenti è vera:

- $\exists\overline{x} \in R^n|A\overline{x}=\overline{b}, \overline{x}\ge 0$
- $\exists\overline{y} \in R^m|A^T\overline{y}\ge 0, \overline{b}^T\overline{y} < 0$

Questo significa che dato un sistema di equazioni o esiste una soluzione o non esiste.

```{=latex}
\begin{tcolorbox}[
    colback=lightgray,
    colframe=black,
    coltext=black,
    title=Dimostrazione,
    colbacktitle=black,
    coltitle=lightgray,
    breakable
  ]
  \begin{enumerate}
    \item $1)$ è vera, $2)$ è falsa.\\
          Riscrivo le premesse:\\

          $
            \begin{cases}
              A\overline{x}=\overline{b}                             \\
              \exists \overline{x}\in R^n|A\overline{x}=\overline{b} \\
              \overline{x}\ge \overline{0}                           \\
            \end{cases}
          $
          Date le premesse:
          \begin{itemize}
            \item $A^T\overline{y}\ge 0 \Rightarrow \underset{\text{scalare}}{\overline{x}^T A^T y > 0} \forall\overline{y}\in R^m$
            \item $\overline{x}^TA^T=\overline{b}^T \Rightarrow \overline{b}^T\overline{y}\ge 0 \forall \overline{y} \in R^m$
            \item $\nexists\overline{y}\in R^m| A^T\overline{y}\ge 0, b^T\overline{y} < 0$ perché nel punto precedente abbiamo dimostrato che $\overline{b}^T\overline{y}\ge 0 \forall \overline{y} \in R^m$.
          \end{itemize}
    \item $1)$ è false, $2)$ è vera.\\
          \begin{tcolorbox}[
              colback=lightgray,
              colframe=black,
              coltext=black,
              title=Convessità,
              colbacktitle=black,
              coltitle=lightgray,
            ]
            Uno spazio vettoriale $C$ è convesso se per ogni coppia di punti $x,y$:\\
            $\forall x, y \in C, \forall \lambda \in [0,1] \to \lambda x+(1-\lambda)y \in C$. In poche parole l'insieme è convesso se per ogni coppia di punti contiene tutti i segmenti li uniscono.
          \end{tcolorbox}
          \begin{tcolorbox}[
              colback=lightgray,
              colframe=black,
              coltext=black,
              title=Teorema dell'iperpiano separatore,
              colbacktitle=black,
              coltitle=lightgray,
              breakable
            ]
            Siamo $A$ e $B$ due insiemi convessi in una spazio vettoriali $R^n$ Allora $\exists H, \exists a : a\cdot x \le c \forall x \in A, a \cdot y \ge c \forall y \in B$
          \end{tcolorbox}
          Assumiamo che $1)$ sia falsa e definiamo il cono $C={\overline{q}\in R^m|\exists X(\overline{q}\in R^n|Ax(q)=q, x(q) \ge 0)}$.\\ $C$ è convesso, essendo $1)$ falsa $b\notin C$. \\
          Per il teorema del iperpiano separatore: \\
          \begin{itemize}
            \item $\exists \overline{y}\in R^m-{0}:\overline{q}^T\overline{y} \ge 0\ \forall \overline{q} \in C, \overline{b}^T\overline{y} <0$.
            \item Dato: $q=Ax(\overline{q})\ \forall q \in C$ si ha: $\overline{q}^T\overline{y}\ge 0\ \forall q \in C \Rightarrow x(q)^TA^T\overline{y} \ge 0 \forall q \in C$
            \item $x(q)\ge 0 \forall q \in C \to x(q)^TAT\overline{y}\ge 0\ \forall q \in C \Rightarrow A^T\overline{y} \ge 0$
            \item Abbiamo dimostrato che $A^T\overline{y}\ge 0$.
          \end{itemize}
          \textit{Dimostrazione inutilmente complicata}
  \end{enumerate}
\end{tcolorbox}
```

$\quad$A questo teorema seguono due corollari:

- Se $\overline{x} \in X, \overline{y} \in Y, z(\overline{x})=w(\overline{y})$ allora $\overline{x}=x^{\ast}, \overline{y}=y^{\ast}, z(\overline{x})=z^{\ast}, w(\overline{y})=w^{\ast}$
- Se il problema prilame è *illimitato* allora il suo duale è *inammissibile*.

#### Proprietà di dualità forte:

$\quad$Se ${x}^{\ast}$ è una soluzione ottima per il problema ottimale e ${  y}^{\ast}$ allora $cx^{\ast}=y^{\ast}b$. Questo si può dedurre dal punto precendente. Perché tra tutte le soluzioni per il problema primale $x^{\ast}$ è il massimo dell'insieme delle soluzioni accettabili, per $y^{\ast}$ è il minore delle soluzioni accettabili per il problema duale. Avendo il vincolo della **proprietà  di dualità debole** $cx\le yb$ l'unico caso in cui le due soluzioni possano essere uguali è avere la soluzione ottima.

```{=latex}
\begin{tcolorbox}[
    colback=lightgray,
    colframe=black,
    coltext=black,
    title=Dimostrazione,
    colbacktitle=black,
    coltitle=lightgray,
    breakable
  ]
  Sia $y^{\ast} \in R^m$ una soluzione ottima per il problema \textbf{duale} di valore: $w^{\ast}=b^Ty^{\ast}$, il valore è uno scalare. \\
  Lo scopo della dimostrazione è arrivare a dimostrare $\exists\overline{x}^{\ast}\in R^n: A\overline{x}^{\ast}\le\overline{b}, \overline{x}^{\ast}$ che soddisfa $c^T\overline{x}^{\ast}\ge b^T\overline{y}^{\ast}$ (che sono scalari).\\
  \textbf{Prima parte}
  \begin{itemize}
    \item Assumiamo che $\nexists \in R^n: Ax \le b, x \ge 0, c^T\overline{x} \ge \overline{w}^{\ast}$
    \item Allora posso scrivere $\nexists \in R^n: Ax \le b, -c^Tx\le -w^{\ast}, x\ge 0$
    \item $A'=\begin{bmatrix}A \\ -c^T\end{bmatrix}_{(m+1)\ \text{x}\ n} b'=\begin{bmatrix}b \\ -w^{\ast}\end{bmatrix}_{(m+1)\ \text{x}\ 1}$
    \item Equivale $\nexists x \in R^n: A'x \le b', x \ge 0$ che implica $\exists y' \in R^{m+1}:A'^Ty' \ge 0, b'^Ty' < 0, y' \ge 0$.
  \end{itemize}
  \textbf{Seconda parte}
  \begin{itemize}
    \item $\exists y' \in R^{m+1}:A'^Ty' \ge 0, b'^Ty' < 0, y' \ge 0$ sia $y'=\begin{bmatrix}\overline{y}\in R^m\\ \lambda \in R \end{bmatrix}$
    \item Allora $A'^T\overline{y}' \ge 0, b'^T\overline{y}' < 0, \overline{y}'\ge 0 \Leftrightarrow A^T\overline{y}-c\delta\ge 0, b^T\overline{y}-w^{\ast}\delta<0, \overline{y}\ge 0, \delta \ge 0$
  \end{itemize}
  $A^T\overline{y}-c\lambda \ge 0, b^T\overline{y}-w^{\ast}\lambda<0,\overline{y}\ge 0, \lambda \ge 0$.\\
  \textbf{Caso I:($\lambda > 0$)}\\
  $\hat{y}=\frac{\overline{y}}{\lambda}$ si ha $\begin{cases}A^T\hat{y}\ge c \\ b^T \hat{y} < w^{\ast} \\ \hat{y} \ge 0 \end{cases}$\\

  \textbf{Caso II:($\lambda = 0$)}\\
  $A^T\overline{y}-c\lambda \ge 0, b^T\overline{y}-w^{\ast}\delta<0, \overline{y} \ge 0 \rightarrow A^T\overline{y} \ge 0 b^T\overline{y}<0, \overline{y} \ge 0$\\
  Se $\hat{y}=y^{\ast}+\overline{y}$. Da cui ottiene $A^T\overline{y}^{\ast} \ge c, b^T\overline{y}^{\ast}=w^{\ast}, y^{\ast}\ge 0$\\
  Da questo si ottiene $A^T\hat{y}\ge c, b^T\hat{y} < w^{\ast}, \hat{y}\ge 0$

  Quindi possiamo dimostrare per assurdo: $\exists x^{\ast} \in R^n: Ax^{\ast} \le b, x^{\ast} \ge 0, c^Tx^{\ast}\ge w^{\ast} \to z^{\ast}=c^Tx^{\ast}=b^Ty^{\ast}=w^{\ast}$
\end{tcolorbox}
```

#### Proprietà della soluzione complementare:

$\quad$Ad ogni iterazione dell'algoritmo del simplesso l'algoritmo identifica simultaneamente i CPF in $x$ per il problema primale e la soluzione complementare di $y$ per il problema duale tale che $cx=yb$. Da questo si può dedurre che se $x$ non è ottima allora neanche $y$ sarà ottima.

#### Proprietà della soluzione ottima complementare:

$\quad$All'iterazione finale, l'algoritmo del simplesso identifica simultaneamente la soluzione ottima per il problema primale($x^{\ast})$ e per il problema duale($y^{\ast}$) tale che $cx^{\ast}=y^{\ast}b$.

#### Teorema Fondamentale Dualità Lineare:

Data una coppia di problemi.
$$ P: \text{Max}\ z(x)\ x \in X$$
$$D: \text{Min}\ w(x)\ y \in Y$$
Allora una delle quattro è vera.

- Esiste la soluzione ottima per $P$ e $D$
- Esiste la soluzione ottime per $P$ e $D$ è inammissibile
- Esiste la soluzione ottime per $D$ e $P$ è inammissibile
- $P$,$D$ sono inammissibili.

#### Teorema dello scarto complementare:

Dato una coppia primale-duale
$$P: \text{Max}\ z=c^Tx, Ax \ge b, x \ge 0$$
$$D: \text{Min}\ w=b^Ty, A^Ty \ge c, y \ge 0$$

La condizione per l'ottimalità è:
$$\overline{y}^T(b-A\overline{x})=0$$
$$(A^T\overline{y}-\overline{c})^T\overline{x}=0$$

#### Teoroma dello scarto complementare:

Dato una coppia primale-duale

$$P: \text{Max}\ z=c^Tx, Ax \ge b, x \ge 0$$
$$D: \text{Min}\ w=b^Ty, A^Ty \ge c, y \ge 0$$

La condizione per l'ottimalità è:
$$\overline{y}^T(b-A\overline{x})=0$$
$$(A^T\overline{y}-\overline{c})^T\overline{x}=0$$

#### Teorema dello scarto complementare

Data la coppia:
$$P: max(z)=c^Tx: Ax \le b, x \ge 0$$
$$D: mix(w)=b^Ty: A^Ty \ge c, y \ge 0$$

Allora date le soluzioni ottime $\overline{x}^{\ast}$ $\overline{y}^{\ast}$ sono valide le seguenti equazioni:

$$\overline{y}^T(b-A\overline{x})=0$$
$$(A^T\overline{y}-c)^T\overline{x}=0$$



```{=latex}
\begin{tcolorbox}[
  colback=lightgray,
  colframe=black,
  coltext=black,
  title=Dimostrazione,
  colbacktitle=black,
  coltitle=lightgray,
  breakable
  ]
  Sappiamo che dati due problemi duali $P$ e $D$ che hanno entrambi soluzioni ottime vale l'equazione: $z^{\ast}=c^T\overline{x}^{\ast}=\overline{b}^Ty^{\ast}=\overline{w}^{\ast}$\\
  Sappiamo anche che nella soluzione: $A\overline{x}=b$ e $A^T\overline{y}=c$, da questi si può ricavare:\\
  $A\overline{x}-b=0\to b-A\overline{x}$=0 \& $A^T\overline{y}-c=0$\\
  Sostituiamo nelle premesse e ci viene: $\overline{y}^T(0)=0$ e $(0)^T\overline{x}=0$. Quindi il teorema è dimostrato.
\end{tcolorbox}
```

## Algortimo simplesso duale

Dato i coefficenti di $P$ e $D$ sono gli stessi cioé $A$ e $A^T$ quindi si possono rappresentare con lo stesso tablueat.

- **Problema Primale:**  Conserva l'ottimalità e persegue l'ottimalità.
- **Problema Duale:** Conserva l'ottimalità e persegue l'ammissibilità.

- La riga di pivot viene nella prima colonna
- Il pivot deve essere non negativa
- La colonna di Pivot viene scelta minimizzando il valore assoluto del rapporto tra il coefficente di costo ridotto ed il candidato pivot.

$\quad$Se ci si trova, nell'esecuzione dell'algoritmo del simplesso in un punto dove il problema diventa inaccettabile si può provare a superare l'ostacolo trasponendo il problema nel suo duale. In caso torni ad essere accettabile si svolge il passo di simplesso per poi potere tornare al problema primale o arrivare ad una soluzione ottima. In caso anche il duale non sia accettabile allora i due problemi sono *insoddisfacibili*. In caso si arrivi alla soluzione ottima ci si può trovare nella situazione nella quale il problema primale non è accetabile.

# Analisi Post Ottima o Analisi di sensibilità:

$\quad$Una volta trovata la soluzione ottima non si è arrivati alla fine del lavoro, inizia ora l'operazione più complessa l'*analisi post-ottima* o *analisi di sensibilità*. Visto che i dati e la base ottima è stata trovata su un modello che per sua natura è prono a non essere, soprattutto ai primi tentativi, abbastanza rappresentativo della realtà per o una esagerata semplificazione o per colpa dei valori scelti inizialmente che sono scelti aribitrariamente e senza un metodo preciso. Bisogna quindi rimanere scettici delle prime soluzioni ottenute. L'analisi post-ottima serve a comprendere i valori del porblema iniziale potrebbero variare per fare in modo che ancora la soluzione rimanga invariata. Per un *tablueat* di piccola dimensione non ci sarà gran difficoltà. Una volta modificiati i valori si può risvogere il simplesso e ancora si arriverà alla stessa base ottima. Serve quindi revisionare il modello.

## Calcolo di $\Delta \overline{c}$

Dato i seguenti dati:

- Un problema in forma canonica: $$\begin{cases}z=\overline{x}\overline{y}\\ A\overline{x} \le \overline{b}\end{cases}$$
- La base ottima: $B^{\ast}$
- I coefficenti di x: $\overline{x}^{\ast}$
- Il valore della funzione della funzione ottima: $z^{\ast}$
- I coefficenti del *tablueat* finale: $A^{\ast}$

$\quad$Si può calcolare il valore dei $\Delta c_i$, cioè, quanto i coiefficenti della funzione obiettivo possono oscillare, senza modificare la base ottima della soluzione. Questi sono tutti dati che abbiamo già se abbia trovato la soluzione ottima per il problema. 

```{=latex}
$$
\begin{cases}
\Delta c_y \le  c_y^{\ast} \qquad\qquad\qquad\qquad\qquad\qquad\qquad\qquad\qquad\qquad\qquad\qquad\qquad \text{se}\ y \notin B^{\ast} \\

\max \left\{ -\infty, \max_{x \in A_{\overline{y}}} \left\{ \frac{-c_y^*}{A_{yx}^{\ast +}} \right\} \right\} \leq \Delta c_y \leq \min \left\{ \min_{y \in A_{\overline{y}}} \left\{ \frac{-c_y^*}{A_{yx}^{\ast -}} \right\}, +\infty \right\} \text{se}\ y \in B^{\ast}
\end{cases}
$$
```

$\quad$La formula, abbastanza astrusa, non è di facile comprensione senza una vera e propria spiegazione. Partiamo quindi dal dire che la formula si divide tra le due opzioni, il valore $c_y$ appartiene o no alla **base ottima**. Se $c_i$ non appartiene alla base allora $\Delta c_y$ è solo limitata superiormente con il valore $c_y^{\ast}$.

---

$\quad$In alternativa, nel caso di $c_i$ appartenga alla Base ottima allora $\Delta c_y$ può essere limitato o illimitato sia superiormente che inferiormente. Per una più semplice spiegazione dividiamo la spiegazione in due parti.

$\qquad$**Limite inferiore**: Si prende la riga della matrice dei coefficenti che ha l'1 nella colonna, in altre parole la riga con il valore del vincolo. Per ogni valore che sia strettamente positivo, eliminando il valore della colonna $y$ si prendono i valori che massimizzano la frazione $\frac{-c_y^*}{A_{yx}^{\ast +}}$. Infatti il $+$ indica che vanno presi solo i coefficenti positivi. Se non ci sono altri coefficenti positivi allora il limite inferiore non c'è o si può dire che sia $-\infty$.


$\qquad$**Limite superiore**: Si prende la riga della matrice dei coefficenti che ha l'1 nella colonna, in altre parole la riga con il valore del vincolo. Per ogni valore che sia strettamente negatico, eliminando il valore della colonna $y$ si prendono i valori che minimizzano la frazione $\frac{-c_y^*}{A_{yx}^{\ast -}}$. Infatti il $-$ indica che vanno presi solo i coefficenti positivi. Se non ci sono altri coefficenti negativi allora il limite superiore non c'è o si può dire che sia $+\infty$.

$\qquad$Una volta ottenuti questi valori si può ottenere l'intervallo dei valori di $c_i$ tali per il quale ancora nella soluzione ottima rimangono gli stessi valori. Si calcola l'intervallo dei valori sottraendo a $c_i$ il limite inferiore e il limite superiore di $\Delta c_i$. 

## Calcolo dei $\Delta \overline{b}$


Dato i seguenti dati:

- Un problema in forma canonica: $$\begin{cases}z=\overline{x}\overline{y}\\ A\overline{x} \le \overline{b}\end{cases}$$
- La base ottima: $B^{\ast}$
- I coefficenti di b: $\overline{b}^{\ast}$
- Il valore della funzione della funzione ottima: $z^{\ast}$
- I coefficenti del *tablueat* finale: $A^{\ast}$

Per ogni riga $\overline{y}$ si prende la colonna ($\overline{x}$) che equivale alla variabile di slack del vincolo nel tableuat iniziale e si applica la formula sulla colonna:


```{=latex}
$$
\begin{cases}
\Delta b_{y} \ge  -\overline{x}_{x}^{\ast} \qquad\qquad\qquad\qquad\qquad\quad\qquad\qquad\qquad\qquad\qquad\qquad\qquad \text{se } y \text{ è attivo} \\

\max \left\{ -\infty, \max_{y \in A_{\overline{y}}} \left\{ \frac{-b_y^*}{A_{yx}^{\ast +}} \right\} \right\} \leq \Delta b_y \leq \min \left\{ \min_{y \in A_{\overline{y}}} \left\{ \frac{-b_y^*}{A_{yx}^{\ast -}} \right\}, +\infty \right\} \text{se } y \text{ non è attivo} 
\end{cases}
$$
```

$\quad$Anche questa formula è abbastanza complessa da comprendere senza una vera spiegazione. Prima di tutto bisogna comprendere come capire se $b_y$ è attivo e non attivo. Una colonna è attiva se e solo se il valore del coefficente ad essa associata è $0$.


$\quad$Nel caso il vincolo di $b_i$ non sia attivo allora $\Delta b_i$ è maggiore o uguale al valore della $x$ nella colonna che è stata scelta.

$\quad$Nel caso il vincolo di $b_i$ sia attivo allora $\Delta b_i$ può essere limitato sia superiormente che inferiormente. Per una più semplice comprensione dividerò la spiegazione dei due vincoli separatamente.

$\qquad$**Limite inferiore**: Si raccolgono tutti i coefficenti positivi nella colonna scelta in precedenza, se presenti. In caso non ci siano allora il limite inferiore è $-\infty$. Una volta raccolti tutti i valori negativi si cercano i valori che massimizzano la frazione $\frac{-b_y^*}{A_{yx}^{\ast +}}$. Il valore trovato è il limite inferiore di $\Delta b_i$.

$\qquad$**Limite superiore**:  Si raccolgono tutti i coefficenti positivi nella colonna scelta in precedenza, se presenti. In caso non ci siano allora il limite superiore è $+\infty$. Una volta raccolti tutti i valori negativi si cercano i valori che minizzano la frazione $\frac{-b_y^*}{A_{yx}^{\ast -}}$. Il valore trovato è il limite superiore di $\Delta b_i$.

Una volta trovato l'intervallo dei valori di $\Delta b_i$ si sottrae il limite inferiore a $b_i$ e lo stesso con il limite superiore. Si ottengono così gli intervalli dei valori accettabili per $b_i$.

```{=latex}

\begin{tcolorbox}[
  colback=lightgray,
  colframe=black,
  coltext=black,
  title=ATTENZIONE,
  colbacktitle=black,
  coltitle=lightgray,
  breakable
  ]
  $\Delta b_i$ va controllato per incertezza sullo svolgimento della soluzione.
\end{tcolorbox}
```

## Prezzi ombra:

$\quad$I prezzi ombra per una certa risorsa misurano i *valori marginali* della risorsa con la quale $Z$ potrebbe essere incrementata all'incrementare di $b_i$. Vengo denominati $y_i^{\ast}$ che indica la i-esima variabile che ha $0$ nella riga della funzione obiettivo. Le risorse corrispondo alle variabili di slack originale e le associa al rispettivo vincolo. Quindi la prima risorsa è la prima variabile di slack e il prezzo ombra è il valore della funzione obiettivo finale.

### Costi ridotti:

$\quad$Dati prezzi ombra si possono ottenere i costi ridotti di ogni variabile $x_j$. 

$$
\overline{c}_j = c_j - \sum_{i}A_{ij}\lambda_i
$$

Dove:

- $c_j$: è il coefficente di $x_j$ nella funzione obiettivo
- $A_{ij}$: Il coefficente in riga $i$ e colonna $j$ nella matrice $A$.
- $\lambda_i$: è il prezzo ombra del vincoli $i$

$\quad$Quindi, si può vedere che il nuovo valore di $c_j$, è uguale al $c_j$ meno la somma di tutti i coefficenti della riga $i$ moltiplicati per il relativo prezzo ombra. 

# Programmazione lineare a molti obiettivi

$\quad$Estensione della programmazione lineare ad un singolo obiettivo. Quindi il caso in cui esistano più funzioni obiettivo che possono anche entrare in conflitto tra di loro. Si perde però il concetto di soluzione ottima, in caso degli obiettivi siano in conflitto la soluzione non può essere ottima e viene sostituita con *soluzioni non-dominate*. (Per questo corso si arriverà ad avere 2 funzioni obiettivo).

