#include <QApplication>
#include <QLabel>
#include "clock.h"
#include "logo.h"
#include "mainform.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
	/*test of clock*/
	//MyClock clock;

	/*test of logo*/
	mainForm form;
	form.show();
//MyLogo n;
	//n.show();
    return app.exec();
}
