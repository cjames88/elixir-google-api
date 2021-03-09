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

defmodule GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1EgressPolicy do
  @moduledoc """
  Policy for egress from perimeter. EgressPolicies match requests based on `egress_from` and `egress_to` stanzas. For an EgressPolicy to match, both `egress_from` and `egress_to` stanzas must be matched. If an EgressPolicy matches a request, the request is allowed to span the ServicePerimeter boundary. For example, an EgressPolicy can be used to allow VMs on networks within the ServicePerimeter to access a defined set of projects outside the perimeter in certain contexts (e.g. to read data from a Cloud Storage bucket or query against a BigQuery dataset). EgressPolicies are concerned with the *resources* that a request relates as well as the API services and API actions being used. They do not related to the direction of data movement. More detailed documentation for this concept can be found in the descriptions of EgressFrom and EgressTo.

  ## Attributes

  *   `egressFrom` (*type:* `GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1EgressFrom.t`, *default:* `nil`) - Defines conditions on the source of a request causing this EgressPolicy to apply.
  *   `egressTo` (*type:* `GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1EgressTo.t`, *default:* `nil`) - Defines the conditions on the ApiOperation and destination resources that cause this EgressPolicy to apply.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :egressFrom =>
            GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1EgressFrom.t() | nil,
          :egressTo =>
            GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1EgressTo.t() | nil
        }

  field(:egressFrom,
    as: GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1EgressFrom
  )

  field(:egressTo, as: GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1EgressTo)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1EgressPolicy do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1EgressPolicy.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1EgressPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
