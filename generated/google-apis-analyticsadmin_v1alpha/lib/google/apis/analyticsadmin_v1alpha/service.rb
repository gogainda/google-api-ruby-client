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
    module AnalyticsadminV1alpha
      # Google Analytics Admin API
      #
      # 
      #
      # @example
      #    require 'google/apis/analyticsadmin_v1alpha'
      #
      #    Analyticsadmin = Google::Apis::AnalyticsadminV1alpha # Alias the module
      #    service = Analyticsadmin::GoogleAnalyticsAdminService.new
      #
      # @see http://code.google.com/apis/analytics/docs/mgmt/home.html
      class GoogleAnalyticsAdminService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://analyticsadmin.googleapis.com/', '',
                client_name: 'google-apis-analyticsadmin_v1alpha',
                client_version: Google::Apis::AnalyticsadminV1alpha::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Returns summaries of all accounts accessible by the caller.
        # @param [Fixnum] page_size
        #   The maximum number of AccountSummary resources to return. The service may
        #   return fewer than this value, even if there are additional pages. If
        #   unspecified, at most 50 resources will be returned. The maximum value is 200; (
        #   higher values will be coerced to the maximum)
        # @param [String] page_token
        #   A page token, received from a previous `ListAccountSummaries` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListAccountSummaries` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAccountSummariesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAccountSummariesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_summaries(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/accountSummaries', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAccountSummariesResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAccountSummariesResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks target Account as soft-deleted (ie: "trashed") and returns it. This API
        # does not have a method to restore soft-deleted accounts. However, they can be
        # restored using the Trash Can UI. If the accounts are not restored before the
        # expiration time, the account and all child resources (eg: Properties,
        # GoogleAdsLinks, Streams, UserLinks) will be permanently purged. https://
        # support.google.com/analytics/answer/6154772 Returns an error if the target is
        # not found.
        # @param [String] name
        #   Required. The name of the Account to soft-delete. Format: accounts/`account`
        #   Example: "accounts/100"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single Account.
        # @param [String] name
        #   Required. The name of the account to lookup. Format: accounts/`account`
        #   Example: "accounts/100"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get data sharing settings on an account. Data sharing settings are singletons.
        # @param [String] name
        #   Required. The name of the settings to lookup. Format: accounts/`account`/
        #   dataSharingSettings Example: "accounts/1000/dataSharingSettings"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataSharingSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataSharingSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_data_sharing_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataSharingSettings::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataSharingSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all accounts accessible by the caller. Note that these accounts might
        # not currently have GA4 properties. Soft-deleted (ie: "trashed") accounts are
        # excluded by default. Returns an empty list if no relevant accounts are found.
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. The service may return fewer than
        #   this value, even if there are additional pages. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200; (higher values will be
        #   coerced to the maximum)
        # @param [String] page_token
        #   A page token, received from a previous `ListAccounts` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListAccounts` must match the call that provided the page token.
        # @param [Boolean] show_deleted
        #   Whether to include soft-deleted (ie: "trashed") Accounts in the results.
        #   Accounts can be inspected to determine whether they are deleted or not.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accounts(page_size: nil, page_token: nil, show_deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/accounts', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAccountsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAccountsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['showDeleted'] = show_deleted unless show_deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an account.
        # @param [String] name
        #   Output only. Resource name of this account. Format: accounts/`account` Example:
        #   "accounts/100"
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount] google_analytics_admin_v1alpha_account_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   e.g., "field_to_update"). Omitted fields will not be updated. To replace the
        #   entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account(name, google_analytics_admin_v1alpha_account_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount::Representation
          command.request_object = google_analytics_admin_v1alpha_account_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Requests a ticket for creating an account.
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest] google_analytics_admin_v1alpha_provision_account_ticket_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def provision_account_account_ticket(google_analytics_admin_v1alpha_provision_account_ticket_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/accounts:provisionAccountTicket', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_provision_account_ticket_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches through all changes to an account or its children given the specified
        # set of filters.
        # @param [String] account
        #   Required. The account resource for which to return change history resources.
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest] google_analytics_admin_v1alpha_search_change_history_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_account_change_history_events(account, google_analytics_admin_v1alpha_search_change_history_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+account}:searchChangeHistoryEvents', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_search_change_history_events_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse
          command.params['account'] = account unless account.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all user links on an account or property, including implicit ones that
        # come from effective permissions granted by groups or organization admin roles.
        # If a returned user link does not have direct permissions, they cannot be
        # removed from the account or property directly with the DeleteUserLink command.
        # They have to be removed from the group/etc that gives them permissions, which
        # is currently only usable/discoverable in the GA or GMP UIs.
        # @param [String] parent
        #   Required. Example format: accounts/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAuditUserLinksRequest] google_analytics_admin_v1alpha_audit_user_links_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAuditUserLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAuditUserLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def audit_account_user_link(parent, google_analytics_admin_v1alpha_audit_user_links_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userLinks:audit', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAuditUserLinksRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_audit_user_links_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAuditUserLinksResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAuditUserLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates information about multiple users' links to an account or property.
        # This method is transactional. If any UserLink cannot be created, none of the
        # UserLinks will be created.
        # @param [String] parent
        #   Required. The account or property that all user links in the request are for.
        #   This field is required. The parent field in the CreateUserLinkRequest messages
        #   must either be empty or match this field. Example format: accounts/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest] google_analytics_admin_v1alpha_batch_create_user_links_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_account_user_link_create(parent, google_analytics_admin_v1alpha_batch_create_user_links_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userLinks:batchCreate', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_batch_create_user_links_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes information about multiple users' links to an account or property.
        # @param [String] parent
        #   Required. The account or property that all user links in the request are for.
        #   The parent of all values for user link names to delete must match this field.
        #   Example format: accounts/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest] google_analytics_admin_v1alpha_batch_delete_user_links_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_account_user_link_delete(parent, google_analytics_admin_v1alpha_batch_delete_user_links_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userLinks:batchDelete', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_batch_delete_user_links_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about multiple users' links to an account or property.
        # @param [String] parent
        #   Required. The account or property that all user links in the request are for.
        #   The parent of all provided values for the 'names' field must match this field.
        #   Example format: accounts/1234
        # @param [Array<String>, String] names
        #   Required. The names of the user links to retrieve. A maximum of 1000 user
        #   links can be retrieved in a batch. Format: accounts/`accountId`/userLinks/`
        #   userLinkId`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_account_user_link_get(parent, names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/userLinks:batchGet', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['names'] = names unless names.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates information about multiple users' links to an account or property.
        # @param [String] parent
        #   Required. The account or property that all user links in the request are for.
        #   The parent field in the UpdateUserLinkRequest messages must either be empty or
        #   match this field. Example format: accounts/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest] google_analytics_admin_v1alpha_batch_update_user_links_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_account_user_link_update(parent, google_analytics_admin_v1alpha_batch_update_user_links_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userLinks:batchUpdate', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_batch_update_user_links_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a user link on an account or property. If the user with the specified
        # email already has permissions on the account or property, then the user's
        # existing permissions will be unioned with the permissions specified in the new
        # UserLink.
        # @param [String] parent
        #   Required. Example format: accounts/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink] google_analytics_admin_v1alpha_user_link_object
        # @param [Boolean] notify_new_user
        #   Optional. If set, then email the new user notifying them that they've been
        #   granted permissions to the resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_user_link(parent, google_analytics_admin_v1alpha_user_link_object = nil, notify_new_user: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userLinks', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink::Representation
          command.request_object = google_analytics_admin_v1alpha_user_link_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink
          command.params['parent'] = parent unless parent.nil?
          command.query['notifyNewUser'] = notify_new_user unless notify_new_user.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a user link on an account or property.
        # @param [String] name
        #   Required. Example format: accounts/1234/userLinks/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_user_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a user's link to an account or property.
        # @param [String] name
        #   Required. Example format: accounts/1234/userLinks/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_user_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all user links on an account or property.
        # @param [String] parent
        #   Required. Example format: accounts/1234
        # @param [Fixnum] page_size
        #   The maximum number of user links to return. The service may return fewer than
        #   this value. If unspecified, at most 200 user links will be returned. The
        #   maximum value is 500; values above 500 will be coerced to 500.
        # @param [String] page_token
        #   A page token, received from a previous `ListUserLinks` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListUserLinks` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListUserLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListUserLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_user_links(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/userLinks', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListUserLinksResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListUserLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a user link on an account or property.
        # @param [String] name
        #   Output only. Example format: properties/1234/userLinks/5678
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink] google_analytics_admin_v1alpha_user_link_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_user_link(name, google_analytics_admin_v1alpha_user_link_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink::Representation
          command.request_object = google_analytics_admin_v1alpha_user_link_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an "GA4" property with the specified location and attributes.
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty] google_analytics_admin_v1alpha_property_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property(google_analytics_admin_v1alpha_property_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/properties', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty::Representation
          command.request_object = google_analytics_admin_v1alpha_property_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks target Property as soft-deleted (ie: "trashed") and returns it. This API
        # does not have a method to restore soft-deleted properties. However, they can
        # be restored using the Trash Can UI. If the properties are not restored before
        # the expiration time, the Property and all child resources (eg: GoogleAdsLinks,
        # Streams, UserLinks) will be permanently purged. https://support.google.com/
        # analytics/answer/6154772 Returns an error if the target is not found, or is
        # not an GA4 Property.
        # @param [String] name
        #   Required. The name of the Property to soft-delete. Format: properties/`
        #   property_id` Example: "properties/1000"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single "GA4" Property.
        # @param [String] name
        #   Required. The name of the property to lookup. Format: properties/`property_id`
        #   Example: "properties/1000"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the singleton data retention settings for this property.
        # @param [String] name
        #   Required. The name of the settings to lookup. Format: properties/`property`/
        #   dataRetentionSettings Example: "properties/1000/dataRetentionSettings"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_data_retention_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for Google Signals settings for a property.
        # @param [String] name
        #   Required. The name of the google signals settings to retrieve. Format:
        #   properties/`property`/googleSignalsSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_google_signals_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns child Properties under the specified parent Account. Only "GA4"
        # properties will be returned. Properties will be excluded if the caller does
        # not have access. Soft-deleted (ie: "trashed") properties are excluded by
        # default. Returns an empty list if no relevant properties are found.
        # @param [String] filter
        #   Required. An expression for filtering the results of the request. Fields
        #   eligible for filtering are: `parent:`(The resource name of the parent account)
        #   or `firebase_project:`(The id or number of the linked firebase project). Some
        #   examples of filters: ``` | Filter | Description | |----------------------------
        #   -|-------------------------------------------| | parent:accounts/123 | The
        #   account with account id: 123. | | firebase_project:project-id | The firebase
        #   project with id: project-id. | | firebase_project:123 | The firebase project
        #   with number: 123. | ```
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. The service may return fewer than
        #   this value, even if there are additional pages. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200; (higher values will be
        #   coerced to the maximum)
        # @param [String] page_token
        #   A page token, received from a previous `ListProperties` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListProperties` must match the call that provided the page token.
        # @param [Boolean] show_deleted
        #   Whether to include soft-deleted (ie: "trashed") Properties in the results.
        #   Properties can be inspected to determine whether they are deleted or not.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListPropertiesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListPropertiesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_properties(filter: nil, page_size: nil, page_token: nil, show_deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/properties', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListPropertiesResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListPropertiesResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['showDeleted'] = show_deleted unless show_deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a property.
        # @param [String] name
        #   Output only. Resource name of this property. Format: properties/`property_id`
        #   Example: "properties/1000"
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty] google_analytics_admin_v1alpha_property_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   e.g., "field_to_update"). Omitted fields will not be updated. To replace the
        #   entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property(name, google_analytics_admin_v1alpha_property_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty::Representation
          command.request_object = google_analytics_admin_v1alpha_property_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the singleton data retention settings for this property.
        # @param [String] name
        #   Output only. Resource name for this DataRetentionSetting resource. Format:
        #   properties/`property`/dataRetentionSettings
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings] google_analytics_admin_v1alpha_data_retention_settings_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   e.g., "field_to_update"). Omitted fields will not be updated. To replace the
        #   entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_property_data_retention_settings(name, google_analytics_admin_v1alpha_data_retention_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings::Representation
          command.request_object = google_analytics_admin_v1alpha_data_retention_settings_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates Google Signals settings for a property.
        # @param [String] name
        #   Output only. Resource name of this setting. Format: properties/`property_id`/
        #   googleSignalsSettings Example: "properties/1000/googleSignalsSettings"
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings] google_analytics_admin_v1alpha_google_signals_settings_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   e.g., "field_to_update"). Omitted fields will not be updated. To replace the
        #   entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_property_google_signals_settings(name, google_analytics_admin_v1alpha_google_signals_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings::Representation
          command.request_object = google_analytics_admin_v1alpha_google_signals_settings_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an android app stream on a property.
        # @param [String] name
        #   Required. The name of the android app data stream to delete. Format:
        #   properties/`property_id`/androidAppDataStreams/`stream_id` Example: "
        #   properties/123/androidAppDataStreams/456"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_android_app_data_stream(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single AndroidAppDataStream
        # @param [String] name
        #   Required. The name of the android app data stream to lookup. Format:
        #   properties/`property_id`/androidAppDataStreams/`stream_id` Example: "
        #   properties/123/androidAppDataStreams/456"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAndroidAppDataStream] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAndroidAppDataStream]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_android_app_data_stream(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAndroidAppDataStream::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAndroidAppDataStream
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns child android app streams under the specified parent property. Android
        # app streams will be excluded if the caller does not have access. Returns an
        # empty list if no relevant android app streams are found.
        # @param [String] parent
        #   Required. The name of the parent property. For example, to limit results to
        #   app streams under the property with Id 123: "properties/123"
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200; (higher values will be
        #   coerced to the maximum)
        # @param [String] page_token
        #   A page token, received from a previous call. Provide this to retrieve the
        #   subsequent page. When paginating, all other parameters provided to `
        #   ListAndroidAppDataStreams` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_android_app_data_streams(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/androidAppDataStreams', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an android app stream on a property.
        # @param [String] name
        #   Output only. Resource name of this Data Stream. Format: properties/`
        #   property_id`/androidAppDataStreams/`stream_id` Example: "properties/1000/
        #   androidAppDataStreams/2000"
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAndroidAppDataStream] google_analytics_admin_v1alpha_android_app_data_stream_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   e.g., "field_to_update"). Omitted fields will not be updated. To replace the
        #   entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAndroidAppDataStream] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAndroidAppDataStream]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_android_app_data_stream(name, google_analytics_admin_v1alpha_android_app_data_stream_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAndroidAppDataStream::Representation
          command.request_object = google_analytics_admin_v1alpha_android_app_data_stream_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAndroidAppDataStream::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAndroidAppDataStream
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a measurement protocol secret.
        # @param [String] parent
        #   Required. The parent resource where this secret will be created. Any type of
        #   stream (WebDataStream, IosAppDataStream, AndroidAppDataStream) may be a parent.
        #   Format: properties/`property`/webDataStreams/`webDataStream`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret] google_analytics_admin_v1alpha_measurement_protocol_secret_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_android_app_data_stream_measurement_protocol_secret(parent, google_analytics_admin_v1alpha_measurement_protocol_secret_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/measurementProtocolSecrets', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret::Representation
          command.request_object = google_analytics_admin_v1alpha_measurement_protocol_secret_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes target MeasurementProtocolSecret.
        # @param [String] name
        #   Required. The name of the MeasurementProtocolSecret to delete. Format:
        #   properties/`property`/webDataStreams/`webDataStream`/
        #   measurementProtocolSecrets/`measurementProtocolSecret` Note: Any type of
        #   stream (WebDataStream, IosAppDataStream, AndroidAppDataStream) may be a parent.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_android_app_data_stream_measurement_protocol_secret(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single "GA4" MeasurementProtocolSecret.
        # @param [String] name
        #   Required. The name of the measurement protocol secret to lookup. Format:
        #   properties/`property`/webDataStreams/`webDataStream`/
        #   measurementProtocolSecrets/`measurementProtocolSecret` Note: Any type of
        #   stream (WebDataStream, IosAppDataStream, AndroidAppDataStream) may be a parent.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_android_app_data_stream_measurement_protocol_secret(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns child MeasurementProtocolSecrets under the specified parent Property.
        # @param [String] parent
        #   Required. The resource name of the parent stream. Any type of stream (
        #   WebDataStream, IosAppDataStream, AndroidAppDataStream) may be a parent. Format:
        #   properties/`property`/webDataStreams/`webDataStream`/
        #   measurementProtocolSecrets
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 10
        #   resources will be returned. The maximum value is 10. Higher values will be
        #   coerced to the maximum.
        # @param [String] page_token
        #   A page token, received from a previous `ListMeasurementProtocolSecrets` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListMeasurementProtocolSecrets` must match the call
        #   that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_android_app_data_stream_measurement_protocol_secrets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/measurementProtocolSecrets', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a measurement protocol secret.
        # @param [String] name
        #   Output only. Resource name of this secret. This secret may be a child of any
        #   type of stream. Format: properties/`property`/webDataStreams/`webDataStream`/
        #   measurementProtocolSecrets/`measurementProtocolSecret`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret] google_analytics_admin_v1alpha_measurement_protocol_secret_object
        # @param [String] update_mask
        #   The list of fields to be updated. Omitted fields will not be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_android_app_data_stream_measurement_protocol_secret(name, google_analytics_admin_v1alpha_measurement_protocol_secret_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret::Representation
          command.request_object = google_analytics_admin_v1alpha_measurement_protocol_secret_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a conversion event with the specified attributes.
        # @param [String] parent
        #   Required. The resource name of the parent property where this conversion event
        #   will be created. Format: properties/123
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent] google_analytics_admin_v1alpha_conversion_event_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_conversion_event(parent, google_analytics_admin_v1alpha_conversion_event_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/conversionEvents', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent::Representation
          command.request_object = google_analytics_admin_v1alpha_conversion_event_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a conversion event in a property.
        # @param [String] name
        #   Required. The resource name of the conversion event to delete. Format:
        #   properties/`property`/conversionEvents/`conversion_event` Example: "properties/
        #   123/conversionEvents/456"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_conversion_event(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a single conversion event.
        # @param [String] name
        #   Required. The resource name of the conversion event to retrieve. Format:
        #   properties/`property`/conversionEvents/`conversion_event` Example: "properties/
        #   123/conversionEvents/456"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_conversion_event(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of conversion events in the specified parent property. Returns
        # an empty list if no conversion events are found.
        # @param [String] parent
        #   Required. The resource name of the parent property. Example: 'properties/123'
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200; (higher values will be
        #   coerced to the maximum)
        # @param [String] page_token
        #   A page token, received from a previous `ListConversionEvents` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListConversionEvents` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListConversionEventsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListConversionEventsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_conversion_events(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/conversionEvents', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListConversionEventsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListConversionEventsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Archives a CustomDimension on a property.
        # @param [String] name
        #   Required. The name of the CustomDimension to archive. Example format:
        #   properties/1234/customDimensions/5678
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest] google_analytics_admin_v1alpha_archive_custom_dimension_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def archive_property_custom_dimension(name, google_analytics_admin_v1alpha_archive_custom_dimension_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:archive', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_archive_custom_dimension_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a CustomDimension.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension] google_analytics_admin_v1alpha_custom_dimension_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_custom_dimension(parent, google_analytics_admin_v1alpha_custom_dimension_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/customDimensions', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension::Representation
          command.request_object = google_analytics_admin_v1alpha_custom_dimension_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single CustomDimension.
        # @param [String] name
        #   Required. The name of the CustomDimension to get. Example format: properties/
        #   1234/customDimensions/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_custom_dimension(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists CustomDimensions on a property.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200 (higher values will be
        #   coerced to the maximum).
        # @param [String] page_token
        #   A page token, received from a previous `ListCustomDimensions` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListCustomDimensions` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_custom_dimensions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/customDimensions', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a CustomDimension on a property.
        # @param [String] name
        #   Output only. Resource name for this CustomDimension resource. Format:
        #   properties/`property`/customDimensions/`customDimension`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension] google_analytics_admin_v1alpha_custom_dimension_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Omitted fields will not be updated.
        #   To replace the entire entity, use one path with the string "*" to match all
        #   fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_custom_dimension(name, google_analytics_admin_v1alpha_custom_dimension_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension::Representation
          command.request_object = google_analytics_admin_v1alpha_custom_dimension_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Archives a CustomMetric on a property.
        # @param [String] name
        #   Required. The name of the CustomMetric to archive. Example format: properties/
        #   1234/customMetrics/5678
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest] google_analytics_admin_v1alpha_archive_custom_metric_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def archive_property_custom_metric(name, google_analytics_admin_v1alpha_archive_custom_metric_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:archive', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_archive_custom_metric_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a CustomMetric.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric] google_analytics_admin_v1alpha_custom_metric_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_custom_metric(parent, google_analytics_admin_v1alpha_custom_metric_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/customMetrics', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric::Representation
          command.request_object = google_analytics_admin_v1alpha_custom_metric_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single CustomMetric.
        # @param [String] name
        #   Required. The name of the CustomMetric to get. Example format: properties/1234/
        #   customMetrics/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_custom_metric(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists CustomMetrics on a property.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200 (higher values will be
        #   coerced to the maximum).
        # @param [String] page_token
        #   A page token, received from a previous `ListCustomMetrics` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListCustomMetrics` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListCustomMetricsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListCustomMetricsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_custom_metrics(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/customMetrics', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListCustomMetricsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListCustomMetricsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a CustomMetric on a property.
        # @param [String] name
        #   Output only. Resource name for this CustomMetric resource. Format: properties/`
        #   property`/customMetrics/`customMetric`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric] google_analytics_admin_v1alpha_custom_metric_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Omitted fields will not be updated.
        #   To replace the entire entity, use one path with the string "*" to match all
        #   fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_custom_metric(name, google_analytics_admin_v1alpha_custom_metric_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric::Representation
          command.request_object = google_analytics_admin_v1alpha_custom_metric_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Approves a DisplayVideo360AdvertiserLinkProposal. The
        # DisplayVideo360AdvertiserLinkProposal will be deleted and a new
        # DisplayVideo360AdvertiserLink will be created.
        # @param [String] name
        #   Required. The name of the DisplayVideo360AdvertiserLinkProposal to approve.
        #   Example format: properties/1234/displayVideo360AdvertiserLinkProposals/5678
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest] google_analytics_admin_v1alpha_approve_display_video360_advertiser_link_proposal_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def approve_property_display_video360_advertiser_link_proposal(name, google_analytics_admin_v1alpha_approve_display_video360_advertiser_link_proposal_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:approve', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_approve_display_video360_advertiser_link_proposal_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels a DisplayVideo360AdvertiserLinkProposal. Cancelling can mean either: -
        # Declining a proposal initiated from Display & Video 360 - Withdrawing a
        # proposal initiated from Google Analytics After being cancelled, a proposal
        # will eventually be deleted automatically.
        # @param [String] name
        #   Required. The name of the DisplayVideo360AdvertiserLinkProposal to cancel.
        #   Example format: properties/1234/displayVideo360AdvertiserLinkProposals/5678
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest] google_analytics_admin_v1alpha_cancel_display_video360_advertiser_link_proposal_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_property_display_video360_advertiser_link_proposal(name, google_analytics_admin_v1alpha_cancel_display_video360_advertiser_link_proposal_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:cancel', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_cancel_display_video360_advertiser_link_proposal_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a DisplayVideo360AdvertiserLinkProposal.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal] google_analytics_admin_v1alpha_display_video360_advertiser_link_proposal_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_display_video360_advertiser_link_proposal(parent, google_analytics_admin_v1alpha_display_video360_advertiser_link_proposal_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/displayVideo360AdvertiserLinkProposals', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal::Representation
          command.request_object = google_analytics_admin_v1alpha_display_video360_advertiser_link_proposal_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a DisplayVideo360AdvertiserLinkProposal on a property. This can only
        # be used on cancelled proposals.
        # @param [String] name
        #   Required. The name of the DisplayVideo360AdvertiserLinkProposal to delete.
        #   Example format: properties/1234/displayVideo360AdvertiserLinkProposals/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_display_video360_advertiser_link_proposal(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single DisplayVideo360AdvertiserLinkProposal.
        # @param [String] name
        #   Required. The name of the DisplayVideo360AdvertiserLinkProposal to get.
        #   Example format: properties/1234/displayVideo360AdvertiserLinkProposals/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_display_video360_advertiser_link_proposal(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists DisplayVideo360AdvertiserLinkProposals on a property.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200 (higher values will be
        #   coerced to the maximum).
        # @param [String] page_token
        #   A page token, received from a previous `
        #   ListDisplayVideo360AdvertiserLinkProposals` call. Provide this to retrieve the
        #   subsequent page. When paginating, all other parameters provided to `
        #   ListDisplayVideo360AdvertiserLinkProposals` must match the call that provided
        #   the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_display_video360_advertiser_link_proposals(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/displayVideo360AdvertiserLinkProposals', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a DisplayVideo360AdvertiserLink. This can only be utilized by users
        # who have proper authorization both on the Google Analytics property and on the
        # Display & Video 360 advertiser. Users who do not have access to the Display &
        # Video 360 advertiser should instead seek to create a
        # DisplayVideo360LinkProposal.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink] google_analytics_admin_v1alpha_display_video360_advertiser_link_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_display_video360_advertiser_link(parent, google_analytics_admin_v1alpha_display_video360_advertiser_link_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/displayVideo360AdvertiserLinks', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink::Representation
          command.request_object = google_analytics_admin_v1alpha_display_video360_advertiser_link_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a DisplayVideo360AdvertiserLink on a property.
        # @param [String] name
        #   Required. The name of the DisplayVideo360AdvertiserLink to delete. Example
        #   format: properties/1234/displayVideo360AdvertiserLinks/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_display_video360_advertiser_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Look up a single DisplayVideo360AdvertiserLink
        # @param [String] name
        #   Required. The name of the DisplayVideo360AdvertiserLink to get. Example format:
        #   properties/1234/displayVideo360AdvertiserLink/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_display_video360_advertiser_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all DisplayVideo360AdvertiserLinks on a property.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200 (higher values will be
        #   coerced to the maximum).
        # @param [String] page_token
        #   A page token, received from a previous `ListDisplayVideo360AdvertiserLinks`
        #   call. Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListDisplayVideo360AdvertiserLinks` must match the
        #   call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_display_video360_advertiser_links(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/displayVideo360AdvertiserLinks', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a DisplayVideo360AdvertiserLink on a property.
        # @param [String] name
        #   Output only. The resource name for this DisplayVideo360AdvertiserLink resource.
        #   Format: properties/`propertyId`/displayVideo360AdvertiserLinks/`linkId` Note:
        #   linkId is not the Display & Video 360 Advertiser ID
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink] google_analytics_admin_v1alpha_display_video360_advertiser_link_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Omitted fields will not be updated.
        #   To replace the entire entity, use one path with the string "*" to match all
        #   fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_display_video360_advertiser_link(name, google_analytics_admin_v1alpha_display_video360_advertiser_link_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink::Representation
          command.request_object = google_analytics_admin_v1alpha_display_video360_advertiser_link_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a FirebaseLink. Properties can have at most one FirebaseLink.
        # @param [String] parent
        #   Required. Format: properties/`property_id` Example: properties/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink] google_analytics_admin_v1alpha_firebase_link_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_firebase_link(parent, google_analytics_admin_v1alpha_firebase_link_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/firebaseLinks', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink::Representation
          command.request_object = google_analytics_admin_v1alpha_firebase_link_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a FirebaseLink on a property
        # @param [String] name
        #   Required. Format: properties/`property_id`/firebaseLinks/`firebase_link_id`
        #   Example: properties/1234/firebaseLinks/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_firebase_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists FirebaseLinks on a property. Properties can have at most one
        # FirebaseLink.
        # @param [String] parent
        #   Required. Format: properties/`property_id` Example: properties/1234
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. The service may return fewer than
        #   this value, even if there are additional pages. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200; (higher values will be
        #   coerced to the maximum)
        # @param [String] page_token
        #   A page token, received from a previous `ListFirebaseLinks` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListProperties` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_firebase_links(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/firebaseLinks', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a GoogleAdsLink.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink] google_analytics_admin_v1alpha_google_ads_link_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_google_ads_link(parent, google_analytics_admin_v1alpha_google_ads_link_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/googleAdsLinks', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink::Representation
          command.request_object = google_analytics_admin_v1alpha_google_ads_link_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a GoogleAdsLink on a property
        # @param [String] name
        #   Required. Example format: properties/1234/googleAdsLinks/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_google_ads_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists GoogleAdsLinks on a property.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200 (higher values will be
        #   coerced to the maximum).
        # @param [String] page_token
        #   A page token, received from a previous `ListGoogleAdsLinks` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListGoogleAdsLinks` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_google_ads_links(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/googleAdsLinks', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a GoogleAdsLink on a property
        # @param [String] name
        #   Output only. Format: properties/`propertyId`/googleAdsLinks/`googleAdsLinkId`
        #   Note: googleAdsLinkId is not the Google Ads customer ID.
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink] google_analytics_admin_v1alpha_google_ads_link_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   e.g., "field_to_update"). Omitted fields will not be updated. To replace the
        #   entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_google_ads_link(name, google_analytics_admin_v1alpha_google_ads_link_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink::Representation
          command.request_object = google_analytics_admin_v1alpha_google_ads_link_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an iOS app stream on a property.
        # @param [String] name
        #   Required. The name of the iOS app data stream to delete. Format: properties/`
        #   property_id`/iosAppDataStreams/`stream_id` Example: "properties/123/
        #   iosAppDataStreams/456"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_ios_app_data_stream(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single IosAppDataStream
        # @param [String] name
        #   Required. The name of the iOS app data stream to lookup. Format: properties/`
        #   property_id`/iosAppDataStreams/`stream_id` Example: "properties/123/
        #   iosAppDataStreams/456"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaIosAppDataStream] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaIosAppDataStream]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_ios_app_data_stream(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaIosAppDataStream::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaIosAppDataStream
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns child iOS app data streams under the specified parent property. iOS
        # app data streams will be excluded if the caller does not have access. Returns
        # an empty list if no relevant iOS app data streams are found.
        # @param [String] parent
        #   Required. The name of the parent property. For example, to list results of app
        #   streams under the property with Id 123: "properties/123"
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200; (higher values will be
        #   coerced to the maximum)
        # @param [String] page_token
        #   A page token, received from a previous `ListIosAppDataStreams` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListIosAppDataStreams` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_ios_app_data_streams(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/iosAppDataStreams', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an iOS app stream on a property.
        # @param [String] name
        #   Output only. Resource name of this Data Stream. Format: properties/`
        #   property_id`/iosAppDataStreams/`stream_id` Example: "properties/1000/
        #   iosAppDataStreams/2000"
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaIosAppDataStream] google_analytics_admin_v1alpha_ios_app_data_stream_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   e.g., "field_to_update"). Omitted fields will not be updated. To replace the
        #   entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaIosAppDataStream] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaIosAppDataStream]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_ios_app_data_stream(name, google_analytics_admin_v1alpha_ios_app_data_stream_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaIosAppDataStream::Representation
          command.request_object = google_analytics_admin_v1alpha_ios_app_data_stream_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaIosAppDataStream::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaIosAppDataStream
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a measurement protocol secret.
        # @param [String] parent
        #   Required. The parent resource where this secret will be created. Any type of
        #   stream (WebDataStream, IosAppDataStream, AndroidAppDataStream) may be a parent.
        #   Format: properties/`property`/webDataStreams/`webDataStream`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret] google_analytics_admin_v1alpha_measurement_protocol_secret_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_ios_app_data_stream_measurement_protocol_secret(parent, google_analytics_admin_v1alpha_measurement_protocol_secret_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/measurementProtocolSecrets', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret::Representation
          command.request_object = google_analytics_admin_v1alpha_measurement_protocol_secret_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes target MeasurementProtocolSecret.
        # @param [String] name
        #   Required. The name of the MeasurementProtocolSecret to delete. Format:
        #   properties/`property`/webDataStreams/`webDataStream`/
        #   measurementProtocolSecrets/`measurementProtocolSecret` Note: Any type of
        #   stream (WebDataStream, IosAppDataStream, AndroidAppDataStream) may be a parent.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_ios_app_data_stream_measurement_protocol_secret(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single "GA4" MeasurementProtocolSecret.
        # @param [String] name
        #   Required. The name of the measurement protocol secret to lookup. Format:
        #   properties/`property`/webDataStreams/`webDataStream`/
        #   measurementProtocolSecrets/`measurementProtocolSecret` Note: Any type of
        #   stream (WebDataStream, IosAppDataStream, AndroidAppDataStream) may be a parent.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_ios_app_data_stream_measurement_protocol_secret(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns child MeasurementProtocolSecrets under the specified parent Property.
        # @param [String] parent
        #   Required. The resource name of the parent stream. Any type of stream (
        #   WebDataStream, IosAppDataStream, AndroidAppDataStream) may be a parent. Format:
        #   properties/`property`/webDataStreams/`webDataStream`/
        #   measurementProtocolSecrets
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 10
        #   resources will be returned. The maximum value is 10. Higher values will be
        #   coerced to the maximum.
        # @param [String] page_token
        #   A page token, received from a previous `ListMeasurementProtocolSecrets` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListMeasurementProtocolSecrets` must match the call
        #   that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_ios_app_data_stream_measurement_protocol_secrets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/measurementProtocolSecrets', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a measurement protocol secret.
        # @param [String] name
        #   Output only. Resource name of this secret. This secret may be a child of any
        #   type of stream. Format: properties/`property`/webDataStreams/`webDataStream`/
        #   measurementProtocolSecrets/`measurementProtocolSecret`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret] google_analytics_admin_v1alpha_measurement_protocol_secret_object
        # @param [String] update_mask
        #   The list of fields to be updated. Omitted fields will not be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_ios_app_data_stream_measurement_protocol_secret(name, google_analytics_admin_v1alpha_measurement_protocol_secret_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret::Representation
          command.request_object = google_analytics_admin_v1alpha_measurement_protocol_secret_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all user links on an account or property, including implicit ones that
        # come from effective permissions granted by groups or organization admin roles.
        # If a returned user link does not have direct permissions, they cannot be
        # removed from the account or property directly with the DeleteUserLink command.
        # They have to be removed from the group/etc that gives them permissions, which
        # is currently only usable/discoverable in the GA or GMP UIs.
        # @param [String] parent
        #   Required. Example format: accounts/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAuditUserLinksRequest] google_analytics_admin_v1alpha_audit_user_links_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAuditUserLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAuditUserLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def audit_property_user_link(parent, google_analytics_admin_v1alpha_audit_user_links_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userLinks:audit', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAuditUserLinksRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_audit_user_links_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAuditUserLinksResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAuditUserLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates information about multiple users' links to an account or property.
        # This method is transactional. If any UserLink cannot be created, none of the
        # UserLinks will be created.
        # @param [String] parent
        #   Required. The account or property that all user links in the request are for.
        #   This field is required. The parent field in the CreateUserLinkRequest messages
        #   must either be empty or match this field. Example format: accounts/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest] google_analytics_admin_v1alpha_batch_create_user_links_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_property_user_link_create(parent, google_analytics_admin_v1alpha_batch_create_user_links_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userLinks:batchCreate', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_batch_create_user_links_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes information about multiple users' links to an account or property.
        # @param [String] parent
        #   Required. The account or property that all user links in the request are for.
        #   The parent of all values for user link names to delete must match this field.
        #   Example format: accounts/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest] google_analytics_admin_v1alpha_batch_delete_user_links_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_property_user_link_delete(parent, google_analytics_admin_v1alpha_batch_delete_user_links_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userLinks:batchDelete', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_batch_delete_user_links_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about multiple users' links to an account or property.
        # @param [String] parent
        #   Required. The account or property that all user links in the request are for.
        #   The parent of all provided values for the 'names' field must match this field.
        #   Example format: accounts/1234
        # @param [Array<String>, String] names
        #   Required. The names of the user links to retrieve. A maximum of 1000 user
        #   links can be retrieved in a batch. Format: accounts/`accountId`/userLinks/`
        #   userLinkId`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_property_user_link_get(parent, names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/userLinks:batchGet', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['names'] = names unless names.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates information about multiple users' links to an account or property.
        # @param [String] parent
        #   Required. The account or property that all user links in the request are for.
        #   The parent field in the UpdateUserLinkRequest messages must either be empty or
        #   match this field. Example format: accounts/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest] google_analytics_admin_v1alpha_batch_update_user_links_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_property_user_link_update(parent, google_analytics_admin_v1alpha_batch_update_user_links_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userLinks:batchUpdate', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_batch_update_user_links_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a user link on an account or property. If the user with the specified
        # email already has permissions on the account or property, then the user's
        # existing permissions will be unioned with the permissions specified in the new
        # UserLink.
        # @param [String] parent
        #   Required. Example format: accounts/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink] google_analytics_admin_v1alpha_user_link_object
        # @param [Boolean] notify_new_user
        #   Optional. If set, then email the new user notifying them that they've been
        #   granted permissions to the resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_user_link(parent, google_analytics_admin_v1alpha_user_link_object = nil, notify_new_user: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userLinks', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink::Representation
          command.request_object = google_analytics_admin_v1alpha_user_link_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink
          command.params['parent'] = parent unless parent.nil?
          command.query['notifyNewUser'] = notify_new_user unless notify_new_user.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a user link on an account or property.
        # @param [String] name
        #   Required. Example format: accounts/1234/userLinks/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_user_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a user's link to an account or property.
        # @param [String] name
        #   Required. Example format: accounts/1234/userLinks/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_user_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all user links on an account or property.
        # @param [String] parent
        #   Required. Example format: accounts/1234
        # @param [Fixnum] page_size
        #   The maximum number of user links to return. The service may return fewer than
        #   this value. If unspecified, at most 200 user links will be returned. The
        #   maximum value is 500; values above 500 will be coerced to 500.
        # @param [String] page_token
        #   A page token, received from a previous `ListUserLinks` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListUserLinks` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListUserLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListUserLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_user_links(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/userLinks', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListUserLinksResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListUserLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a user link on an account or property.
        # @param [String] name
        #   Output only. Example format: properties/1234/userLinks/5678
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink] google_analytics_admin_v1alpha_user_link_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_user_link(name, google_analytics_admin_v1alpha_user_link_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink::Representation
          command.request_object = google_analytics_admin_v1alpha_user_link_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a web stream with the specified location and attributes.
        # @param [String] parent
        #   Required. The parent resource where this web data stream will be created.
        #   Format: properties/123
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaWebDataStream] google_analytics_admin_v1alpha_web_data_stream_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaWebDataStream] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaWebDataStream]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_web_data_stream(parent, google_analytics_admin_v1alpha_web_data_stream_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/webDataStreams', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaWebDataStream::Representation
          command.request_object = google_analytics_admin_v1alpha_web_data_stream_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaWebDataStream::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaWebDataStream
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a web stream on a property.
        # @param [String] name
        #   Required. The name of the web data stream to delete. Format: properties/`
        #   property_id`/webDataStreams/`stream_id` Example: "properties/123/
        #   webDataStreams/456"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_web_data_stream(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single WebDataStream
        # @param [String] name
        #   Required. The name of the web data stream to lookup. Format: properties/`
        #   property_id`/webDataStreams/`stream_id` Example: "properties/123/
        #   webDataStreams/456"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaWebDataStream] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaWebDataStream]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_web_data_stream(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaWebDataStream::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaWebDataStream
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the singleton enhanced measurement settings for this web stream. Note
        # that the stream must enable enhanced measurement for these settings to take
        # effect.
        # @param [String] name
        #   Required. The name of the settings to lookup. Format: properties/`property_id`/
        #   webDataStreams/`stream_id`/enhancedMeasurementSettings Example: "properties/
        #   1000/webDataStreams/2000/enhancedMeasurementSettings"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_web_data_stream_enhanced_measurement_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the Site Tag for the specified web stream. Site Tags are immutable
        # singletons.
        # @param [String] name
        #   Required. The name of the site tag to lookup. Note that site tags are
        #   singletons and do not have unique IDs. Format: properties/`property_id`/
        #   webDataStreams/`stream_id`/globalSiteTag Example: "properties/123/
        #   webDataStreams/456/globalSiteTag"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGlobalSiteTag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGlobalSiteTag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_web_data_stream_global_site_tag(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGlobalSiteTag::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGlobalSiteTag
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns child web data streams under the specified parent property. Web data
        # streams will be excluded if the caller does not have access. Returns an empty
        # list if no relevant web data streams are found.
        # @param [String] parent
        #   Required. The name of the parent property. For example, to list results of web
        #   streams under the property with Id 123: "properties/123"
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200; (higher values will be
        #   coerced to the maximum)
        # @param [String] page_token
        #   A page token, received from a previous `ListWebDataStreams` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListWebDataStreams` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_web_data_streams(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/webDataStreams', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a web stream on a property.
        # @param [String] name
        #   Output only. Resource name of this Data Stream. Format: properties/`
        #   property_id`/webDataStreams/`stream_id` Example: "properties/1000/
        #   webDataStreams/2000"
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaWebDataStream] google_analytics_admin_v1alpha_web_data_stream_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   e.g., "field_to_update"). Omitted fields will not be updated. To replace the
        #   entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaWebDataStream] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaWebDataStream]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_web_data_stream(name, google_analytics_admin_v1alpha_web_data_stream_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaWebDataStream::Representation
          command.request_object = google_analytics_admin_v1alpha_web_data_stream_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaWebDataStream::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaWebDataStream
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the singleton enhanced measurement settings for this web stream. Note
        # that the stream must enable enhanced measurement for these settings to take
        # effect.
        # @param [String] name
        #   Output only. Resource name of this Data Stream. Format: properties/`
        #   property_id`/webDataStreams/`stream_id`/enhancedMeasurementSettings Example: "
        #   properties/1000/webDataStreams/2000/enhancedMeasurementSettings"
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings] google_analytics_admin_v1alpha_enhanced_measurement_settings_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   e.g., "field_to_update"). Omitted fields will not be updated. To replace the
        #   entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_property_web_data_stream_enhanced_measurement_settings(name, google_analytics_admin_v1alpha_enhanced_measurement_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings::Representation
          command.request_object = google_analytics_admin_v1alpha_enhanced_measurement_settings_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a measurement protocol secret.
        # @param [String] parent
        #   Required. The parent resource where this secret will be created. Any type of
        #   stream (WebDataStream, IosAppDataStream, AndroidAppDataStream) may be a parent.
        #   Format: properties/`property`/webDataStreams/`webDataStream`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret] google_analytics_admin_v1alpha_measurement_protocol_secret_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_web_data_stream_measurement_protocol_secret(parent, google_analytics_admin_v1alpha_measurement_protocol_secret_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/measurementProtocolSecrets', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret::Representation
          command.request_object = google_analytics_admin_v1alpha_measurement_protocol_secret_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes target MeasurementProtocolSecret.
        # @param [String] name
        #   Required. The name of the MeasurementProtocolSecret to delete. Format:
        #   properties/`property`/webDataStreams/`webDataStream`/
        #   measurementProtocolSecrets/`measurementProtocolSecret` Note: Any type of
        #   stream (WebDataStream, IosAppDataStream, AndroidAppDataStream) may be a parent.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_web_data_stream_measurement_protocol_secret(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single "GA4" MeasurementProtocolSecret.
        # @param [String] name
        #   Required. The name of the measurement protocol secret to lookup. Format:
        #   properties/`property`/webDataStreams/`webDataStream`/
        #   measurementProtocolSecrets/`measurementProtocolSecret` Note: Any type of
        #   stream (WebDataStream, IosAppDataStream, AndroidAppDataStream) may be a parent.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_web_data_stream_measurement_protocol_secret(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns child MeasurementProtocolSecrets under the specified parent Property.
        # @param [String] parent
        #   Required. The resource name of the parent stream. Any type of stream (
        #   WebDataStream, IosAppDataStream, AndroidAppDataStream) may be a parent. Format:
        #   properties/`property`/webDataStreams/`webDataStream`/
        #   measurementProtocolSecrets
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 10
        #   resources will be returned. The maximum value is 10. Higher values will be
        #   coerced to the maximum.
        # @param [String] page_token
        #   A page token, received from a previous `ListMeasurementProtocolSecrets` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListMeasurementProtocolSecrets` must match the call
        #   that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_web_data_stream_measurement_protocol_secrets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/measurementProtocolSecrets', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a measurement protocol secret.
        # @param [String] name
        #   Output only. Resource name of this secret. This secret may be a child of any
        #   type of stream. Format: properties/`property`/webDataStreams/`webDataStream`/
        #   measurementProtocolSecrets/`measurementProtocolSecret`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret] google_analytics_admin_v1alpha_measurement_protocol_secret_object
        # @param [String] update_mask
        #   The list of fields to be updated. Omitted fields will not be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_web_data_stream_measurement_protocol_secret(name, google_analytics_admin_v1alpha_measurement_protocol_secret_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret::Representation
          command.request_object = google_analytics_admin_v1alpha_measurement_protocol_secret_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
