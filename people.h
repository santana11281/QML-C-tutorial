#ifndef PEOPLE_H
#define PEOPLE_H

#include <QObject>

class People : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
    Q_PROPERTY(int age READ age WRITE setAge NOTIFY ageChanged)
public:
    explicit People(QObject *parent = nullptr);
    People( int age, QObject *parent = nullptr);


QString name() const{

    return m_name;
}
int age() const{

    return m_age;
}   


void setName ( QString name);
void setAge ( int age);


signals:
void nameChanged();
void ageChanged();

private:
QString m_name;
int m_age;



};

#endif // PEOPLE_H
