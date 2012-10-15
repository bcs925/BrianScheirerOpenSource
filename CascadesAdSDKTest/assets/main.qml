import bb.cascades 1.0
import bb.cascades.advertisement 1.0

TabbedPane {
    showTabsOnActionBar: true
    Tab {
        title: qsTr("320x50")
        Page {
            id: tab1
            Container {
                Label {
                    text: qsTr("320x50 banner")
                    horizontalAlignment: HorizontalAlignment.Center
                    textStyle {
                        base: SystemDefaults.TextStyles.TitleText
                    }
                }
                Banner {
                    zoneId: 117145
                    refreshRate: 60
                    preferredWidth: 320
                    preferredHeight: 50
                    transitionsEnabled: true
                    placeHolderURL: "asset:///placeholder_728x90.png"
                    backgroundColor: Color.Green
                    borderColor: Color.Gray
                    borderWidth: 2
                    horizontalAlignment: HorizontalAlignment.Center
                }
            }
        }
    }
    // This should not be closed here, it will close TabbedPane   }
    Tab {
        title: qsTr("300x50")
        Page {
            id: tab2
            Container {
                Label {
                    text: qsTr("300x50 banner")
                    horizontalAlignment: HorizontalAlignment.Center
                    textStyle {
                        base: SystemDefaults.TextStyles.TitleText
                    }
                }
                    Banner {
                        zoneId: 117145
                        refreshRate: 60
                        preferredWidth: 300
                        preferredHeight: 50
                        transitionsEnabled: true
                        placeHolderURL: "asset:///placeholder_728x90.png"
                        backgroundColor: Color.Green
                        borderColor: Color.Blue
                        borderWidth: 2
                        horizontalAlignment: HorizontalAlignment.Center
                    }
                }
            }
        }
    
    Tab {
        title: qsTr("320x48")
        Page {
            id: tab3
            Container {
                Label {
                    text: qsTr("320x48 banner")
                    horizontalAlignment: HorizontalAlignment.Center
                    textStyle {
                        base: SystemDefaults.TextStyles.TitleText
                    }
                }
                Container {
                    layout: DockLayout {
                    }
                    layoutProperties: StackLayoutProperties {
                        spaceQuota: 1.0
                    }
                    Container {
                        layout: DockLayout {
                        }
                        layoutProperties: StackLayoutProperties {
                            spaceQuota: 1.0
                        }
                        verticalAlignment: VerticalAlignment.Fill
                        horizontalAlignment: HorizontalAlignment.Fill
                        Banner {
                            zoneId: 117145
                            refreshRate: 60
                            preferredWidth: 320
                            preferredHeight: 48
                            transitionsEnabled: true
                            placeHolderURL: "asset:///placeholder_728x90.png"
                            backgroundColor: Color.Green
                            borderColor: Color.Gray
                            borderWidth: 2
                            horizontalAlignment: HorizontalAlignment.Center
                        }
                    }
                }
            }
        }
    }
}//Should be closed here to close TabbedPane