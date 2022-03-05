#include "someclass.h"
#include <QDebug>

SomeClass::SomeClass(QObject *parent)
    : QObject{parent}
{

}

void SomeClass::callMe()
{

    qDebug() << "i am being called";

}
