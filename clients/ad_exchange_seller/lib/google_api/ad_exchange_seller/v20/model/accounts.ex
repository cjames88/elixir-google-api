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

defmodule GoogleApi.AdExchangeSeller.V20.Model.Accounts do
  @moduledoc """


  ## Attributes

  - etag (String.t): ETag of this response for caching purposes. Defaults to: `null`.
  - items ([Account]): The accounts returned in this list response. Defaults to: `null`.
  - kind (String.t): Kind of list this is, in this case adexchangeseller#accounts. Defaults to: `null`.
  - nextPageToken (String.t): Continuation token used to page through accounts. To retrieve the next page of results, set the next request&#39;s \&quot;pageToken\&quot; value to this. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => any(),
          :items => list(GoogleApi.AdExchangeSeller.V20.Model.Account.t()),
          :kind => any(),
          :nextPageToken => any()
        }

  field(:etag)
  field(:items, as: GoogleApi.AdExchangeSeller.V20.Model.Account, type: :list)
  field(:kind)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeSeller.V20.Model.Accounts do
  def decode(value, options) do
    GoogleApi.AdExchangeSeller.V20.Model.Accounts.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeSeller.V20.Model.Accounts do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
