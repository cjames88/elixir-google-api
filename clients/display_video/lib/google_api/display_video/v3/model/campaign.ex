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

defmodule GoogleApi.DisplayVideo.V3.Model.Campaign do
  @moduledoc """
  A single campaign.

  ## Attributes

  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique ID of the advertiser the campaign belongs to.
  *   `campaignBudgets` (*type:* `list(GoogleApi.DisplayVideo.V3.Model.CampaignBudget.t)`, *default:* `nil`) - The list of budgets available to this campaign. If this field is not set, the campaign uses an unlimited budget.
  *   `campaignFlight` (*type:* `GoogleApi.DisplayVideo.V3.Model.CampaignFlight.t`, *default:* `nil`) - Required. The planned spend and duration of the campaign.
  *   `campaignGoal` (*type:* `GoogleApi.DisplayVideo.V3.Model.CampaignGoal.t`, *default:* `nil`) - Required. The goal of the campaign.
  *   `campaignId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique ID of the campaign. Assigned by the system.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the campaign. Must be UTF-8 encoded with a maximum size of 240 bytes.
  *   `entityStatus` (*type:* `String.t`, *default:* `nil`) - Required. Controls whether or not the insertion orders under this campaign can spend their budgets and bid on inventory. * Accepted values are `ENTITY_STATUS_ACTIVE`, `ENTITY_STATUS_ARCHIVED`, and `ENTITY_STATUS_PAUSED`. * For CreateCampaign method, `ENTITY_STATUS_ARCHIVED` is not allowed.
  *   `frequencyCap` (*type:* `GoogleApi.DisplayVideo.V3.Model.FrequencyCap.t`, *default:* `nil`) - Required. The frequency cap setting of the campaign. *Warning*: On **February 28, 2025**, frequency cap time periods greater than 30 days will no longer be accepted. [Read more about this announced change](/display-video/api/deprecations#features.lifetime_frequency_cap)
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the campaign.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the campaign was last updated. Assigned by the system.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advertiserId => String.t() | nil,
          :campaignBudgets => list(GoogleApi.DisplayVideo.V3.Model.CampaignBudget.t()) | nil,
          :campaignFlight => GoogleApi.DisplayVideo.V3.Model.CampaignFlight.t() | nil,
          :campaignGoal => GoogleApi.DisplayVideo.V3.Model.CampaignGoal.t() | nil,
          :campaignId => String.t() | nil,
          :displayName => String.t() | nil,
          :entityStatus => String.t() | nil,
          :frequencyCap => GoogleApi.DisplayVideo.V3.Model.FrequencyCap.t() | nil,
          :name => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:advertiserId)
  field(:campaignBudgets, as: GoogleApi.DisplayVideo.V3.Model.CampaignBudget, type: :list)
  field(:campaignFlight, as: GoogleApi.DisplayVideo.V3.Model.CampaignFlight)
  field(:campaignGoal, as: GoogleApi.DisplayVideo.V3.Model.CampaignGoal)
  field(:campaignId)
  field(:displayName)
  field(:entityStatus)
  field(:frequencyCap, as: GoogleApi.DisplayVideo.V3.Model.FrequencyCap)
  field(:name)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.Campaign do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.Campaign.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.Campaign do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
