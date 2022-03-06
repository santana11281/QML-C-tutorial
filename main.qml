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
    /* 17 - Signals & Connections*/
    /*
    property Page1 page1: Page1{}
    property Page2 page2: Page2{}

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: page1
    }
    */

    /* 18 - QML - Qt.createQmlObject*/
    /*
    Column{
        id: myColumn
        Button{
            id: myButton
            text: "create qml object"
            onClicked: {
                var qml =`
import QtQuick
import QtQuick.Controls 2.1
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.3
Page{
    id: myPage
    Button{
        id: myButton01
        text: "test 01"
    }
}
`
var element = Qt.createQmlObject(qml, myColumn, "snippet01")
}
}
}
*/

/* 19 - drag and drop*/

property int fromIndex: -1
property int toIndex: -1

Component.onCompleted: {

    myGrid.model.append({"rectcolor": "black", "textcolor": "white"});
    myGrid.model.append({"rectcolor": "red", "textcolor": "white"});
    myGrid.model.append({"rectcolor": "green", "textcolor": "white"});
    myGrid.model.append({"rectcolor": "blue", "textcolor": "white"});
    myGrid.model.append({"rectcolor": "yellow", "textcolor": "white"});
    myGrid.model.append({"rectcolor": "orange", "textcolor": "white"});
    myGrid.model.append({"rectcolor": "purple", "textcolor": "white"});
    myGrid.model.append({"rectcolor": "pink", "textcolor": "white"});
    myGrid.model.append({"rectcolor": "brown", "textcolor": "white"});
    myGrid.model.append({"rectcolor": "gray", "textcolor": "white"});
    myGrid.model.append({"rectcolor": "white", "textcolor": "black"});

}

Rectangle{
    id: headerRect
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.right: parent.right
    height: 50
    color: "white"
    Text{
        id: resultText
        anchors.centerIn: parent
        font.pointSize: 30
        text: "arrastre y suelte"
    }
}

Item{
    id: containerItem
    anchors.top: headerRect.bottom
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    GridView{
        id: myGrid
        anchors.fill: parent
        model: ListModel{}
        cellWidth: myGrid.width/4
        cellHeight: 100
        DropArea{
            id: dropArea
            anchors.fill: parent
            onDropped: {

                toIndex = myGrid.indexAt(dropArea.drag.x, dropArea.drag.y);
                var result = "El " + myGrid.model.get(fromIndex).rectcolor + " sobre el  "+
                        myGrid.model.get(toIndex).rectcolor;
                resultText.text = result;
            }
        }
        delegate:
        Rectangle{
            id: rect
            Drag.active: rectMouseArea.drag.active
            Drag.hotSpot.x: rect.width/2
            Drag.hotSpot.y: rect.height/2

            color: rectcolor
            radius: 5
            width: myGrid.cellWidth*0.9
            height: myGrid.cellHeight*0.9
            states: [
                State{
                    when: rect.Drag.active
                    ParentChange{
                        target: rect
                        parent: myGrid.parent

                    }
                    AnchorChanges{
                        target: rect
                        anchors.horizontalCenter: undifined
                        anchors.verticalCenter: undifined
                    }
                }

            ]
            Text{
                id: text
                anchors.centerIn: parent
                font.pointSize: 30
                text: rectcolor
                color: textcolor
            }
            MouseArea{
                id: rectMouseArea
                anchors.fill: parent
                drag.target: rect
                drag.onActiveChanged: {
                    if(rectMouseArea.drag.active)
                    {
                        myGrid.model.move(index, myGrid.model.count-1, 1);
                        fromIndex = index;
                    }
                    rect.Drag.drop();
                }
            }

        }
    }
}
}
