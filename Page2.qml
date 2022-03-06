import QtQuick 2.11
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Page{

signal buttonClicked(var buttonId)
    ColumnLayout{
        id:myButtons
        spacing: 5
        signal buttonClick(var buttonID)

        anchors.fill: parent
        Button{
            id:button1

            Layout.fillWidth: true
            Layout.fillHeight: true
            text: "option 01"


        }
        Button{
                        id:button2
            Layout.fillWidth: true
            Layout.fillHeight: true
            text: "option 02"


        }
        Button{
                        id:button3
            Layout.fillWidth: true
            Layout.fillHeight: true
            text: "option 03"
        }

        Connections{
            target: button1
            onClicked:{

            buttonClicked(1);
            }
        }
        Connections{
            target: button2
            onClicked:{

            buttonClicked(2);
            }
        }
        Connections{
            target: button3
            onClicked:{

            buttonClicked(3);

            }
        }

    }
}
