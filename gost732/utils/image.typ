#import "../g7.32-2017.config.typ":config

// Выводит изображение
#let img(data, lable, f:(i)=>{i.display()}) = {
    align(center)[
        #data
        #config.img.counter.step()
    ]
    align(center)[
        Рисунок #f(config.img.counter) #sym.bar.h #lable
    ]
}

#let рисунок(данные, описание, ф:(i)=>{i.display()}) = img(данные, описание, f:ф)
#let рис(данные, описание, ф:(i)=>{i.display()}) = img(данные, описание, f:ф)

// Инкрементирует номер рисунка
#let img_count() = {
    align(center)[
        #config.image.counter.step()
        #config.image.counter.display()
    ]
}

#let рисунок_номер() = img_count()
