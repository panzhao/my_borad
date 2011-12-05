#ifndef VIDEOPLAYER_H
#define VIDEOPLAYER_H

#include <QWidget>
#include <QString>
#include <QProcess>

class videoPlayer:public QWidget
{
public:

Q_OBJECT

public:
	videoPlayer(QWidget *parent = NULL);
	~videoPlayer();
	void play(const QString &fileName);
	void controlCmd(const QString &cmd);

signals:
	void started();
	void error(QProcess::ProcessError);
	void finished(int, QProcess::ExitStatus);
	void readyReadStandardOutput();

protected:
	void resizeEvent(QResizeEvent * event);

private:
	QWidget *renderTarget;
	QProcess *mplayerProcess;

};

#endif // VIDEOPLAYER_H
