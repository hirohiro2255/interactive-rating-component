module Main exposing (main)

import Html exposing (a, button, div, h1, h2, img, li, p, section, text, ul)
import Html.Attributes exposing (class, src)
import VitePluginHelper


main =
    section [ class "card" ]
        [ div [ class "card-wrapper" ]
            [ div [ class "icon-wrapper" ]
                [ img [ src <| VitePluginHelper.asset "/src/assets/icon-star.svg", class "star-icon" ] []
                ]
            , h1 [ class "primary-heading" ] [ text "How did we do?" ]
            , p [ class "detailed-paragraph" ] [ text "Please let us know how we did with your support request. All feedback is appreciated to help us improve our offering!" ]
            , div [ class "number-list" ]
                [ button [ class "number-item" ] [ text "1" ]
                , button [ class "number-item" ] [ text "2" ]
                , button [ class "number-item" ] [ text "3" ]
                , button [ class "number-item" ] [ text "4" ]
                , button [ class "number-item" ] [ text "5" ]
                ]
            , button [] [ text "SUBMIT" ]
            ]
        ]
