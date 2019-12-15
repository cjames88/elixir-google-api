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

defmodule GoogleApi.CloudProfiler.V2.Api.Projects do
  @moduledoc """
  API calls for all endpoints tagged `Projects`.
  """

  alias GoogleApi.CloudProfiler.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  CreateProfile creates a new profile resource in the online mode.

  The server ensures that the new profiles are created at a constant rate per
  deployment, so the creation request may hang for some time until the next
  profile session is available.

  The request may fail with ABORTED error if the creation is not available
  within ~1m, the response will indicate the duration of the backoff the
  client should take before attempting creating a profile again. The backoff
  duration is returned in google.rpc.RetryInfo extension on the response
  status. To a gRPC client, the extension will be return as a
  binary-serialized proto in the trailing metadata item named
  "google.rpc.retryinfo-bin".

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudProfiler.V2.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - Parent project to create the profile in.
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
      *   `:body` (*type:* `GoogleApi.CloudProfiler.V2.Model.CreateProfileRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudProfiler.V2.Model.Profile{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudprofiler_projects_profiles_create(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.CloudProfiler.V2.Model.Profile.t()} | {:error, Tesla.Env.t()}
  def cloudprofiler_projects_profiles_create(
        connection,
        parent,
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
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v2/{+parent}/profiles", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudProfiler.V2.Model.Profile{}])
  end

  @doc """
  CreateOfflineProfile creates a new profile resource in the offline mode.
  The client provides the profile to create along with the profile bytes, the
  server records it.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudProfiler.V2.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - Parent project to create the profile in.
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
      *   `:body` (*type:* `GoogleApi.CloudProfiler.V2.Model.Profile.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudProfiler.V2.Model.Profile{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudprofiler_projects_profiles_create_offline(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.CloudProfiler.V2.Model.Profile.t()} | {:error, Tesla.Env.t()}
  def cloudprofiler_projects_profiles_create_offline(
        connection,
        parent,
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
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v2/{+parent}/profiles:createOffline", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudProfiler.V2.Model.Profile{}])
  end

  @doc """
  UpdateProfile updates the profile bytes and labels on the profile resource
  created in the online mode. Updating the bytes for profiles created in the
  offline mode is currently not supported: the profile content must be
  provided at the time of the profile creation.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudProfiler.V2.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - Output only. Opaque, server-assigned, unique ID for this profile.
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
      *   `:updateMask` (*type:* `String.t`) - Field mask used to specify the fields to be overwritten. Currently only
          profile_bytes and labels fields are supported by UpdateProfile, so only
          those fields can be specified in the mask. When no mask is provided, all
          fields are overwritten.
      *   `:body` (*type:* `GoogleApi.CloudProfiler.V2.Model.Profile.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudProfiler.V2.Model.Profile{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudprofiler_projects_profiles_patch(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.CloudProfiler.V2.Model.Profile.t()} | {:error, Tesla.Env.t()}
  def cloudprofiler_projects_profiles_patch(connection, name, optional_params \\ [], opts \\ []) do
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
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v2/{+name}", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudProfiler.V2.Model.Profile{}])
  end
end
