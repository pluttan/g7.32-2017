#let authors_list = {
    [= Список исполнителей]
}
#let список_исполнителей = authors_list

#let abstract = {
    [= Реферат]
}
#let реферат = abstract

// Имя изменено, чтобы различать заголовок и структурный элемент
#let toc_heading = {
    [= Содержание]
}
#let содержание_заголовок = toc_heading

#let terms_and_definitions = {
    [= Термины и определения]
}
#let термины_и_определения = terms_and_definitions

#let abbreviations_and_designations = {
    [= Перечень сокращений и ссылок]
}
#let перечень_сокращений_и_ссылок = abbreviations_and_designations

#let introduction = {
    [= Введение]
}   
#let введение = introduction

#let conslusion = {
    [= Заключение]
}
#let заключение = conslusion

#let sources_list = {
    [= Список использованных источников]
}
#let список_использованных_источников = sources_list

#let appendix(number: ()) = {
    if number == () {
        number = ""
    }
    [= Приложение #number] // TODO: автоматические номера приложений
}
#let приложение(буква: ()) = appendix(number: буква)
