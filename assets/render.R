rmarkdown::render("index.rmd",
                  output_dir = "pagedown",
                  output_format = pagedown::html_paged(css = "assets/pagedown_style.css",
                                                       theme = "yeti"))
pagedown::chrome_print(input="pagedown/index.html",
                       output="Figure_Guide.pdf")
