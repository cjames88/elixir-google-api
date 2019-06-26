# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Mirror.V1.Model.Account do
  @moduledoc """
  Represents an account passed into the Account Manager on Glass.

  ## Attributes

  *   `authTokens` (*type:* `list(GoogleApi.Mirror.V1.Model.AuthToken.t)`, *default:* `nil`) - 
  *   `features` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `password` (*type:* `String.t`, *default:* `nil`) - 
  *   `userData` (*type:* `list(GoogleApi.Mirror.V1.Model.UserData.t)`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authTokens => list(GoogleApi.Mirror.V1.Model.AuthToken.t()),
          :features => list(String.t()),
          :password => String.t(),
          :userData => list(GoogleApi.Mirror.V1.Model.UserData.t())
        }

  field(:authTokens, as: GoogleApi.Mirror.V1.Model.AuthToken, type: :list)
  field(:features, type: :list)
  field(:password)
  field(:userData, as: GoogleApi.Mirror.V1.Model.UserData, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Mirror.V1.Model.Account do
  def decode(value, options) do
    GoogleApi.Mirror.V1.Model.Account.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Mirror.V1.Model.Account do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
