#include "MainWindow.h"

extern "C"
{
#include "premake.h"
}

MainWindow::MainWindow( QWidget* parent )
	: QMainWindow( parent )
{
	m_ui.setupUi( this );

	L = luaL_newstate();
	luaL_openlibs( L );

	if( premake_init( L ) == OKAY )
	{
		connect( m_ui.pushButtonRun, &QPushButton::clicked, this, &MainWindow::RunScript );
	}
	else
	{
		m_ui.pushButtonRun->setDisabled( true );
	}
}

MainWindow::~MainWindow( void )
{
	lua_close( L );
}

void MainWindow::RunScript( void )
{
	QString script_arg = "--script=";
	script_arg += m_ui.lineEditScriptPath->text();

	const int   argc = 3;
	const char* argv[ argc ]
	{
		qPrintable( qApp->applicationFilePath() ),
		"vs2017",
		qPrintable( script_arg ),
	};

	if( premake_execute( L, argc, argv, "src/_premake_main.lua" ) == OKAY )
	{
		m_ui.statusbar->showMessage( "Execute succeeded!" );
	}
	else
	{
		m_ui.statusbar->showMessage( "Execute failed.." );
	}
}
