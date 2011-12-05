#ifndef LOGO_H
#define LOGO_H

#include <QLabel>
#include <QString>

class MyLogo:public QLabel
{
public:
	MyLogo(QWidget *parent = NULL);
private:
	QString filename;
};

#endif // LOGO_H
