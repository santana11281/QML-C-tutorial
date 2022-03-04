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
    /*
    Material.theme: Material.Dark
    Material.accent: Material.Purple
    */
    /* 01 - button / label / menu*/
    /*
    Label{
        id: labelcenter
        anchors.centerIn: parent
        text: "my Text is here"
        font.pointSize: 28
    }
    Button{
        id: button01
        text: "abrir menu"
        onClicked: {
            menu01.open()

        }
    }

    Menu {
        id: menu01
        title: "Menu"
        y: button01.height

        MenuItem {
            text: "Item 1"
            onClicked: {
                menu01.visible = false
                labelcenter.text = "item 1"
            }
        }
        MenuItem {
            text: "Item 2"
            onClicked: {
                menu01.visible = false
                labelcenter.text = "item 2"
            }
        }
    }
    */

    /* 02 - ListView /Component model: ListModel{}*/
    /*


    Component.onCompleted: {
        var colores = ["red", "blue", "white", "yellow"]
        for(var ix = 0 ; ix<3;ix++){
        myList.model.append({valorTexto: "hola "+ix, colorFondo: colores[ix]})
    }
}


ListView{

    anchors.fill: parent
    id: myList
    model: ListModel{}
    spacing: 5

    delegate: Rectangle{

    color: colorFondo
    border.color: "black"
    border.width: 5
    width: mainWindow.width/2
    height: 30

    Text{


        anchors{
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
        }
        text: valorTexto
        color: "black"
    }

}

}
*/


/* 03 grid*/
/*
Component.onCompleted: {

    myGrid.model.append({
    myColor: "orange"
});
myGrid.model.append({
myColor: "blue"
});
myGrid.model.append({
myColor: "red"
});

}

GridView{

    id: myGrid
    anchors{
        top: parent.top
        bottom: parent.bottom
        right: parent.right
        left: parent.left
        topMargin: 20
        leftMargin: 20

    }
    cellWidth: width/3
    cellHeight: height/3
    model: ListModel{}
    delegate: Rectangle{
    width: myGrid.cellWidth * 0.9
    height: myGrid.cellHeight * 0.9
    color: myColor
}

}
*/
//repeater example
// 04 - repeater example


/*
Column{
    id: myLayout

    spacing: 5

    /// repeat buttons example
    Repeater{
        id: myRepeater
        anchors.fill: parent
        model: 5
        delegate: Button{
        text: "Button"
        onClicked: {

            labelcenter.text = "Button"
        }
    }
}


}

*/

/* 04 - SwipeView example*/
/*
SwipeView {
    id: view

    currentIndex: 1
    anchors.fill: parent

    Item {
        id: firstPage
        Text {
            text: "First Page"
        }
    }
    Item {
        id: secondPage
        Text {
            text: "Second Page"
        }

    }
    Item {
        id: thirdPage
        Text {
            text: "Third Page"
        }
    }
}

PageIndicator {
    id: indicator

    count: view.count
    currentIndex: view.currentIndex

    anchors.bottom: view.bottom
    anchors.horizontalCenter: parent.horizontalCenter
}
*/

/* 05 - tabbar example*/

/*
    TabBar {
        id: bar
        width: parent.width
        TabButton {
            text: qsTr("Home")
        }
        TabButton {
            text: qsTr("Discover")
        }
        TabButton {
            text: qsTr("Activity")
        }
    }

    StackLayout {
        width: parent.width
        currentIndex: bar.currentIndex
        Item {
            id: homeTab
            Text {
                text: "Home"
            }
        }
        Item {
            id: discoverTab
            Text {
                text: "Discover"
            }
        }
        Item {
            id: activityTab
            Text {
                text: "Activity"
            }
        }
    }
    */

    /*06 -  ToolBar */


    /*
    header: ToolBar {
           RowLayout {
               anchors.fill: parent
               ToolButton {
                   text: qsTr("⋮")
                   onClicked: {
                               menu.open()
                   }


               }
               Label {
                   text: "Title"
                   elide: Label.ElideRight
                   horizontalAlignment: Qt.AlignHCenter
                   verticalAlignment: Qt.AlignVCenter
                   Layout.fillWidth: true
               }
               ToolButton {

                   text:  qsTr("‹")
                   onClicked:
                   {
                                    stack.pop()
                   }

               }
           }
       }

    StackView{
    id:stack
    anchors.fill: parent
    }
       Menu {
           id: menu

           MenuItem {
               text: "Menu Item 1"
               onClicked: {


                   stack.push(myComponent);
               }
           }
              MenuItem {
                text: "Menu Item 2"
                onClicked: {


                        stack.push(myComponent2);
                }
              }
              MenuItem {
                text: "Menu Item 3"
                onClicked: {
                                    stack.push(myComponent3);
                }
              }
              Component {
                id: myComponent
                Rectangle {
                    Text {
                        id: name
                        text: qsTr("text 1")
                    }
                    color: "red"

                }
              }
              Component {
                id: myComponent2
                Rectangle {
                    Text {
                        id: name
                        text: qsTr("text 2")
                    }
                    color: "blue"

                }
              }
                Component {
                    id: myComponent3
                    Rectangle {
                        Text {
                            id: name
                            text: qsTr("text 3")
                        }
                        color: "green"

                    }
                }

}
*/

/* 07 - canvas example*/
/*
Canvas {
    id: mycanvas
    width: 100
    height: 200
    onPaint: {
        var ctx = getContext("2d");
        ctx.fillStyle = Qt.rgba(1, 0, 0, 1);
        ctx.fillRect(0, 0, width, height);
    }
}
*/


/* 08 -  Q_PROPERTY example*/
ListView{
anchors.fill: parent
model: people
delegate: Rectangle{


width: parent.width

height: 30
RowLayout{
width: parent.width
Text {
Layout.fillWidth: true
text: name
}
Text {
Layout.fillWidth: true
text: age
}
Button{

    Layout.fillWidth: true
    text: "ok"
}
}

}


}
}
