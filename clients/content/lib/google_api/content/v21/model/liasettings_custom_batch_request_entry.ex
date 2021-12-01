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

defmodule GoogleApi.Content.V21.Model.LiasettingsCustomBatchRequestEntry do
  @moduledoc """


  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - The ID of the account for which to get/update account LIA settings.
  *   `batchId` (*type:* `integer()`, *default:* `nil`) - An entry ID, unique within the batch request.
  *   `contactEmail` (*type:* `String.t`, *default:* `nil`) - Inventory validation contact email. Required only for SetInventoryValidationContact.
  *   `contactName` (*type:* `String.t`, *default:* `nil`) - Inventory validation contact name. Required only for SetInventoryValidationContact.
  *   `country` (*type:* `String.t`, *default:* `nil`) - The country code. Required only for RequestInventoryVerification.
  *   `gmbEmail` (*type:* `String.t`, *default:* `nil`) - The Business Profile. Required only for RequestGmbAccess.
  *   `liaSettings` (*type:* `GoogleApi.Content.V21.Model.LiaSettings.t`, *default:* `nil`) - The account Lia settings to update. Only defined if the method is `update`.
  *   `merchantId` (*type:* `String.t`, *default:* `nil`) - The ID of the managing account.
  *   `method` (*type:* `String.t`, *default:* `nil`) - The method of the batch entry. Acceptable values are: - "`get`" - "`getAccessibleGmbAccounts`" - "`requestGmbAccess`" - "`requestInventoryVerification`" - "`setInventoryVerificationContact`" - "`update`" 
  *   `posDataProviderId` (*type:* `String.t`, *default:* `nil`) - The ID of POS data provider. Required only for SetPosProvider.
  *   `posExternalAccountId` (*type:* `String.t`, *default:* `nil`) - The account ID by which this merchant is known to the POS provider.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :batchId => integer() | nil,
          :contactEmail => String.t() | nil,
          :contactName => String.t() | nil,
          :country => String.t() | nil,
          :gmbEmail => String.t() | nil,
          :liaSettings => GoogleApi.Content.V21.Model.LiaSettings.t() | nil,
          :merchantId => String.t() | nil,
          :method => String.t() | nil,
          :posDataProviderId => String.t() | nil,
          :posExternalAccountId => String.t() | nil
        }

  field(:accountId)
  field(:batchId)
  field(:contactEmail)
  field(:contactName)
  field(:country)
  field(:gmbEmail)
  field(:liaSettings, as: GoogleApi.Content.V21.Model.LiaSettings)
  field(:merchantId)
  field(:method)
  field(:posDataProviderId)
  field(:posExternalAccountId)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.LiasettingsCustomBatchRequestEntry do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.LiasettingsCustomBatchRequestEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.LiasettingsCustomBatchRequestEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
