// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelAttributes {
    /// `artifact` namespace
    public enum artifact {
        /// `artifact.filename`: The human readable file name of the artifact, typically generated during build and release processes. Often includes the package name and version in the file name. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// This file name can also act as the [Package Name](https://slsa.dev/spec/v1.0/terminology#package-model) in cases where the package ecosystem maps accordingly. Additionally, the artifact [can be published](https://slsa.dev/spec/v1.0/terminology#software-supply-chain) for others, but that is not a guarantee. 
        /// 
        /// - Examples:
        ///     - `golang-binary-amd64-v0.1.0`
        ///     - `docker-image-amd64-v0.1.0`
        ///     - `release-1.tar.gz`
        ///     - `file-name-package.tar.gz`
        public static let filename = "artifact.filename"
    
        /// `artifact.hash`: The full [hash value (see glossary)](https://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.186-5.pdf), often found in checksum.txt on a release of the artifact and used to verify package integrity. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// The specific algorithm used to create the cryptographic hash value is not defined. In situations where an artifact has multiple cryptographic hashes, it is up to the implementer to choose which hash value to set here; this should be the most secure hash algorithm that is suitable for the situation and consistent with the corresponding attestation. The implementer can then provide the other hash values through an additional set of attribute extensions as they deem necessary. 
        /// 
        /// - Example: `9ff4c52759e2c4ac70b7d517bc7fcdc1cda631ca0045271ddd1b192544f8a3e9`
        public static let hash = "artifact.hash"
    
        /// `artifact.purl`: The [Package URL](https://github.com/package-url/purl-spec) of the [package artifact](https://slsa.dev/spec/v1.0/terminology#package-model) provides a standard way to identify and locate the packaged artifact. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Examples:
        ///     - `pkg:github/package-url/purl-spec@1209109710924`
        ///     - `pkg:npm/foo@12.12.3`
        public static let purl = "artifact.purl"
    
        /// `artifact.version`: The version of the artifact. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Examples:
        ///     - `v0.1.0`
        ///     - `1.2.1`
        ///     - `122691-build`
        public static let version = "artifact.version"
    
        /// `artifact.attestation` namespace
        public enum attestation {
            /// `artifact.attestation.filename`: The provenance filename of the built attestation which directly relates to the build artifact filename. This filename SHOULD accompany the artifact at publish time. See the [SLSA Relationship](https://slsa.dev/spec/v1.0/distributing-provenance#relationship-between-artifacts-and-attestations) specification for more information. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `golang-binary-amd64-v0.1.0.attestation`
            ///     - `docker-image-amd64-v0.1.0.intoto.json1`
            ///     - `release-1.tar.gz.attestation`
            ///     - `file-name-package.tar.gz.intoto.json1`
            public static let filename = "artifact.attestation.filename"
        
            /// `artifact.attestation.hash`: The full [hash value (see glossary)](https://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.186-5.pdf), of the built attestation. Some envelopes in the software attestation space also refer to this as the [digest](https://github.com/in-toto/attestation/blob/main/spec/README.md#in-toto-attestation-framework-spec). 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `1b31dfcd5b7f9267bf2ff47651df1cfb9147b9e4df1f335accf65b4cda498408`
            public static let hash = "artifact.attestation.hash"
        
            /// `artifact.attestation.id`: The id of the build [software attestation](https://slsa.dev/attestation-model). 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `123`
            public static let id = "artifact.attestation.id"
        
        
        }
    }
}