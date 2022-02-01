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

defmodule GoogleApi.CloudKMS.V1.Model.EkmConnection do
  @moduledoc """
  An EkmConnection represents an individual EKM connection. It can be used for creating CryptoKeys and CryptoKeyVersions with a ProtectionLevel of EXTERNAL_VPC, as well as performing cryptographic operations using keys created within the EkmConnection.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which the EkmConnection was created.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - This checksum is computed by the server based on the value of other fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name for the EkmConnection in the format `projects/*/locations/*/ekmConnections/*`.
  *   `serviceResolvers` (*type:* `list(GoogleApi.CloudKMS.V1.Model.ServiceResolver.t)`, *default:* `nil`) - A list of ServiceResolvers where the EKM can be reached. There should be one ServiceResolver per EKM replica. Currently, only a single ServiceResolver is supported.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :etag => String.t() | nil,
          :name => String.t() | nil,
          :serviceResolvers => list(GoogleApi.CloudKMS.V1.Model.ServiceResolver.t()) | nil
        }

  field(:createTime, as: DateTime)
  field(:etag)
  field(:name)
  field(:serviceResolvers, as: GoogleApi.CloudKMS.V1.Model.ServiceResolver, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudKMS.V1.Model.EkmConnection do
  def decode(value, options) do
    GoogleApi.CloudKMS.V1.Model.EkmConnection.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudKMS.V1.Model.EkmConnection do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end