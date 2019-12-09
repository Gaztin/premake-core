#pragma once
#include "ui_MainWindow.h"

class MainWindow : public QMainWindow
{
	Q_OBJECT

public:

	MainWindow( QWidget* parent = nullptr );

private:

	Ui::MainWindow m_ui;

};
