/*************************************************************
File           :      disp_picture.h
Description    :      Define the class DisplayPicture for display
					  picture in ad_machine.
Date           :      2011-11-3
*************************************************************/
#ifndef DISP_PICTURE_H
#define DISP_PICTURE_H

#include <QLabel>
#include <QTimer>
#include <QDir>

class DisplayPicture : public QLabel
{
Q_OBJECT
public:
	DisplayPicture(QWidget *parent);
	void file_list();


private slots:
	void show_picture();

private:
	QLabel *label_pic_dis;      /*用来显示图片的标签*/
	QPixmap *picmap[50];        /*用来存放图片信息的指针数组*/
	int picNumber;
	int picOrder;
};
#endif // DISP_PICTURE_H
