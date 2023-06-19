#include "../inc/Controller.h"
#include <ncurses.h>

void displayInit(Controller &controller) {
    initscr();
    cbreak();
    noecho();
    curs_set(0);
    start_color();
    init_pair(1, COLOR_WHITE, COLOR_BLACK);
    init_pair(2, COLOR_RED, COLOR_BLACK);
    init_pair(3, COLOR_YELLOW, COLOR_BLACK);
    init_pair(4, COLOR_GREEN, COLOR_BLACK);
    init_pair(5, COLOR_MAGENTA, COLOR_BLACK);

    printw("|-----------------------------------------------------------------------------------------|\n");
    printw("|  Queue INSIDE:                                                                          |\n");
    printw("|-----------------------------------------------------------------------------------------|\n");
    printw("| Queue OUTSIDE:                                                                          |\n");
    printw("|-----------------------------------------------------------------------------------------|\n");
    for (size_t i = 0; i < (controller.getBridges().at(0)->getQueueInside().size() + controller.getBridges().at(0)->getQueueOutside().size()); i++) {
        printw("| %3d                                                                                     |\n", i+1);
    }
    printw("|-----------------------------------------------------------------------------------------|\n");

    refresh();
    getch();
}

void displayRefresh(Controller &controller) {
    int startY = 5;
    int startX = 10;
    auto bridgesList = controller.getBridges();
    for (size_t i = 0; i < bridgesList.size(); i++) {
        auto queueInside = bridgesList.at(i)->getQueueInside();
        auto queueOutside = bridgesList.at(i)->getQueueOutside();
        for (size_t j = 0; j < queueInside.size(); j++) {
            move(startY + j, startX);
            printw("Inside queue: %d", queueInside.at(j));
            move(startY + j + 2, startX);
            printw("Outside queue: %d", queueOutside.at(j));
        }
    }

    refresh();
    getch();
}


int main() {
    int number = 3;
    Controller *controller = new Controller(number);
    std::thread mainThread(&Controller::operate, controller);

    displayInit(*controller);

    while(true) {
        displayRefresh(*controller);
    }

    endwin();
}

