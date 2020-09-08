# O3API

This is an api generated from a OpenAPI 3.0 spec with [SwagGen](https://github.com/yonaskolb/SwagGen)

## Operation

Each operation lives under the `O3API` namespace and within an optional tag: `O3API(.tagName).operationId`. If an operation doesn't have an operationId one will be generated from the path and method.

Each operation has a nested `Request` and a `Response`, as well as a static `service` property

#### Service

This is the struct that contains the static information about an operation including it's id, tag, method, pre-modified path, and authorization requirements. It has a generic `ResponseType` type which maps to the `Response` type.
You shouldn't really need to interact with this service type.

#### Request

Each request is a subclass of `APIRequest` and has an `init` with a body param if it has a body, and a `options` struct for other url and path parameters. There is also a convenience init for passing parameters directly.
The `options` and `body` structs are both mutable so they can be modified before actually sending the request.

#### Response

The response is an enum of all the possible responses the request can return. it also contains getters for the `statusCode`, whether it was `successful`, and the actual decoded optional `success` response. If the operation only has one type of failure type there is also an optional `failure` type.

## Model
Models that are sent and returned from the API are mutable classes. Each model is `Equatable` and `Codable`.

`Required` properties are non optional and non-required are optional

All properties can be passed into the initializer, with `required` properties being mandatory.

If a model has `additionalProperties` it will have a subscript to access these by string

## APIClient
The `APIClient` is used to encode, authorize, send, monitor, and decode the requests. There is a `APIClient.default` that uses the default `baseURL` otherwise a custom one can be initialized:

```swift
public init(baseURL: String, sessionManager: SessionManager = .default, defaultHeaders: [String: String] = [:], behaviours: [RequestBehaviour] = [])
```

#### APIClient properties

- `baseURL`: The base url that every request `path` will be appended to
- `behaviours`: A list of [Request Behaviours](#requestbehaviour) to add to every request
- `sessionManager`: An `Alamofire.SessionManager` that can be customized
- `defaultHeaders`: Headers that will be applied to every request
- `decodingQueue`: The `DispatchQueue` to decode responses on

#### Making a request
To make a request first initialize a [Request](#request) and then pass it to `makeRequest`. The `complete` closure will be called with an `APIResponse`

```swift
func makeRequest<T>(_ request: APIRequest<T>, behaviours: [RequestBehaviour] = [], queue: DispatchQueue = DispatchQueue.main, complete: @escaping (APIResponse<T>) -> Void) -> Request? {
```

Example request (that is not neccessarily in this api):

```swift

let getUserRequest = O3API.User.GetUser.Request(id: 123)
let apiClient = APIClient.default

apiClient.makeRequest(getUserRequest) { apiResponse in
    switch apiResponse {
        case .result(let apiResponseValue):
        	if let user = apiResponseValue.success {
        		print("GetUser returned user \(user)")
        	} else {
        		print("GetUser returned \(apiResponseValue)")
        	}
        case .error(let apiError):
        	print("GetUser failed with \(apiError)")
    }
}
```

Each [Request](#request) also has a `makeRequest` convenience function that uses `O3API.shared`.

#### APIResponse
The `APIResponse` that gets passed to the completion closure contains the following properties:

- `request`: The original request
- `result`: A `Result` type either containing an `APIClientError` or the [Response](#response) of the request
- `urlRequest`: The `URLRequest` used to send the request
- `urlResponse`: The `HTTPURLResponse` that was returned by the request
- `data`: The `Data` returned by the request.
- `timeline`: The `Alamofire.Timeline` of the request which contains timing information.

#### Encoding and Decoding
Only JSON requests and responses are supported. These are encoded and decoded by `JSONEncoder` and `JSONDecoder` respectively, using Swift's `Codable` apis.
There are some options to control how invalid JSON is handled when decoding and these are available as static properties on `O3API`:

- `safeOptionalDecoding`: Whether to discard any errors when decoding optional properties. Defaults to `true`.
- `safeArrayDecoding`: Whether to remove invalid elements instead of throwing when decoding arrays. Defaults to `true`.

Dates are encoded and decoded differently according to the swagger date format. They use different `DateFormatter`'s that you can set.
- `date-time`
    - `DateTime.dateEncodingFormatter`: defaults to `yyyy-MM-dd'T'HH:mm:ss.Z`
    - `DateTime.dateDecodingFormatters`: an array of date formatters. The first one to decode successfully will be used
- `date`
    - `DateDay.dateFormatter`: defaults to `yyyy-MM-dd`

#### APIClientError
This is error enum that `APIResponse.result` may contain:

```swift
public enum APIClientError: Error {
    case unexpectedStatusCode(statusCode: Int, data: Data)
    case decodingError(DecodingError)
    case requestEncodingError(String)
    case validationError(String)
    case networkError(Error)
    case unknownError(Error)
}
```

#### RequestBehaviour
Request behaviours are used to modify, authorize, monitor or respond to requests. They can be added to the `APIClient.behaviours` for all requests, or they can passed into `makeRequest` for just that single request.

`RequestBehaviour` is a protocol you can conform to with each function being optional. As the behaviours must work across multiple different request types, they only have access to a typed erased `AnyRequest`.

```swift
public protocol RequestBehaviour {

    /// runs first and allows the requests to be modified. If modifying asynchronously use validate
    func modifyRequest(request: AnyRequest, urlRequest: URLRequest) -> URLRequest

    /// validates and modifies the request. complete must be called with either .success or .fail
    func validate(request: AnyRequest, urlRequest: URLRequest, complete: @escaping (RequestValidationResult) -> Void)

    /// called before request is sent
    func beforeSend(request: AnyRequest)

    /// called when request successfuly returns a 200 range response
    func onSuccess(request: AnyRequest, result: Any)

    /// called when request fails with an error. This will not be called if the request returns a known response even if the a status code is out of the 200 range
    func onFailure(request: AnyRequest, error: APIClientError)

    /// called if the request recieves a network response. This is not called if request fails validation or encoding
    func onResponse(request: AnyRequest, response: AnyResponse)
}
```

### Authorization
Each request has an optional `securityRequirement`. You can create a `RequestBehaviour` that checks this requirement and adds some form of authorization (usually via headers) in `validate` or `modifyRequest`. An alternative way is to set the `APIClient.defaultHeaders` which applies to all requests.

#### Reactive and Promises
To add support for a specific asynchronous library, just add an extension on `APIClient` and add a function that wraps the `makeRequest` function and converts from a closure based syntax to returning the object of choice (stream, future...ect)

## Models

- **O3APIActionSettings**
- **O3APIActionSettingsDTO**
- **O3APIAddApprovalDTO**
- **O3APIAddConstraintDTO**
- **O3APIAddDelayDTO**
- **O3APIAddDeliverableDTO**
- **O3APIAddDevelopmentStepDTO**
- **O3APIAddRiskDTO**
- **O3APIAddSubtaskDTO**
- **O3APIAddTaskDTO**
- **O3APIApplicationContextDTO**
- **O3APIApprovalDTO**
- **O3APIApprovalTypeDTO**
- **O3APIAssociationSettingDTO**
- **O3APIAutoAddWatcherSetting**
- **O3APIAutoCreatedApprovalItem**
- **O3APIAutoCreatedApprovalItems**
- **O3APIAutoCreatedConstraintItem**
- **O3APIAutoCreatedConstraintItems**
- **O3APIBaseDisplayAttribute**
- **O3APIBestPracticeCategoryMeasurementDefinition**
- **O3APIBestPracticeDTO**
- **O3APIBestPracticeMeasurementDTO**
- **O3APIBestPracticeMeasurementDefinitionDTO**
- **O3APIBestPracticeMeasurementResult**
- **O3APIBestPracticeRolePhaseUpdateDTO**
- **O3APIBestPracticeSettings**
- **O3APIBestPracticeTypeDTO**
- **O3APIBestPracticeTypeMeasurementTypeDTO**
- **O3APIBoardDTO**
- **O3APIBoardTaskDTO**
- **O3APIBoardTaskParams**
- **O3APIBulkEditDTO**
- **O3APIBulkEditOption**
- **O3APICWPReleaseDTO**
- **O3APICWPSettings**
- **O3APICategoryScore**
- **O3APIChartSummary**
- **O3APIColorFormattingRule**
- **O3APICommentDTO**
- **O3APIConstraintDTO**
- **O3APIConstraintSettings**
- **O3APIConstraintTypeDTO**
- **O3APIConstructionComponentDTO**
- **O3APIConstructionEquipmentDTO**
- **O3APICourseEnrollDTO**
- **O3APICoursePredecessorDTO**
- **O3APICourseUserUpdateDTO**
- **O3APIDashboardCollectionDTO**
- **O3APIDashboardCollectionMembershipDTO**
- **O3APIDashboardDTO**
- **O3APIDashboardListDTO**
- **O3APIDashboardSettings**
- **O3APIDashboardWidgetConfigurationDTO**
- **O3APIDashboardWidgetDTO**
- **O3APIDashboardWidgetLayoutDTO**
- **O3APIDataFormattingRuleRecordDTO**
- **O3APIDataRequirementSetting**
- **O3APIDelayDTO**
- **O3APIDeliverableDTO**
- **O3APIDemoSettings**
- **O3APIDetailFormConfigurationDTO**
- **O3APIDetailFormField**
- **O3APIDrawingDTO**
- **O3APIEnterpriseGoalCreateParams**
- **O3APIEnterpriseGoalDTO**
- **O3APIEnterpriseUserCreateParams**
- **O3APIEnterpriseUserDTO**
- **O3APIEntityFieldListDTO**
- **O3APIEntityMaskSetting**
- **O3APIEntitySettingsDTO**
- **O3APIEntityStatusDTO**
- **O3APIEntityStatusTransitionDTO**
- **O3APIFileUploadSettings**
- **O3APIFilterField**
- **O3APIFilterGroup**
- **O3APIFilterRule**
- **O3APIForgeModelShotStateDTO**
- **O3APIGetActionsParams**
- **O3APIGetApprovalTypesParams**
- **O3APIGetApprovalsParams**
- **O3APIGetAttachmentsParams**
- **O3APIGetCommentsParams**
- **O3APIGetConstraintTypesParams**
- **O3APIGetConstraintsParams**
- **O3APIGetDeliverablesParams**
- **O3APIGetEventLogsParams**
- **O3APIGetExecutionTasksParams**
- **O3APIGetReworkTaskParams**
- **O3APIGetRisksParams**
- **O3APIGetTasksParams**
- **O3APIGetWidgetDataDTO**
- **O3APIGridExportScheduleDTO**
- **O3APIGridExportScheduleUserDTO**
- **O3APIGridLayoutDTO**
- **O3APIIWPSettings**
- **O3APIInitiativeEnterpriseGoalDTO**
- **O3APIInitiativeGoalCreateParams**
- **O3APIInitiativeGoalDTO**
- **O3APIInitiativeUserCreateParams**
- **O3APIInitiativeUserDTO**
- **O3APIIwpBarcodeUpdateRequest**
- **O3APILoginDTO**
- **O3APILoginSuccessDTO**
- **O3APILookupDTO**
- **O3APINavTreeConfiguration**
- **O3APINavTreeNode**
- **O3APINewAssociationDTO**
- **O3APINotificationSubscriptionDTO**
- **O3APIO3FilterGroup**
- **O3APIPermissionCategoryDTO**
- **O3APIPermissionDTO**
- **O3APIPlantAdminUserDTO**
- **O3APIPlantAssetDTO**
- **O3APIPlantCompanyCreateParams**
- **O3APIPlantCompanyDTO**
- **O3APIPlantDTO**
- **O3APIPlantPermissions**
- **O3APIPlantUserCreateParams**
- **O3APIPlantUserDTO**
- **O3APIProgramEngagementCreateParams**
- **O3APIProgramEngagementDTO**
- **O3APIProgramInitiativeGoalDTO**
- **O3APIProgramProjectDTO**
- **O3APIProgramUserCreateParams**
- **O3APIProgramUserDTO**
- **O3APIProjectGeneralSettings**
- **O3APIProjectGeneralSettingsDTO**
- **O3APIProjectGoalCreateParams**
- **O3APIProjectGoalDTO**
- **O3APIProjectPhaseCreateParams**
- **O3APIProjectPhaseDTO**
- **O3APIProjectTeamGoalMeasurementDTO**
- **O3APIProjectTeamGoalTaskDTO**
- **O3APIProjectTeamLearningPathDTO**
- **O3APIProjectTeamMemberDTO**
- **O3APIProjectUserCreateParams**
- **O3APIProjectUserDTO**
- **O3APIRange**
- **O3APIRangeConfiguration**
- **O3APIRecentNavigationLink**
- **O3APIReportOptionsDTO**
- **O3APIResolutionNoteDTO**
- **O3APIRiskDTO**
- **O3APIRollupScoreParams**
- **O3APISAMLResponseDTO**
- **O3APISafetyObservationCategoryDTO**
- **O3APISafetyObservationDTO**
- **O3APISafetyObservationTypesDTO**
- **O3APISamlSettings**
- **O3APISearchModel**
- **O3APISegmentDTO**
- **O3APISettingsField**
- **O3APIShareDTO**
- **O3APISignUpOptions**
- **O3APISimpleListDTO**
- **O3APISimpleListStringDTO**
- **O3APISwaggerDataSourceResultLoginSuccessDTO**
- **O3APISwaggerDataSourceResultNavTreeConfiguration**
- **O3APISwaggerDataSourceResultViewInstallationWorkPackage**
- **O3APITaskCloneOptionsDTO**
- **O3APITaskSortOrderDTO**
- **O3APITimeBlock**
- **O3APIToolDTO**
- **O3APIToolTimeObservationDTO**
- **O3APIToolTimeObservationSettingDTO**
- **O3APIToolTimeReadingDTO**
- **O3APIToolTimeSettings**
- **O3APIToolTimeSettingsDTO**
- **O3APITrainingLearningPathDTO**
- **O3APITrainingLearningPathGroupCourseDTO**
- **O3APITrainingLearningPathGroupDTO**
- **O3APIUrgencySettings**
- **O3APIUsageAnalyticsEventDTO**
- **O3APIUserAccountDTO**
- **O3APIUserAccountDataCompletenessOptions**
- **O3APIUserDefinedScoreBreakdown**
- **O3APIUserDefinedScoringCategory**
- **O3APIUserDefinedScoringOptions**
- **O3APIUserGroupUserDTO**
- **O3APIUserPreferences**
- **O3APIUserProfileDTO**
- **O3APIValidationSettings**
- **O3APIViewConstructionWorkPackageRelease**
- **O3APIViewInstallationWorkPackage**
- **O3APIViewProject**
- **O3APIViewUserAccount**
- **O3APIWorkCenterDTO**
- **O3APIWorkDaySettings**
- **O3APIWorkPackageExecutionTaskDTO**
- **O3APIWorkPackageExecutionTaskStepDTO**
- **O3APIWorkPackageExecutionTaskTypeDTO**
- **O3APIWorkPackageExecutionTaskTypeStepDTO**
- **O3APIWorkPackageResourceDTO**

## Requests

- **O3API.Authentication**
	- **AuthenticationLogin**: POST `/login`
	- **AuthenticationSelectProject**: POST `/selectproject/{projectid}`
- **O3API.IWPs**
	- **IWPsListIWPs**: GET `/api/iwps/apilist/{projectid}`
- **O3API.Projects**
	- **ProjectsListProjects**: GET `/api/projects/apilist`
