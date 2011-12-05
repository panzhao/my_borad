#include "show_message.h"

showMessage::showMessage(QWidget *parent) :
    QLabel(parent)
{
	/*message背景图片*/
	label_back_pic = new QLabel(parent);
	label_back_pic->setGeometry(QRect(0, 410, 800, 80));
	QString filename = QString::fromUtf8("./system_picture/tomandjerry.jpg");
	QPixmap *picmap = new QPixmap(filename);
	label_back_pic->setPixmap(picmap->scaled(label_back_pic->width(),label_back_pic->height()));

	/*message label*/
	toLeft = 799;
	labelMsg = new QLabel(parent);

   /* set font：绿色、FreeMono字体、40号*/
	QPalette pe;
	pe.setColor(QPalette::WindowText,Qt::green);
	labelMsg->setPalette(pe);
	labelMsg->setFont(QFont(QString::fromUtf8("hwls"), 40));

	/*timer*/
	dis_timer = new QTimer(parent);
	QObject::connect(dis_timer, SIGNAL(timeout()), this, SLOT(showMsg()));
	dis_timer->stop();
	dis_timer->start(10);
}

showMessage::~showMessage()
{
	 delete label_back_pic;
	 delete labelMsg;
	 delete dis_timer;
}

/*****************************************************************
Function      :    setMsg
Description   :    Set string for labMsg
Input         :    msg    :  contents fof labMsg
Output        :    void
Return        :    void
*****************************************************************/
void showMessage::setMsg(QString msg)
{
	/*Set message for labelMsg!*/
	labelMsg->setText(msg);
	labWidth = labelMsg->fontMetrics().width(labelMsg->text());
}

/*****************************************************************
Function      :    showMsg
Description   :    Display the string of labMSg!
Input         :    void
Output        :    void
Return        :    void
*****************************************************************/
void showMessage::showMsg()
{
	toLeft--;
	if (toLeft + labWidth <= 0)
	{
		toLeft = 799;
	}

	labelMsg->setGeometry(toLeft, 410, labWidth, 70);
}
