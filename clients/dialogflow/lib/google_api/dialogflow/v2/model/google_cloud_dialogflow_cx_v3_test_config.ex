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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3TestConfig do
  @moduledoc """
  Represents configurations for a test case.

  ## Attributes

  *   `flow` (*type:* `String.t`, *default:* `nil`) - Flow name to start the test case with. Format: `projects//locations//agents//flows/`. Only one of `flow` and `page` should be set to indicate the starting point of the test case. If neither is set, the test case will start with start page on the default start flow.
  *   `page` (*type:* `String.t`, *default:* `nil`) - The page to start the test case with. Format: `projects//locations//agents//flows//pages/`. Only one of `flow` and `page` should be set to indicate the starting point of the test case. If neither is set, the test case will start with start page on the default start flow.
  *   `trackingParameters` (*type:* `list(String.t)`, *default:* `nil`) - Session parameters to be compared when calculating differences.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :flow => String.t() | nil,
          :page => String.t() | nil,
          :trackingParameters => list(String.t()) | nil
        }

  field(:flow)
  field(:page)
  field(:trackingParameters, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3TestConfig do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3TestConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3TestConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
