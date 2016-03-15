import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "scrollview1.liu-xiao-guo"

    width: units.gu(60)
    height: units.gu(85)

    Page {
        title: i18n.tr("scrollview1")

        ScrollView {
            id: scrollview
            anchors.fill: parent

            ListView {
                model: 100
                delegate: Standard {
                    Label {
                        text: "Item + " + index
                    }
                }
            }

            Component.onCompleted: {
                var keys = Object.keys(scrollview);
                for( var i = 0; i < keys.length; i++ ) {
                    var key = keys[ i ];
                    var data = key + ' : ' + scrollview[ key ];
                    console.log(data )
                }
            }
        }
    }
}

