#include <ncurses/ncurses.h>
#include <unistd.h>

int main()
{
    int ch;
    initscr();  // Начать curses mode
    raw();      // Отключаем buffering. Ctrl+C не завершит программу
    noecho(); // Отключаем echo() режим пока считываем символы getch
    printw("Type text: \n");
    while( (ch = getch()) != '.')//если убрать то не сработает
    {
        printw("%c", ch);
    }
    //~ sleep(5);
    //~ refresh(); // Печатаем это на экран
    getch();   // Ждем пока пользователь нажмет клавишу
    endwin();  // Завершить curses mode
    return 0;
}
