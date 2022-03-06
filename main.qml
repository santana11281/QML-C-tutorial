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

    /* 27 - splitview*/

    /*
    SplitView {
        anchors.fill: parent
        orientation: Qt.Horizontal

        Rectangle {
            implicitWidth: 200
            SplitView.maximumWidth: 400
            color: "lightblue"
            Label {
                text: "View 1"
                anchors.centerIn: parent
            }
        }
        Rectangle {
            id: centerItem
            SplitView.minimumWidth: 50
            SplitView.fillWidth: true
            color: "lightgray"
            Label {
                text: "View 2"
                anchors.centerIn: parent
            }
        }
        Rectangle {
            implicitWidth: 200
            color: "lightgreen"
            Label {
                text: "View 3"
                anchors.centerIn: parent
            }
        }
    }
    */
    /* 28 - tableview*/
    /*
    TableView {
        anchors.fill: parent
        columnSpacing: 1
        rowSpacing: 1
        clip: true

        model: TableModel {
        TableModelColumn {
            display: "name"
        }
        TableModelColumn {
            display: "color"
        }

        rows: [
        {
            "name": "cat",
            "color": "black"
        },
    {
        "name": "dog",
        "color": "brown"
    },
{
    "name": "bird",
    "color": "white"
}
]
}

delegate: Rectangle {
implicitWidth: 100
implicitHeight: 50
border.width: 1

Text {
    text: display
    anchors.centerIn: parent
}
}
}
*/

/* 29 - tabview */
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
        Rectangle{

            anchors.centerIn: parent
            width: parent.width
            height: parent.height
            Text {
                id: name
                text: qsTr("homeTab")
            }
        }
    }
    Item {

        id: discoverTab
        Rectangle{

            anchors.centerIn: parent
            width: parent.width
            height: parent.height
            Text {
                id: name02
                text: qsTr("discoverTab")
            }
        }
    }
    Item {
        id: activityTab
        Rectangle{

            anchors.centerIn: parent
            width: parent.width
            height: parent.height
            Text {
                id: name03
                text: qsTr("activityTab")
            }
        }
    }
}
*/
/*30 - treeview or listview*/
Item {
    width: 200
    height: 300

    ListView {
        anchors.fill: parent
        model: nestedModel
        delegate: categoryDelegate
    }

    ListModel {
        id: nestedModel
        ListElement {
            categoryName: "Veggies"
            collapsed: true

            // A ListElement can't contain child elements, but it can contain
            // a list of elements. A list of ListElements can be used as a model
            // just like any other model type.
            subItems: [
                ListElement { itemName: "Tomato" },
                    ListElement { itemName: "Cucumber" },
                        ListElement { itemName: "Onion" },
                            ListElement {
                                itemName: "Brains"
                            }
                        ]
                    }

                    ListElement {
                        categoryName: "Fruits"
                        collapsed: true
                        subItems: [
                            ListElement { itemName: "Orange" },
                                ListElement { itemName: "Apple" },
                                    ListElement { itemName: "Pear" },
                                        ListElement {
                                            itemName: "Lemon"
                                        }
                                    ]
                                }

                                ListElement {
                                    categoryName: "Cars"
                                    collapsed: true
                                    subItems: [
                                        ListElement { itemName: "Nissan" },
                                            ListElement { itemName: "Toyota" },
                                                ListElement { itemName: "Chevy" },
                                                    ListElement {
                                                        itemName: "Audi"
                                                    }
                                                ]
                                            }
                                        }

                                        Component {
                                            id: categoryDelegate
                                            Column {
                                                width: 200

                                                Rectangle {
                                                    id: categoryItem
                                                    border.color: "black"
                                                    border.width: 5
                                                    color: "white"
                                                    height: 50
                                                    width: 200

                                                    Text {
                                                        anchors.verticalCenter: parent.verticalCenter
                                                        x: 15
                                                        font.pixelSize: 24
                                                        text: categoryName
                                                    }

                                                    Rectangle {
                                                        color: "red"
                                                        width: 30
                                                        height: 30
                                                        anchors.right: parent.right
                                                        anchors.rightMargin: 15
                                                        anchors.verticalCenter: parent.verticalCenter

                                                        MouseArea {
                                                            anchors.fill: parent

                                                            // Toggle the 'collapsed' property
                                                            onClicked: nestedModel.setProperty(index, "collapsed", !collapsed)
                                                        }
                                                    }
                                                }

                                                Loader {
                                                    id: subItemLoader

                                                    // This is a workaround for a bug/feature in the Loader element. If sourceComponent is set to null
                                                    // the Loader element retains the same height it had when sourceComponent was set. Setting visible
                                                    // to false makes the parent Column treat it as if it's height was 0.
                                                    visible: !collapsed
                                                    property variant subItemModel: subItems
                                                    sourceComponent: collapsed ? null: subItemColumnDelegate
                                                    onStatusChanged: if (status == Loader.Ready) item.model = subItemModel
                                                }
                                            }

                                        }

                                        Component {
                                            id: subItemColumnDelegate
                                            Column {
                                                property alias model: subItemRepeater.model
                                                width: 200
                                                Repeater {
                                                    id: subItemRepeater
                                                    delegate: Rectangle {
                                                    color: "#cccccc"
                                                    height: 40
                                                    width: 200
                                                    border.color: "black"
                                                    border.width: 2

                                                    Text {
                                                        anchors.verticalCenter: parent.verticalCenter
                                                        x: 30
                                                        font.pixelSize: 18
                                                        text: itemName
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
