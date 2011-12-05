#ifndef SHOW_MESSAGE_H
#define SHOW_MESSAGE_H

#include <QLabel>
#include <QString>
#include <QTimer>

class showMessage : public QLabel
{
    Q_OBJECT
public:
	explicit showMessage(QWidget *parent = 0);
	~showMessage();
	void setMsg(QString msg);  /*为显示字体标签设置显示内容*/

public slots:
	void showMsg();

private:
	int toLeft;                /*控制字体向左滚动显示的坐标*/
	int labWidth;              /*控制标签的显示宽度*/
	QLabel *labelMsg;          /*显示滚动信息的标签*/
	QLabel *label_back_pic;    /*设置显示滚动字条背景图片*/
	QTimer *dis_timer;         /*显示时间的时钟*/

};

#endif // SHOW_MESSAGE_H
