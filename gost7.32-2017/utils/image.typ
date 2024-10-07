#import "../g7.32-2017.config.typ":config

// Выводит изображение
#let figure(data, lable, f:(i)=>{i.display()}) = {
    align(center)[
        #data
        #config.image.counter.step()
    ]
    align(center)[
        Рисунок #f(config.image.counter) #sym.bar.h #lable
    ]
}

#let рисунок(данные, описание, ф:(i)=>{i.display()}) = figure(данные, описание, f:ф)

// Инкрементирует номер рисунка
#let figure_count() = {
    align(center)[
        #config.image.counter.step()
        #config.image.counter.display()
    ]
}

#let рисунок_номер() = {figure_count()}
