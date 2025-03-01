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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module DocumentaiV1beta3
      # Cloud Document AI API
      #
      # Service to parse structured information from unstructured or semi-structured
      #  documents using state-of-the-art Google AI such as natural language, computer
      #  vision, translation, and AutoML.
      #
      # @example
      #    require 'google/apis/documentai_v1beta3'
      #
      #    Documentai = Google::Apis::DocumentaiV1beta3 # Alias the module
      #    service = Documentai::DocumentService.new
      #
      # @see https://cloud.google.com/document-ai/docs/
      class DocumentService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://documentai.googleapis.com/', '',
                client_name: 'google-apis-documentai_v1beta3',
                client_version: Google::Apis::DocumentaiV1beta3::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Fetches processor types.
        # @param [String] parent
        #   Required. The project of processor type to list. The available processor types
        #   may depend on the whitelisting on projects. Format: projects/`project`/
        #   locations/`location`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_processor_types(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta3/{+parent}:fetchProcessorTypes', options)
          command.response_representation = Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse::Representation
          command.response_class = Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a location.
        # @param [String] name
        #   Resource name for the location.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1beta3::GoogleCloudLocationLocation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1beta3::GoogleCloudLocationLocation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta3/{+name}', options)
          command.response_representation = Google::Apis::DocumentaiV1beta3::GoogleCloudLocationLocation::Representation
          command.response_class = Google::Apis::DocumentaiV1beta3::GoogleCloudLocationLocation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
        # @param [String] filter
        #   A filter to narrow down results to a preferred subset. The filtering language
        #   accepts strings like "displayName=tokyo", and is documented in more detail in [
        #   AIP-160](https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of results to return. If not set, the service selects a
        #   default.
        # @param [String] page_token
        #   A page token received from the `next_page_token` field in the response. Send
        #   that page token to receive the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1beta3::GoogleCloudLocationListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1beta3::GoogleCloudLocationListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta3/{+name}/locations', options)
          command.response_representation = Google::Apis::DocumentaiV1beta3::GoogleCloudLocationListLocationsResponse::Representation
          command.response_class = Google::Apis::DocumentaiV1beta3::GoogleCloudLocationListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1beta3::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1beta3::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta3/{+name}:cancel', options)
          command.response_representation = Google::Apis::DocumentaiV1beta3::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DocumentaiV1beta3::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta3/{+name}', options)
          command.response_representation = Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name`
        # binding allows API services to override the binding to use different resource
        # name schemes, such as `users/*/operations`. To override the binding, API
        # services can add a binding such as `"/v1/`name=users/*`/operations"` to their
        # service configuration. For backwards compatibility, the default name includes
        # the operations collection id, however overriding users must ensure the name
        # binding is the parent resource, without the operations collection id.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1beta3::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1beta3::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta3/{+name}', options)
          command.response_representation = Google::Apis::DocumentaiV1beta3::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DocumentaiV1beta3::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # LRO endpoint to batch process many documents. The output is written to Cloud
        # Storage as JSON in the [Document] format.
        # @param [String] name
        #   Required. The resource name of Processor or ProcessorVersion. Format: projects/
        #   `project`/locations/`location`/processors/`processor`, or projects/`project`/
        #   locations/`location`/processors/`processor`/processorVersions/`
        #   processorVersion`
        # @param [Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchProcessRequest] google_cloud_documentai_v1beta3_batch_process_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_processor_process(name, google_cloud_documentai_v1beta3_batch_process_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta3/{+name}:batchProcess', options)
          command.request_representation = Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchProcessRequest::Representation
          command.request_object = google_cloud_documentai_v1beta3_batch_process_request_object
          command.response_representation = Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a processor from the type processor that the user chose. The processor
        # will be at "ENABLED" state by default after its creation.
        # @param [String] parent
        #   Required. The parent (project and location) under which to create the
        #   processor. Format: projects/`project`/locations/`location`
        # @param [Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Processor] google_cloud_documentai_v1beta3_processor_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Processor] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Processor]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_processor(parent, google_cloud_documentai_v1beta3_processor_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta3/{+parent}/processors', options)
          command.request_representation = Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Processor::Representation
          command.request_object = google_cloud_documentai_v1beta3_processor_object
          command.response_representation = Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Processor::Representation
          command.response_class = Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Processor
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the processor, unloads all deployed model artifacts if it was enabled
        # and then deletes all artifacts associated with this processor.
        # @param [String] name
        #   Required. The processor resource name to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_processor(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta3/{+name}', options)
          command.response_representation = Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Disables a processor
        # @param [String] name
        #   Required. The processor resource name to be disabled.
        # @param [Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DisableProcessorRequest] google_cloud_documentai_v1beta3_disable_processor_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def disable_project_location_processor(name, google_cloud_documentai_v1beta3_disable_processor_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta3/{+name}:disable', options)
          command.request_representation = Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DisableProcessorRequest::Representation
          command.request_object = google_cloud_documentai_v1beta3_disable_processor_request_object
          command.response_representation = Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enables a processor
        # @param [String] name
        #   Required. The processor resource name to be enabled.
        # @param [Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EnableProcessorRequest] google_cloud_documentai_v1beta3_enable_processor_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enable_project_location_processor(name, google_cloud_documentai_v1beta3_enable_processor_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta3/{+name}:enable', options)
          command.request_representation = Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EnableProcessorRequest::Representation
          command.request_object = google_cloud_documentai_v1beta3_enable_processor_request_object
          command.response_representation = Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all processors which belong to this project.
        # @param [String] parent
        #   Required. The parent (project and location) which owns this collection of
        #   Processors. Format: projects/`project`/locations/`location`
        # @param [Fixnum] page_size
        #   The maximum number of processors to return. If unspecified, at most 50
        #   processors will be returned. The maximum value is 100; values above 100 will
        #   be coerced to 100.
        # @param [String] page_token
        #   We will return the processors sorted by creation time. The page token will
        #   point to the next processor.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ListProcessorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ListProcessorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_processors(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta3/{+parent}/processors', options)
          command.response_representation = Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ListProcessorsResponse::Representation
          command.response_class = Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ListProcessorsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Processes a single document.
        # @param [String] name
        #   Required. The resource name of the Processor or ProcessorVersion to use for
        #   processing. If a Processor is specified, the server will use its default
        #   version. Format: projects/`project`/locations/`location`/processors/`processor`
        #   , or projects/`project`/locations/`location`/processors/`processor`/
        #   processorVersions/`processorVersion`
        # @param [Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessRequest] google_cloud_documentai_v1beta3_process_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def process_project_location_processor(name, google_cloud_documentai_v1beta3_process_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta3/{+name}:process', options)
          command.request_representation = Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessRequest::Representation
          command.request_object = google_cloud_documentai_v1beta3_process_request_object
          command.response_representation = Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessResponse::Representation
          command.response_class = Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Send a document for Human Review. The input document should be processed by
        # the specified processor.
        # @param [String] human_review_config
        #   Required. The resource name of the HumanReviewConfig that the document will be
        #   reviewed with.
        # @param [Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ReviewDocumentRequest] google_cloud_documentai_v1beta3_review_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def review_project_location_processor_human_review_config_document(human_review_config, google_cloud_documentai_v1beta3_review_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta3/{+humanReviewConfig}:reviewDocument', options)
          command.request_representation = Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ReviewDocumentRequest::Representation
          command.request_object = google_cloud_documentai_v1beta3_review_document_request_object
          command.response_representation = Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation
          command.params['humanReviewConfig'] = human_review_config unless human_review_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # LRO endpoint to batch process many documents. The output is written to Cloud
        # Storage as JSON in the [Document] format.
        # @param [String] name
        #   Required. The resource name of Processor or ProcessorVersion. Format: projects/
        #   `project`/locations/`location`/processors/`processor`, or projects/`project`/
        #   locations/`location`/processors/`processor`/processorVersions/`
        #   processorVersion`
        # @param [Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchProcessRequest] google_cloud_documentai_v1beta3_batch_process_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_processor_processor_version_process(name, google_cloud_documentai_v1beta3_batch_process_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta3/{+name}:batchProcess', options)
          command.request_representation = Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchProcessRequest::Representation
          command.request_object = google_cloud_documentai_v1beta3_batch_process_request_object
          command.response_representation = Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Processes a single document.
        # @param [String] name
        #   Required. The resource name of the Processor or ProcessorVersion to use for
        #   processing. If a Processor is specified, the server will use its default
        #   version. Format: projects/`project`/locations/`location`/processors/`processor`
        #   , or projects/`project`/locations/`location`/processors/`processor`/
        #   processorVersions/`processorVersion`
        # @param [Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessRequest] google_cloud_documentai_v1beta3_process_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def process_project_location_processor_processor_version(name, google_cloud_documentai_v1beta3_process_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta3/{+name}:process', options)
          command.request_representation = Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessRequest::Representation
          command.request_object = google_cloud_documentai_v1beta3_process_request_object
          command.response_representation = Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessResponse::Representation
          command.response_class = Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
