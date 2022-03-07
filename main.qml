import QtQuick
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.3




ApplicationWindow {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    /*32 - animation*/
    /*
    Component.onCompleted: {
        animation01.start()
        animation02.start()

    }

    Rectangle {
        id: rectangle
        width: 55
        height: 55
        color: "red"
        x: 0
        y: 0

    }

    NumberAnimation {
        id: animation01
        target: rectangle
        property: "x"
        duration: 2000
        easing.type: Easing.InOutQuad
        from: 0
        to: mainWindow.width
    }

    NumberAnimation {
        id: animation02
        target: rectangle
        property: "y"
        duration: 2000
        easing.type: Easing.InOutQuad
        from: 0
        to: mainWindow.height

    }

    */

    /* 33 - Dialog*/
    /*
    Dialog {
        anchors.centerIn: parent
        id: dialog
        title: "Title"
        standardButtons: Dialog.Ok | Dialog.Cancel

        onAccepted: console.log("Ok clicked")
        onRejected: console.log("Cancel clicked")
    }

    Button{
        anchors.centerIn: parent
        id: openDialog
        text: "open dialog"
        onClicked: {

            dialog.open()
        }

    }
    */

    /* 39 - filedialog*/

/*
    FileDialog {
        id: fileDialog
        title: "Please choose a file"
        folder: shortcuts.home
        onAccepted: {
            console.log("You chose: " + fileDialog.fileUrls)
            Qt.quit()
        }
        onRejected: {
            console.log("Canceled")
            Qt.quit()
        }
        Component.onCompleted: visible = true
    }

    Button {
        anchors.centerIn: parent
        text: "Open file dialog"
        onClicked: fileDialog.open()

    }
    */
     /* 40- tumbler*/
    /*
    Tumbler {
        model: 5
        // ...
    }
    */
    /* 41 QML - QtCharts*/
/*
    ChartView {
        width: 400
        height: 300
        theme: ChartView.ChartThemeBrownSand
        antialiasing: true

        PieSeries {
            id: pieSeries
            PieSlice { label: "eaten"; value: 94.9 }
            PieSlice { label: "not yet eaten"; value: 5.1 }
        }
    }*/
    /* 41 - GroupBox*/
    /*
    GroupBox {
        label: CheckBox {
            id: checkBox
            checked: true
            text: qsTr("Synchronize")
        }

        ColumnLayout {
            anchors.fill: parent
            enabled: checkBox.checked
            CheckBox { text: qsTr("E-mail") }
            CheckBox { text: qsTr("Calendar") }
            CheckBox { text: qsTr("Contacts") }
        }
    }*/

}
