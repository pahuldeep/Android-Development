#include "authuser.h"
#include "./ui_authuser.h"

authUser::authUser(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::authUser)
{
    ui->setupUi(this);
}

authUser::~authUser()
{
    delete ui;
}
