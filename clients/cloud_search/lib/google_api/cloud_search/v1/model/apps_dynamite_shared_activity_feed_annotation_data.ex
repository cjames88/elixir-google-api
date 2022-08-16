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

defmodule GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedActivityFeedAnnotationData do
  @moduledoc """
  Next Id: 5

  ## Attributes

  *   `activityFeedMessageId` (*type:* `String.t`, *default:* `nil`) - Unique id of the Activity Feed message. This will be in the form of "space-id/message-id" or "dm-id/message-id", where the space-/dm-id and message-id components are extracted from the top-level MessageId in message.proto (http://shortn/_SulV51DNfF). This is copied into annotations so that no client changes are needed to access this value. Clients will need a unique id for every Activity Feed message to implement click-to-source.
  *   `chatItem` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedChatItem.t`, *default:* `nil`) - 
  *   `sharedUserInfo` (*type:* `GoogleApi.CloudSearch.V1.Model.UserInfo.t`, *default:* `nil`) - Only populated on read path and should not be persisted in storage.
  *   `userInfo` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedActivityFeedAnnotationDataUserInfo.t`, *default:* `nil`) - Use shared_user_info instead.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activityFeedMessageId => String.t() | nil,
          :chatItem => GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedChatItem.t() | nil,
          :sharedUserInfo => GoogleApi.CloudSearch.V1.Model.UserInfo.t() | nil,
          :userInfo =>
            GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedActivityFeedAnnotationDataUserInfo.t()
            | nil
        }

  field(:activityFeedMessageId)
  field(:chatItem, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedChatItem)
  field(:sharedUserInfo, as: GoogleApi.CloudSearch.V1.Model.UserInfo)

  field(:userInfo,
    as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedActivityFeedAnnotationDataUserInfo
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedActivityFeedAnnotationData do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedActivityFeedAnnotationData.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedActivityFeedAnnotationData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end