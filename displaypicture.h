#ifndef DISPLAYPICTURE_H
#define DISPLAYPICTURE_H

#include <QLabel>
#include <QDir>
#include <QTimer>
#include <QTime>

class displayPicture : public QLabel
{
	 Q_OBJECT
#if 0
public:
	explicit displayPicture(QWidget *parent = 0);
	~displayPicture();

	void get_file_list();

signals:

private slots:
	void dispPic();

private:
	//QVector<QPixmap *>  pic_map;      /*用来存放图片文件信息*/
	QPixmap *pic_map[50];
	QLabel *pic_label;                  /*用来显示图片的标签*/
	int pic_order;                      /*用来显示图片的顺序*/
	int pic_number;                     /*用来保存目录中图片的总数*/
	QTimer *disp_timer;                 /*用来控制显示图片的时间周期*/
#endif
public:
	displayPicture(QWidget *parent);
	void get_file_list();

	QPixmap *picmap[50];
	int valchanged;
	int k;
	int listlen;
private slots:
	void dispPic();

private:
   // QString str;
	QLabel *label_pic_dis;
};

#endif // DISPLAYPICTURE_H
