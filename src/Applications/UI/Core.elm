module UI.Core exposing (Flags, Model, Msg(..), Switch(..))

import Alien
import Authentication
import Browser
import Browser.Navigation as Nav
import Json.Encode as Json
import UI.Backdrop
import UI.Page exposing (Page)
import Url exposing (Url)



-- ⛩


type alias Flags =
    {}



-- 🌳


type alias Model =
    { isAuthenticated : Bool
    , isLoading : Bool
    , navKey : Nav.Key
    , page : Page
    , url : Url

    -----------------------------------------
    -- Children
    -----------------------------------------
    , backdrop : UI.Backdrop.Model
    }



-- 📣


type Msg
    = Bypass
    | LoadUserData Json.Value
    | ToggleLoadingScreen Switch
      -----------------------------------------
      -- Children
      -----------------------------------------
    | BackdropMsg UI.Backdrop.Msg
      -----------------------------------------
      -- Brain
      -----------------------------------------
    | SignIn Authentication.Method
    | SignOut
      -----------------------------------------
      -- URL
      -----------------------------------------
    | LinkClicked Browser.UrlRequest
    | UrlChanged Url


type Switch
    = On
    | Off
