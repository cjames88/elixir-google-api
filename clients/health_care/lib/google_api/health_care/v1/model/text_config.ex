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

defmodule GoogleApi.HealthCare.V1.Model.TextConfig do
  @moduledoc """


  ## Attributes

  *   `additionalTransformations` (*type:* `list(GoogleApi.HealthCare.V1.Model.InfoTypeTransformation.t)`, *default:* `nil`) - Optional. Transformations to apply to the detected data, overridden by `exclude_info_types`.
  *   `excludeInfoTypes` (*type:* `list(String.t)`, *default:* `nil`) - Optional. InfoTypes to skip transforming, overriding `additional_transformations`.
  *   `transformations` (*type:* `list(GoogleApi.HealthCare.V1.Model.InfoTypeTransformation.t)`, *default:* `nil`) - Optional. The transformations to apply to the detected data. Deprecated. Use `additional_transformations` instead.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalTransformations =>
            list(GoogleApi.HealthCare.V1.Model.InfoTypeTransformation.t()) | nil,
          :excludeInfoTypes => list(String.t()) | nil,
          :transformations => list(GoogleApi.HealthCare.V1.Model.InfoTypeTransformation.t()) | nil
        }

  field(:additionalTransformations,
    as: GoogleApi.HealthCare.V1.Model.InfoTypeTransformation,
    type: :list
  )

  field(:excludeInfoTypes, type: :list)
  field(:transformations, as: GoogleApi.HealthCare.V1.Model.InfoTypeTransformation, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.TextConfig do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.TextConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.TextConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
