#include "people.h"

People::People(QObject *parent):QObject(parent)
{

m_age = 0;
}


People::People( int age, QObject *parent):QObject(parent)
{
m_name = name;
m_age = age;
}



void People::setAge(int age){
    if(m_age == age)
        return;

    m_age = age;
    emit ageChanged(age);


}
void People::setName( const QString name){
    if(m_name == name)
        return;

    m_name = name;
    emit nameChanged(name);
}
