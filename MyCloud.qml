import QtQuick 2.0

Item {
    width: 241
    height: 92
    property string path: "qrc:/Image/CloudA.png"

    Image {
        source: path
        anchors.fill: parent
    }
}
