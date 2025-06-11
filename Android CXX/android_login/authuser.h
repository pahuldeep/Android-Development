#ifndef AUTHUSER_H
#define AUTHUSER_H

#include <QMainWindow>

QT_BEGIN_NAMESPACE
namespace Ui {
class authUser;
}
QT_END_NAMESPACE

class authUser : public QMainWindow
{
    Q_OBJECT

public:
    authUser(QWidget *parent = nullptr);
    ~authUser();

private:
    Ui::authUser *ui;
};
#endif // AUTHUSER_H
