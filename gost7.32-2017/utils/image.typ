#import "../g7.32-2017.config.typ":config

// Выводит изображение
#let img(data, lable, f:(i)=>{i.display()}) = {
    align(center)[
        #data
        #config.image.counter.step()
    ]
    align(center)[
        Рисунок #f(config.image.counter) #sym.bar.h _ #lable _
    ]
}

#let рис(данные, описание, ф:(i)=>{i.display()}) = {img(данные, описание, f:ф)}

// Инкрементирует номер рисунка
#let imgc() = {
    align(center)[
        #config.image.counter.step()
        #config.image.counter.display()
    ]
}

#let рисп() = {imgc()}