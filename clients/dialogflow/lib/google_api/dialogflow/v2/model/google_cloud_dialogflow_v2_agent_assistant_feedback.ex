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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AgentAssistantFeedback do
  @moduledoc """
  Detail feedback of Agent Assist result.

  ## Attributes

  *   `answerRelevance` (*type:* `String.t`, *default:* `nil`) - Optional. Whether or not the suggested answer is relevant. For example: * Query: "Can I change my mailing address?" * Suggested document says: "Items must be returned/exchanged within 60 days of the purchase date." * answer_relevance: AnswerRelevance.IRRELEVANT
  *   `documentCorrectness` (*type:* `String.t`, *default:* `nil`) - Optional. Whether or not the information in the document is correct. For example: * Query: "Can I return the package in 2 days once received?" * Suggested document says: "Items must be returned/exchanged within 60 days of the purchase date." * Ground truth: "No return or exchange is allowed." * [document_correctness]: INCORRECT
  *   `documentEfficiency` (*type:* `String.t`, *default:* `nil`) - Optional. Whether or not the suggested document is efficient. For example, if the document is poorly written, hard to understand, hard to use or too long to find useful information, document_efficiency is DocumentEfficiency.INEFFICIENT.
  *   `knowledgeAssistFeedback` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AgentAssistantFeedbackKnowledgeAssistFeedback.t`, *default:* `nil`) - Optional. Feedback for knowledge assist.
  *   `knowledgeSearchFeedback` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AgentAssistantFeedbackKnowledgeSearchFeedback.t`, *default:* `nil`) - Optional. Feedback for knowledge search.
  *   `summarizationFeedback` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AgentAssistantFeedbackSummarizationFeedback.t`, *default:* `nil`) - Optional. Feedback for conversation summarization.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :answerRelevance => String.t() | nil,
          :documentCorrectness => String.t() | nil,
          :documentEfficiency => String.t() | nil,
          :knowledgeAssistFeedback =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AgentAssistantFeedbackKnowledgeAssistFeedback.t()
            | nil,
          :knowledgeSearchFeedback =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AgentAssistantFeedbackKnowledgeSearchFeedback.t()
            | nil,
          :summarizationFeedback =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AgentAssistantFeedbackSummarizationFeedback.t()
            | nil
        }

  field(:answerRelevance)
  field(:documentCorrectness)
  field(:documentEfficiency)

  field(:knowledgeAssistFeedback,
    as:
      GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AgentAssistantFeedbackKnowledgeAssistFeedback
  )

  field(:knowledgeSearchFeedback,
    as:
      GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AgentAssistantFeedbackKnowledgeSearchFeedback
  )

  field(:summarizationFeedback,
    as:
      GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AgentAssistantFeedbackSummarizationFeedback
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AgentAssistantFeedback do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AgentAssistantFeedback.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AgentAssistantFeedback do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
