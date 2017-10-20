import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Frame {
    ListView {
        implicitWidth: 250
        implicitHeight: 250
        clip: true

        model: ListModel {
            ListElement {
                done: true
                description: "Wash the car"
            }
            ListElement {
                done: false
                description: "Fix the sink"
            }
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
