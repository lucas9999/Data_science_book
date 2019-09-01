



# help skladniowy


# (PART) <lfg>BASICS OF STATISTICS</lfg> {-}



# (PART) SKLADNIA [SYNTAX] {-} 

# div----

<lfr> text </lfr>
lfb
lfg
lfsb


<br><lfr>Warning!</lfr>
<div class="btn-danger"> ... </div><br>

<br><lfsb>Tip</lfsb>
<div class="btn-info"> ... </div><br>

<br><lfg>Useful</lfg>
<div class="btn-success"> ... </div><br>
  

    
  
div:
<div class="btn-primary"> dasfa </div>  bialy
<div class="btn-success"> dasfa </div>  zielony
<div class="btn-info"> dasfa </div>     niebieski
<div class="btn-danger"> dasfa </div>   czerwony
<div class="btn-warning"> dasfa </div>  zolty

<div class="dwa"> dasfa dasf dasf  </div>
  
<div class="trzy"> dasfa dasf dasf  </div>
  
  
  
  #tekst ----

<span style="color:blue"> blebletg </span>
  
  *pochylone*
  
  **bold**
  
  ***   linia oddzielajaca

`verbatim`

`r kod`

: Definition 1


> black quote




# linki----

Jumto to [header](#anchor)
  {#anchor}
    
    [^1]:footnoten
    
    [link](http://adv-r.had.co.nz/)
    
    
    
# listy----
    1. 
    2.
    i)
A.



# tabele----
|A|B|C|
  |--:|:--|--|
  |1|2|3|
  |4|5|6|
  
  
  
# zdjecia----
![Opis bez numeracji](figures/snippety.png){ width=60% }

<img src="figures/RODBC_1.jpg" alt="RODBC_1">

```{r, eval=TRUE, echo=FALSE, fig.cap='opis z numeracja', out.width='500px'}
knitr::include_graphics('figures/snippety.png')
```



# bibiliography ---



# inne ----

<--! komentarz -->
  
  
  
  

# Modifying files names ---------------------------------------------------


# l.s::l.s.packages_basic()
# 
# files_names <- list.files(getwd()) %>% as_tibble()
# names(files_names)[1] <- 'file_name'
# 
# files_paths <- list.files(path = getwd(), full.names = TRUE) %>% as_tibble()
# names(files_paths)[1] <- 'file_path'
# 
# files <- bind_cols(files_names, files_paths)
# 
# files %<>% dplyr::filter(stringr::str_detect(file_name, 'Rmd$' )) %>% mutate(new_name = file_name)
# 
# files <- edit(files)
# 
# files %>% View
# 
# for(i in 1:nrow(files)){
#   if(files[i,] %>% pull(file_name) != files[i,] %>% pull(new_name) & str_detect(files[i,'new_name'], 'Rmd$') ){
#     file.rename(from = files[i,'file_name'], to = files[i,'new_name'] )
#   }
# }


# latex math----

Inline math is marked off witha pair of dollar
$\pi^2  
$\e^{2+1}
$pi_i
$pi_{ij}
$\frac{a+b}{b} = 1 + \frac{a}{b}

$\sum_{i=1}^{n}{x_i^2}
$\prod_{i=1}^{n}{x_i^2}
$\int_{i=1}^{n}{x_i^2}

$\hat{\beta}^j$

resizing braces using \left \right

\[
  \begin{eqnarray}
  P(|X-\mu| > k) & = & P(|X-\mu|^2 > k^2)\\
  & \leq & \frac{\mathbb{E}\left[|X-\mu|^2\right]}{k^2}\\
  & \leq & \frac{\mathrm{Var}[X]}{k^2}
  \end{eqnarray}
  \]


\times for ×
\cdot for ⋅
\leq and \geq for ≤ and ≥
\subset and \subseteq for ⊂ and ⊆
\leftarrow, \rightarrow, \Leftarrow, \Rightarrow for ←, →, ⇐, ⇒
\approx, \sim, \equiv for ≈, ∼,  ≡
\widehat{\mathrm{Var}} producing Varˆ
\Gamma
\gamma
\alpha
\beta
  
  