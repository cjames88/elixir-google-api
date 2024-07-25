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

defmodule GoogleApi.BackupDR.V1.Model.ManagementServer do
  @moduledoc """
  ManagementServer describes a single BackupDR ManagementServer instance.

  ## Attributes

  *   `baProxyUri` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The hostname or ip address of the exposed AGM endpoints, used by BAs to connect to BA proxy.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the instance was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. The description of the ManagementServer instance (2048 characters or less).
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Optional. Server specified ETag for the ManagementServer resource to prevent simultaneous updates from overwiting each other.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Resource labels to represent user provided metadata. Labels currently defined: 1. migrate_from_go= If set to true, the MS is created in migration ready mode.
  *   `managementUri` (*type:* `GoogleApi.BackupDR.V1.Model.ManagementURI.t`, *default:* `nil`) - Output only. The hostname or ip address of the exposed AGM endpoints, used by clients to connect to AGM/RD graphical user interface and APIs.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Identifier. The resource name.
  *   `networks` (*type:* `list(GoogleApi.BackupDR.V1.Model.NetworkConfig.t)`, *default:* `nil`) - Required. VPC networks to which the ManagementServer instance is connected. For this version, only a single network is supported.
  *   `oauth2ClientId` (*type:* `String.t`, *default:* `nil`) - Output only. The OAuth 2.0 client id is required to make API calls to the BackupDR instance API of this ManagementServer. This is the value that should be provided in the 'aud' field of the OIDC ID Token (see openid specification https://openid.net/specs/openid-connect-core-1_0.html#IDToken).
  *   `satisfiesPzi` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The ManagementServer state.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Optional. The type of the ManagementServer resource.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the instance was updated.
  *   `workforceIdentityBasedManagementUri` (*type:* `GoogleApi.BackupDR.V1.Model.WorkforceIdentityBasedManagementURI.t`, *default:* `nil`) - Output only. The hostnames of the exposed AGM endpoints for both types of user i.e. 1p and 3p, used to connect AGM/RM UI.
  *   `workforceIdentityBasedOauth2ClientId` (*type:* `GoogleApi.BackupDR.V1.Model.WorkforceIdentityBasedOAuth2ClientID.t`, *default:* `nil`) - Output only. The OAuth client IDs for both types of user i.e. 1p and 3p.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :baProxyUri => list(String.t()) | nil,
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :etag => String.t() | nil,
          :labels => map() | nil,
          :managementUri => GoogleApi.BackupDR.V1.Model.ManagementURI.t() | nil,
          :name => String.t() | nil,
          :networks => list(GoogleApi.BackupDR.V1.Model.NetworkConfig.t()) | nil,
          :oauth2ClientId => String.t() | nil,
          :satisfiesPzi => boolean() | nil,
          :satisfiesPzs => boolean() | nil,
          :state => String.t() | nil,
          :type => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :workforceIdentityBasedManagementUri =>
            GoogleApi.BackupDR.V1.Model.WorkforceIdentityBasedManagementURI.t() | nil,
          :workforceIdentityBasedOauth2ClientId =>
            GoogleApi.BackupDR.V1.Model.WorkforceIdentityBasedOAuth2ClientID.t() | nil
        }

  field(:baProxyUri, type: :list)
  field(:createTime, as: DateTime)
  field(:description)
  field(:etag)
  field(:labels, type: :map)
  field(:managementUri, as: GoogleApi.BackupDR.V1.Model.ManagementURI)
  field(:name)
  field(:networks, as: GoogleApi.BackupDR.V1.Model.NetworkConfig, type: :list)
  field(:oauth2ClientId)
  field(:satisfiesPzi)
  field(:satisfiesPzs)
  field(:state)
  field(:type)
  field(:updateTime, as: DateTime)

  field(:workforceIdentityBasedManagementUri,
    as: GoogleApi.BackupDR.V1.Model.WorkforceIdentityBasedManagementURI
  )

  field(:workforceIdentityBasedOauth2ClientId,
    as: GoogleApi.BackupDR.V1.Model.WorkforceIdentityBasedOAuth2ClientID
  )
end

defimpl Poison.Decoder, for: GoogleApi.BackupDR.V1.Model.ManagementServer do
  def decode(value, options) do
    GoogleApi.BackupDR.V1.Model.ManagementServer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BackupDR.V1.Model.ManagementServer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
