#include "mainform.h"
#include "disp_picture.h"
#include "clock.h"
#include "videoplayer.h"

mainForm::mainForm(QMainWindow *parent) :
	QMainWindow(parent)
{
#if 1
	/*Set message for display.*/
	showMessage *message = new showMessage(this);
	message->setMsg(QString::fromUtf8("NIce to meet you, good bye!"));

	/*Cyclic display pictures.*/
	DisplayPicture *disp = new DisplayPicture(this);
	mainWindow();

	/*Display clock.*/
	MyClock *clock1 = new MyClock(this);
	clock1->setGeometry(630,70, 100, 50);
	clock1->setFrameShape(QFrame::NoFrame);
	clock1->show();

	/*Display logo.*/
	MyLogo *log = new MyLogo(this);

	videoPlayer *player = new videoPlayer(this);

	player->setGeometry(0, 0, 560, 400);
	//player->play(QString::fromUtf8("../Iron.Man.mkv"));
	player->play(QString::fromUtf8("../cong.rmvb"));
#endif
}

void mainForm::mainWindow()
{
#if 1
	 /* 视频黑色背景 */
	QLabel *label_vedio = new QLabel(this);

	//QProcess *playProcess = new QProcess(label_vedio);

	label_vedio->setGeometry(0, 0, 560, 400);
	label_vedio->setAutoFillBackground (true);
	QPalette pal;
	pal.setColor(QPalette::Background, Qt::black);
	label_vedio->setPalette(pal);
#endif

#if 1
	/* 主窗体框 */
	QLabel *label_mainForm = new QLabel(this);
	QString filename = QString::fromUtf8("./system_picture/mainform.png");
	QPixmap *mypic = new QPixmap(filename);
	label_mainForm->setPixmap(*mypic);
	label_mainForm->setGeometry(0, 0, mypic->width(), mypic->height());
	this->setGeometry(150, 100, mypic->width(), mypic->height());
#endif
}
