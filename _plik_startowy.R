
bookdown::serve_book(  dir        = '.'
                     , output_dir = 'docs'
                     , preview    = TRUE
                     , in_session = TRUE)



# bookdown::render_book(  input = '01_01_02_Univariate_Descriptive_statistics.RMD'
#                       # , output_format = 'html_document'
#                       , preview = TRUE
#                       , new_session = FALSE
#                       , output_dir = '_book')


#    shell.exec(paste0(getwd(), '/_book/index.html' ) )



