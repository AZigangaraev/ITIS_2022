# Домашняя работа

Создать новый проект — каталог объекта типа `T` (хотите, известных личностей, хотите, моделей автомобилей, чего угодно):

1.  Не должно быть сторибордов / xib;  
2.  Должен быть автолейаут, можно использовать и `UIStackView`;  
3.  Список должен состоять из как минимум двух секций:  
    3.1.  1-я секция пусть состоит из 5-10 ячеек стандартного типа (которые конфигурируются с помощью `UIListContentConfiguration`): с текстом и иконкой; 2-3 из них — ячейки ещё и с текстом справа, например: [(!) Дней без происшествий <тут пустота> 10]  
    3.2  2-я секция должна состоять из кастомных ячеек (10+ штук), при этом на ячейке нужно отобразить как минимум четыре поля объекта типа `Т`, например, для автомобиля можно указать "вес, цена, максимальная скорость, расход топлива"  
4.  Первая секция должна быть с ячейками, которые не нажимаются (например, см. `UITableViewDelegate`, там есть функция `tableView(_:shouldHighlightRowAt:)`)  
5.  По нажатию на вторую секцию нужно развыделять ячейку и принтить описание объекта, который находится в ячейке.  
6.  Все данные для таблицы должны находиться в каком-то массиве или другом типе контейнера данных, генерировать данные на основе indexPath запрещено.
