import qbs.FileInfo

QtApplication
{
	Depends { name: "Qt.widgets" }

	files: [
		"main.cpp",
		"MainWindow.cpp",
		"MainWindow.h",
		"MainWindow.ui",
	]

	install: true
}
