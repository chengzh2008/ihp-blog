module Web.View.Posts.Show where

import qualified Text.MMark                    as MMark
import           Web.View.Prelude

data ShowView = ShowView
  { post :: Include "comments" Post
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
        <p>{get #createdAt post |> dateTime }</p>
        <div>{get #body post |> renderMarkdown}</div>
        <img src={get #link post} />

        <a href={get #id post |> NewCommentAction }>Add Comment</a>
        <div>{forEach (get #comments post) renderComment}</div>
    |]


renderMarkdown :: Text -> Html
renderMarkdown text = case text |> MMark.parse "" of
  Left  error    -> "Something went wrong"
  Right markdown -> MMark.render markdown |> tshow |> preEscapedToHtml

renderComment :: Comment -> Html
renderComment comment = [hsx|
    <div class="mt-4">
      <h5>{get #author comment}</h5>
      <h6>{get #createdAt comment |> timeAgo }</h6>
      <p>{get #body comment}</p>
      <img src="https://picsum.photos/200/300" />
    </div>
  |]
