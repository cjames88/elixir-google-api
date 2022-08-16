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

defmodule GoogleApi.CloudSearch.V1.Model.PaygateInfo do
  @moduledoc """
  Information provided to clients so that they can show upgrade promos and warnings on call ending early (for non-paying users).

  ## Attributes

  *   `callEndingSoonWarningTime` (*type:* `DateTime.t`, *default:* `nil`) - Time when client should show message that the call is ending soon.
  *   `callEndingTime` (*type:* `DateTime.t`, *default:* `nil`) - Time when the call will end if the user does not upgrade (after in-call upgrade support check has been implemented).
  *   `showUpgradePromos` (*type:* `boolean()`, *default:* `nil`) - This boolean is used by clients to decide whether the user should be shown promos to upgrade.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :callEndingSoonWarningTime => DateTime.t() | nil,
          :callEndingTime => DateTime.t() | nil,
          :showUpgradePromos => boolean() | nil
        }

  field(:callEndingSoonWarningTime, as: DateTime)
  field(:callEndingTime, as: DateTime)
  field(:showUpgradePromos)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.PaygateInfo do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.PaygateInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.PaygateInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end