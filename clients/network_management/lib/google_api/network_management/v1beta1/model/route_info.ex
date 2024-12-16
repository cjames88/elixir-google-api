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

defmodule GoogleApi.NetworkManagement.V1beta1.Model.RouteInfo do
  @moduledoc """
  For display only. Metadata associated with a Compute Engine route.

  ## Attributes

  *   `advertisedRouteNextHopUri` (*type:* `String.t`, *default:* `nil`) - For ADVERTISED routes, the URI of their next hop, i.e. the URI of the hybrid endpoint (VPN tunnel, Interconnect attachment, NCC router appliance) the advertised prefix is advertised through, or URI of the source peered network. Deprecated in favor of the next_hop_uri field, not used in new tests.
  *   `advertisedRouteSourceRouterUri` (*type:* `String.t`, *default:* `nil`) - For ADVERTISED dynamic routes, the URI of the Cloud Router that advertised the corresponding IP prefix.
  *   `destIpRange` (*type:* `String.t`, *default:* `nil`) - Destination IP range of the route.
  *   `destPortRanges` (*type:* `list(String.t)`, *default:* `nil`) - Destination port ranges of the route. POLICY_BASED routes only.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Name of a route.
  *   `instanceTags` (*type:* `list(String.t)`, *default:* `nil`) - Instance tags of the route.
  *   `nccHubRouteUri` (*type:* `String.t`, *default:* `nil`) - For PEERING_SUBNET and PEERING_DYNAMIC routes that are advertised by NCC Hub, the URI of the corresponding route in NCC Hub's routing table.
  *   `nccHubUri` (*type:* `String.t`, *default:* `nil`) - URI of the NCC Hub the route is advertised by. PEERING_SUBNET and PEERING_DYNAMIC routes that are advertised by NCC Hub only.
  *   `nccSpokeUri` (*type:* `String.t`, *default:* `nil`) - URI of the destination NCC Spoke. PEERING_SUBNET and PEERING_DYNAMIC routes that are advertised by NCC Hub only.
  *   `networkUri` (*type:* `String.t`, *default:* `nil`) - URI of a VPC network where route is located.
  *   `nextHop` (*type:* `String.t`, *default:* `nil`) - String type of the next hop of the route (for example, "VPN tunnel"). Deprecated in favor of the next_hop_type and next_hop_uri fields, not used in new tests.
  *   `nextHopNetworkUri` (*type:* `String.t`, *default:* `nil`) - URI of a VPC network where the next hop resource is located.
  *   `nextHopType` (*type:* `String.t`, *default:* `nil`) - Type of next hop.
  *   `nextHopUri` (*type:* `String.t`, *default:* `nil`) - URI of the next hop resource.
  *   `originatingRouteDisplayName` (*type:* `String.t`, *default:* `nil`) - For PEERING_SUBNET, PEERING_STATIC and PEERING_DYNAMIC routes, the name of the originating SUBNET/STATIC/DYNAMIC route.
  *   `originatingRouteUri` (*type:* `String.t`, *default:* `nil`) - For PEERING_SUBNET and PEERING_STATIC routes, the URI of the originating SUBNET/STATIC route.
  *   `priority` (*type:* `integer()`, *default:* `nil`) - Priority of the route.
  *   `protocols` (*type:* `list(String.t)`, *default:* `nil`) - Protocols of the route. POLICY_BASED routes only.
  *   `region` (*type:* `String.t`, *default:* `nil`) - Region of the route. DYNAMIC, PEERING_DYNAMIC, POLICY_BASED and ADVERTISED routes only. If set for POLICY_BASED route, this is a region of VLAN attachments for Cloud Interconnect the route applies to.
  *   `routeScope` (*type:* `String.t`, *default:* `nil`) - Indicates where route is applicable. Deprecated, routes with NCC_HUB scope are not included in the trace in new tests.
  *   `routeType` (*type:* `String.t`, *default:* `nil`) - Type of route.
  *   `srcIpRange` (*type:* `String.t`, *default:* `nil`) - Source IP address range of the route. POLICY_BASED routes only.
  *   `srcPortRanges` (*type:* `list(String.t)`, *default:* `nil`) - Source port ranges of the route. POLICY_BASED routes only.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - URI of a route. SUBNET, STATIC, PEERING_SUBNET (only for peering network) and POLICY_BASED routes only.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advertisedRouteNextHopUri => String.t() | nil,
          :advertisedRouteSourceRouterUri => String.t() | nil,
          :destIpRange => String.t() | nil,
          :destPortRanges => list(String.t()) | nil,
          :displayName => String.t() | nil,
          :instanceTags => list(String.t()) | nil,
          :nccHubRouteUri => String.t() | nil,
          :nccHubUri => String.t() | nil,
          :nccSpokeUri => String.t() | nil,
          :networkUri => String.t() | nil,
          :nextHop => String.t() | nil,
          :nextHopNetworkUri => String.t() | nil,
          :nextHopType => String.t() | nil,
          :nextHopUri => String.t() | nil,
          :originatingRouteDisplayName => String.t() | nil,
          :originatingRouteUri => String.t() | nil,
          :priority => integer() | nil,
          :protocols => list(String.t()) | nil,
          :region => String.t() | nil,
          :routeScope => String.t() | nil,
          :routeType => String.t() | nil,
          :srcIpRange => String.t() | nil,
          :srcPortRanges => list(String.t()) | nil,
          :uri => String.t() | nil
        }

  field(:advertisedRouteNextHopUri)
  field(:advertisedRouteSourceRouterUri)
  field(:destIpRange)
  field(:destPortRanges, type: :list)
  field(:displayName)
  field(:instanceTags, type: :list)
  field(:nccHubRouteUri)
  field(:nccHubUri)
  field(:nccSpokeUri)
  field(:networkUri)
  field(:nextHop)
  field(:nextHopNetworkUri)
  field(:nextHopType)
  field(:nextHopUri)
  field(:originatingRouteDisplayName)
  field(:originatingRouteUri)
  field(:priority)
  field(:protocols, type: :list)
  field(:region)
  field(:routeScope)
  field(:routeType)
  field(:srcIpRange)
  field(:srcPortRanges, type: :list)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkManagement.V1beta1.Model.RouteInfo do
  def decode(value, options) do
    GoogleApi.NetworkManagement.V1beta1.Model.RouteInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkManagement.V1beta1.Model.RouteInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
