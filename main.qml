import QtQuick
import QtQuick.Controls 2.1
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.3


ApplicationWindow {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    /* 13 - stackview*/

    /*
    StackView {
        id: stack
        initialItem: mainView
        anchors.fill: parent
    }

    Component {
        id: mainView

        Row {
            spacing: 10

            Button {
                text: "Push"
                onClicked: stack.push(mainView)
            }
            Button {
                text: "Pop"
                enabled: stack.depth > 1
                onClicked: stack.pop()

            }
            Text {
                text: stack.depth
            }
        }
    }
    */

    /* 14 - progress bar*/
    /*
    ColumnLayout {
        id: columnLayout
        anchors.fill: parent
        spacing: 10
        ProgressBar {
            id: progressBar
            anchors.fill: parent
            value: slider.value
            from: slider.from
            to: slider.to
        }

        Slider {
            Layout.fillWidth: true
            id: slider
            from: 0
            to: 100
            stepSize: 1
            value: 50
        }
        Text {
            Layout.fillWidth: true
            text: progressBar.value
        }
    }
    */

    /* 15 - spinbox*/

    /*
    ColumnLayout {
        id: columnLayout
        anchors.fill: parent

        ProgressBar {
            id: progressBar
            value: spinBox.value
            from: spinBox.from
            to: spinBox.to
            Layout.fillWidth: true

            SpinBox {
                id: spinBox
                from: 0
                stepSize: 10
                to: 100
                height: 50
                width: 50
                Layout.fillWidth: true



            }
        }
    }
    */

    /* 16 - combobox*/
    /*
    ColumnLayout{
        anchors.fill: parent

        Text{
            text: "ComboBox"
            Layout.fillWidth: true
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter

        }
        ComboBox{
            id: comboBox
            Layout.fillWidth: true

            model: ListModel {
            ListElement {
                text: "Item 1"
            }
            ListElement {
                text: "Item 2"
            }
            ListElement {
                text: "Item 3"
            }

        }


    }
}
*/

/* 17 - switch*/
/*
ColumnLayout{
    anchors.fill: parent
    Repeater {
        model: ListModel {
        ListElement {
            myText: "Item 1"
        }
        ListElement {
            myText: "Item 2"
        }
        ListElement {
            myText: "Item 3"
        }

    }

    Switch {
        text: myText
    }


}
Text {
    text: myText
}
}

*/

/* 18 - dial */
/*
ColumnLayout{
    anchors.fill: parent

    Text{
        text: "Dial"
    }

    ProgressBar{
        id: progressBar
        Layout.fillWidth: true
        from: myDial.from
        to: myDial.to
        value: myDial.value
    }
    Dial{
        id: myDial
        from: 0
        to: 100
        stepSize: 1
        value: 50
        Layout.fillWidth: true
        Layout.fillHeight: true
    }

}
*/

/* 19 - TextArea */
    /*
ColumnLayout{
    anchors.fill: parent

    ScrollView{
        Layout.fillHeight: true
        Layout.fillWidth: true

        TextArea {
            style:TextAreaStyle  {
                textColor: "#333"
                selectionColor: "steelblue"
                selectedTextColor: "#eee"
                backgroundColor: "#eee"
            }
        }


    }
}
*/

    /*20 - alias*/

MainPage{
id:mainpage01
anchors.fill: parent
Button{

text: "Color"
anchors.centerIn: parent
onClicked: {

    mainpage01.section1.rect.color ="orange"
    mainpage01.section2.rect.color ="pink"

}
}
}

}
