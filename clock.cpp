/************************************************************
文    件:     clock.cpp
功    能:     实现钟表类的方法
函数列表:     
日    期:
*************************************************************/
#include <QTime>
#include <QTimer>
#include "clock.h"

MyClock::MyClock(QWidget *parent)
:QLCDNumber(parent)
{
	setSegmentStyle(Filled);
    QTimer *timer = new QTimer(this);
    
    QObject::connect(timer, SIGNAL(timeout()), this, SLOT(show_time()));
    timer->start(1000);
	show();
}

void MyClock::show_time()
{
    QString time = QTime::currentTime().toString("hh:mm:ss");
    setNumDigits(8);
    display(time);

}
