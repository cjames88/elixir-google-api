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

defmodule GoogleApi.Language.V2.Model.XPSResponseExplanationSpec do
  @moduledoc """
  Specification of Model explanation. Feature-based XAI in AutoML Vision ICN is deprecated.

  ## Attributes

  *   `explanationType` (*type:* `String.t`, *default:* `nil`) - Explanation type. For AutoML Image Classification models, possible values are: * `image-integrated-gradients` * `image-xrai`
  *   `metadata` (*type:* `GoogleApi.Language.V2.Model.XPSResponseExplanationMetadata.t`, *default:* `nil`) - Metadata describing the Model's input and output for explanation.
  *   `parameters` (*type:* `GoogleApi.Language.V2.Model.XPSResponseExplanationParameters.t`, *default:* `nil`) - Parameters that configure explaining of the Model's predictions.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :explanationType => String.t() | nil,
          :metadata => GoogleApi.Language.V2.Model.XPSResponseExplanationMetadata.t() | nil,
          :parameters => GoogleApi.Language.V2.Model.XPSResponseExplanationParameters.t() | nil
        }

  field(:explanationType)
  field(:metadata, as: GoogleApi.Language.V2.Model.XPSResponseExplanationMetadata)
  field(:parameters, as: GoogleApi.Language.V2.Model.XPSResponseExplanationParameters)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V2.Model.XPSResponseExplanationSpec do
  def decode(value, options) do
    GoogleApi.Language.V2.Model.XPSResponseExplanationSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V2.Model.XPSResponseExplanationSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
