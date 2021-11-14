import QtQuick

Text {
    id: root
    height: 20

    leftPadding: 4
    rightPadding: 4
    verticalAlignment: Text.AlignVCenter

    font.family: 'Microsoft YaHei UI'
    font.pixelSize: 10

    text: root.p_text ? root.p_text : root.p_hint
    color: root.p_text ? '#333333' : '#cccccc'

    property string p_hint: ''
    property string p_text: ''
}
