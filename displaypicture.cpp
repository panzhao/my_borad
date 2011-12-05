#include "displaypicture.h"

displayPicture::displayPicture(QWidget *parent) :
    QLabel(parent)
{
#if 0
	pic_number = 0;
	pic_order  = 0;

	get_file_list();

	pic_label = new QLabel;
	pic_label->setGeometry(300, 139, 240, 261);

	dispPic();

	disp_timer = new QTimer(parent);
	connect(disp_timer, SIGNAL(timeout()), this, SLOT(dispPic()));

	disp_timer->stop();
	disp_timer->start(1000);
#endif
	k = 0;
	listlen = 0;
	valchanged = 0;
	get_file_list();
	label_pic_dis = new QLabel(parent);
	label_pic_dis->setGeometry(569, 139, 240, 261);
	dispPic();
	QTimer *timer1 = new QTimer(parent);
	QObject::connect(timer1,SIGNAL(timeout()),this,SLOT(dispPic));

	timer1->stop();
	timer1->start(2000);
}

#if 0
displayPicture::~displayPicture()
{
	//delete dir;
	delete pic_label;
}
#endif

/*****************************************************************
Function      :    get_file_list
Description   :    Get picture infromation and stroe in QVector<QPixmap *>
Input         :    void
Output        :    void
Return        :    void
*****************************************************************/
void displayPicture::get_file_list()
{
#if 0
	QDir *	dir = new QDir("./picture");                      /*use ./picture initlize dir*/
	QStringList filters;
	filters << "*.jpg"<<"*.bmp"<<"*.jpeg";

	QStringList *stringlist = new QStringList();
	*stringlist = dir->entryList(filters);

	dir->setNameFilters(filters);

	pic_number = stringlist->count();

	for (int i = 0; i < pic_number; i++)
	{
		pic_map[i] = (new QPixmap("./picture/" + stringlist->at(i)));
	}

	delete stringlist;
#endif
   QDir *dir = new QDir("./picture");

	QStringList filters;
	//QStringList *filters = new QStringList();
	filters << "*.jpg"<<"*.bmp"<<"*.jpeg";

	QStringList *stringlist = new QStringList();
	*stringlist = dir->entryList(filters);
	dir->setNameFilters(filters);

	listlen = stringlist->count();
	//listlen = filters->count();

	for (int i = 0; i < listlen; i++)
	{
		picmap[i] = new QPixmap("./picture/" + stringlist->at(i));
		//picmap[i] = new QPixmap("./picture/" + filters->at(i));
	}


	delete dir;
	delete stringlist;
}

/*****************************************************************
Function      :    get_file_list
Description   :    Get picture infromation and stroe in QVector<QPixmap *>
Input         :    void
Output        :    void
Return        :    void
*****************************************************************/
void displayPicture::dispPic()
{
#if 0
	pic_label->setPixmap(pic_map[pic_order]->scaled(pic_label->width(), pic_label->height()));
	pic_order++;

	if(pic_order >= pic_number)
	{
		pic_order = 0;
	}

	if(valchanged == 1)
	{
		file_list();
		valchanged = 0;
	}
#endif

	label_pic_dis->setPixmap(picmap[k]->scaled(label_pic_dis->width(),label_pic_dis->height()));
	k++;
	if(k >= listlen)
		k = 0;
 #if 1
	if(valchanged == 1)
	{
		get_file_list();
		valchanged = 0;
	}
#endif
}
