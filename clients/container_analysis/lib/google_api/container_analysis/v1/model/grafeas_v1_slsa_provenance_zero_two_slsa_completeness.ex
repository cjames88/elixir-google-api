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

defmodule GoogleApi.ContainerAnalysis.V1.Model.GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness do
  @moduledoc """
  Indicates that the builder claims certain fields in this message to be complete.

  ## Attributes

  *   `environment` (*type:* `boolean()`, *default:* `nil`) - 
  *   `materials` (*type:* `boolean()`, *default:* `nil`) - 
  *   `parameters` (*type:* `boolean()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :environment => boolean() | nil,
          :materials => boolean() | nil,
          :parameters => boolean() | nil
        }

  field(:environment)
  field(:materials)
  field(:parameters)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContainerAnalysis.V1.Model.GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1.Model.GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContainerAnalysis.V1.Model.GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end