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

defmodule GoogleApi.BigtableAdmin.V2.Model.GoogleBigtableAdminV2TypeMap do
  @moduledoc """
  A mapping of keys to values of a given type. Values of type `Map` are stored in a `Value.array_value` where each entry is another `Value.array_value` with two elements (the key and the value, in that order). Normally encoded Map values won't have repeated keys, however, clients are expected to handle the case in which they do. If the same key appears multiple times, the _last_ value takes precedence.

  ## Attributes

  *   `keyType` (*type:* `GoogleApi.BigtableAdmin.V2.Model.Type.t`, *default:* `nil`) - The type of a map key. Only `Bytes`, `String`, and `Int64` are allowed as key types.
  *   `valueType` (*type:* `GoogleApi.BigtableAdmin.V2.Model.Type.t`, *default:* `nil`) - The type of the values in a map.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :keyType => GoogleApi.BigtableAdmin.V2.Model.Type.t() | nil,
          :valueType => GoogleApi.BigtableAdmin.V2.Model.Type.t() | nil
        }

  field(:keyType, as: GoogleApi.BigtableAdmin.V2.Model.Type)
  field(:valueType, as: GoogleApi.BigtableAdmin.V2.Model.Type)
end

defimpl Poison.Decoder, for: GoogleApi.BigtableAdmin.V2.Model.GoogleBigtableAdminV2TypeMap do
  def decode(value, options) do
    GoogleApi.BigtableAdmin.V2.Model.GoogleBigtableAdminV2TypeMap.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigtableAdmin.V2.Model.GoogleBigtableAdminV2TypeMap do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
