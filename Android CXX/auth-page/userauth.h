#ifndef USERAUTH_H
#define USERAUTH_H

#include <QWidget>

QT_BEGIN_NAMESPACE
namespace Ui {
class userAuth;
}
QT_END_NAMESPACE

class userAuth : public QWidget
{
    Q_OBJECT

public:
    userAuth(QWidget *parent = nullptr);
    ~userAuth();

private:
    Ui::userAuth *ui;
};
#endif // USERAUTH_H
