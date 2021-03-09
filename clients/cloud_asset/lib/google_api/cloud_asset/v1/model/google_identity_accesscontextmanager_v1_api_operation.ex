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

defmodule GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1ApiOperation do
  @moduledoc """
  Identification for an API Operation.

  ## Attributes

  *   `methodSelectors` (*type:* `list(GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1MethodSelector.t)`, *default:* `nil`) - API methods or permissions to allow. Method or permission must belong to the service specified by `service_name` field. A single MethodSelector entry with `*` specified for the `method` field will allow all methods AND permissions for the service specified in `service_name`.
  *   `serviceName` (*type:* `String.t`, *default:* `nil`) - The name of the API whose methods or permissions the IngressPolicy or EgressPolicy want to allow. A single ApiOperation with `service_name` field set to `*` will allow all methods AND permissions for all services.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :methodSelectors =>
            list(
              GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1MethodSelector.t()
            )
            | nil,
          :serviceName => String.t() | nil
        }

  field(:methodSelectors,
    as: GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1MethodSelector,
    type: :list
  )

  field(:serviceName)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1ApiOperation do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1ApiOperation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1ApiOperation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
