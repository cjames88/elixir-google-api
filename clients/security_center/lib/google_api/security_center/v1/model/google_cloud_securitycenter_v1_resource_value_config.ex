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

defmodule GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1ResourceValueConfig do
  @moduledoc """
  A resource value config is a mapping configuration of user's tag values to resource values. Used by the attack path simulation.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Name for the resource value config
  *   `resourceValue` (*type:* `String.t`, *default:* `nil`) - Required. Resource value level this expression represents
  *   `tagValues` (*type:* `list(String.t)`, *default:* `nil`) - Required. Tag values combined with AND to check against. Values in the form "tagValues/123" E.g. [ "tagValues/123", "tagValues/456", "tagValues/789" ] https://cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :resourceValue => String.t() | nil,
          :tagValues => list(String.t()) | nil
        }

  field(:name)
  field(:resourceValue)
  field(:tagValues, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1ResourceValueConfig do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1ResourceValueConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1ResourceValueConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end