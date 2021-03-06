/*
 Copyright 2020 Adobe. All rights reserved.
 This file is licensed to you under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License. You may obtain a copy
 of the License at http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software distributed under
 the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR REPRESENTATIONS
 OF ANY KIND, either express or implied. See the License for the specific language
 governing permissions and limitations under the License.
 */

import Foundation

/// Defines a platform service to be used to initialize `DataQueue` objects
public protocol DataQueueService {
    static var shared: DataQueueService { get }

    /// Initialize a `DataQueue` object
    /// - Parameter name: the label you assigned to the `DataQueue` at creation time.
    /// - Returns: the object of `DataQueue`, return false if failed to create an object
    func getDataQueue(label: String) -> DataQueue?
}
