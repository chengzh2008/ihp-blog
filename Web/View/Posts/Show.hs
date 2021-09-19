module Web.View.Posts.Show where
import qualified Text.MMark                    as MMark
import           Web.View.Prelude

data ShowView = ShowView
  { post :: Post
  }

instance View ShowView where
  html ShowView {..} = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={PostsAction}>Posts</a></li>
                <li class="breadcrumb-item active">Show Post</li>
            </ol>
        </nav>
        <h1>{title post}</h1>
        <p>{createdAt post |> dateTime }</p>
        <div>{body post |> renderMarkdown}</div>
    |]


renderMarkdown :: Text -> Html
renderMarkdown text = case text |> MMark.parse "" of
  Left  error    -> "Something went wrong"
  Right markdown -> MMark.render markdown |> tshow |> preEscapedToHtml
