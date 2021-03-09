# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Books.V1.Api.Volumes do
  @moduledoc """
  API calls for all endpoints tagged `Volumes`.
  """

  alias GoogleApi.Books.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Gets volume information for a single volume.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `volume_id` (*type:* `String.t`) - ID of volume to retrieve.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:country` (*type:* `String.t`) - ISO-3166-1 code to override the IP-based location.
      *   `:includeNonComicsSeries` (*type:* `boolean()`) - Set to true to include non-comics series. Defaults to false.
      *   `:partner` (*type:* `String.t`) - Brand results for partner ID.
      *   `:projection` (*type:* `String.t`) - Restrict information returned to a set of selected fields.
      *   `:source` (*type:* `String.t`) - string to identify the originator of this request.
      *   `:user_library_consistent_read` (*type:* `boolean()`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.Volume{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_volumes_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Volume.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def books_volumes_get(connection, volume_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :country => :query,
      :includeNonComicsSeries => :query,
      :partner => :query,
      :projection => :query,
      :source => :query,
      :user_library_consistent_read => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/books/v1/volumes/{volumeId}", %{
        "volumeId" => URI.encode(volume_id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Volume{}])
  end

  @doc """
  Performs a book search.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `q` (*type:* `String.t`) - Full-text search query string.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:download` (*type:* `String.t`) - Restrict to volumes by download availability.
      *   `:filter` (*type:* `String.t`) - Filter search results.
      *   `:langRestrict` (*type:* `String.t`) - Restrict results to books with this language code.
      *   `:libraryRestrict` (*type:* `String.t`) - Restrict search to this user's library.
      *   `:maxAllowedMaturityRating` (*type:* `String.t`) - The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out.
      *   `:maxResults` (*type:* `integer()`) - Maximum number of results to return.
      *   `:orderBy` (*type:* `String.t`) - Sort search results.
      *   `:partner` (*type:* `String.t`) - Restrict and brand results for partner ID.
      *   `:printType` (*type:* `String.t`) - Restrict to books or magazines.
      *   `:projection` (*type:* `String.t`) - Restrict information returned to a set of selected fields.
      *   `:showPreorders` (*type:* `boolean()`) - Set to true to show books available for preorder. Defaults to false.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
      *   `:startIndex` (*type:* `integer()`) - Index of the first result to return (starts at 0)
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.Volumes{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_volumes_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Volumes.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def books_volumes_list(connection, q, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :download => :query,
      :filter => :query,
      :langRestrict => :query,
      :libraryRestrict => :query,
      :maxAllowedMaturityRating => :query,
      :maxResults => :query,
      :orderBy => :query,
      :partner => :query,
      :printType => :query,
      :projection => :query,
      :showPreorders => :query,
      :source => :query,
      :startIndex => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/books/v1/volumes", %{})
      |> Request.add_param(:query, :q, q)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Volumes{}])
  end

  @doc """
  Return a list of associated books.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `volume_id` (*type:* `String.t`) - ID of the source volume.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:association` (*type:* `String.t`) - Association type.
      *   `:locale` (*type:* `String.t`) - ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. Used for generating recommendations.
      *   `:maxAllowedMaturityRating` (*type:* `String.t`) - The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.Volumes{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_volumes_associated_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Volumes.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def books_volumes_associated_list(connection, volume_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :association => :query,
      :locale => :query,
      :maxAllowedMaturityRating => :query,
      :source => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/books/v1/volumes/{volumeId}/associated", %{
        "volumeId" => URI.encode(volume_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Volumes{}])
  end

  @doc """
  Return a list of books in My Library.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:acquireMethod` (*type:* `list(String.t)`) - How the book was acquired
      *   `:country` (*type:* `String.t`) - ISO-3166-1 code to override the IP-based location.
      *   `:locale` (*type:* `String.t`) - ISO-639-1 language and ISO-3166-1 country code. Ex:'en_US'. Used for generating recommendations.
      *   `:maxResults` (*type:* `integer()`) - Maximum number of results to return.
      *   `:processingState` (*type:* `list(String.t)`) - The processing state of the user uploaded volumes to be returned. Applicable only if the UPLOADED is specified in the acquireMethod.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
      *   `:startIndex` (*type:* `integer()`) - Index of the first result to return (starts at 0)
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.Volumes{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_volumes_mybooks_list(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Volumes.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def books_volumes_mybooks_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :acquireMethod => :query,
      :country => :query,
      :locale => :query,
      :maxResults => :query,
      :processingState => :query,
      :source => :query,
      :startIndex => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/books/v1/volumes/mybooks", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Volumes{}])
  end

  @doc """
  Return a list of recommended books for the current user.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:locale` (*type:* `String.t`) - ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. Used for generating recommendations.
      *   `:maxAllowedMaturityRating` (*type:* `String.t`) - The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.Volumes{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_volumes_recommended_list(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Volumes.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def books_volumes_recommended_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :locale => :query,
      :maxAllowedMaturityRating => :query,
      :source => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/books/v1/volumes/recommended", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Volumes{}])
  end

  @doc """
  Rate a recommended book for the current user.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `rating` (*type:* `String.t`) - Rating to be given to the volume.
  *   `volume_id` (*type:* `String.t`) - ID of the source volume.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:locale` (*type:* `String.t`) - ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. Used for generating recommendations.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.BooksVolumesRecommendedRateResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_volumes_recommended_rate(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Books.V1.Model.BooksVolumesRecommendedRateResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def books_volumes_recommended_rate(
        connection,
        rating,
        volume_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :locale => :query,
      :source => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/books/v1/volumes/recommended/rate", %{})
      |> Request.add_param(:query, :rating, rating)
      |> Request.add_param(:query, :volumeId, volume_id)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Books.V1.Model.BooksVolumesRecommendedRateResponse{}]
    )
  end

  @doc """
  Return a list of books uploaded by the current user.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:locale` (*type:* `String.t`) - ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. Used for generating recommendations.
      *   `:maxResults` (*type:* `integer()`) - Maximum number of results to return.
      *   `:processingState` (*type:* `list(String.t)`) - The processing state of the user uploaded volumes to be returned.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
      *   `:startIndex` (*type:* `integer()`) - Index of the first result to return (starts at 0)
      *   `:volumeId` (*type:* `list(String.t)`) - The ids of the volumes to be returned. If not specified all that match the processingState are returned.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.Volumes{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_volumes_useruploaded_list(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Volumes.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def books_volumes_useruploaded_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :locale => :query,
      :maxResults => :query,
      :processingState => :query,
      :source => :query,
      :startIndex => :query,
      :volumeId => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/books/v1/volumes/useruploaded", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Volumes{}])
  end
end
