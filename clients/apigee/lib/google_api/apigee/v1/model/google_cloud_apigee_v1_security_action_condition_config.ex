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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityActionConditionConfig do
  @moduledoc """
  The following are a list of conditions. A valid SecurityAction must contain at least one condition. Within a condition, each element is ORed. Across conditions elements are ANDed. For example if a SecurityAction has the following: ip_address_ranges: ["ip1", "ip2"] and bot_reasons: ["Flooder", "Robot Abuser"] then this is interpreted as: enforce the action if the incoming request has ((ip_address_ranges = "ip1" OR ip_address_ranges = "ip2") AND (bot_reasons="Flooder" OR bot_reasons="Robot Abuser")). Conditions other than ip_address_ranges and bot_reasons cannot be ANDed.

  ## Attributes

  *   `accessTokens` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A list of access_tokens. Limit 1000 per action.
  *   `apiKeys` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A list of API keys. Limit 1000 per action.
  *   `apiProducts` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A list of API Products. Limit 1000 per action.
  *   `asns` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A list of ASN numbers to act on, e.g. 23. https://en.wikipedia.org/wiki/Autonomous_system_(Internet) This uses int64 instead of uint32 because of https://linter.aip.dev/141/forbidden-types.
  *   `botReasons` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A list of Bot Reasons. Current options: Flooder, Brute Guessor, Static Content Scraper, OAuth Abuser, Robot Abuser, TorListRule, Advanced Anomaly Detection, Advanced API Scraper, Search Engine Crawlers, Public Clouds, Public Cloud AWS, Public Cloud Azure, and Public Cloud Google.
  *   `developerApps` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A list of developer apps. Limit 1000 per action.
  *   `developers` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A list of developers. Limit 1000 per action.
  *   `httpMethods` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Act only on particular HTTP methods. E.g. A read-only API can block POST/PUT/DELETE methods. Accepted values are: GET, HEAD, POST, PUT, DELETE, CONNECT, OPTIONS, TRACE and PATCH.
  *   `ipAddressRanges` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A list of IP addresses. This could be either IPv4 or IPv6. Limited to 100 per action.
  *   `regionCodes` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A list of countries/region codes to act on, e.g. US. This follows https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2.
  *   `userAgents` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A list of user agents to deny. We look for exact matches. Limit 50 per action.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessTokens => list(String.t()) | nil,
          :apiKeys => list(String.t()) | nil,
          :apiProducts => list(String.t()) | nil,
          :asns => list(String.t()) | nil,
          :botReasons => list(String.t()) | nil,
          :developerApps => list(String.t()) | nil,
          :developers => list(String.t()) | nil,
          :httpMethods => list(String.t()) | nil,
          :ipAddressRanges => list(String.t()) | nil,
          :regionCodes => list(String.t()) | nil,
          :userAgents => list(String.t()) | nil
        }

  field(:accessTokens, type: :list)
  field(:apiKeys, type: :list)
  field(:apiProducts, type: :list)
  field(:asns, type: :list)
  field(:botReasons, type: :list)
  field(:developerApps, type: :list)
  field(:developers, type: :list)
  field(:httpMethods, type: :list)
  field(:ipAddressRanges, type: :list)
  field(:regionCodes, type: :list)
  field(:userAgents, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityActionConditionConfig do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityActionConditionConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityActionConditionConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
