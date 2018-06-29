# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.TagManager.V2.Model.CreateContainerVersionResponse do
  @moduledoc """
  Create container versions response.

  ## Attributes

  - compilerError (boolean()): Compiler errors or not. Defaults to: `null`.
  - containerVersion (ContainerVersion): The container version created. Defaults to: `null`.
  - newWorkspacePath (String.t): Auto generated workspace path created as a result of version creation. This field should only be populated if the created version was not a quick preview. Defaults to: `null`.
  - syncStatus (SyncStatus): Whether version creation failed when syncing the workspace to the latest container version. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :compilerError => any(),
          :containerVersion => GoogleApi.TagManager.V2.Model.ContainerVersion.t(),
          :newWorkspacePath => any(),
          :syncStatus => GoogleApi.TagManager.V2.Model.SyncStatus.t()
        }

  field(:compilerError)
  field(:containerVersion, as: GoogleApi.TagManager.V2.Model.ContainerVersion)
  field(:newWorkspacePath)
  field(:syncStatus, as: GoogleApi.TagManager.V2.Model.SyncStatus)
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.CreateContainerVersionResponse do
  def decode(value, options) do
    GoogleApi.TagManager.V2.Model.CreateContainerVersionResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TagManager.V2.Model.CreateContainerVersionResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
