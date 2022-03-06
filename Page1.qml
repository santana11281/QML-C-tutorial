import QtQuick 2.11
import QtQuick.Controls 2.3

Page{
    Button{
        id: button01
        text: "Button 01"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        onClicked: {

            stackView.push(page2)
        }
    }
    Text{
        id: myText
        text: "buttonId"
    }
    Connections{
        target: page2
        onButtonClicked: {

            myText.text = buttonId;
            stackView.pop();
        }

    }
}
