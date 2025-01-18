// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelAttributes {
    /// `oci` namespace
    public enum oci {
    
    
        /// `oci.manifest` namespace
        public enum manifest {
            /// `oci.manifest.digest`: The digest of the OCI image manifest. For container images specifically is the digest by which the container image is known. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// Follows [OCI Image Manifest Specification](https://github.com/opencontainers/image-spec/blob/main/manifest.md), and specifically the [Digest property](https://github.com/opencontainers/image-spec/blob/main/descriptor.md#digests). An example can be found in [Example Image Manifest](https://docs.docker.com/registry/spec/manifest-v2-2/#example-image-manifest). 
            /// 
            /// - Example: `sha256:e4ca62c0d62f3e886e684806dfe9d4e0cda60d54986898173c1083856cfda0f4`
            public static let digest = "oci.manifest.digest"
        
        
        }
    }
}