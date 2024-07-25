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

defmodule GoogleApi.BackupDR.V1.Model.SetInternalStatusRequest do
  @moduledoc """
  Request message for SetStatusInternal method.

  ## Attributes

  *   `backupConfigState` (*type:* `String.t`, *default:* `nil`) - Required. The new BackupConfigState to set for the DataSource.
  *   `requestId` (*type:* `String.t`, *default:* `nil`) - Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  *   `value` (*type:* `String.t`, *default:* `nil`) - Required. The value required for this method to work. This field must be the 32-byte SHA256 hash of the DataSourceID. The DataSourceID used here is only the final piece of the fully qualified resource path for this DataSource (i.e. the part after '.../dataSources/'). This field exists to make this method difficult to call since it is intended for use only by Backup Appliances.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backupConfigState => String.t() | nil,
          :requestId => String.t() | nil,
          :value => String.t() | nil
        }

  field(:backupConfigState)
  field(:requestId)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.BackupDR.V1.Model.SetInternalStatusRequest do
  def decode(value, options) do
    GoogleApi.BackupDR.V1.Model.SetInternalStatusRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BackupDR.V1.Model.SetInternalStatusRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
