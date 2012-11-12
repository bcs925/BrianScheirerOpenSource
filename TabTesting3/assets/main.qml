// Tabbed Pane project template
import bb.cascades 1.0

TabbedPane {
    Menu.definition: MenuDefinition {

        // Specify the actions that should be included in the menu
        actions: [
            ActionItem {
                title: "My Sheet"
                //   imageSource: ""
                onTriggered: {
                    mysheet.open();
                }
            },
            ActionItem {
                title: "Settings"
                //  imageSource: ""
                onTriggered: {
                    //
                }
            },
            ActionItem {
                title: "Info"
                onTriggered: {
                    //
                }
            }
        ] // end of actions list
    }
    attachedObjects: [
        Sheet {
            id: mysheet
            Page {
                Container {
                    Button {
                        id: button1
                        text: "Change Tab 3 Title"
                        onClicked: {
                            maintab3.tab3title.text = "New Tab 3 Title"
                        }
                    }
                    Label {
                        text: "Toggle Switch that controls background on Tab 3"
                        textStyle.fontSizeValue: 10.0
                        multiline: true
                    }
                    ToggleButton {
                        id: tog5
                        objectName: "tog5"
                        checked: app.getValueFor(objectName, "true")
                        onCheckedChanged: {
                            app.saveValueFor(tog5.objectName, checked)
                            if (checked == true) {
                                maintab3.maincontainer.background = Color.create(0.9, 0.9, 0.9);
                            } else {
                                maintab3.maincontainer.background = Color.create(0.7, 0.8, 0.9);
                            }
                        }
                    }
                }
                actions: [
                    ActionItem {
                        title: "Close"
                        //          imageSource: "asset:///images/cross2.png"
                        ActionBar.placement: ActionBarPlacement.OnBar
                        onTriggered: {
                            mysheet.close();
                        }
                    }
                ]
            }
        }
    ]
    showTabsOnActionBar: true
    Tab {
        title: qsTr("Tab 1")
        Page {
            id: tab1
        }
    }
    Tab {
        title: qsTr("Tab 2")
        Page {
            id: tab2
        }
    }
    Tab {
        title: qsTr("Tab 3")
        TabThree {
            id: maintab3
        }
    }
    onCreationCompleted: {
        // this slot is called when declarative scene is created
        // write post creation initialization here
        console.log("TabbedPane - onCreationCompleted()")

        // enable layout to adapt to the device rotation
        // don't forget to enable screen rotation in bar-bescriptor.xml (Application->Orientation->Auto-orient)
        OrientationSupport.supportedDisplayOrientation = SupportedDisplayOrientation.All;
    }
}
