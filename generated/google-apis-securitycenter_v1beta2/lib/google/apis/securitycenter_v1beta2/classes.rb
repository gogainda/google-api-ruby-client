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
    module SecuritycenterV1beta2
      
      # Configuration of a module.
      class Config
        include Google::Apis::Core::Hashable
      
        # The state of enablement for the module at its level of the resource hierarchy.
        # Corresponds to the JSON property `moduleEnablementState`
        # @return [String]
        attr_accessor :module_enablement_state
      
        # The configuration value for the module. The absence of this field implies its
        # inheritance from the parent.
        # Corresponds to the JSON property `value`
        # @return [Hash<String,Object>]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @module_enablement_state = args[:module_enablement_state] if args.key?(:module_enablement_state)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Resource capturing the settings for the Container Threat Detection service.
      class ContainerThreatDetectionSettings
        include Google::Apis::Core::Hashable
      
        # The configurations including the state of enablement for the service's
        # different modules. The absence of a module in the map implies its
        # configuration is inherited from its parent's.
        # Corresponds to the JSON property `modules`
        # @return [Hash<String,Google::Apis::SecuritycenterV1beta2::Config>]
        attr_accessor :modules
      
        # The resource name of the ContainerThreatDetectionSettings. Formats: *
        # organizations/`organization`/containerThreatDetectionSettings * folders/`
        # folder`/containerThreatDetectionSettings * projects/`project`/
        # containerThreatDetectionSettings * projects/`project`/locations/`location`/
        # clusters/`cluster`/containerThreatDetectionSettings
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The service account used by Container Threat Detection for
        # scanning. Service accounts are scoped at the project level meaning this field
        # will be empty at any level above a project.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # The state of enablement for the service at its level of the resource hierarchy.
        # A DISABLED state will override all module enablement_states to DISABLED.
        # Corresponds to the JSON property `serviceEnablementState`
        # @return [String]
        attr_accessor :service_enablement_state
      
        # Output only. The time the settings were last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @modules = args[:modules] if args.key?(:modules)
          @name = args[:name] if args.key?(:name)
          @service_account = args[:service_account] if args.key?(:service_account)
          @service_enablement_state = args[:service_enablement_state] if args.key?(:service_enablement_state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # CVE stands for Common Vulnerabilities and Exposures. More information: https://
      # cve.mitre.org
      class Cve
        include Google::Apis::Core::Hashable
      
        # Common Vulnerability Scoring System version 3.
        # Corresponds to the JSON property `cvssv3`
        # @return [Google::Apis::SecuritycenterV1beta2::Cvssv3]
        attr_accessor :cvssv3
      
        # The unique identifier for the vulnerability. e.g. CVE-2021-34527
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Additional information about the CVE. e.g. https://cve.mitre.org/cgi-bin/
        # cvename.cgi?name=CVE-2021-34527
        # Corresponds to the JSON property `references`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Reference>]
        attr_accessor :references
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cvssv3 = args[:cvssv3] if args.key?(:cvssv3)
          @id = args[:id] if args.key?(:id)
          @references = args[:references] if args.key?(:references)
        end
      end
      
      # Common Vulnerability Scoring System version 3.
      class Cvssv3
        include Google::Apis::Core::Hashable
      
        # This metric describes the conditions beyond the attacker's control that must
        # exist in order to exploit the vulnerability.
        # Corresponds to the JSON property `attackComplexity`
        # @return [String]
        attr_accessor :attack_complexity
      
        # Base Metrics Represents the intrinsic characteristics of a vulnerability that
        # are constant over time and across user environments. This metric reflects the
        # context by which vulnerability exploitation is possible.
        # Corresponds to the JSON property `attackVector`
        # @return [String]
        attr_accessor :attack_vector
      
        # This metric measures the impact to the availability of the impacted component
        # resulting from a successfully exploited vulnerability.
        # Corresponds to the JSON property `availabilityImpact`
        # @return [String]
        attr_accessor :availability_impact
      
        # The base score is a function of the base metric scores.
        # Corresponds to the JSON property `baseScore`
        # @return [Float]
        attr_accessor :base_score
      
        # This metric measures the impact to the confidentiality of the information
        # resources managed by a software component due to a successfully exploited
        # vulnerability.
        # Corresponds to the JSON property `confidentialityImpact`
        # @return [String]
        attr_accessor :confidentiality_impact
      
        # This metric measures the impact to integrity of a successfully exploited
        # vulnerability.
        # Corresponds to the JSON property `integrityImpact`
        # @return [String]
        attr_accessor :integrity_impact
      
        # This metric describes the level of privileges an attacker must possess before
        # successfully exploiting the vulnerability.
        # Corresponds to the JSON property `privilegesRequired`
        # @return [String]
        attr_accessor :privileges_required
      
        # The Scope metric captures whether a vulnerability in one vulnerable component
        # impacts resources in components beyond its security scope.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # This metric captures the requirement for a human user, other than the attacker,
        # to participate in the successful compromise of the vulnerable component.
        # Corresponds to the JSON property `userInteraction`
        # @return [String]
        attr_accessor :user_interaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attack_complexity = args[:attack_complexity] if args.key?(:attack_complexity)
          @attack_vector = args[:attack_vector] if args.key?(:attack_vector)
          @availability_impact = args[:availability_impact] if args.key?(:availability_impact)
          @base_score = args[:base_score] if args.key?(:base_score)
          @confidentiality_impact = args[:confidentiality_impact] if args.key?(:confidentiality_impact)
          @integrity_impact = args[:integrity_impact] if args.key?(:integrity_impact)
          @privileges_required = args[:privileges_required] if args.key?(:privileges_required)
          @scope = args[:scope] if args.key?(:scope)
          @user_interaction = args[:user_interaction] if args.key?(:user_interaction)
        end
      end
      
      # Details of a subscription.
      class Details
        include Google::Apis::Core::Hashable
      
        # The time the subscription has or will end.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The time the subscription has or will start.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The type of subscription
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Resource capturing the settings for the Event Threat Detection service.
      class EventThreatDetectionSettings
        include Google::Apis::Core::Hashable
      
        # The configurations including the state of enablement for the service's
        # different modules. The absence of a module in the map implies its
        # configuration is inherited from its parent's.
        # Corresponds to the JSON property `modules`
        # @return [Hash<String,Google::Apis::SecuritycenterV1beta2::Config>]
        attr_accessor :modules
      
        # The resource name of the EventThreatDetectionSettings. Formats: *
        # organizations/`organization`/eventThreatDetectionSettings * folders/`folder`/
        # eventThreatDetectionSettings * projects/`project`/eventThreatDetectionSettings
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The state of enablement for the service at its level of the resource hierarchy.
        # A DISABLED state will override all module enablement_states to DISABLED.
        # Corresponds to the JSON property `serviceEnablementState`
        # @return [String]
        attr_accessor :service_enablement_state
      
        # Output only. The time the settings were last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @modules = args[:modules] if args.key?(:modules)
          @name = args[:name] if args.key?(:name)
          @service_enablement_state = args[:service_enablement_state] if args.key?(:service_enablement_state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Security Command Center finding. A finding is a record of assessment data like
      # security, risk, health, or privacy, that is ingested into Security Command
      # Center for presentation, notification, analysis, policy testing, and
      # enforcement. For example, a cross-site scripting (XSS) vulnerability in an App
      # Engine application is a finding.
      class Finding
        include Google::Apis::Core::Hashable
      
        # The canonical name of the finding. It's either "organizations/`organization_id`
        # /sources/`source_id`/findings/`finding_id`", "folders/`folder_id`/sources/`
        # source_id`/findings/`finding_id`" or "projects/`project_number`/sources/`
        # source_id`/findings/`finding_id`", depending on the closest CRM ancestor of
        # the resource associated with the finding.
        # Corresponds to the JSON property `canonicalName`
        # @return [String]
        attr_accessor :canonical_name
      
        # The additional taxonomy group within findings from a given source. This field
        # is immutable after creation time. Example: "XSS_FLASH_INJECTION"
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The time at which the finding was created in Security Command Center.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time at which the event took place, or when an update to the finding
        # occurred. For example, if the finding represents an open firewall it would
        # capture the time the detector believes the firewall became open. The accuracy
        # is determined by the detector. If the finding were to be resolved afterward,
        # this time would reflect when the finding was resolved. Must not be set to a
        # value greater than the current timestamp.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # The URI that, if available, points to a web page outside of Security Command
        # Center where additional information about the finding can be found. This field
        # is guaranteed to be either empty or a well formed URL.
        # Corresponds to the JSON property `externalUri`
        # @return [String]
        attr_accessor :external_uri
      
        # The class of the finding.
        # Corresponds to the JSON property `findingClass`
        # @return [String]
        attr_accessor :finding_class
      
        # Represents what's commonly known as an Indicator of compromise (IoC) in
        # computer forensics. This is an artifact observed on a network or in an
        # operating system that, with high confidence, indicates a computer intrusion.
        # Reference: https://en.wikipedia.org/wiki/Indicator_of_compromise
        # Corresponds to the JSON property `indicator`
        # @return [Google::Apis::SecuritycenterV1beta2::Indicator]
        attr_accessor :indicator
      
        # The relative resource name of this finding. See: https://cloud.google.com/apis/
        # design/resource_names#relative_resource_name Example: "organizations/`
        # organization_id`/sources/`source_id`/findings/`finding_id`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The relative resource name of the source the finding belongs to. See: https://
        # cloud.google.com/apis/design/resource_names#relative_resource_name This field
        # is immutable after creation time. For example: "organizations/`organization_id`
        # /sources/`source_id`"
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # For findings on Google Cloud resources, the full resource name of the Google
        # Cloud resource this finding is for. See: https://cloud.google.com/apis/design/
        # resource_names#full_resource_name When the finding is for a non-Google Cloud
        # resource, the resourceName can be a customer or partner defined string. This
        # field is immutable after creation time.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # User specified security marks that are attached to the parent Security Command
        # Center resource. Security marks are scoped within a Security Command Center
        # organization -- they can be modified and viewed by all users who have proper
        # permissions on the organization.
        # Corresponds to the JSON property `securityMarks`
        # @return [Google::Apis::SecuritycenterV1beta2::SecurityMarks]
        attr_accessor :security_marks
      
        # The severity of the finding. This field is managed by the source that writes
        # the finding.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Source specific properties. These properties are managed by the source that
        # writes the finding. The key names in the source_properties map must be between
        # 1 and 255 characters, and must start with a letter and contain alphanumeric
        # characters or underscores only.
        # Corresponds to the JSON property `sourceProperties`
        # @return [Hash<String,Object>]
        attr_accessor :source_properties
      
        # The state of the finding.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Refers to common vulnerability fields e.g. cve, cvss, cwe etc.
        # Corresponds to the JSON property `vulnerability`
        # @return [Google::Apis::SecuritycenterV1beta2::Vulnerability]
        attr_accessor :vulnerability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_name = args[:canonical_name] if args.key?(:canonical_name)
          @category = args[:category] if args.key?(:category)
          @create_time = args[:create_time] if args.key?(:create_time)
          @event_time = args[:event_time] if args.key?(:event_time)
          @external_uri = args[:external_uri] if args.key?(:external_uri)
          @finding_class = args[:finding_class] if args.key?(:finding_class)
          @indicator = args[:indicator] if args.key?(:indicator)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @security_marks = args[:security_marks] if args.key?(:security_marks)
          @severity = args[:severity] if args.key?(:severity)
          @source_properties = args[:source_properties] if args.key?(:source_properties)
          @state = args[:state] if args.key?(:state)
          @vulnerability = args[:vulnerability] if args.key?(:vulnerability)
        end
      end
      
      # Message that contains the resource name and display name of a folder resource.
      class Folder
        include Google::Apis::Core::Hashable
      
        # Full resource name of this folder. See: https://cloud.google.com/apis/design/
        # resource_names#full_resource_name
        # Corresponds to the JSON property `resourceFolder`
        # @return [String]
        attr_accessor :resource_folder
      
        # The user defined display name for this folder.
        # Corresponds to the JSON property `resourceFolderDisplayName`
        # @return [String]
        attr_accessor :resource_folder_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_folder = args[:resource_folder] if args.key?(:resource_folder)
          @resource_folder_display_name = args[:resource_folder_display_name] if args.key?(:resource_folder_display_name)
        end
      end
      
      # Cloud SCC's Notification
      class GoogleCloudSecuritycenterV1NotificationMessage
        include Google::Apis::Core::Hashable
      
        # Security Command Center finding. A finding is a record of assessment data like
        # security, risk, health, or privacy, that is ingested into Security Command
        # Center for presentation, notification, analysis, policy testing, and
        # enforcement. For example, a cross-site scripting (XSS) vulnerability in an App
        # Engine application is a finding.
        # Corresponds to the JSON property `finding`
        # @return [Google::Apis::SecuritycenterV1beta2::Finding]
        attr_accessor :finding
      
        # Name of the notification config that generated current notification.
        # Corresponds to the JSON property `notificationConfigName`
        # @return [String]
        attr_accessor :notification_config_name
      
        # Information related to the Google Cloud resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1Resource]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finding = args[:finding] if args.key?(:finding)
          @notification_config_name = args[:notification_config_name] if args.key?(:notification_config_name)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # Information related to the Google Cloud resource.
      class GoogleCloudSecuritycenterV1Resource
        include Google::Apis::Core::Hashable
      
        # Output only. Contains a Folder message for each folder in the assets ancestry.
        # The first folder is the deepest nested folder, and the last folder is the
        # folder directly under the Organization.
        # Corresponds to the JSON property `folders`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::Folder>]
        attr_accessor :folders
      
        # The full resource name of the resource. See: https://cloud.google.com/apis/
        # design/resource_names#full_resource_name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The full resource name of resource's parent.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # The human readable name of resource's parent.
        # Corresponds to the JSON property `parentDisplayName`
        # @return [String]
        attr_accessor :parent_display_name
      
        # The full resource name of project that the resource belongs to.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # The human readable name of project that the resource belongs to.
        # Corresponds to the JSON property `projectDisplayName`
        # @return [String]
        attr_accessor :project_display_name
      
        # The full resource type of the resource.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @folders = args[:folders] if args.key?(:folders)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @parent_display_name = args[:parent_display_name] if args.key?(:parent_display_name)
          @project = args[:project] if args.key?(:project)
          @project_display_name = args[:project_display_name] if args.key?(:project_display_name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Response of asset discovery run
      class GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse
        include Google::Apis::Core::Hashable
      
        # The duration between asset discovery run start and end
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # The state of an asset discovery run.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Response of asset discovery run
      class GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
        include Google::Apis::Core::Hashable
      
        # The duration between asset discovery run start and end
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # The state of an asset discovery run.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Security Command Center finding. A finding is a record of assessment data (
      # security, risk, health or privacy) ingested into Security Command Center for
      # presentation, notification, analysis, policy testing, and enforcement. For
      # example, an XSS vulnerability in an App Engine application is a finding.
      class GoogleCloudSecuritycenterV1p1beta1Finding
        include Google::Apis::Core::Hashable
      
        # The canonical name of the finding. It's either "organizations/`organization_id`
        # /sources/`source_id`/findings/`finding_id`", "folders/`folder_id`/sources/`
        # source_id`/findings/`finding_id`" or "projects/`project_number`/sources/`
        # source_id`/findings/`finding_id`", depending on the closest CRM ancestor of
        # the resource associated with the finding.
        # Corresponds to the JSON property `canonicalName`
        # @return [String]
        attr_accessor :canonical_name
      
        # The additional taxonomy group within findings from a given source. This field
        # is immutable after creation time. Example: "XSS_FLASH_INJECTION"
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The time at which the finding was created in Security Command Center.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time at which the event took place, or when an update to the finding
        # occurred. For example, if the finding represents an open firewall it would
        # capture the time the detector believes the firewall became open. The accuracy
        # is determined by the detector. If the finding were to be resolved afterward,
        # this time would reflect when the finding was resolved. Must not be set to a
        # value greater than the current timestamp.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # The URI that, if available, points to a web page outside of Security Command
        # Center where additional information about the finding can be found. This field
        # is guaranteed to be either empty or a well formed URL.
        # Corresponds to the JSON property `externalUri`
        # @return [String]
        attr_accessor :external_uri
      
        # The relative resource name of this finding. See: https://cloud.google.com/apis/
        # design/resource_names#relative_resource_name Example: "organizations/`
        # organization_id`/sources/`source_id`/findings/`finding_id`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The relative resource name of the source the finding belongs to. See: https://
        # cloud.google.com/apis/design/resource_names#relative_resource_name This field
        # is immutable after creation time. For example: "organizations/`organization_id`
        # /sources/`source_id`"
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # For findings on Google Cloud resources, the full resource name of the Google
        # Cloud resource this finding is for. See: https://cloud.google.com/apis/design/
        # resource_names#full_resource_name When the finding is for a non-Google Cloud
        # resource, the resourceName can be a customer or partner defined string. This
        # field is immutable after creation time.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # User specified security marks that are attached to the parent Security Command
        # Center resource. Security marks are scoped within a Security Command Center
        # organization -- they can be modified and viewed by all users who have proper
        # permissions on the organization.
        # Corresponds to the JSON property `securityMarks`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1p1beta1SecurityMarks]
        attr_accessor :security_marks
      
        # The severity of the finding. This field is managed by the source that writes
        # the finding.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Source specific properties. These properties are managed by the source that
        # writes the finding. The key names in the source_properties map must be between
        # 1 and 255 characters, and must start with a letter and contain alphanumeric
        # characters or underscores only.
        # Corresponds to the JSON property `sourceProperties`
        # @return [Hash<String,Object>]
        attr_accessor :source_properties
      
        # The state of the finding.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_name = args[:canonical_name] if args.key?(:canonical_name)
          @category = args[:category] if args.key?(:category)
          @create_time = args[:create_time] if args.key?(:create_time)
          @event_time = args[:event_time] if args.key?(:event_time)
          @external_uri = args[:external_uri] if args.key?(:external_uri)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @security_marks = args[:security_marks] if args.key?(:security_marks)
          @severity = args[:severity] if args.key?(:severity)
          @source_properties = args[:source_properties] if args.key?(:source_properties)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Message that contains the resource name and display name of a folder resource.
      class GoogleCloudSecuritycenterV1p1beta1Folder
        include Google::Apis::Core::Hashable
      
        # Full resource name of this folder. See: https://cloud.google.com/apis/design/
        # resource_names#full_resource_name
        # Corresponds to the JSON property `resourceFolder`
        # @return [String]
        attr_accessor :resource_folder
      
        # The user defined display name for this folder.
        # Corresponds to the JSON property `resourceFolderDisplayName`
        # @return [String]
        attr_accessor :resource_folder_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_folder = args[:resource_folder] if args.key?(:resource_folder)
          @resource_folder_display_name = args[:resource_folder_display_name] if args.key?(:resource_folder_display_name)
        end
      end
      
      # Security Command Center's Notification
      class GoogleCloudSecuritycenterV1p1beta1NotificationMessage
        include Google::Apis::Core::Hashable
      
        # Security Command Center finding. A finding is a record of assessment data (
        # security, risk, health or privacy) ingested into Security Command Center for
        # presentation, notification, analysis, policy testing, and enforcement. For
        # example, an XSS vulnerability in an App Engine application is a finding.
        # Corresponds to the JSON property `finding`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1p1beta1Finding]
        attr_accessor :finding
      
        # Name of the notification config that generated current notification.
        # Corresponds to the JSON property `notificationConfigName`
        # @return [String]
        attr_accessor :notification_config_name
      
        # Information related to the Google Cloud resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1p1beta1Resource]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finding = args[:finding] if args.key?(:finding)
          @notification_config_name = args[:notification_config_name] if args.key?(:notification_config_name)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # Information related to the Google Cloud resource.
      class GoogleCloudSecuritycenterV1p1beta1Resource
        include Google::Apis::Core::Hashable
      
        # Output only. Contains a Folder message for each folder in the assets ancestry.
        # The first folder is the deepest nested folder, and the last folder is the
        # folder directly under the Organization.
        # Corresponds to the JSON property `folders`
        # @return [Array<Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1p1beta1Folder>]
        attr_accessor :folders
      
        # The full resource name of the resource. See: https://cloud.google.com/apis/
        # design/resource_names#full_resource_name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The full resource name of resource's parent.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # The human readable name of resource's parent.
        # Corresponds to the JSON property `parentDisplayName`
        # @return [String]
        attr_accessor :parent_display_name
      
        # The full resource name of project that the resource belongs to.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # The human readable name of project that the resource belongs to.
        # Corresponds to the JSON property `projectDisplayName`
        # @return [String]
        attr_accessor :project_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @folders = args[:folders] if args.key?(:folders)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @parent_display_name = args[:parent_display_name] if args.key?(:parent_display_name)
          @project = args[:project] if args.key?(:project)
          @project_display_name = args[:project_display_name] if args.key?(:project_display_name)
        end
      end
      
      # Response of asset discovery run
      class GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse
        include Google::Apis::Core::Hashable
      
        # The duration between asset discovery run start and end
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # The state of an asset discovery run.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # User specified security marks that are attached to the parent Security Command
      # Center resource. Security marks are scoped within a Security Command Center
      # organization -- they can be modified and viewed by all users who have proper
      # permissions on the organization.
      class GoogleCloudSecuritycenterV1p1beta1SecurityMarks
        include Google::Apis::Core::Hashable
      
        # The canonical name of the marks. Examples: "organizations/`organization_id`/
        # assets/`asset_id`/securityMarks" "folders/`folder_id`/assets/`asset_id`/
        # securityMarks" "projects/`project_number`/assets/`asset_id`/securityMarks" "
        # organizations/`organization_id`/sources/`source_id`/findings/`finding_id`/
        # securityMarks" "folders/`folder_id`/sources/`source_id`/findings/`finding_id`/
        # securityMarks" "projects/`project_number`/sources/`source_id`/findings/`
        # finding_id`/securityMarks"
        # Corresponds to the JSON property `canonicalName`
        # @return [String]
        attr_accessor :canonical_name
      
        # Mutable user specified security marks belonging to the parent resource.
        # Constraints are as follows: * Keys and values are treated as case insensitive *
        # Keys must be between 1 - 256 characters (inclusive) * Keys must be letters,
        # numbers, underscores, or dashes * Values have leading and trailing whitespace
        # trimmed, remaining characters must be between 1 - 4096 characters (inclusive)
        # Corresponds to the JSON property `marks`
        # @return [Hash<String,String>]
        attr_accessor :marks
      
        # The relative resource name of the SecurityMarks. See: https://cloud.google.com/
        # apis/design/resource_names#relative_resource_name Examples: "organizations/`
        # organization_id`/assets/`asset_id`/securityMarks" "organizations/`
        # organization_id`/sources/`source_id`/findings/`finding_id`/securityMarks".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_name = args[:canonical_name] if args.key?(:canonical_name)
          @marks = args[:marks] if args.key?(:marks)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Represents what's commonly known as an Indicator of compromise (IoC) in
      # computer forensics. This is an artifact observed on a network or in an
      # operating system that, with high confidence, indicates a computer intrusion.
      # Reference: https://en.wikipedia.org/wiki/Indicator_of_compromise
      class Indicator
        include Google::Apis::Core::Hashable
      
        # List of domains associated to the Finding.
        # Corresponds to the JSON property `domains`
        # @return [Array<String>]
        attr_accessor :domains
      
        # List of ip addresses associated to the Finding.
        # Corresponds to the JSON property `ipAddresses`
        # @return [Array<String>]
        attr_accessor :ip_addresses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domains = args[:domains] if args.key?(:domains)
          @ip_addresses = args[:ip_addresses] if args.key?(:ip_addresses)
        end
      end
      
      # Additional Links
      class Reference
        include Google::Apis::Core::Hashable
      
        # Source of the reference e.g. NVD
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Uri for the mentioned source e.g. https://cve.mitre.org/cgi-bin/cvename.cgi?
        # name=CVE-2021-34527.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source = args[:source] if args.key?(:source)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Resource capturing the settings for Security Center.
      class SecurityCenterSettings
        include Google::Apis::Core::Hashable
      
        # The resource name of the project to send logs to. This project must be part of
        # the organization this resource resides in. The format is `projects/`project_id`
        # `. An empty value disables logging. This value is only referenced by services
        # that support log sink. Please refer to the documentation for an updated list
        # of compatible services.
        # Corresponds to the JSON property `logSinkProject`
        # @return [String]
        attr_accessor :log_sink_project
      
        # The resource name of the SecurityCenterSettings. Format: organizations/`
        # organization`/securityCenterSettings
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The organization level service account to be used for security center
        # components.
        # Corresponds to the JSON property `orgServiceAccount`
        # @return [String]
        attr_accessor :org_service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_sink_project = args[:log_sink_project] if args.key?(:log_sink_project)
          @name = args[:name] if args.key?(:name)
          @org_service_account = args[:org_service_account] if args.key?(:org_service_account)
        end
      end
      
      # Resource capturing the settings for the Security Health Analytics service.
      class SecurityHealthAnalyticsSettings
        include Google::Apis::Core::Hashable
      
        # The configurations including the state of enablement for the service's
        # different modules. The absence of a module in the map implies its
        # configuration is inherited from its parent's.
        # Corresponds to the JSON property `modules`
        # @return [Hash<String,Google::Apis::SecuritycenterV1beta2::Config>]
        attr_accessor :modules
      
        # The resource name of the SecurityHealthAnalyticsSettings. Formats: *
        # organizations/`organization`/securityHealthAnalyticsSettings * folders/`folder`
        # /securityHealthAnalyticsSettings * projects/`project`/
        # securityHealthAnalyticsSettings
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The service account used by Security Health Analytics detectors.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # The state of enablement for the service at its level of the resource hierarchy.
        # A DISABLED state will override all module enablement_states to DISABLED.
        # Corresponds to the JSON property `serviceEnablementState`
        # @return [String]
        attr_accessor :service_enablement_state
      
        # Output only. The time the settings were last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @modules = args[:modules] if args.key?(:modules)
          @name = args[:name] if args.key?(:name)
          @service_account = args[:service_account] if args.key?(:service_account)
          @service_enablement_state = args[:service_enablement_state] if args.key?(:service_enablement_state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # User specified security marks that are attached to the parent Security Command
      # Center resource. Security marks are scoped within a Security Command Center
      # organization -- they can be modified and viewed by all users who have proper
      # permissions on the organization.
      class SecurityMarks
        include Google::Apis::Core::Hashable
      
        # The canonical name of the marks. Examples: "organizations/`organization_id`/
        # assets/`asset_id`/securityMarks" "folders/`folder_id`/assets/`asset_id`/
        # securityMarks" "projects/`project_number`/assets/`asset_id`/securityMarks" "
        # organizations/`organization_id`/sources/`source_id`/findings/`finding_id`/
        # securityMarks" "folders/`folder_id`/sources/`source_id`/findings/`finding_id`/
        # securityMarks" "projects/`project_number`/sources/`source_id`/findings/`
        # finding_id`/securityMarks"
        # Corresponds to the JSON property `canonicalName`
        # @return [String]
        attr_accessor :canonical_name
      
        # Mutable user specified security marks belonging to the parent resource.
        # Constraints are as follows: * Keys and values are treated as case insensitive *
        # Keys must be between 1 - 256 characters (inclusive) * Keys must be letters,
        # numbers, underscores, or dashes * Values have leading and trailing whitespace
        # trimmed, remaining characters must be between 1 - 4096 characters (inclusive)
        # Corresponds to the JSON property `marks`
        # @return [Hash<String,String>]
        attr_accessor :marks
      
        # The relative resource name of the SecurityMarks. See: https://cloud.google.com/
        # apis/design/resource_names#relative_resource_name Examples: "organizations/`
        # organization_id`/assets/`asset_id`/securityMarks" "organizations/`
        # organization_id`/sources/`source_id`/findings/`finding_id`/securityMarks".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_name = args[:canonical_name] if args.key?(:canonical_name)
          @marks = args[:marks] if args.key?(:marks)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Resource capturing the state of an organization's subscription.
      class Subscription
        include Google::Apis::Core::Hashable
      
        # Details of a subscription.
        # Corresponds to the JSON property `details`
        # @return [Google::Apis::SecuritycenterV1beta2::Details]
        attr_accessor :details
      
        # The resource name of the subscription. Format: organizations/`organization`/
        # subscription
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The tier of SCC features this organization currently has access to.
        # Corresponds to the JSON property `tier`
        # @return [String]
        attr_accessor :tier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @name = args[:name] if args.key?(:name)
          @tier = args[:tier] if args.key?(:tier)
        end
      end
      
      # Refers to common vulnerability fields e.g. cve, cvss, cwe etc.
      class Vulnerability
        include Google::Apis::Core::Hashable
      
        # CVE stands for Common Vulnerabilities and Exposures. More information: https://
        # cve.mitre.org
        # Corresponds to the JSON property `cve`
        # @return [Google::Apis::SecuritycenterV1beta2::Cve]
        attr_accessor :cve
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cve = args[:cve] if args.key?(:cve)
        end
      end
      
      # Resource capturing the settings for the Web Security Scanner service.
      class WebSecurityScannerSettings
        include Google::Apis::Core::Hashable
      
        # The configurations including the state of enablement for the service's
        # different modules. The absence of a module in the map implies its
        # configuration is inherited from its parent's.
        # Corresponds to the JSON property `modules`
        # @return [Hash<String,Google::Apis::SecuritycenterV1beta2::Config>]
        attr_accessor :modules
      
        # The resource name of the WebSecurityScannerSettings. Formats: * organizations/`
        # organization`/webSecurityScannerSettings * folders/`folder`/
        # webSecurityScannerSettings * projects/`project`/webSecurityScannerSettings
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The state of enablement for the service at its level of the resource hierarchy.
        # A DISABLED state will override all module enablement_states to DISABLED.
        # Corresponds to the JSON property `serviceEnablementState`
        # @return [String]
        attr_accessor :service_enablement_state
      
        # Output only. The time the settings were last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @modules = args[:modules] if args.key?(:modules)
          @name = args[:name] if args.key?(:name)
          @service_enablement_state = args[:service_enablement_state] if args.key?(:service_enablement_state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
    end
  end
end
