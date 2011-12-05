#ifndef MAINFORM_H
#define MAINFORM_H

#include <QMainWindow>
#include "logo.h"
#include "show_message.h"

class mainForm : public QMainWindow
{
    Q_OBJECT
public:
	explicit mainForm(QMainWindow *parent = 0);
	void mainWindow();

private:
};

#endif // MAINFORM_H
