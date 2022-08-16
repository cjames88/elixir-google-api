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

defmodule GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedActivityFeedAnnotationDataUserInfo do
  @moduledoc """
  UserId of the AF item updater to show and the updater count to show.

  ## Attributes

  *   `updaterCountDisplayType` (*type:* `String.t`, *default:* `nil`) - Describes how updater_count_to_show should be used.
  *   `updaterCountToShow` (*type:* `integer()`, *default:* `nil`) - The number of updaters for clients to show, currently set to the total number of updaters minus the one set in updater_to_show.
  *   `updaterToShow` (*type:* `GoogleApi.CloudSearch.V1.Model.UserId.t`, *default:* `nil`) - The updater for clients to show.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :updaterCountDisplayType => String.t() | nil,
          :updaterCountToShow => integer() | nil,
          :updaterToShow => GoogleApi.CloudSearch.V1.Model.UserId.t() | nil
        }

  field(:updaterCountDisplayType)
  field(:updaterCountToShow)
  field(:updaterToShow, as: GoogleApi.CloudSearch.V1.Model.UserId)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedActivityFeedAnnotationDataUserInfo do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedActivityFeedAnnotationDataUserInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedActivityFeedAnnotationDataUserInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end