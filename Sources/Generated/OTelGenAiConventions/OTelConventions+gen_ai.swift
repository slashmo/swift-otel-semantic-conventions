// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelConventions {
    /// `gen_ai` namespace
    public enum gen_ai {
        /// `gen_ai.completion`: Deprecated, use Event API to report completions contents.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `[{'role': 'assistant', 'content': 'The capital of France is Paris.'}]`
        @available(*, deprecated, message: "Removed, no replacement at this time.")
        public static let completion = "gen_ai.completion"
    
        /// `gen_ai.prompt`: Deprecated, use Event API to report prompt contents.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `[{'role': 'user', 'content': 'What is the capital of France?'}]`
        @available(*, deprecated, message: "Removed, no replacement at this time.")
        public static let prompt = "gen_ai.prompt"
    
        /// `gen_ai.system`: The Generative AI product as identified by the client or server instrumentation.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: enum
        ///     - `openai`: OpenAI
        ///     - `vertex_ai`: Vertex AI
        ///     - `anthropic`: Anthropic
        ///     - `cohere`: Cohere
        ///     - `az.ai.inference`: Azure AI Inference
        ///     - `ibm.watsonx.ai`: IBM Watsonx AI
        ///     - `aws.bedrock`: AWS Bedrock
        /// 
        /// The `gen_ai.system` describes a family of GenAI models with specific model identified by `gen_ai.request.model` and `gen_ai.response.model` attributes.  The actual GenAI product may differ from the one identified by the client. For example, when using OpenAI client libraries to communicate with Mistral, the `gen_ai.system` is set to `openai` based on the instrumentation's best knowledge.  For custom model, a custom friendly name SHOULD be used. If none of these options apply, the `gen_ai.system` SHOULD be set to `_OTHER`. 
        /// 
        /// - Example: `openai`
        public static let system = "gen_ai.system"
    
        /// `gen_ai.openai` namespace
        public enum openai {
        
        
            /// `gen_ai.openai.request` namespace
            public enum request {
                /// `gen_ai.openai.request.response_format`: The response format that is requested.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `text`: Text response format
                ///     - `json_object`: JSON object response format
                ///     - `json_schema`: JSON schema response format
                /// 
                /// - Example: `json`
                public static let response_format = "gen_ai.openai.request.response_format"
            
                /// `gen_ai.openai.request.seed`: Requests with same seed value more likely to return same result.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `100`
                public static let seed = "gen_ai.openai.request.seed"
            
                /// `gen_ai.openai.request.service_tier`: The service tier requested. May be a specific tier, default, or auto.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `auto`: The system will utilize scale tier credits until they are exhausted.
                ///     - `default`: The system will utilize the default scale tier.
                /// 
                /// - Examples:
                ///     - `auto`
                ///     - `default`
                public static let service_tier = "gen_ai.openai.request.service_tier"
            
            
            }
        
            /// `gen_ai.openai.response` namespace
            public enum response {
                /// `gen_ai.openai.response.service_tier`: The service tier used for the response.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `scale`
                ///     - `default`
                public static let service_tier = "gen_ai.openai.response.service_tier"
            
                /// `gen_ai.openai.response.system_fingerprint`: A fingerprint to track any eventual change in the Generative AI environment.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `fp_44709d6fcb`
                public static let system_fingerprint = "gen_ai.openai.response.system_fingerprint"
            
            
            }
        }
    
        /// `gen_ai.operation` namespace
        public enum operation {
            /// `gen_ai.operation.name`: The name of the operation being performed.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `chat`: Chat completion operation such as [OpenAI Chat API](https://platform.openai.com/docs/api-reference/chat)
            ///     - `text_completion`: Text completions operation such as [OpenAI Completions API (Legacy)](https://platform.openai.com/docs/api-reference/completions)
            ///     - `embeddings`: Embeddings operation such as [OpenAI Create embeddings API](https://platform.openai.com/docs/api-reference/embeddings/create)
            /// 
            /// If one of the predefined values applies, but specific system uses a different name it's RECOMMENDED to document it in the semantic conventions for specific GenAI system and use system-specific name in the instrumentation. If a different name is not documented, instrumentation libraries SHOULD use applicable predefined value. 
            public static let name = "gen_ai.operation.name"
        
        
        }
    
        /// `gen_ai.request` namespace
        public enum request {
            /// `gen_ai.request.encoding_formats`: The encoding formats requested in an embeddings operation, if specified.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: stringArray
            /// 
            /// In some GenAI systems the encoding formats are called embedding types. Also, some GenAI systems only accept a single format per request. 
            public static let encoding_formats = "gen_ai.request.encoding_formats"
        
            /// `gen_ai.request.frequency_penalty`: The frequency penalty setting for the GenAI request.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: double
            /// 
            /// - Example: `0.1`
            public static let frequency_penalty = "gen_ai.request.frequency_penalty"
        
            /// `gen_ai.request.max_tokens`: The maximum number of tokens the model generates for a request.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Example: `100`
            public static let max_tokens = "gen_ai.request.max_tokens"
        
            /// `gen_ai.request.model`: The name of the GenAI model a request is being made to.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `gpt-4`
            public static let model = "gen_ai.request.model"
        
            /// `gen_ai.request.presence_penalty`: The presence penalty setting for the GenAI request.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: double
            /// 
            /// - Example: `0.1`
            public static let presence_penalty = "gen_ai.request.presence_penalty"
        
            /// `gen_ai.request.stop_sequences`: List of sequences that the model will use to stop generating further tokens.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: stringArray
            public static let stop_sequences = "gen_ai.request.stop_sequences"
        
            /// `gen_ai.request.temperature`: The temperature setting for the GenAI request.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: double
            /// 
            /// - Example: `0.0`
            public static let temperature = "gen_ai.request.temperature"
        
            /// `gen_ai.request.top_k`: The top_k sampling setting for the GenAI request.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: double
            /// 
            /// - Example: `1.0`
            public static let top_k = "gen_ai.request.top_k"
        
            /// `gen_ai.request.top_p`: The top_p sampling setting for the GenAI request.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: double
            /// 
            /// - Example: `1.0`
            public static let top_p = "gen_ai.request.top_p"
        
        
        }
    
        /// `gen_ai.response` namespace
        public enum response {
            /// `gen_ai.response.finish_reasons`: Array of reasons the model stopped generating tokens, corresponding to each generation received.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: stringArray
            public static let finish_reasons = "gen_ai.response.finish_reasons"
        
            /// `gen_ai.response.id`: The unique identifier for the completion.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `chatcmpl-123`
            public static let id = "gen_ai.response.id"
        
            /// `gen_ai.response.model`: The name of the model that generated the response.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `gpt-4-0613`
            public static let model = "gen_ai.response.model"
        
        
        }
    
        /// `gen_ai.token` namespace
        public enum token {
            /// `gen_ai.token.type`: The type of token being counted.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `input`: Input tokens (prompt, input, etc.)
            ///     - `output`: Output tokens (completion, response, etc.)
            /// 
            /// - Examples:
            ///     - `input`
            ///     - `output`
            public static let type = "gen_ai.token.type"
        
        
        }
    
        /// `gen_ai.usage` namespace
        public enum usage {
            /// `gen_ai.usage.completion_tokens`: Deprecated, use `gen_ai.usage.output_tokens` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Example: `42`
            @available(*, deprecated, message: "Replaced by `gen_ai.usage.output_tokens` attribute.")
            public static let completion_tokens = "gen_ai.usage.completion_tokens"
        
            /// `gen_ai.usage.input_tokens`: The number of tokens used in the GenAI input (prompt).
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Example: `100`
            public static let input_tokens = "gen_ai.usage.input_tokens"
        
            /// `gen_ai.usage.output_tokens`: The number of tokens used in the GenAI response (completion).
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Example: `180`
            public static let output_tokens = "gen_ai.usage.output_tokens"
        
            /// `gen_ai.usage.prompt_tokens`: Deprecated, use `gen_ai.usage.input_tokens` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Example: `42`
            @available(*, deprecated, message: "Replaced by `gen_ai.usage.input_tokens` attribute.")
            public static let prompt_tokens = "gen_ai.usage.prompt_tokens"
        
        
        }
    }
}