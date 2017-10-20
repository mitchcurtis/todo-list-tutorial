import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

import ToDo 1.0

ColumnLayout {
    Frame {
        Layout.fillWidth: true

        ListView {
            implicitWidth: 250
            implicitHeight: 250
            anchors.fill: parent
            clip: true

            model: ToDoModel {
                list: toDoList
            }

            delegate: RowLayout {
                width: parent.width

                CheckBox {
                    checked: model.done
                    onClicked: model.done = checked
                }
                TextField {
                    text: model.description
                    onEditingFinished: model.description = text
                    Layout.fillWidth: true
                }
            }
        }
    }

    RowLayout {
        Button {
            text: qsTr("Add new item")
            onClicked: toDoList.appendItem()
            Layout.fillWidth: true
        }
        Button {
            text: qsTr("Remove completed")
            onClicked: toDoList.removeCompletedItems()
            Layout.fillWidth: true
        }
    }
}
