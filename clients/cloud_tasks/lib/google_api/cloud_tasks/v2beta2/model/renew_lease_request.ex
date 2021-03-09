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

defmodule GoogleApi.CloudTasks.V2beta2.Model.RenewLeaseRequest do
  @moduledoc """
  Request message for renewing a lease using RenewLease.

  ## Attributes

  *   `leaseDuration` (*type:* `String.t`, *default:* `nil`) - Required. The desired new lease duration, starting from now. The maximum lease duration is 1 week. `lease_duration` will be truncated to the nearest second.
  *   `responseView` (*type:* `String.t`, *default:* `nil`) - The response_view specifies which subset of the Task will be returned. By default response_view is BASIC; not all information is retrieved by default because some data, such as payloads, might be desirable to return only when needed because of its large size or because of the sensitivity of data that it contains. Authorization for FULL requires `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/) permission on the Task resource.
  *   `scheduleTime` (*type:* `DateTime.t`, *default:* `nil`) - Required. The task's current schedule time, available in the schedule_time returned by LeaseTasks response or RenewLease response. This restriction is to ensure that your worker currently holds the lease.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :leaseDuration => String.t() | nil,
          :responseView => String.t() | nil,
          :scheduleTime => DateTime.t() | nil
        }

  field(:leaseDuration)
  field(:responseView)
  field(:scheduleTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CloudTasks.V2beta2.Model.RenewLeaseRequest do
  def decode(value, options) do
    GoogleApi.CloudTasks.V2beta2.Model.RenewLeaseRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudTasks.V2beta2.Model.RenewLeaseRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
