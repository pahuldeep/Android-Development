#include "authuser.h"

#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    authUser w;
    w.show();
    return a.exec();
}
