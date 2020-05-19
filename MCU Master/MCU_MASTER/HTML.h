/*
    To use:
        HTTP_HEAD_TITLE_START
        ~set title of page~
        HTTP_HEAD_TITLE_END
        HTTP_BODY_STYLE_START
        ~Set style of body of page~ !! DONT FORGET TO END STRING WITH ">\n\r"
        ~Anything to go inside the body goes here~
        HTTP_BODY_END

    the above will create a basic HTML string to send as a response. 

    To use the DIVs:
        HTTP_DIV_START
        ~Set the style and classes of div~ !! DONT FORGET TO END STRING WITH ">\n\r"
        ~Anything to go inside this div goes here~
        HTTP_DIV_END

*/

#define HTTP_HEAD_TITLE_START ""\
"<!DOCTYPE html>"                                                                   "\n\r"\
"<html>"                                                                            "\n\r"\
"   <head>"                                                                         "\n\r"\
"       <title>" 

#define HTTP_HEAD_TITLE_END \
"       </title>"                                                                   "\n\r"\
"       <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">"   "\n\r"\
"   </head>"

#define HTTP_BODY_START \
"   <body style=\""

#define HTTP_BODY_END       \
"   </body>"                                                                          "\n\r"\
"</html>"

#define HTTP_DIV_START \
"<div"

#define HTTP_DIV_END  \
"</div>"