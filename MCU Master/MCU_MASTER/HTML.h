#define HTTP_START \
"<!DOCTYPE html>																									    "	"\n\r"\
"<html>                                                                                                                 "	"\n\r"\
"                                                                                                                       "	"\n\r"\
"<head>                                                                                                                 "	"\n\r"\
"                                                                                                                       "	"\n\r"\
"    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">                                         "	"\n\r"\
"                                                                                                                       "	"\n\r"\
"    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\">           "	"\n\r"\
"                                                                                                                       "	"\n\r"\
"    <!-- jQuery library -->                                                                                            "	"\n\r"\
"    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>                         "	"\n\r"\
"                                                                                                                       "	"\n\r"\
"    <!-- Popper JS -->                                                                                                 "	"\n\r"\
"    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js\"></script>                "	"\n\r"\
"                                                                                                                       "	"\n\r"\
"    <!-- Latest compiled JavaScript -->                                                                                "	"\n\r"\
"    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\"></script>                      "	"\n\r"\
"                                                                                                                       "	"\n\r"\
"    <title>Final Year Project - Zack Butcher</title>                                                                   "	"\n\r"\
"</head>                                                                                                                "	"\n\r"\
"<body>                                                                                                                 "	"\n\r"\
"    <style>                                                                                                            "	"\n\r"\
"        .Player{                                                                                                       "	"\n\r"\
"            width: 250px;                                                                                              "	"\n\r"\
"            height: 200px;                                                                                             "	"\n\r"\
"            margin: 50px 100px;                                                                                        "	"\n\r"\
"            border: 1px solid #000;                                                                                    "	"\n\r"\
"            border-radius: 7px;                                                                                        "	"\n\r"\
"            display: inline-block;                                                                                     "	"\n\r"\
"        }                                                                                                              "	"\n\r"\
"                                                                                                                       "	"\n\r"\
"        .Player p{                                                                                                     "	"\n\r"\
"            text-align: center;                                                                                        "	"\n\r"\
"        }                                                                                                              "	"\n\r"\
"                                                                                                                       "	"\n\r"\
"        .Board{                                                                                                        "	"\n\r"\
"            width: 530px;                                                                                              "	"\n\r"\
"            height: 200px;                                                                                             "	"\n\r"\
"            margin: 50px 100px;                                                                                        "	"\n\r"\
"            display: inline-block;                                                                                     "	"\n\r"\
"            text-align: center;                                                                                        "	"\n\r"\
"        }                                                                                                              "	"\n\r"\
"                                                                                                                       "	"\n\r"\
"        .Board p{                                                                                                      "	"\n\r"\
"            text-align: center;                                                                                        "	"\n\r"\
"        }                                                                                                              "	"\n\r"\
"                                                                                                                       "	"\n\r"\
"        .Card{                                                                                                         "	"\n\r"\
"            width: 100px;                                                                                              "	"\n\r"\
"            height: 150px;                                                                                             "	"\n\r"\
"            border: 1px solid #000;                                                                                    "	"\n\r"\
"            border-radius: 7px;                                                                                        "	"\n\r"\
"            margin: 2px 2px;                                                                                           "	"\n\r"\
"            background-color: cadetblue;                                                                               "	"\n\r"\
"            float: left;                                                                                               "	"\n\r"\
"        }                                                                                                              "	"\n\r"\
"                                                                                                                       "	"\n\r"\
"        .Card_Back{                                                                                                    "	"\n\r"\
"            width: 100px;                                                                                              "	"\n\r"\
"            height: 150px;                                                                                             "	"\n\r"\
"            border: 1px solid #000;                                                                                    "	"\n\r"\
"            border-radius: 7px;                                                                                        "	"\n\r"\
"            margin: 2px 2px;                                                                                           "	"\n\r"\
"            background-color: red;                                                                                     "	"\n\r"\
"            float: left;                                                                                               "	"\n\r"\
"        }                                                                                                              "	"\n\r"\
"                                                                                                                       "	"\n\r"\
"        .Card P{                                                                                                       "	"\n\r"\
"            text-align: center;                                                                                        "	"\n\r"\
"            margin-top: 60px;                                                                                          "	"\n\r"\
"        }                                                                                                              "	"\n\r"\
"                                                                                                                       "	"\n\r"\
"        .col{                                                                                                          "	"\n\r"\
"            text-align: center;                                                                                        "	"\n\r"\
"            margin: 2px 2px;                                                                                           "	"\n\r"\
"        }                                                                                                              "	"\n\r"\
"        .col-6{                                                                                                        "	"\n\r"\
"            text-align: center;                                                                                        "	"\n\r"\
"            margin: 2px 2px;                                                                                           "	"\n\r"\
"        }                                                                                                              "	"\n\r"\
"        .row{                                                                                                          "	"\n\r"\
"            margin: 50px;                                                                                              "	"\n\r"\
"        }                                                                                                              "	"\n\r"\
"        .container{                                                                                                    "	"\n\r"\
"            max-width: none !important; background-color: green;                                                       "	"\n\r"\
"        }                                                                                                              "	"\n\r"\
"                                                                                                                       "	"\n\r"\
"    </style>                                                                                                           "	"\n\r"\
"    <h1>Final Year Project - Zack Butcher</h1>                                                                         "	"\n\r"\
"    <nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">                                                        "	"\n\r"\
"        <div class=\"container-fluid\">                                                                                "	"\n\r"\
"            <div class=\"navbar-header\">                                                                              "	"\n\r"\
"                <a class=\"navbar-brand\" href=\"#\">Poker On-Live</a>                                                 "	"\n\r"\
"            </div>                                                                                                     "	"\n\r"\
"            <ul class=\"nav navbar-nav\">                                                                              "	"\n\r"\
"                <li class=\"active\"><a class=\"navbar-brand\" href=\"#\">Main</a></li>                                "	"\n\r"\
"                <li><a class=\"navbar-brand\" href=\"#\">History</a></li>                                              "	"\n\r"\
"            </ul>                                                                                                      "	"\n\r"\
"            <ul class=\"nav navbar-nav navbar-right\">                                                                 "	"\n\r"\
"                <li><a href=\"#\"><span class=\"glyphicon glyphicon-user\"></span> Sign Up</a></li>                    "	"\n\r"\
"                <li><a href=\"#\"><span class=\"glyphicon glyphicon-log-in\"></span> Login</a></li>                    "	"\n\r"\
"            </ul>                                                                                                      "	"\n\r"\
"        </div>                                                                                                         "	"\n\r"\
"    </nav>                                                                                                             "	"\n\r"\
"                                                                                                                       "	"\n\r"\
"    <div class=\"container\">                                                                                          "	"\n\r"\
"        <div class=\"row\">                                                                                            "	"\n\r"\
"            <div class=\"col\">                                                                                        "	"\n\r"\
"                <div style=\"text-align: left; margin-left: 80px;\"><p>Player 1</p></div>                              "	"\n\r"\
"                <div class=\"                                                                                          "

#define HTTP_PLAYER1_CARD1_DIR \ 
"                            \">                                                                                        "	"\n\r"\
"                    <p style=\"width: 100%\">                                                                          "
#define HTTP_PLAYER1_CARD1_VAL \
"                                                     </p>                                                              "	"\n\r"\
"                </div>                                                                                                 "	"\n\r"\
"                <div class=\"                                                                                          "
#define HTTP_PLAYER1_CARD2_DIR \
"                              \">                                                                                      "	"\n\r"\
"                    <p>                                                                                                "
#define HTTP_PLAYER1_CARD2_VAL \
"                       </p>                                                                                            "	"\n\r"\
"                </div>                                                                                                 "	"\n\r"\
"            </div>                                                                                                     "	"\n\r"\
"            <div class=\"col-6\" style=\"text-align: center;\">                                                        "	"\n\r"\
"                <div style=\"text-align: center;\">                                                                    "	"\n\r"\
"                    <div><p>Board</p></div>                                                                            "	"\n\r"\
"                    <div style=\"text-align: center; display: inline-block;\">                                         "	"\n\r"\
"                        <div class=\"                                                                                  "
#define HTTP_BOARD_CARD1_DIR \
"                                    \">                                                                                "	"\n\r"\
"                            <p style=\"width: 100%\">                                                                  "
#define HTTP_BOARD_CARD1_VAL \
"</p>                                                                                                                   "	"\n\r"\
"                        </div>                                                                                         "	"\n\r"\
"                        <div class=\"                                                                                  "
#define HTTP_BOARD_CARD2_DIR \
"\">                                                                                                                    "	"\n\r"\
"                            <p>                                                                                        "
#define HTTP_BOARD_CARD2_VAL \
"</p>                                                                                                                   "	"\n\r"\
"                        </div>                                                                                         "	"\n\r"\
"                        <div class=\"                                                                                  "
#define HTTP_BOARD_CARD3_DIR \
"\">                                                                                                                    "	"\n\r"\
"                            <p style=\"width: 100%\">                                                                  "
#define HTTP_BOARD_CARD3_VAL \
"</p>                                                                                                                   "	"\n\r"\
"                        </div>                                                                                         "	"\n\r"\
"                        <div class=\"                                                                                  "
#define HTTP_BOARD_CARD4_DIR \
"\">                                                                                                                    "	"\n\r"\
"                            <p style=\"width: 100%\">                                                                  "
#define HTTP_BOARD_CARD4_VAL \
"</p>                                                                                                                   "	"\n\r"\
"                        </div>                                                                                         "	"\n\r"\
"                        <div class=\"                                                                                  "
#define HTTP_BOARD_CARD5_DIR \
"\">                                                                                                                    "	"\n\r"\
"                            <p style=\"width: 100%\">                                                                  "
#define HTTP_BOARD_CARD5_VAL \
"</p>                                                                                                                   "	"\n\r"\
"                        </div>                                                                                         "	"\n\r"\
"                    </div>                                                                                             "	"\n\r"\
"                </div>                                                                                                 "	"\n\r"\
"            </div>                                                                                                     "	"\n\r"\
"            <div class=\"col\">                                                                                        "	"\n\r"\
"                <div style=\"text-align: right; margin-right: 80px;\"><p>Player 8</p></div>                            "	"\n\r"\
"                <div class=\"                                                                                          "
#define HTTP_PLAYER8_CARD1_DIR \
"\" style=\"float: right !important;\">                                                                                 "	"\n\r"\
"                    <p style=\"width: 100%\">                                                                          "
#define HTTP_PLAYER8_CARD1_VAL \
"</p>                                                                                                                   "	"\n\r"\
"                </div>                                                                                                 "	"\n\r"\
"                <div class=\"                                                                                          "
#define HTTP_PLAYER8_CARD2_DIR \
"\" style=\"float: right !important;\">                                                                                 "	"\n\r"\
"                    <p>                                                                                                "
#define HTTP_PLAYER8_CARD2_VAL \
"</p>                                                                                                                   "	"\n\r"\
"                </div>                                                                                                 "	"\n\r"\
"            </div>                                                                                                     "	"\n\r"\
"        </div>                                                                                                         "	"\n\r"\
"        <div class=\"row\">                                                                                            "	"\n\r"\
"            <div class=\"col\">                                                                                        "	"\n\r"\
"                <div style=\"text-align: left; margin-left: 80px;\"><p>Player 2</p></div>                              "	"\n\r"\
"                <div class=\"                                                                                          "
#define HTTP_PLAYER2_CARD1_DIR \
"\">                                                                                                                    "	"\n\r"\
"                    <p style=\"width: 100%\">                                                                          "
#define HTTP_PLAYER2_CARD1_VAL \
"</p>                                                                                                                   "	"\n\r"\
"                </div>                                                                                                 "	"\n\r"\
"                <div class=\"                                                                                          "
#define HTTP_PLAYER2_CARD2_DIR \
"\">                                                                                                                    "	"\n\r"\
"                    <p>                                                                                                "
#define HTTP_PLAYER2_CARD2_VAL \
"</p>                                                                                                                   "	"\n\r"\
"                </div>                                                                                                 "	"\n\r"\
"            </div>                                                                                                     "	"\n\r"\
"            <div class=\"col\">                                                                                        "	"\n\r"\
"                <div style=\"text-align: right; margin-right: 80px;\"><p>Player 7</p></div>                            "	"\n\r"\
"                <div class=\"                                                                                          "
#define HTTP_PLAYER7_CARD1_DIR \
"\" style=\"float: right !important;\">                                                                                 "	"\n\r"\
"                    <p style=\"width: 100%\">                                                                          "
#define HTTP_PLAYER7_CARD1_VAL \
"</p>                                                                                                                   "	"\n\r"\
"                </div>                                                                                                 "	"\n\r"\
"                <div class=\"                                                                                          "
#define HTTP_PLAYER7_CARD2_DIR \
"\" style=\"float: right !important;\">                                                                                 "	"\n\r"\
"                    <p>                                                                                                "
#define HTTP_PLAYER7_CARD2_VAL \
"</p>                                                                                                                   "	"\n\r"\
"                </div>                                                                                                 "	"\n\r"\
"            </div>                                                                                                     "	"\n\r"\
"        </div>                                                                                                         "	"\n\r"\
"        <div class=\"row\">                                                                                            "	"\n\r"\
"            <div class=\"col\">                                                                                        "	"\n\r"\
"                <div style=\"text-align: left; margin-left: 80px;\"><p>Player 3</p></div>                              "	"\n\r"\
"                <div class=\"                                                                                          "
#define HTTP_PLAYER3_CARD1_DIR \
"\">                                                                                                                    "	"\n\r"\
"                    <p style=\"width: 100%\">                                                                          "
#define HTTP_PLAYER3_CARD1_VAL \
"</p>                                                                                                                   "	"\n\r"\
"                </div>                                                                                                 "	"\n\r"\
"                <div class=\"                                                                                          "
#define HTTP_PLAYER3_CARD2_DIR \
"\">                                                                                                                    "	"\n\r"\
"                    <p>                                                                                                "
#define HTTP_PLAYER3_CARD2_VAL \
"</p>                                                                                                                   "	"\n\r"\
"                </div>                                                                                                 "	"\n\r"\
"            </div>                                                                                                     "	"\n\r"\
"            <div class=\"col\">                                                                                        "	"\n\r"\
"                <div><p>Player 4</p></div>                                                                             "	"\n\r"\
"                <div style=\"text-align: center; display: inline-block;\">                                             "	"\n\r"\
"                    <div class=\"                                                                                      "
#define HTTP_PLAYER4_CARD1_DIR \
"\">                                                                                                                    "	"\n\r"\
"                        <p style=\"width: 100%\">                                                                      "
#define HTTP_PLAYER4_CARD1_VAL \
"</p>                                                                                                                   "	"\n\r"\
"                    </div>                                                                                             "	"\n\r"\
"                    <div class=\"                                                                                      "
#define HTTP_PLAYER4_CARD2_DIR \
"\">                                                                                                                     "	"\n\r"\
"                        <p>                                                                                            "
#define HTTP_PLAYER4_CARD2_VAL \
"</p>                                                                                                                   "	"\n\r"\
"                    </div>                                                                                             "	"\n\r"\
"                </div>                                                                                                 "	"\n\r"\
"            </div>                                                                                                     "	"\n\r"\
"            <div class=\"col\">                                                                                        "	"\n\r"\
"                <div><p>Player 5</p></div>                                                                             "	"\n\r"\
"                <div style=\"text-align: center; display: inline-block;\">                                             "	"\n\r"\
"                    <div class=\"                                                                                      "
#define HTTP_PLAYER5_CARD1_DIR \
"\">                                                                                                                    "	"\n\r"\
"                        <p style=\"width: 100%\">                                                                      "
#define HTTP_PLAYER5_CARD1_VAL \
"</p>                                                                                                                   "	"\n\r"\
"                    </div>                                                                                             "	"\n\r"\
"                    <div class=\"                                                                                      "
#define HTTP_PLAYER5_CARD2_DIR \
"\">                                                                                                                     "	"\n\r"\
"                        <p>                                                                                            "
#define HTTP_PLAYER5_CARD2_VAL \
"</p>                                                                                                                   "	"\n\r"\
"                    </div>                                                                                             "	"\n\r"\
"                </div>                                                                                                 "	"\n\r"\
"            </div>                                                                                                     "	"\n\r"\
"            <div class=\"col\">                                                                                        "	"\n\r"\
"                <div style=\"text-align: right; margin-right: 80px;\"><p>Player 6</p></div>                            "	"\n\r"\
"                <div class=\"                                                                                          "
#define HTTP_PLAYER6_CARD1_DIR \
"\" style=\"float: right !important;\">                                                                                 "	"\n\r"\
"                    <p style=\"width: 100%\">                                                                          "
#define HTTP_PLAYER6_CARD1_VAL \
"</p>                                                                                                                   "	"\n\r"\
"                </div>                                                                                                 "	"\n\r"\
"                <div class=\"                                                                                          "
#define HTTP_PLAYER6_CARD2_DIR \
"\" style=\"float: right !important;\">                                                                                  "	"\n\r"\
"                    <p>                                                                                                "
#define HTTP_PLAYER6_CARD2_VAL \
"</p>                                                                                                                   "	"\n\r"\
"                </div>                                                                                                 "	"\n\r"\
"            </div>                                                                                                     "	"\n\r"\
"        </div>                                                                                                         "	"\n\r"\
"      </div>                                                                                                           "	"\n\r"\
"</body>                                                                                                                "	"\n\r"\
"</html>																												"