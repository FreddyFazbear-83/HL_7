//Структура "Двуязычный список" Это динамический список, где каждый элемент содержит пару слов на разных языках.

//Свойства:
//- Динамическое расширение: новые элементы могут быть добавлены по мере необходимости.
//- Связность: каждый элемент связан с предыдущим и следующим элементом (если они существуют).
//- Гибкость: можно легко добавлять, удалять и изменять элементы.

//Структура узла (записи):
//- Word1: слово на первом языке.
//- Word2: слово на втором языке.

//Хранение данных:
//Будем хранить массив из записей (структур), где каждая запись содержит пару слов на разных языках.

program HW;

const
  MAX_SIZE = 5; // Максимальный размер двуязычного списка

type
  TBilingualPair = record
    Word1: string;
    Word2: string;
  end;

var
  BilingualListArray: array[1..MAX_SIZE] of TBilingualPair;
  EntryCount: integer;

procedure AddWordPair;
begin
  if EntryCount < MAX_SIZE then
  begin
    Inc(EntryCount);
    writeln('Введите слово на первом языке:');
    readln(BilingualListArray[EntryCount].Word1);  //- Пользователь вводит два слова для новой записи, которая добавляется в двуязычный список.
    writeln('Введите слово на втором языке:');
    readln(BilingualListArray[EntryCount].Word2); //- Пока идет добавление, можно обращаться к любому элементу в списке по его индексу.
    writeln('Слова добавлены в двуязычный список.');
  end
  else
    writeln('Двуязычный список полон.');
end;

procedure DisplayBilingualList;
var
  i: integer;
begin
  writeln('Содержимое двуязычного списка:'); //- Программа выводит все пары слов, содержащихся в двуязычном списке.
  for i := 1 to EntryCount do
    writeln(BilingualListArray[i].Word1, ' - ', BilingualListArray[i].Word2);
end;

var
  Choice: integer;

begin
  EntryCount := 0;
//В кейс-меню используется цикл repeat...until, который предлагает пользователю выбор действия. В зависимости от выбора будет вызываться соответствующая функция. 
  repeat
    writeln('Меню:');
    writeln('1. Добавить пару слов в список');
    writeln('2. Показать содержимое списка'); 
    writeln('3. Выход');
    write('Выберите действие: ');
    readln(Choice);
    
    case Choice of
      1: AddWordPair;
      2: DisplayBilingualList;
      3: writeln('Завершение программы.'); 
    else
      writeln('Некорректный выбор. Попробуйте снова.');
    end;
  until Choice = 3;

end.