#include "videoplayer.h"

videoPlayer::videoPlayer(QWidget * parent)
	: QWidget(parent)
{
	renderTarget = new QWidget(this);
	renderTarget->setGeometry(0, 0, 560, 400);
	mplayerProcess = new QProcess(this);
	connect(mplayerProcess, SIGNAL(started()), this, SIGNAL(started()));
	connect(mplayerProcess, SIGNAL(error(QProcess::ProcessError)), this, SIGNAL(error(QProcess::ProcessError)));
	connect(mplayerProcess, SIGNAL(finished(int, QProcess::ExitStatus)),
			this, SIGNAL(finished(int, QProcess::ExitStatus)));
	connect(mplayerProcess, SIGNAL(readyReadStandardOutput()), this, SIGNAL(readyReadStandardOutput()));
}

videoPlayer::~videoPlayer()
{}
#if 1
void videoPlayer::play(const QString &fileName)
{
	QStringList args;
	args << tr("-slave");
	args << "-quiet";
	args << "-zoom";
	args << tr("-wid") << QString::number(renderTarget->winId());
	args << fileName;
	mplayerProcess->start(tr("/usr/bin/mplayer"), args);
	emit started();
}

void videoPlayer::controlCmd(const QString &cmd)
{
	mplayerProcess->write(cmd.toLatin1());
}

void videoPlayer::resizeEvent(QResizeEvent * event)
{
	//renderTarget->resize(event->size());
}

#endif
