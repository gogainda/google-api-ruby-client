# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module RecaptchaenterpriseV1
      
      # Settings specific to keys that can be used by Android apps.
      class GoogleCloudRecaptchaenterpriseV1AndroidKeySettings
        include Google::Apis::Core::Hashable
      
        # Android package names of apps allowed to use the key. Example: 'com.
        # companyname.appname'
        # Corresponds to the JSON property `allowedPackageNames`
        # @return [Array<String>]
        attr_accessor :allowed_package_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_package_names = args[:allowed_package_names] if args.key?(:allowed_package_names)
        end
      end
      
      # The request message to annotate an Assessment.
      class GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The annotation that will be assigned to the Event. This field can be
        # left empty to provide reasons that apply to an event without concluding
        # whether the event is legitimate or fraudulent.
        # Corresponds to the JSON property `annotation`
        # @return [String]
        attr_accessor :annotation
      
        # Optional. Optional reasons for the annotation that will be assigned to the
        # Event.
        # Corresponds to the JSON property `reasons`
        # @return [Array<String>]
        attr_accessor :reasons
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation = args[:annotation] if args.key?(:annotation)
          @reasons = args[:reasons] if args.key?(:reasons)
        end
      end
      
      # Empty response for AnnotateAssessment.
      class GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A recaptcha assessment resource.
      class GoogleCloudRecaptchaenterpriseV1Assessment
        include Google::Apis::Core::Hashable
      
        # The event being assessed.
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Event]
        attr_accessor :event
      
        # Output only. The resource name for the Assessment in the format "projects/`
        # project`/assessments/`assessment`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Risk analysis result for an event.
        # Corresponds to the JSON property `riskAnalysis`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1RiskAnalysis]
        attr_accessor :risk_analysis
      
        # Output only. Properties of the provided event token.
        # Corresponds to the JSON property `tokenProperties`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TokenProperties]
        attr_accessor :token_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event = args[:event] if args.key?(:event)
          @name = args[:name] if args.key?(:name)
          @risk_analysis = args[:risk_analysis] if args.key?(:risk_analysis)
          @token_properties = args[:token_properties] if args.key?(:token_properties)
        end
      end
      
      # Metrics related to challenges.
      class GoogleCloudRecaptchaenterpriseV1ChallengeMetrics
        include Google::Apis::Core::Hashable
      
        # Count of submitted challenge solutions that were incorrect or otherwise deemed
        # suspicious such that a subsequent challenge was triggered.
        # Corresponds to the JSON property `failedCount`
        # @return [Fixnum]
        attr_accessor :failed_count
      
        # Count of nocaptchas (successful verification without a challenge) issued.
        # Corresponds to the JSON property `nocaptchaCount`
        # @return [Fixnum]
        attr_accessor :nocaptcha_count
      
        # Count of reCAPTCHA checkboxes or badges rendered. This is mostly equivalent to
        # a count of pageloads for pages that include reCAPTCHA.
        # Corresponds to the JSON property `pageloadCount`
        # @return [Fixnum]
        attr_accessor :pageload_count
      
        # Count of nocaptchas (successful verification without a challenge) plus
        # submitted challenge solutions that were correct and resulted in verification.
        # Corresponds to the JSON property `passedCount`
        # @return [Fixnum]
        attr_accessor :passed_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failed_count = args[:failed_count] if args.key?(:failed_count)
          @nocaptcha_count = args[:nocaptcha_count] if args.key?(:nocaptcha_count)
          @pageload_count = args[:pageload_count] if args.key?(:pageload_count)
          @passed_count = args[:passed_count] if args.key?(:passed_count)
        end
      end
      
      # 
      class GoogleCloudRecaptchaenterpriseV1Event
        include Google::Apis::Core::Hashable
      
        # Optional. The expected action for this type of event. This should be the same
        # action provided at token generation time on client-side platforms already
        # integrated with recaptcha enterprise.
        # Corresponds to the JSON property `expectedAction`
        # @return [String]
        attr_accessor :expected_action
      
        # Optional. The site key that was used to invoke reCAPTCHA on your site and
        # generate the token.
        # Corresponds to the JSON property `siteKey`
        # @return [String]
        attr_accessor :site_key
      
        # Optional. The user response token provided by the reCAPTCHA client-side
        # integration on your site.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # Optional. The user agent present in the request from the user's device related
        # to this event.
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        # Optional. The IP address in the request from the user's device related to this
        # event.
        # Corresponds to the JSON property `userIpAddress`
        # @return [String]
        attr_accessor :user_ip_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expected_action = args[:expected_action] if args.key?(:expected_action)
          @site_key = args[:site_key] if args.key?(:site_key)
          @token = args[:token] if args.key?(:token)
          @user_agent = args[:user_agent] if args.key?(:user_agent)
          @user_ip_address = args[:user_ip_address] if args.key?(:user_ip_address)
        end
      end
      
      # Settings specific to keys that can be used by iOS apps.
      class GoogleCloudRecaptchaenterpriseV1IosKeySettings
        include Google::Apis::Core::Hashable
      
        # iOS bundle ids of apps allowed to use the key. Example: 'com.companyname.
        # productname.appname'
        # Corresponds to the JSON property `allowedBundleIds`
        # @return [Array<String>]
        attr_accessor :allowed_bundle_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_bundle_ids = args[:allowed_bundle_ids] if args.key?(:allowed_bundle_ids)
        end
      end
      
      # A key used to identify and configure applications (web and/or mobile) that use
      # reCAPTCHA Enterprise.
      class GoogleCloudRecaptchaenterpriseV1Key
        include Google::Apis::Core::Hashable
      
        # Settings specific to keys that can be used by Android apps.
        # Corresponds to the JSON property `androidSettings`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1AndroidKeySettings]
        attr_accessor :android_settings
      
        # The timestamp corresponding to the creation of this Key.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Human-readable display name of this key. Modifiable by user.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Settings specific to keys that can be used by iOS apps.
        # Corresponds to the JSON property `iosSettings`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1IosKeySettings]
        attr_accessor :ios_settings
      
        # See Creating and managing labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The resource name for the Key in the format "projects/`project`/keys/`key`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Options for user acceptance testing.
        # Corresponds to the JSON property `testingOptions`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TestingOptions]
        attr_accessor :testing_options
      
        # Settings specific to keys that can be used by websites.
        # Corresponds to the JSON property `webSettings`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1WebKeySettings]
        attr_accessor :web_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_settings = args[:android_settings] if args.key?(:android_settings)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @ios_settings = args[:ios_settings] if args.key?(:ios_settings)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @testing_options = args[:testing_options] if args.key?(:testing_options)
          @web_settings = args[:web_settings] if args.key?(:web_settings)
        end
      end
      
      # Response to request to list keys in a project.
      class GoogleCloudRecaptchaenterpriseV1ListKeysResponse
        include Google::Apis::Core::Hashable
      
        # Key details.
        # Corresponds to the JSON property `keys`
        # @return [Array<Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Key>]
        attr_accessor :keys
      
        # Token to retrieve the next page of results. It is set to empty if no keys
        # remain in results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keys = args[:keys] if args.key?(:keys)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Metrics for a single Key.
      class GoogleCloudRecaptchaenterpriseV1Metrics
        include Google::Apis::Core::Hashable
      
        # Metrics will be continuous and in order by dates, and in the granularity of
        # day. Only challenge-based keys (CHECKBOX, INVISIBLE), will have challenge-
        # based data.
        # Corresponds to the JSON property `challengeMetrics`
        # @return [Array<Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ChallengeMetrics>]
        attr_accessor :challenge_metrics
      
        # Output only. The name of the metrics, in the format "projects/`project`/keys/`
        # key`/metrics".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Metrics will be continuous and in order by dates, and in the granularity of
        # day. All Key types should have score-based data.
        # Corresponds to the JSON property `scoreMetrics`
        # @return [Array<Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ScoreMetrics>]
        attr_accessor :score_metrics
      
        # Inclusive start time aligned to a day (UTC).
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @challenge_metrics = args[:challenge_metrics] if args.key?(:challenge_metrics)
          @name = args[:name] if args.key?(:name)
          @score_metrics = args[:score_metrics] if args.key?(:score_metrics)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # The migrate key request message.
      class GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Risk analysis result for an event.
      class GoogleCloudRecaptchaenterpriseV1RiskAnalysis
        include Google::Apis::Core::Hashable
      
        # Reasons contributing to the risk analysis verdict.
        # Corresponds to the JSON property `reasons`
        # @return [Array<String>]
        attr_accessor :reasons
      
        # Legitimate event score from 0.0 to 1.0. (1.0 means very likely legitimate
        # traffic while 0.0 means very likely non-legitimate traffic).
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reasons = args[:reasons] if args.key?(:reasons)
          @score = args[:score] if args.key?(:score)
        end
      end
      
      # Score distribution.
      class GoogleCloudRecaptchaenterpriseV1ScoreDistribution
        include Google::Apis::Core::Hashable
      
        # Map key is score value multiplied by 100. The scores are discrete values
        # between [0, 1]. The maximum number of buckets is on order of a few dozen, but
        # typically much lower (ie. 10).
        # Corresponds to the JSON property `scoreBuckets`
        # @return [Hash<String,Fixnum>]
        attr_accessor :score_buckets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @score_buckets = args[:score_buckets] if args.key?(:score_buckets)
        end
      end
      
      # Metrics related to scoring.
      class GoogleCloudRecaptchaenterpriseV1ScoreMetrics
        include Google::Apis::Core::Hashable
      
        # Action-based metrics. The map key is the action name which specified by the
        # site owners at time of the "execute" client-side call. Populated only for
        # SCORE keys.
        # Corresponds to the JSON property `actionMetrics`
        # @return [Hash<String,Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ScoreDistribution>]
        attr_accessor :action_metrics
      
        # Score distribution.
        # Corresponds to the JSON property `overallMetrics`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ScoreDistribution]
        attr_accessor :overall_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_metrics = args[:action_metrics] if args.key?(:action_metrics)
          @overall_metrics = args[:overall_metrics] if args.key?(:overall_metrics)
        end
      end
      
      # Options for user acceptance testing.
      class GoogleCloudRecaptchaenterpriseV1TestingOptions
        include Google::Apis::Core::Hashable
      
        # For challenge-based keys only (CHECKBOX, INVISIBLE), all challenge requests
        # for this site will return nocaptcha if NOCAPTCHA, or an unsolvable challenge
        # if CHALLENGE.
        # Corresponds to the JSON property `testingChallenge`
        # @return [String]
        attr_accessor :testing_challenge
      
        # All assessments for this Key will return this score. Must be between 0 (likely
        # not legitimate) and 1 (likely legitimate) inclusive.
        # Corresponds to the JSON property `testingScore`
        # @return [Float]
        attr_accessor :testing_score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @testing_challenge = args[:testing_challenge] if args.key?(:testing_challenge)
          @testing_score = args[:testing_score] if args.key?(:testing_score)
        end
      end
      
      # 
      class GoogleCloudRecaptchaenterpriseV1TokenProperties
        include Google::Apis::Core::Hashable
      
        # Action name provided at token generation.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # The timestamp corresponding to the generation of the token.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The hostname of the page on which the token was generated.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # Reason associated with the response when valid = false.
        # Corresponds to the JSON property `invalidReason`
        # @return [String]
        attr_accessor :invalid_reason
      
        # Whether the provided user response token is valid. When valid = false, the
        # reason could be specified in invalid_reason or it could also be due to a user
        # failing to solve a challenge or a sitekey mismatch (i.e the sitekey used to
        # generate the token was different than the one specified in the assessment).
        # Corresponds to the JSON property `valid`
        # @return [Boolean]
        attr_accessor :valid
        alias_method :valid?, :valid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @create_time = args[:create_time] if args.key?(:create_time)
          @hostname = args[:hostname] if args.key?(:hostname)
          @invalid_reason = args[:invalid_reason] if args.key?(:invalid_reason)
          @valid = args[:valid] if args.key?(:valid)
        end
      end
      
      # Settings specific to keys that can be used by websites.
      class GoogleCloudRecaptchaenterpriseV1WebKeySettings
        include Google::Apis::Core::Hashable
      
        # If set to true, it means allowed_domains will not be enforced.
        # Corresponds to the JSON property `allowAllDomains`
        # @return [Boolean]
        attr_accessor :allow_all_domains
        alias_method :allow_all_domains?, :allow_all_domains
      
        # Required. Whether this key can be used on AMP (Accelerated Mobile Pages)
        # websites. This can only be set for the SCORE integration type.
        # Corresponds to the JSON property `allowAmpTraffic`
        # @return [Boolean]
        attr_accessor :allow_amp_traffic
        alias_method :allow_amp_traffic?, :allow_amp_traffic
      
        # Domains or subdomains of websites allowed to use the key. All subdomains of an
        # allowed domain are automatically allowed. A valid domain requires a host and
        # must not include any path, port, query or fragment. Examples: 'example.com' or
        # 'subdomain.example.com'
        # Corresponds to the JSON property `allowedDomains`
        # @return [Array<String>]
        attr_accessor :allowed_domains
      
        # Settings for the frequency and difficulty at which this key triggers captcha
        # challenges. This should only be specified for IntegrationTypes CHECKBOX and
        # INVISIBLE.
        # Corresponds to the JSON property `challengeSecurityPreference`
        # @return [String]
        attr_accessor :challenge_security_preference
      
        # Required. Describes how this key is integrated with the website.
        # Corresponds to the JSON property `integrationType`
        # @return [String]
        attr_accessor :integration_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_all_domains = args[:allow_all_domains] if args.key?(:allow_all_domains)
          @allow_amp_traffic = args[:allow_amp_traffic] if args.key?(:allow_amp_traffic)
          @allowed_domains = args[:allowed_domains] if args.key?(:allowed_domains)
          @challenge_security_preference = args[:challenge_security_preference] if args.key?(:challenge_security_preference)
          @integration_type = args[:integration_type] if args.key?(:integration_type)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
    end
  end
end
