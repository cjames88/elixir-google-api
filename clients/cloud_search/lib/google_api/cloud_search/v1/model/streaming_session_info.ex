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

defmodule GoogleApi.CloudSearch.V1.Model.StreamingSessionInfo do
  @moduledoc """
  Information about a streaming session in conference.

  ## Attributes

  *   `applicationType` (*type:* `String.t`, *default:* `nil`) - The application type of the current streaming session.
  *   `latestSessionEvent` (*type:* `GoogleApi.CloudSearch.V1.Model.SessionEvent.t`, *default:* `nil`) - The latest streaming session event. This can be used by clients to help explain what is going on, why recording stopped, etc. This will always be set to a valid event and consistent with the status. It can be set when current session is inactive to indicate latest event that makes current session to become inactive.
  *   `ownerDisplayName` (*type:* `String.t`, *default:* `nil`) - The display name of the owner of the recording output. It's only set when there will be uploaded recordings. Currently, it's only set when application type is RECORDING or GLIVE_STREAM.
  *   `sessionId` (*type:* `String.t`, *default:* `nil`) - This is the REST name and unique identifier of this streaming session and has the form `spaces//recordings/` This is returned whenever status is either `STARTING` or `STARTED`.
  *   `status` (*type:* `String.t`, *default:* `nil`) - The current status of this streaming session. This can be used by clients to show session status indicator and/or notification.
  *   `trainingEnabled` (*type:* `boolean()`, *default:* `nil`) - When true, this recording may be used for training new transcription models.
  *   `viewerAccessPolicy` (*type:* `String.t`, *default:* `nil`) - The policy that controls who can view the broadcast. This setting applies for broadcast session.
  *   `viewerStats` (*type:* `GoogleApi.CloudSearch.V1.Model.StreamViewerStats.t`, *default:* `nil`) - Contains information about viewers of the livestream. It is only set when application type is BROADCAST.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :applicationType => String.t() | nil,
          :latestSessionEvent => GoogleApi.CloudSearch.V1.Model.SessionEvent.t() | nil,
          :ownerDisplayName => String.t() | nil,
          :sessionId => String.t() | nil,
          :status => String.t() | nil,
          :trainingEnabled => boolean() | nil,
          :viewerAccessPolicy => String.t() | nil,
          :viewerStats => GoogleApi.CloudSearch.V1.Model.StreamViewerStats.t() | nil
        }

  field(:applicationType)
  field(:latestSessionEvent, as: GoogleApi.CloudSearch.V1.Model.SessionEvent)
  field(:ownerDisplayName)
  field(:sessionId)
  field(:status)
  field(:trainingEnabled)
  field(:viewerAccessPolicy)
  field(:viewerStats, as: GoogleApi.CloudSearch.V1.Model.StreamViewerStats)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.StreamingSessionInfo do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.StreamingSessionInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.StreamingSessionInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end