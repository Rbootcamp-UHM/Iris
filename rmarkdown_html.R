require(rmarkdown)

## To generate an html page from Rmarkdown:
render("markdown_example.Rmd", output_format="html_document")

## To generate an ugly word doc from Rmarkdown:
# render("markdown_example.Rmd", output_format="word_document")

## To generate a pdf from Rmarkdown:
# render("markdown_example.Rmd", output_format="pdf_document")