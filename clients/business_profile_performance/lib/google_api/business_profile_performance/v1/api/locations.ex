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

defmodule GoogleApi.BusinessProfilePerformance.V1.Api.Locations do
  @moduledoc """
  API calls for all endpoints tagged `Locations`.
  """

  alias GoogleApi.BusinessProfilePerformance.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
   Returns the values for each date from a given time range that are associated with the specific daily metric. Example request: `GET https://businessprofileperformance.googleapis.com/v1/locations/12345:getDailyMetricsTimeSeries?dailyMetric=WEBSITE_CLICKS&daily_range.start_date.year=2022&daily_range.start_date.month=1&daily_range.start_date.day=1&daily_range.end_date.year=2022&daily_range.end_date.month=3&daily_range.end_date.day=31`

  ## Parameters

  *   `connection` (*type:* `GoogleApi.BusinessProfilePerformance.V1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - Required. The location for which the time series should be fetched. Format: locations/{location_id} where location_id is an unobfuscated listing id.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:dailyMetric` (*type:* `String.t`) - Required. The metric to retrieve time series.
      *   `:"dailyRange.endDate.day"` (*type:* `integer()`) - Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.
      *   `:"dailyRange.endDate.month"` (*type:* `integer()`) - Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
      *   `:"dailyRange.endDate.year"` (*type:* `integer()`) - Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
      *   `:"dailyRange.startDate.day"` (*type:* `integer()`) - Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.
      *   `:"dailyRange.startDate.month"` (*type:* `integer()`) - Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
      *   `:"dailyRange.startDate.year"` (*type:* `integer()`) - Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
      *   `:"dailySubEntityType.dayOfWeek"` (*type:* `String.t`) - Represents the day of the week. Eg: MONDAY.
      *   `:"dailySubEntityType.timeOfDay.hours"` (*type:* `integer()`) - Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value "24:00:00" for scenarios like business closing time.
      *   `:"dailySubEntityType.timeOfDay.minutes"` (*type:* `integer()`) - Minutes of hour of day. Must be from 0 to 59.
      *   `:"dailySubEntityType.timeOfDay.nanos"` (*type:* `integer()`) - Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
      *   `:"dailySubEntityType.timeOfDay.seconds"` (*type:* `integer()`) - Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.BusinessProfilePerformance.V1.Model.GetDailyMetricsTimeSeriesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec businessprofileperformance_locations_get_daily_metrics_time_series(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.BusinessProfilePerformance.V1.Model.GetDailyMetricsTimeSeriesResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def businessprofileperformance_locations_get_daily_metrics_time_series(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :dailyMetric => :query,
      :"dailyRange.endDate.day" => :query,
      :"dailyRange.endDate.month" => :query,
      :"dailyRange.endDate.year" => :query,
      :"dailyRange.startDate.day" => :query,
      :"dailyRange.startDate.month" => :query,
      :"dailyRange.startDate.year" => :query,
      :"dailySubEntityType.dayOfWeek" => :query,
      :"dailySubEntityType.timeOfDay.hours" => :query,
      :"dailySubEntityType.timeOfDay.minutes" => :query,
      :"dailySubEntityType.timeOfDay.nanos" => :query,
      :"dailySubEntityType.timeOfDay.seconds" => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+name}:getDailyMetricsTimeSeries", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.BusinessProfilePerformance.V1.Model.GetDailyMetricsTimeSeriesResponse{}
        ]
    )
  end

  @doc """
  Returns the search keywords used to find a business in search or maps. Each search keyword is accompanied by impressions which are aggregated on a monthly basis. Example request: `GET https://businessprofileperformance.googleapis.com/v1/locations/12345/searchkeywords/impressions/monthly?monthly_range.start_month.year=2022&monthly_range.start_month.month=1&monthly_range.end_month.year=2022&monthly_range.end_month.month=3`

  ## Parameters

  *   `connection` (*type:* `GoogleApi.BusinessProfilePerformance.V1.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - Required. The location for which the time series should be fetched. Format: locations/{location_id} where location_id is an unobfuscated listing id.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:"monthlyRange.endMonth.day"` (*type:* `integer()`) - Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.
      *   `:"monthlyRange.endMonth.month"` (*type:* `integer()`) - Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
      *   `:"monthlyRange.endMonth.year"` (*type:* `integer()`) - Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
      *   `:"monthlyRange.startMonth.day"` (*type:* `integer()`) - Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.
      *   `:"monthlyRange.startMonth.month"` (*type:* `integer()`) - Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
      *   `:"monthlyRange.startMonth.year"` (*type:* `integer()`) - Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
      *   `:pageSize` (*type:* `integer()`) - Optional. The number of results requested. The default page size is 100. Page size can be set to a maximum of 100.
      *   `:pageToken` (*type:* `String.t`) - Optional. A token indicating the next paginated result to be returned.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.BusinessProfilePerformance.V1.Model.ListSearchKeywordImpressionsMonthlyResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec businessprofileperformance_locations_searchkeywords_impressions_monthly_list(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.BusinessProfilePerformance.V1.Model.ListSearchKeywordImpressionsMonthlyResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def businessprofileperformance_locations_searchkeywords_impressions_monthly_list(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :"monthlyRange.endMonth.day" => :query,
      :"monthlyRange.endMonth.month" => :query,
      :"monthlyRange.endMonth.year" => :query,
      :"monthlyRange.startMonth.day" => :query,
      :"monthlyRange.startMonth.month" => :query,
      :"monthlyRange.startMonth.year" => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}/searchkeywords/impressions/monthly", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.BusinessProfilePerformance.V1.Model.ListSearchKeywordImpressionsMonthlyResponse{}
        ]
    )
  end
end