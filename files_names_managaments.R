global_path <- getwd()

list_files <- list.files(global_path, recursive = FALSE, full.names = FALSE, include.dirs = FALSE)

files_extensions <- list_files %>% stringr::str_extract(pattern = '[^.]{1,}$')

files_names <- list_files %>% stringr::str_extract(pattern = '.{0,}(?=\\.[^.]{1,}$)')

files_metadata <- tibble(name = files_names, extension = files_extensions, new_name = '') %>% dplyr::filter(extension == 'Rmd')

# take this example to manual about regular expression
# str_extract('file.extension', '.{0,}(?=\\.[^.]{0,}$)')

l.e::l.e.e(files_metadata)

# openxlsx::write.xlsx(x = files_metadata, file = paste0(global_path, '/files_list.xlsx'))

new_names <- readxl::read_xlsx(path = paste0(global_path, '/files_list.xlsx'), sheet = 1)

# removing rows with empty cells with new_names
new_names %<>% dplyr::filter(new_name != '' & !is.na(new_name))

for(i in 1:nrow(new_names)){
  file.rename(from = paste0(new_names$name, '.Rmd'), to = paste0(new_names$new_name, '.Rmd'))
}

