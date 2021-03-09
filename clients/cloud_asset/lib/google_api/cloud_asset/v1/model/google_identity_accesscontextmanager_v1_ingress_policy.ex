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

defmodule GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1IngressPolicy do
  @moduledoc """
  Policy for ingress into ServicePerimeter. IngressPolicies match requests based on `ingress_from` and `ingress_to` stanzas. For an ingress policy to match, both the `ingress_from` and `ingress_to` stanzas must be matched. If an IngressPolicy matches a request, the request is allowed through the perimeter boundary from outside the perimeter. For example, access from the internet can be allowed either based on an AccessLevel or, for traffic hosted on Google Cloud, the project of the source network. For access from private networks, using the project of the hosting network is required. Individual ingress policies can be limited by restricting which services and/or actions they match using the `ingress_to` field.

  ## Attributes

  *   `ingressFrom` (*type:* `GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1IngressFrom.t`, *default:* `nil`) - Defines the conditions on the source of a request causing this IngressPolicy to apply.
  *   `ingressTo` (*type:* `GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1IngressTo.t`, *default:* `nil`) - Defines the conditions on the ApiOperation and request destination that cause this IngressPolicy to apply.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ingressFrom =>
            GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1IngressFrom.t()
            | nil,
          :ingressTo =>
            GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1IngressTo.t() | nil
        }

  field(:ingressFrom,
    as: GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1IngressFrom
  )

  field(:ingressTo,
    as: GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1IngressTo
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1IngressPolicy do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1IngressPolicy.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1IngressPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
