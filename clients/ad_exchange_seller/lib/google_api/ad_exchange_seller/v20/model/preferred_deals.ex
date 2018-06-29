# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.AdExchangeSeller.V20.Model.PreferredDeals do
  @moduledoc """


  ## Attributes

  - items ([PreferredDeal]): The preferred deals returned in this list response. Defaults to: `null`.
  - kind (String.t): Kind of list this is, in this case adexchangeseller#preferredDeals. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.AdExchangeSeller.V20.Model.PreferredDeal.t()),
          :kind => any()
        }

  field(:items, as: GoogleApi.AdExchangeSeller.V20.Model.PreferredDeal, type: :list)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeSeller.V20.Model.PreferredDeals do
  def decode(value, options) do
    GoogleApi.AdExchangeSeller.V20.Model.PreferredDeals.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeSeller.V20.Model.PreferredDeals do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
