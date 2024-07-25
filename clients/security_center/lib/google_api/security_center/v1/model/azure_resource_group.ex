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

defmodule GoogleApi.SecurityCenter.V1.Model.AzureResourceGroup do
  @moduledoc """
  Represents an Azure resource group.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the Azure resource group. This is not a UUID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil
        }

  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.AzureResourceGroup do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.AzureResourceGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.AzureResourceGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
