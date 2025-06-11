#include "userauth.h"

#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    userAuth w;
    w.show();
    return a.exec();
}
