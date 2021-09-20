module Application.Helper.View where

import           Data.Aeson.Text                ( encodeToLazyText )
import           Data.Text.Lazy                 ( toStrict )
import           IHP.ViewPrelude
-- Here you can add functions which are available in all your views

renderJsonEditor :: ToJSON a => a -> Html
renderJsonEditor a = [hsx|
      <div>
        <div id="jsoneditor" style="width: 400px; height: 400px;"></div>
        <script data-hs-a={toStrict (encodeToLazyText a)}>
            // create the editor
            const container = document.getElementById("jsoneditor")
            const options = {}
            const editor = new JSONEditor(container, options)

            // set json
            const input = document.currentScript.dataset.hsA
            console.log("input: ", input);
            const initialJson = JSON.parse(input) 
            editor.set(initialJson)

            // get json
            const updatedJson = editor.get()
        </script>
      </div>
|]
