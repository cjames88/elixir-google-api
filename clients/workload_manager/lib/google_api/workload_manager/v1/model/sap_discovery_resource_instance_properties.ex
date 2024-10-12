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

defmodule GoogleApi.WorkloadManager.V1.Model.SapDiscoveryResourceInstanceProperties do
  @moduledoc """
  A set of properties only present for an instance type resource

  ## Attributes

  *   `appInstances` (*type:* `list(GoogleApi.WorkloadManager.V1.Model.SapDiscoveryResourceInstancePropertiesAppInstance.t)`, *default:* `nil`) - Optional. App server instances on the host
  *   `clusterInstances` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A list of instance URIs that are part of a cluster with this one.
  *   `instanceNumber` (*type:* `String.t`, *default:* `nil`) - Optional. The VM's instance number.
  *   `instanceRole` (*type:* `String.t`, *default:* `nil`) - Optional. Bitmask of instance role, a resource may have multiple roles at once.
  *   `isDrSite` (*type:* `boolean()`, *default:* `nil`) - Optional. Instance is part of a DR site.
  *   `virtualHostname` (*type:* `String.t`, *default:* `nil`) - Optional. A virtual hostname of the instance if it has one.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appInstances =>
            list(
              GoogleApi.WorkloadManager.V1.Model.SapDiscoveryResourceInstancePropertiesAppInstance.t()
            )
            | nil,
          :clusterInstances => list(String.t()) | nil,
          :instanceNumber => String.t() | nil,
          :instanceRole => String.t() | nil,
          :isDrSite => boolean() | nil,
          :virtualHostname => String.t() | nil
        }

  field(:appInstances,
    as: GoogleApi.WorkloadManager.V1.Model.SapDiscoveryResourceInstancePropertiesAppInstance,
    type: :list
  )

  field(:clusterInstances, type: :list)
  field(:instanceNumber)
  field(:instanceRole)
  field(:isDrSite)
  field(:virtualHostname)
end

defimpl Poison.Decoder,
  for: GoogleApi.WorkloadManager.V1.Model.SapDiscoveryResourceInstanceProperties do
  def decode(value, options) do
    GoogleApi.WorkloadManager.V1.Model.SapDiscoveryResourceInstanceProperties.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.WorkloadManager.V1.Model.SapDiscoveryResourceInstanceProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
