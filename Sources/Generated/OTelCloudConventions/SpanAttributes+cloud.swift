// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `cloud` namespace
    public var cloud: CloudAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct CloudAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `cloud.availability_zone`: Cloud regions often have multiple, isolated locations known as zones to increase availability. Availability zone represents the zone where the resource is running. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// Availability zones are called "zones" on Alibaba Cloud and Google Cloud. 
            /// 
            /// - Example: `us-east-1c`
            public var availability_zone: Self.Key<String> { .init(name: OTelAttributes.cloud.availability_zone) }
    
            /// `cloud.platform`: The cloud platform in use. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `alibaba_cloud_ecs`: Alibaba Cloud Elastic Compute Service
            ///     - `alibaba_cloud_fc`: Alibaba Cloud Function Compute
            ///     - `alibaba_cloud_openshift`: Red Hat OpenShift on Alibaba Cloud
            ///     - `aws_ec2`: AWS Elastic Compute Cloud
            ///     - `aws_ecs`: AWS Elastic Container Service
            ///     - `aws_eks`: AWS Elastic Kubernetes Service
            ///     - `aws_lambda`: AWS Lambda
            ///     - `aws_elastic_beanstalk`: AWS Elastic Beanstalk
            ///     - `aws_app_runner`: AWS App Runner
            ///     - `aws_openshift`: Red Hat OpenShift on AWS (ROSA)
            ///     - `azure_vm`: Azure Virtual Machines
            ///     - `azure_container_apps`: Azure Container Apps
            ///     - `azure_container_instances`: Azure Container Instances
            ///     - `azure_aks`: Azure Kubernetes Service
            ///     - `azure_functions`: Azure Functions
            ///     - `azure_app_service`: Azure App Service
            ///     - `azure_openshift`: Azure Red Hat OpenShift
            ///     - `gcp_bare_metal_solution`: Google Bare Metal Solution (BMS)
            ///     - `gcp_compute_engine`: Google Cloud Compute Engine (GCE)
            ///     - `gcp_cloud_run`: Google Cloud Run
            ///     - `gcp_kubernetes_engine`: Google Cloud Kubernetes Engine (GKE)
            ///     - `gcp_cloud_functions`: Google Cloud Functions (GCF)
            ///     - `gcp_app_engine`: Google Cloud App Engine (GAE)
            ///     - `gcp_openshift`: Red Hat OpenShift on Google Cloud
            ///     - `ibm_cloud_openshift`: Red Hat OpenShift on IBM Cloud
            ///     - `tencent_cloud_cvm`: Tencent Cloud Cloud Virtual Machine (CVM)
            ///     - `tencent_cloud_eks`: Tencent Cloud Elastic Kubernetes Service (EKS)
            ///     - `tencent_cloud_scf`: Tencent Cloud Serverless Cloud Function (SCF)
            /// 
            /// The prefix of the service SHOULD match the one specified in `cloud.provider`. 
            public var platform: Self.Key<PlatformEnum> { .init(name: OTelAttributes.cloud.platform) }
            
            public enum PlatformEnum: String, SpanAttributeConvertible {
                /// `alibaba_cloud_ecs`: Alibaba Cloud Elastic Compute Service
                case alibaba_cloud_ecs = "alibaba_cloud_ecs"
                /// `alibaba_cloud_fc`: Alibaba Cloud Function Compute
                case alibaba_cloud_fc = "alibaba_cloud_fc"
                /// `alibaba_cloud_openshift`: Red Hat OpenShift on Alibaba Cloud
                case alibaba_cloud_openshift = "alibaba_cloud_openshift"
                /// `aws_ec2`: AWS Elastic Compute Cloud
                case aws_ec2 = "aws_ec2"
                /// `aws_ecs`: AWS Elastic Container Service
                case aws_ecs = "aws_ecs"
                /// `aws_eks`: AWS Elastic Kubernetes Service
                case aws_eks = "aws_eks"
                /// `aws_lambda`: AWS Lambda
                case aws_lambda = "aws_lambda"
                /// `aws_elastic_beanstalk`: AWS Elastic Beanstalk
                case aws_elastic_beanstalk = "aws_elastic_beanstalk"
                /// `aws_app_runner`: AWS App Runner
                case aws_app_runner = "aws_app_runner"
                /// `aws_openshift`: Red Hat OpenShift on AWS (ROSA)
                case aws_openshift = "aws_openshift"
                /// `azure_vm`: Azure Virtual Machines
                case azure_vm = "azure_vm"
                /// `azure_container_apps`: Azure Container Apps
                case azure_container_apps = "azure_container_apps"
                /// `azure_container_instances`: Azure Container Instances
                case azure_container_instances = "azure_container_instances"
                /// `azure_aks`: Azure Kubernetes Service
                case azure_aks = "azure_aks"
                /// `azure_functions`: Azure Functions
                case azure_functions = "azure_functions"
                /// `azure_app_service`: Azure App Service
                case azure_app_service = "azure_app_service"
                /// `azure_openshift`: Azure Red Hat OpenShift
                case azure_openshift = "azure_openshift"
                /// `gcp_bare_metal_solution`: Google Bare Metal Solution (BMS)
                case gcp_bare_metal_solution = "gcp_bare_metal_solution"
                /// `gcp_compute_engine`: Google Cloud Compute Engine (GCE)
                case gcp_compute_engine = "gcp_compute_engine"
                /// `gcp_cloud_run`: Google Cloud Run
                case gcp_cloud_run = "gcp_cloud_run"
                /// `gcp_kubernetes_engine`: Google Cloud Kubernetes Engine (GKE)
                case gcp_kubernetes_engine = "gcp_kubernetes_engine"
                /// `gcp_cloud_functions`: Google Cloud Functions (GCF)
                case gcp_cloud_functions = "gcp_cloud_functions"
                /// `gcp_app_engine`: Google Cloud App Engine (GAE)
                case gcp_app_engine = "gcp_app_engine"
                /// `gcp_openshift`: Red Hat OpenShift on Google Cloud
                case gcp_openshift = "gcp_openshift"
                /// `ibm_cloud_openshift`: Red Hat OpenShift on IBM Cloud
                case ibm_cloud_openshift = "ibm_cloud_openshift"
                /// `tencent_cloud_cvm`: Tencent Cloud Cloud Virtual Machine (CVM)
                case tencent_cloud_cvm = "tencent_cloud_cvm"
                /// `tencent_cloud_eks`: Tencent Cloud Elastic Kubernetes Service (EKS)
                case tencent_cloud_eks = "tencent_cloud_eks"
                /// `tencent_cloud_scf`: Tencent Cloud Serverless Cloud Function (SCF)
                case tencent_cloud_scf = "tencent_cloud_scf"
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
    
            /// `cloud.provider`: Name of the cloud provider. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `alibaba_cloud`: Alibaba Cloud
            ///     - `aws`: Amazon Web Services
            ///     - `azure`: Microsoft Azure
            ///     - `gcp`: Google Cloud Platform
            ///     - `heroku`: Heroku Platform as a Service
            ///     - `ibm_cloud`: IBM Cloud
            ///     - `tencent_cloud`: Tencent Cloud
            public var provider: Self.Key<ProviderEnum> { .init(name: OTelAttributes.cloud.provider) }
            
            public enum ProviderEnum: String, SpanAttributeConvertible {
                /// `alibaba_cloud`: Alibaba Cloud
                case alibaba_cloud = "alibaba_cloud"
                /// `aws`: Amazon Web Services
                case aws = "aws"
                /// `azure`: Microsoft Azure
                case azure = "azure"
                /// `gcp`: Google Cloud Platform
                case gcp = "gcp"
                /// `heroku`: Heroku Platform as a Service
                case heroku = "heroku"
                /// `ibm_cloud`: IBM Cloud
                case ibm_cloud = "ibm_cloud"
                /// `tencent_cloud`: Tencent Cloud
                case tencent_cloud = "tencent_cloud"
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
    
            /// `cloud.region`: The geographical region the resource is running. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// Refer to your provider's docs to see the available regions, for example [Alibaba Cloud regions](https://www.alibabacloud.com/help/doc-detail/40654.htm), [AWS regions](https://aws.amazon.com/about-aws/global-infrastructure/regions_az/), [Azure regions](https://azure.microsoft.com/global-infrastructure/geographies/), [Google Cloud regions](https://cloud.google.com/about/locations), or [Tencent Cloud regions](https://www.tencentcloud.com/document/product/213/6091). 
            /// 
            /// - Examples:
            ///     - `us-central1`
            ///     - `us-east-1`
            public var region: Self.Key<String> { .init(name: OTelAttributes.cloud.region) }
    
            /// `cloud.resource_id`: Cloud provider-specific native identifier of the monitored cloud resource (e.g. an [ARN](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) on AWS, a [fully qualified resource ID](https://learn.microsoft.com/rest/api/resources/resources/get-by-id) on Azure, a [full resource name](https://cloud.google.com/apis/design/resource_names#full_resource_name) on GCP) 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// On some cloud providers, it may not be possible to determine the full ID at startup, so it may be necessary to set `cloud.resource_id` as a span attribute instead.  The exact value to use for `cloud.resource_id` depends on the cloud provider. The following well-known definitions MUST be used if you set this attribute and they apply:  - **AWS Lambda:** The function [ARN](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).   Take care not to use the "invoked ARN" directly but replace any   [alias suffix](https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html)   with the resolved function version, as the same runtime instance may be invocable with   multiple different aliases. - **GCP:** The [URI of the resource](https://cloud.google.com/iam/docs/full-resource-names) - **Azure:** The [Fully Qualified Resource ID](https://docs.microsoft.com/rest/api/resources/resources/get-by-id) of the invoked function,   *not* the function app, having the form   `/subscriptions/<SUBSCRIPTION_GUID>/resourceGroups/<RG>/providers/Microsoft.Web/sites/<FUNCAPP>/functions/<FUNC>`.   This means that a span attribute MUST be used, as an Azure function app can host multiple functions that would usually share   a TracerProvider. 
            /// 
            /// - Examples:
            ///     - `arn:aws:lambda:REGION:ACCOUNT_ID:function:my-function`
            ///     - `//run.googleapis.com/projects/PROJECT_ID/locations/LOCATION_ID/services/SERVICE_ID`
            ///     - `/subscriptions/<SUBSCRIPTION_GUID>/resourceGroups/<RG>/providers/Microsoft.Web/sites/<FUNCAPP>/functions/<FUNC>`
            public var resource_id: Self.Key<String> { .init(name: OTelAttributes.cloud.resource_id) }
        }
    
        /// `cloud.account` namespace
        public var account: AccountAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct AccountAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `cloud.account.id`: The cloud account ID the resource is assigned to. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `111111111111`
                ///     - `opentelemetry`
                public var id: Self.Key<String> { .init(name: OTelAttributes.cloud.account.id) }
            }
        
        
        }
    }
}