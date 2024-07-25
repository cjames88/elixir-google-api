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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1ToolCallResult do
  @moduledoc """
  The result of calling a tool's action that has been executed by the client.

  ## Attributes

  *   `action` (*type:* `String.t`, *default:* `nil`) - Required. The name of the tool's action associated with this call.
  *   `error` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1ToolCallResultError.t`, *default:* `nil`) - The tool call's error.
  *   `outputParameters` (*type:* `map()`, *default:* `nil`) - The tool call's output parameters.
  *   `tool` (*type:* `String.t`, *default:* `nil`) - Required. The tool associated with this call. Format: `projects//locations//agents//tools/`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => String.t() | nil,
          :error =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1ToolCallResultError.t()
            | nil,
          :outputParameters => map() | nil,
          :tool => String.t() | nil
        }

  field(:action)

  field(:error,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1ToolCallResultError
  )

  field(:outputParameters, type: :map)
  field(:tool)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1ToolCallResult do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1ToolCallResult.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1ToolCallResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
