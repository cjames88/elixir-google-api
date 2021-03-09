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

defmodule GoogleApi.Books.V1.Model.VolumeseriesinfoVolumeSeries do
  @moduledoc """


  ## Attributes

  *   `issue` (*type:* `list(GoogleApi.Books.V1.Model.VolumeseriesinfoVolumeSeriesIssue.t)`, *default:* `nil`) - List of issues. Applicable only for Collection Edition and Omnibus.
  *   `orderNumber` (*type:* `integer()`, *default:* `nil`) - The book order number in the series.
  *   `seriesBookType` (*type:* `String.t`, *default:* `nil`) - The book type in the context of series. Examples - Single Issue, Collection Edition, etc.
  *   `seriesId` (*type:* `String.t`, *default:* `nil`) - The series id.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :issue => list(GoogleApi.Books.V1.Model.VolumeseriesinfoVolumeSeriesIssue.t()) | nil,
          :orderNumber => integer() | nil,
          :seriesBookType => String.t() | nil,
          :seriesId => String.t() | nil
        }

  field(:issue, as: GoogleApi.Books.V1.Model.VolumeseriesinfoVolumeSeriesIssue, type: :list)
  field(:orderNumber)
  field(:seriesBookType)
  field(:seriesId)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.VolumeseriesinfoVolumeSeries do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.VolumeseriesinfoVolumeSeries.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.VolumeseriesinfoVolumeSeries do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
