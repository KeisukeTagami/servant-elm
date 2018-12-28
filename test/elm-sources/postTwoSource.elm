module PostTwoSource exposing (..)

import Http
import Json.Decode exposing (..)
import Json.Encode


postTwo : String -> Http.Request (Maybe (Int))
postTwo b =
    Http.request
        { method =
            "POST"
        , headers =
            []
        , url =
            String.join "/"
                [ ""
                , "two"
                ]
        , body =
            Http.jsonBody (Json.Encode.string b)
        , expect =
            Http.expectJson (maybe int)
        , timeout =
            Nothing
        , withCredentials =
            False
        }
