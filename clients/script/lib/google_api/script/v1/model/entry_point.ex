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

defmodule GoogleApi.Script.V1.Model.EntryPoint do
  @moduledoc """
  A configuration that defines how a deployment is accessed externally.

  ## Attributes

  *   `addOn` (*type:* `GoogleApi.Script.V1.Model.GoogleAppsScriptTypeAddOnEntryPoint.t`, *default:* `nil`) - Add-on properties.
  *   `entryPointType` (*type:* `String.t`, *default:* `nil`) - The type of the entry point.
  *   `executionApi` (*type:* `GoogleApi.Script.V1.Model.GoogleAppsScriptTypeExecutionApiEntryPoint.t`, *default:* `nil`) - An entry point specification for Apps Script API execution calls.
  *   `webApp` (*type:* `GoogleApi.Script.V1.Model.GoogleAppsScriptTypeWebAppEntryPoint.t`, *default:* `nil`) - An entry point specification for web apps.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :addOn => GoogleApi.Script.V1.Model.GoogleAppsScriptTypeAddOnEntryPoint.t(),
          :entryPointType => String.t(),
          :executionApi =>
            GoogleApi.Script.V1.Model.GoogleAppsScriptTypeExecutionApiEntryPoint.t(),
          :webApp => GoogleApi.Script.V1.Model.GoogleAppsScriptTypeWebAppEntryPoint.t()
        }

  field(:addOn, as: GoogleApi.Script.V1.Model.GoogleAppsScriptTypeAddOnEntryPoint)
  field(:entryPointType)
  field(:executionApi, as: GoogleApi.Script.V1.Model.GoogleAppsScriptTypeExecutionApiEntryPoint)
  field(:webApp, as: GoogleApi.Script.V1.Model.GoogleAppsScriptTypeWebAppEntryPoint)
end

defimpl Poison.Decoder, for: GoogleApi.Script.V1.Model.EntryPoint do
  def decode(value, options) do
    GoogleApi.Script.V1.Model.EntryPoint.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Script.V1.Model.EntryPoint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
