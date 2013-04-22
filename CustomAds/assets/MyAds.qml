// Default empty project template
import bb.cascades 1.0
import CustomTimer 1.0

// creates one page with a label
Container {
    Container {
        layout: DockLayout {
        }
        Timer {
            id: adTimer

            // Specify a timeout interval of 10 seconds
            interval: 10000

            onTimeout: {
                //    adTimer.stop();
                if (adOne.visible == true) {
                    adOne.visible = false;
                    adTwo.visible = true;
                } else if (adTwo.visible == true) {
                    adTwo.visible = false;
                    adThree.visible = true;
                } else if (adThree.visible == true) {
                    adThree.visible = false;
                    adFour.visible = true;
                } else if (adFour.visible == true) {
                    adFour.visible = false;
                    adOne.visible = true;
                }
                adTimer.start();
            }
        }
        Container {
            ImageView {
                id: adOne
                imageSource: "asset:///images/VisualConnectionAd.png"
                gestureHandlers: [
                    TapHandler {
                        onTapped: {
                            invoke1.trigger("bb.action.OPEN");
                        }
                    }
                ]
                attachedObjects: [
                    Invocation {
                        id: invoke1
                        query: InvokeQuery {
                            mimeType: "application/x-bb-appworld"
                            uri: "appworld://content/25226872"
                        }
                    }
                ]

            }
            ImageView {
                id: adTwo
                imageSource: "asset:///images/LogicPuzzlesAd.png"
                visible: false
                gestureHandlers: [
                    TapHandler {
                        onTapped: {
                            invoke2.trigger("bb.action.OPEN");
                        }
                    }
                ]
                attachedObjects: [
                    Invocation {
                        id: invoke2
                        query: InvokeQuery {
                            mimeType: "application/x-bb-appworld"
                            uri: "appworld://content/22029056"
                        }
                    }
                ]

            }
            ImageView {
                id: adThree
                imageSource: "asset:///images/RandomStoriesAd.png"
                visible: false
                gestureHandlers: [
                    TapHandler {
                        onTapped: {
                            invoke3.trigger("bb.action.OPEN");
                        }
                    }
                ]
                attachedObjects: [
                    Invocation {
                        id: invoke3
                        query: InvokeQuery {
                            mimeType: "application/x-bb-appworld"
                            uri: "appworld://content/21798104"
                        }
                    }
                ]

            }
            ImageView {
                id: adFour
                imageSource: "asset:///images/DivePlanAd.png"
                visible: false
                gestureHandlers: [
                    TapHandler {
                        onTapped: {
                            invoke4.trigger("bb.action.OPEN");
                        }
                    }
                ]
                attachedObjects: [
                    Invocation {
                        id: invoke4
                        query: InvokeQuery {
                            mimeType: "application/x-bb-appworld"
                            uri: "appworld://content/20078476"
                        }
                    }
                ]

            }
        }

    }
    onCreationCompleted: {
        adTimer.start();
    }
}
