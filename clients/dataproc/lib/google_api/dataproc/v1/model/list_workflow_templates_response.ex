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

defmodule GoogleApi.Dataproc.V1.Model.ListWorkflowTemplatesResponse do
  @moduledoc """
  A response to a request to list workflow templates in a project.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Output only. This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent ListWorkflowTemplatesRequest.
  *   `templates` (*type:* `list(GoogleApi.Dataproc.V1.Model.WorkflowTemplate.t)`, *default:* `nil`) - Output only. WorkflowTemplates list.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t(),
          :templates => list(GoogleApi.Dataproc.V1.Model.WorkflowTemplate.t())
        }

  field(:nextPageToken)
  field(:templates, as: GoogleApi.Dataproc.V1.Model.WorkflowTemplate, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.ListWorkflowTemplatesResponse do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.ListWorkflowTemplatesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.ListWorkflowTemplatesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
