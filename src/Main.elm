module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Attributes exposing (class, classList, disabled, src)
import Html.Events exposing (onClick)
import VitePluginHelper


main =
    Browser.sandbox
        { init = init
        , view = view
        , update = update
        }



-- MODEL


type alias Model =
    { numbers : List Int
    , selected : Maybe Int
    , submitted : Bool
    }


init : Model
init =
    { numbers = [ 1, 2, 3, 4, 5 ]
    , selected = Nothing
    , submitted = False
    }



-- UPDATE


type Msg
    = SelectedRating Int
    | Clicked
    | Submitted


update : Msg -> Model -> Model
update msg model =
    case msg of
        SelectedRating n ->
            { model | selected = Just n }

        Clicked ->
            model

        Submitted ->
            { model | submitted = True }



--VIEW


view : Model -> Html Msg
view model =
    section [ class "card" ]
        [ if not model.submitted then
            div [ class "card-wrapper" ]
                [ div [ class "icon-wrapper" ]
                    [ img [ src <| VitePluginHelper.asset "/src/assets/icon-star.svg", class "star-icon" ] []
                    ]
                , h1 [ class "primary-heading" ] [ text "How did we do?" ]
                , p [ class "detailed-paragraph" ] [ text "Please let us know how we did with your support request. All feedback is appreciated to help us improve our offering!" ]
                , div [ class "number-list" ]
                    (List.map (\n -> viewButton model.selected n) model.numbers)
                , viewSubmitButton model.selected
                ]

          else
            div [ class "card-wrapper" ] [ text "Hi" ]
        ]


viewButton : Maybe Int -> Int -> Html Msg
viewButton selectedNumber n =
    case selectedNumber of
        Just rating ->
            button
                [ onClick (SelectedRating n)
                , classList
                    [ ( "number-item", True )
                    , ( "selected", isClickedButton rating n )
                    ]
                ]
                [ text (String.fromInt n) ]

        Nothing ->
            button
                [ onClick (SelectedRating n)
                , classList
                    [ ( "number-item", True )
                    , ( "selected", False )
                    ]
                ]
                [ text (String.fromInt n) ]


viewSubmitButton : Maybe Int -> Html Msg
viewSubmitButton result =
    case result of
        Just n ->
            button [ class "submit", onClick Submitted ] [ text "SUBMIT" ]

        Nothing ->
            button
                [ class "submit"
                , class "unclickable"
                , disabled True
                , onClick Submitted
                ]
                [ text "SUBMIT" ]


isClickedButton : Int -> Int -> Bool
isClickedButton selectedNumber n =
    selectedNumber == n
