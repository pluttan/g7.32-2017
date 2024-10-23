#import "../g7.32-2017.config.typ":config

#let theme = "../themes/"+config.raw.theme
#if (config.raw.theme != ""){
    set raw(theme:theme)
}

// Функция разбивающая файл на подстроки по пробелам в начале строки
// [@example 
// ```cpp
// int qu(){
//     return 1;
// }
// 
// int main(){
//     return 0;
// }
// ``` => ```typst ('int qu(){\n    return 1;\n', '}', 'int main(){    return 0;\n', '}')```
// ]
#let parse(lst) = {
    let carr = ()
    let i = 0
    let fnc = ""
    let nocol = 1
    lst = lst.split("")
    let func = 0
    while (i < lst.len()) {
        let dict = (
            text: "",
            tab : 0,
            func: func,
            nocol: nocol,
            len: 0,
        )
        let predi = i
        let tab = true
        while (i < lst.len() and lst.at(i)!="\n"){
            if (tab and lst.at(i)==" "){
                dict.tab+=1
            }
            if (tab and lst.at(i) != " "){
                if (dict.tab == 0){
                    func = nocol
                }
                tab = false
            }
            dict.text += lst.at(i)
            i += 1
        }
        dict.len = i - predi
        dict.func = func
        carr.push(dict)
        nocol += 1
        i += 1
    }
    return carr
}

// deprecated
#let parsercpp(lst) = parse(lst)
#let parserasm(lst) = parse(lst)
// end-deprecated

#let разбор(лист) = parse(лист)

// Функция, выводящая переданное значение от f-той строки до t-той
#let subtext_from_to(text, from, to) = {
    let fi = 0
    let i = 0
    let fo = 0
    let out = ""
    let nlst = ()
    text = text.split("\n")
    while (i < text.len()) {
        i += 1
        if (i >= from and i <= to) {
            nlst.push(text.at(i))
        }
    }
    return nlst.join("\n")
}

#let подтекст_начало_конец(текст, начало, конец) = subtext_from_to(текст, начало, конец)

#let find_string(carr, no) = {
    let out = ""
    for i in carr {
        if (i.func == no){
            out += i.text + "\n"
        }
    }
    return out
}


#let find_strings(carr, func) = {
    let out = ""
    for i in carr {
        if (i.text == func){
            return find_string(carr, i.func)
        }
    }
    return ""
}

#let найти_строку(carr, no) = find_string(carr, no);
#let найти_строки(carr, func) = find_strings(carr, func);

// Функция, выводящая код по ГОСТу
#let code(
    data, 
    lang, 
    lable, 
    num: config.raw.num, 
    num_splitter: config.raw.splitter, 
    size: config.raw.size
) = {
    [
        #set text(size)
        #if (num){
            show raw.line: it => {
                if (it.number < 10){h(0.6em)}
                text(fill: gray)[#it.number]
                h(0.2em)
                text(fill: gray)[num_splitter]
                h(0.5em)
                it.body
            }
            align(center)[
                #if(config.raw.theme!=""){
                    raw(data, lang:lang, theme:theme)
                } else {
                    raw(data, lang:lang)
                }
                #config.raw.counter.step()
            ]
        } else {
            align(center)[
                #if(config.raw.theme!=""){
                    raw(data, lang:lang, theme:theme)
                } else {
                    raw(data, lang:lang)
                }
                #config.raw.counter.step()
            ]
        }
    ]
    align(center)[ 
        Листинг #config.raw.counter.display() #sym.bar.h #lable
    ]
}

#let листинг(
    текст, 
    язык, 
    описание, 
    нумерация: config.raw.num, 
    разделитель: config.raw.splitter, 
    размер: config.raw.size
) = code(текст, язык, описание, num: нумерация, num_splitter: разделитель, size: размер)
