//
//  Copyright (C) 2021 Twilio, Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

protocol TwilioLiveAudioClassSpeakerSourceDelegate: AnyObject {
    func speakerSourceDidConnect(_ speakerSource: TwilioLiveAudioClassSpeakerSource)
    func speakerSource(_ speakerSource: TwilioLiveAudioClassSpeakerSource, didDisconnectWithError error: Error)
    func speakerSource(_ speakerSource: TwilioLiveAudioClassSpeakerSource, didAddSpeaker speaker: TwilioLiveAudioClassSpeaker)
    func speakerSource(_ speakerSource: TwilioLiveAudioClassSpeakerSource, didRemoveSpeaker speaker: TwilioLiveAudioClassSpeaker)
    func speakerSource(_ speakerSource: TwilioLiveAudioClassSpeakerSource, didUpdateSpeaker speaker: TwilioLiveAudioClassSpeaker)
}

protocol TwilioLiveAudioClassSpeakerSource: AnyObject {
    var speakers: [TwilioLiveAudioClassSpeaker] { get }
}
