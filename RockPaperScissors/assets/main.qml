/*
* Copyright (c) 2012 Brian Scheirer
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/import bb.cascades 1.0

Page {
    //main content container
    content: Container {
        layoutProperties: DockLayoutProperties {
            verticalAlignment: VerticalAlignment.Fill
        }
        background: backgroundPaint.imagePaint
        attachedObjects: [
            ImagePaintDefinition {
                id: backgroundPaint
                imageSource: "asset:///images/RPSbkgrdD.png"
            },
            CustomDialog {
                id: helpdialog
                Container {
                    layout: DockLayout {
                    }
                    preferredWidth: 768
                    preferredHeight: 1280
                    background: Color.create(0.0, 0.0, 0.0, 0.5)
                    Container {
                        layoutProperties: DockLayoutProperties {
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                        }
                        maxHeight: 750.0
                        maxWidth: 700.0
                        background: Color.create("#DEB887")
                        TextArea {
                            text: "The evil dragon has taken the princess hostage. The only way to save her is to defeat him in an epic battle of ROCK, PAPER, SCISSORS! 
            The Rules are simple:  
            Rock defeats Scissors. 
            Paper defeats Rock. 
            Scissors defeats Paper."
                            editable: false
                            textStyle {
                                size: 50
                                fontWeight: FontWeight.Bold
                                color: Color.Black
                            }
                        }
                        Button {
                            text: "Ok, Let's Battle!"
                            onClicked: helpdialog.visible = false
                            layoutProperties: StackLayoutProperties {
                                horizontalAlignment: HorizontalAlignment.Center
                                spaceQuota: 1
                            }
                        }
                    }
                }
            }
        ]
        preferredHeight: 1280.0
        preferredWidth: 768.0
        //main container for Scoreboard
        layout: StackLayout {
        }
        Container {
            background: Color.create("#DEB887")
            //subcontainer of scoreboard for top row
            Container {
                layout: StackLayout {
                    layoutDirection: LayoutDirection.LeftToRight
                }
                minWidth: 768.0
                Label {
                    text: "  Scoreboard"
                    textStyle.size: 50.0
                }
                Button {
                    id: resetbutton
                    text: "Reset"
                    onClicked: {
                        win.text = "0";
                        lose.text = "0";
                        tie.text = "0";
                        backgroundPaint.imageSource = "asset:///images/RPSbkgrdD.png";
                        winnerlabel.text = "";
                        player.imageSource = "asset:///images/KRock.png";
                        computer.imageSource = "asset:///images/DRock.png";
                    }
                    preferredWidth: 140.0
                    leftMargin: 358.0
                }
            }
            //main subcontainer of scoreboard for botttom row **1**
            Container {
                layout: StackLayout {
                    layoutDirection: LayoutDirection.LeftToRight
                }
                //container with win,lose,tie tallies	
                Container {
                    layout: StackLayout {
                        layoutDirection: LayoutDirection.LeftToRight
                    }
                    minWidth: 590.0
                    Label {
                        text: "  Win: "
                        textStyle.size: 50.0
                    }
                    Label {
                        id: win
                        text: "0"
                        textStyle.size: 50.0
                    }
                    Label {
                        text: " Loss: "
                        textStyle.size: 50.0
                    }
                    Label {
                        id: lose
                        text: "0"
                        textStyle.size: 50.0
                    }
                    Label {
                        text: " Tie: "
                        textStyle.size: 50.0
                    }
                    Label {
                        id: tie
                        text: "0"
                        textStyle.size: 50.0
                    }
                }
                Button {
                    id: helpbutton
                    text: "Help"
                    preferredWidth: 140.0
                    onClicked: {
                        helpdialog.visible = true
                    }
                }
            }
        }
        //winner label container
        Container {
            layoutProperties: StackLayoutProperties {
                horizontalAlignment: HorizontalAlignment.Center
                verticalAlignment: VerticalAlignment.Center
            }
            topMargin: 50.0
            preferredHeight: 300.0
            Label {
                id: winnerlabel
                text: ""
                textStyle.size: 75.0
            }
        }
        //character image container **2**
        Container {
            layout: DockLayout {
            }
            //container with hand images of the characters **3**
            Container {
                preferredWidth: 720.0
                preferredHeight: 550.0
                layout: AbsoluteLayout {
                }
                ImageView {
                    id: player
                    imageSource: "asset:///images/KRock.png"
                    animations: [
                        SequentialAnimation {
                            id: playerrock
                            animations: [
                                TranslateTransition {
                                    toY: 250
                                    duration: 300
                                },
                                TranslateTransition {
                                    toY: 200
                                    duration: 300
                                },
                                TranslateTransition {
                                    toY: 250
                                    duration: 300
                                },
                                TranslateTransition {
                                    toY: 200
                                    duration: 300
                                },
                                TranslateTransition {
                                    toY: 250
                                    duration: 300
                                },
                                TranslateTransition {
                                    toY: 200
                                    duration: 300
                                },
                                TranslateTransition {
                                    toY: 250
                                    duration: 300
                                }
                            ]
                            onEnded: {
                                player.imageSource = "asset:///images/KRock.png";
                                var winning = win.text;
                                var losing = lose.text;
                                var ties = tie.text;
                                var number = Math.floor((Math.random() * 3) + 1);
                                var gameoutcome = app.clickedRock(1, number);
                                if (number == 1) {
                                    computer.imageSource = "asset:///images/DRock.png";
                                } else if (number == 2) {
                                    computer.imageSource = "asset:///images/DPaper.png";
                                } else {
                                    computer.imageSource = "asset:///images/DScissors.png";
                                }
                                if (gameoutcome == 1) {
                                    winnerlabel.text = "You WIN!";
                                    backgroundPaint.imageSource = "asset:///images/RPSbkgrdW.png";
                                } else if (gameoutcome == 2) {
                                    winnerlabel.text = "Dragon WINS!";
                                    backgroundPaint.imageSource = "asset:///images/RPSbkgrdL.png";
                                } else {
                                    winnerlabel.text = "Draw";
                                    backgroundPaint.imageSource = "asset:///images/RPSbkgrdD.png";
                                }
                                if (gameoutcome == 1) {
                                    win.text = app.codeWinning(winning);
                                } else if (gameoutcome == 2) {
                                    lose.text = app.codeWinning(losing);
                                } else {
                                    tie.text = app.codeWinning(ties);
                                }
                            }
                        },
                        SequentialAnimation {
                            id: playerpaper
                            animations: [
                                TranslateTransition {
                                    toY: 250
                                    duration: 300
                                },
                                TranslateTransition {
                                    toY: 200
                                    duration: 300
                                },
                                TranslateTransition {
                                    toY: 250
                                    duration: 300
                                },
                                TranslateTransition {
                                    toY: 200
                                    duration: 300
                                },
                                TranslateTransition {
                                    toY: 250
                                    duration: 300
                                },
                                TranslateTransition {
                                    toY: 200
                                    duration: 300
                                },
                                TranslateTransition {
                                    toY: 250
                                    duration: 300
                                }
                            ]
                            onEnded: {
                                player.imageSource = "asset:///images/KPaper.png";
                                var winning = win.text;
                                var losing = lose.text;
                                var ties = tie.text;
                                var number = Math.floor((Math.random() * 3) + 1);
                                var gameoutcome = app.clickedPaper(2, number);
                                if (number == 1) {
                                    computer.imageSource = "asset:///images/DRock.png";
                                } else if (number == 2) {
                                    computer.imageSource = "asset:///images/DPaper.png";
                                } else {
                                    computer.imageSource = "asset:///images/DScissors.png";
                                }
                                if (gameoutcome == 1) {
                                    winnerlabel.text = "You WIN!";
                                    backgroundPaint.imageSource = "asset:///images/RPSbkgrdW.png";
                                } else if (gameoutcome == 2) {
                                    winnerlabel.text = "Dragon WINS!";
                                    backgroundPaint.imageSource = "asset:///images/RPSbkgrdL.png";
                                } else {
                                    winnerlabel.text = "Draw";
                                    backgroundPaint.imageSource = "asset:///images/RPSbkgrdD.png";
                                }
                                if (gameoutcome == 1) {
                                    win.text = app.codeWinning(winning);
                                } else if (gameoutcome == 2) {
                                    lose.text = app.codeWinning(losing);
                                } else {
                                    tie.text = app.codeWinning(ties);
                                }
                            }
                        },
                        SequentialAnimation {
                            id: playerscissors
                            animations: [
                                TranslateTransition {
                                    toY: 250
                                    duration: 300
                                },
                                TranslateTransition {
                                    toY: 200
                                    duration: 300
                                },
                                TranslateTransition {
                                    toY: 250
                                    duration: 300
                                },
                                TranslateTransition {
                                    toY: 200
                                    duration: 300
                                },
                                TranslateTransition {
                                    toY: 250
                                    duration: 300
                                },
                                TranslateTransition {
                                    toY: 200
                                    duration: 300
                                },
                                TranslateTransition {
                                    toY: 250
                                    duration: 300
                                }
                            ]
                            onEnded: {
                                player.imageSource = "asset:///images/KScissors.png";
                                var winning = win.text;
                                var losing = lose.text;
                                var ties = tie.text;
                                var number = Math.floor((Math.random() * 3) + 1);
                                var gameoutcome = app.clickedScissors(3, number);
                                if (number == 1) {
                                    computer.imageSource = "asset:///images/DRock.png";
                                } else if (number == 2) {
                                    computer.imageSource = "asset:///images/DPaper.png";
                                } else {
                                    computer.imageSource = "asset:///images/DScissors.png";
                                }
                                if (gameoutcome == 1) {
                                    winnerlabel.text = "You WIN!";
                                    backgroundPaint.imageSource = "asset:///images/RPSbkgrdW.png";
                                } else if (gameoutcome == 2) {
                                    winnerlabel.text = "Dragon WINS!";
                                    backgroundPaint.imageSource = "asset:///images/RPSbkgrdL.png";
                                } else {
                                    winnerlabel.text = "Draw";
                                    backgroundPaint.imageSource = "asset:///images/RPSbkgrdD.png";
                                }
                                if (gameoutcome == 1) {
                                    win.text = app.codeWinning(winning);
                                } else if (gameoutcome == 2) {
                                    lose.text = app.codeWinning(losing);
                                } else {
                                    tie.text = app.codeWinning(ties);
                                }
                            }
                        }
                    ]
                    translationX: 150.0
                    translationY: 200.0
                }
                ImageView {
                    id: computer
                    imageSource: "asset:///images/DRock.png"
                    animations: [
                        SequentialAnimation {
                            id: computermove
                            animations: [
                                TranslateTransition {
                                    toY: 250
                                    duration: 300
                                },
                                TranslateTransition {
                                    toY: 200
                                    duration: 300
                                },
                                TranslateTransition {
                                    toY: 250
                                    duration: 300
                                },
                                TranslateTransition {
                                    toY: 200
                                    duration: 300
                                },
                                TranslateTransition {
                                    toY: 250
                                    duration: 300
                                },
                                TranslateTransition {
                                    toY: 200
                                    duration: 300
                                },
                                TranslateTransition {
                                    toY: 250
                                    duration: 300
                                }
                            ]
                        }
                    ]
                    leftMargin: 0.0
                    translationY: 200.0
                    translationX: 350.0
                }
            }
            //container with charater bodies
            Container {
                layout: StackLayout {
                    layoutDirection: LayoutDirection.LeftToRight
                }
                preferredWidth: 720.0
                layoutProperties: StackLayoutProperties {
                    horizontalAlignment: HorizontalAlignment.Center
                    verticalAlignment: VerticalAlignment.Top
                }
                ImageView {
                    imageSource: "asset:///images/Knight.png"
                    rightMargin: 120.0
                }
                ImageView {
                    imageSource: "asset:///images/Dragon.png"
                }
            }
        }
        //extra container for spacing purposes
        Container {
            //  background: Color.create(1, 1, 1)
            preferredHeight: 50.0
        }
        //button container
        Container {
            layout: StackLayout {
                layoutDirection: LayoutDirection.LeftToRight
            }
            Button {
                id: rockbutton
                objectName: "rockbutton"
                text: "ROCK!"
                onClicked: {
                    backgroundPaint.imageSource = "asset:///images/RPSbkgrdD.png";
                    winnerlabel.text = "";
                    player.imageSource = "asset:///images/KRock.png";
                    computer.imageSource = "asset:///images/DRock.png";
                    playerrock.play();
                    computermove.play();
                }
            }
            Button {
                id: paperbutton
                objectName: "paperbutton"
                text: "PAPER!"
                onClicked: {
                    backgroundPaint.imageSource = "asset:///images/RPSbkgrdD.png";
                    winnerlabel.text = "";
                    player.imageSource = "asset:///images/KRock.png";
                    computer.imageSource = "asset:///images/DRock.png";
                    playerpaper.play();
                    computermove.play();
                }
            }
            Button {
                id: scissorsbutton
                objectName: "scissorsbutton"
                text: "SCISSORS!"
                onClicked: {
                    backgroundPaint.imageSource = "asset:///images/RPSbkgrdD.png";
                    winnerlabel.text = "";
                    player.imageSource = "asset:///images/KRock.png";
                    computer.imageSource = "asset:///images/DRock.png";
                    playerscissors.play();
                    computermove.play();
                }
            }
        }
    }
}
