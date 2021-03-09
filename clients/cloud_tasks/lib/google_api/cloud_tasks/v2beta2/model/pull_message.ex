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

defmodule GoogleApi.CloudTasks.V2beta2.Model.PullMessage do
  @moduledoc """
  The pull message contains data that can be used by the caller of LeaseTasks to process the task. This proto can only be used for tasks in a queue which has pull_target set.

  ## Attributes

  *   `payload` (*type:* `String.t`, *default:* `nil`) - A data payload consumed by the worker to execute the task.
  *   `tag` (*type:* `String.t`, *default:* `nil`) - The task's tag. Tags allow similar tasks to be processed in a batch. If you label tasks with a tag, your worker can lease tasks with the same tag using filter. For example, if you want to aggregate the events associated with a specific user once a day, you could tag tasks with the user ID. The task's tag can only be set when the task is created. The tag must be less than 500 characters. SDK compatibility: Although the SDK allows tags to be either string or [bytes](https://cloud.google.com/appengine/docs/standard/java/javadoc/com/google/appengine/api/taskqueue/TaskOptions.html#tag-byte:A-), only UTF-8 encoded tags can be used in Cloud Tasks. If a tag isn't UTF-8 encoded, the tag will be empty when the task is returned by Cloud Tasks.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :payload => String.t() | nil,
          :tag => String.t() | nil
        }

  field(:payload)
  field(:tag)
end

defimpl Poison.Decoder, for: GoogleApi.CloudTasks.V2beta2.Model.PullMessage do
  def decode(value, options) do
    GoogleApi.CloudTasks.V2beta2.Model.PullMessage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudTasks.V2beta2.Model.PullMessage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
