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

defmodule GoogleApi.Monitoring.V3.Model.MonitoringQueryLanguageCondition do
  @moduledoc """
  A condition type that allows alerting policies to be defined using Monitoring Query Language (https://cloud.google.com/monitoring/mql).

  ## Attributes

  *   `duration` (*type:* `String.t`, *default:* `nil`) - The amount of time that a time series must violate the threshold to be considered failing. Currently, only values that are a multiple of a minute--e.g., 0, 60, 120, or 300 seconds--are supported. If an invalid value is given, an error will be returned. When choosing a duration, it is useful to keep in mind the frequency of the underlying time series data (which may also be affected by any alignments specified in the aggregations field); a good duration is long enough so that a single outlier does not generate spurious alerts, but short enough that unhealthy states are detected and alerted on quickly.
  *   `evaluationMissingData` (*type:* `String.t`, *default:* `nil`) - A condition control that determines how metric-threshold conditions are evaluated when data stops arriving.
  *   `query` (*type:* `String.t`, *default:* `nil`) - Monitoring Query Language (https://cloud.google.com/monitoring/mql) query that outputs a boolean stream.
  *   `trigger` (*type:* `GoogleApi.Monitoring.V3.Model.Trigger.t`, *default:* `nil`) - The number/percent of time series for which the comparison must hold in order for the condition to trigger. If unspecified, then the condition will trigger if the comparison is true for any of the time series that have been identified by filter and aggregations, or by the ratio, if denominator_filter and denominator_aggregations are specified.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :duration => String.t() | nil,
          :evaluationMissingData => String.t() | nil,
          :query => String.t() | nil,
          :trigger => GoogleApi.Monitoring.V3.Model.Trigger.t() | nil
        }

  field(:duration)
  field(:evaluationMissingData)
  field(:query)
  field(:trigger, as: GoogleApi.Monitoring.V3.Model.Trigger)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.MonitoringQueryLanguageCondition do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.MonitoringQueryLanguageCondition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.MonitoringQueryLanguageCondition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
