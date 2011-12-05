#include "disp_picture.h"

DisplayPicture::DisplayPicture(QWidget *parent) :
    QLabel(parent)
{
	picNumber = 0;
	picOrder = 0;
	file_list();
	label_pic_dis = new QLabel(parent);
	label_pic_dis->setGeometry(569, 139, 240, 261);
	show_picture();
	QTimer *timer1 = new QTimer(parent);
	QObject::connect(timer1,SIGNAL(timeout()),this,SLOT(show_picture()));

	timer1->stop();
	timer1->start(2000);
}
/*****************************************************************
Function      :    file_list
Description   :    Get the file infromation of ./picture and store in picmap.
Input         :    void
Output        :    void
Return        :    void
*****************************************************************/
void DisplayPicture::file_list()
{
	QDir *dir = new QDir("./picture");

	QStringList filters;
	filters << "*.jpg"<<"*.bmp"<<"*.jpeg";

	QStringList *stringlist = new QStringList();
	*stringlist = dir->entryList(filters);
	dir->setNameFilters(filters);

	picNumber = stringlist->count();

	for (int i = 0; i < picNumber; i++)
	{
		picmap[i] = new QPixmap("./picture/" + stringlist->at(i));
	}


	delete dir;
	delete stringlist;
}

/*****************************************************************
Function      :    show_picture
Description   :    Dispay picture on the label_pic_dis.
Input         :    void
Output        :    void
Return        :    void
*****************************************************************/
void DisplayPicture::show_picture()
{
	label_pic_dis->setPixmap(picmap[picOrder]->scaled(label_pic_dis->width(),label_pic_dis->height()));
	picOrder++;

	if(picOrder >= picNumber)
	{
		picOrder = 0;
	}
 #if 0
	if(valchanged == 1)
	{
		file_list();
		valchanged = 0;
	}
#endif
}
