import QtQuick
import "MSpec.js" as MSpec

Rectangle {
    id: root
    width: MSpec.long_width
    height: MSpec.height_s
    radius: MSpec.radius
    color: MSpec.shallow_s

    property string p_color: MSpec.accent
    property real   p_value: 0.0
    property int    __padding: MSpec.padding_l

    Rectangle {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: parent.__padding
        anchors.rightMargin: parent.__padding
        anchors.verticalCenter: parent.verticalCenter
        height: 3
        radius: 2
        color: MSpec.white

//        Rectangle {
//            anchors.left: parent.left
//            anchors.verticalCenter: parent.verticalCenter
//            width: root.p_value >= 90 ? parent.width : _progress.width + 10
//            height: parent.height + 1
//            radius: parent.radius
//            color: '#A9A6E9'
//        }

        Rectangle {
            id: _progress
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            width: root.p_value / 100 * parent.width
            height: parent.height
            radius: parent.radius
            color: root.p_color
        }
    }
}
