#pragma once
#include "ui_MainWindow.h"

struct lua_State;

class MainWindow : public QMainWindow
{
	Q_OBJECT

public:

	 MainWindow( QWidget* parent = nullptr );
	~MainWindow( void );

private slots:

	void RunScript( void );

private:

	Ui::MainWindow m_ui;

	lua_State* L;

};
