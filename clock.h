/************************************************************
文    件:         clock.h
功    能:         
函数列表:
日    期:
*************************************************************/
#ifndef MYCLOCL_H
#define MYCLOCL_H
#include <QLCDNumber>

class MyClock:public QLCDNumber
{
    Q_OBJECT
public:
    MyClock(QWidget *parent = NULL);

private slots:
    void show_time();
};

#endif
