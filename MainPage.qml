import QtQuick 2.0

Item {
    property alias section1:section1
    property alias section2:section2

    Section1{
        id:section1
    width: parent.width
    height: parent.height/2
    anchors.top: parent.top
    }
    Section2{
                id:section2
    width: parent.width
    height: parent.height/2
    anchors.bottom: parent.bottom
    }


}
