rmarkdown::render_site()


temp_page <- tempfile(fileext = ".html")
rmarkdown::render("index.rmd",
                  output_file = temp_page,
                  output_format = pagedown::html_paged(css = "assets/pagedown_style.css",
                                                       theme = "yeti"))
pagedown::chrome_print(input=temp_page,
                       output="docs/Figure_Guide.pdf")
