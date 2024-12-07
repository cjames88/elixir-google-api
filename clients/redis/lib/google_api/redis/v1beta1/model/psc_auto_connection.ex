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

defmodule GoogleApi.Redis.V1beta1.Model.PscAutoConnection do
  @moduledoc """
  Details of consumer resources in a PSC connection that is created through Service Connectivity Automation.

  ## Attributes

  *   `address` (*type:* `String.t`, *default:* `nil`) - Output only. The IP allocated on the consumer network for the PSC forwarding rule.
  *   `connectionType` (*type:* `String.t`, *default:* `nil`) - Output only. Type of the PSC connection.
  *   `forwardingRule` (*type:* `String.t`, *default:* `nil`) - Output only. The URI of the consumer side forwarding rule. Example: projects/{projectNumOrId}/regions/us-east1/forwardingRules/{resourceId}.
  *   `network` (*type:* `String.t`, *default:* `nil`) - Required. The consumer network where the IP address resides, in the form of projects/{project_id}/global/networks/{network_id}.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Required. The consumer project_id where the forwarding rule is created from.
  *   `pscConnectionId` (*type:* `String.t`, *default:* `nil`) - Output only. The PSC connection id of the forwarding rule connected to the service attachment.
  *   `pscConnectionStatus` (*type:* `String.t`, *default:* `nil`) - Output only. The status of the PSC connection. Please note that this value is updated periodically. Please use Private Service Connect APIs for the latest status.
  *   `serviceAttachment` (*type:* `String.t`, *default:* `nil`) - Output only. The service attachment which is the target of the PSC connection, in the form of projects/{project-id}/regions/{region}/serviceAttachments/{service-attachment-id}.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address => String.t() | nil,
          :connectionType => String.t() | nil,
          :forwardingRule => String.t() | nil,
          :network => String.t() | nil,
          :projectId => String.t() | nil,
          :pscConnectionId => String.t() | nil,
          :pscConnectionStatus => String.t() | nil,
          :serviceAttachment => String.t() | nil
        }

  field(:address)
  field(:connectionType)
  field(:forwardingRule)
  field(:network)
  field(:projectId)
  field(:pscConnectionId)
  field(:pscConnectionStatus)
  field(:serviceAttachment)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1beta1.Model.PscAutoConnection do
  def decode(value, options) do
    GoogleApi.Redis.V1beta1.Model.PscAutoConnection.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1beta1.Model.PscAutoConnection do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
