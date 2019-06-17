# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.AnalyticsReporting.V4.Model.EventData do
  @moduledoc """
  Represents all the details pertaining to an event.

  ## Attributes

  - eventAction (String.t): Type of interaction with the object. Eg: 'play'. Defaults to `nil`.
  - eventCategory (String.t): The object on the page that was interacted with. Eg: 'Video'. Defaults to `nil`.
  - eventCount (String.t): Number of such events in this activity. Defaults to `nil`.
  - eventLabel (String.t): Label attached with the event. Defaults to `nil`.
  - eventValue (String.t): Numeric value associated with the event. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :eventAction => String.t(),
          :eventCategory => String.t(),
          :eventCount => String.t(),
          :eventLabel => String.t(),
          :eventValue => String.t()
        }

  field(:eventAction)
  field(:eventCategory)
  field(:eventCount)
  field(:eventLabel)
  field(:eventValue)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.EventData do
  def decode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Model.EventData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.EventData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
