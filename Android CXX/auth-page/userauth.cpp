#include "userauth.h"
#include "./ui_userauth.h"

userAuth::userAuth(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::userAuth)
{
    ui->setupUi(this);
}

userAuth::~userAuth()
{
    delete ui;
}
