Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E087D3EAAA9
	for <lists+usrp-users@lfdr.de>; Thu, 12 Aug 2021 21:09:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8BE14383F46
	for <lists+usrp-users@lfdr.de>; Thu, 12 Aug 2021 15:09:35 -0400 (EDT)
Received: from smtp8.emailarray.com (smtp8.emailarray.com [65.39.216.67])
	by mm2.emwd.com (Postfix) with ESMTPS id 81DF7383B2D
	for <usrp-users@lists.ettus.com>; Thu, 12 Aug 2021 15:08:54 -0400 (EDT)
Received: (qmail 66971 invoked by uid 89); 12 Aug 2021 19:08:51 -0000
Received: from unknown (HELO ?10.10.51.195?) (cGhpbGlwQG9wZW5zZHIuY29tQDk2LjgyLjE0LjE2OQ==) (POLARISLOCAL)  
  by smtp8.emailarray.com with SMTP; 12 Aug 2021 19:08:51 -0000
To: Michael Dickens <michael.dickens@ettus.com>,
 USRP list <usrp-users@lists.ettus.com>
References: <c6aa89dd-f347-6094-3b6b-319b506faadf@comcast.net>
 <E0638E2A-C2D8-4258-A334-001D11E67F7F@gmail.com>
 <CAGNhwTOCg=9kne-5jcW3PRGOJaov-3c+obt0didmw0PQmVA=TQ@mail.gmail.com>
 <CACwKM9L2b0o5aLRRVCwgcOVAa+HV_J+fhheTNbMOJJEC6J+wwQ@mail.gmail.com>
 <6113D9AA.3060909@gmail.com>
 <CACwKM9+E4=q-UHCF6YxCxd+noszB+eHrkErc0_42x2Fs76A03w@mail.gmail.com>
 <6113E069.1090300@gmail.com>
 <CACwKM9KX4g_XpCtP8YRjYZucuinyNosJoH6e_KRukf=c3wpxng@mail.gmail.com>
 <CACwKM9LEE7LtFeS-e1LEzOZ1o64ZcttwZ+YTPc6GQzhQ9xbkAA@mail.gmail.com>
 <CACwKM9KH5OVWHAEsdGH0=c7oRMoOQ7f5V+3-o+kM0Lp4ZnUxsw@mail.gmail.com>
 <daec4724-2664-bfcc-9545-8f83ebc28ce5@comcast.net>
 <CAGNhwTONg2LfTpe_DB5Rbqam_mgLdF5akyaxZVh0YxKyj_uF-Q@mail.gmail.com>
From: Philip Balister <philip@balister.org>
Message-ID: <5d70e8dc-d025-5111-b4ab-c22ecc27b255@balister.org>
Date: Thu, 12 Aug 2021 15:08:50 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAGNhwTONg2LfTpe_DB5Rbqam_mgLdF5akyaxZVh0YxKyj_uF-Q@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: POEZ4A4JFG6TV6VUAG2IALA2CW4H7CAL
X-Message-ID-Hash: POEZ4A4JFG6TV6VUAG2IALA2CW4H7CAL
X-MailFrom: philip@balister.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B2XX radios don't continue on overflows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/POEZ4A4JFG6TV6VUAG2IALA2CW4H7CAL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Any chance this will fix the E3xx stalls in network mode from a while ago?

Philip

On 8/11/21 3:37 PM, Michael Dickens wrote:
> For completion here:
> 
> This is topic now a public UHD issue :
> https://github.com/EttusResearch/uhd/issues/475
> 
> R&D's Michael West replied there "We are aware of the issue and already
> have a fix in progress. It should be available within 2-4 weeks."
> 
> On Wed, Aug 11, 2021 at 2:31 PM Ron Economos <w6rz@comcast.net> wrote:
> 
>> Here's what's working for me.
>>
>> 1) git clone https://github.com/EttusResearch/uhd.git
>>
>> 2) git checkout v4.0.0.0 -b tmp
>>
>> 3) edit the file host/lib/usrp/cores/rx_vita_core_3000.cpp and apply the
>> one line patch in the correct place (before the comment "// issue the
>> stream command").
>>
>>         _continuous_streaming = stream_cmd.stream_mode
>>                                 ==
>> stream_cmd_t::STREAM_MODE_START_CONTINUOUS;
>>
>> 4) git diff
>>
>> If you edited the file correctly, you should see:
>>
>> diff --git a/host/lib/usrp/cores/rx_vita_core_3000.cpp
>> b/host/lib/usrp/cores/rx_vita_core_3000.cpp
>> index 4b09f75fd..368ae8e0a 100644
>> --- a/host/lib/usrp/cores/rx_vita_core_3000.cpp
>> +++ b/host/lib/usrp/cores/rx_vita_core_3000.cpp
>> @@ -117,6 +117,9 @@ struct rx_vita_core_3000_impl : rx_vita_core_3000
>>          cmd_word |= uint32_t((inst_stop) ? 1 : 0) << 28;
>>          cmd_word |= (inst_samps) ? stream_cmd.num_samps : ((inst_stop) ?
>> 0 : 1);
>>
>> +        _continuous_streaming = stream_cmd.stream_mode
>> +                                ==
>> stream_cmd_t::STREAM_MODE_START_CONTINUOUS;
>> +
>>          // issue the stream command
>>          _iface->poke32(REG_CTRL_CMD, cmd_word);
>>          const uint64_t ticks =
>>
>> 5) build as usual
>>
>> Just because the patch is in 4.1.0.0 and 4.1.0.1, doesn't mean they are
>> fixed. Something else could be broken that causes the same issue.
>>
>> Ron
>> On 8/11/21 9:39 AM, Paul Atreides wrote:
>>
>> just uninstalled and changed to origin/UHD4.1 and i have the same issue.
>> On branch UHD-4.1
>> Your branch is up to date with 'origin/UHD-4.1'.
>>
>> On Wed, Aug 11, 2021 at 12:23 PM Paul Atreides <maud.dib1984@gmail.com>
>> wrote:
>>
>>> just built uhd systemwide from source. no pybombs environment. same issue
>>> rx_benchmark terminates after the first dropped sample.
>>> maybe the patch didn't make it? or i'm on the wrong branch?
>>> i ran git checkout v4.1.0.1 then the regular dance
>>>
>>> ~/uhd$ git status
>>> HEAD detached at v4.1.0.1
>>> nothing to commit, working tree clean
>>>
>>> cd uhd/host
>>> mkdir build
>>> cd build
>>> cmake ../ (no errors or exclusions other than DPDK)
>>> make -j($nproc)
>>> sudo make install
>>> sudo ldconfig
>>>
>>>
>>>
>>> uhd/host/build/examples/./rx_samples_to_file --rate 40e6 --gain 40.0
>>> --freq 915e6 --bw 36e6 --progress --file testfile.bin --continue --duration
>>> 20
>>>
>>> Creating the usrp device with: ...
>>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>>> UHD_4.1.0.HEAD-0-gf633b497
>>> [INFO] [B200] Detected Device: B210
>>> [INFO] [B200] Operating over USB 3.
>>> [INFO] [B200] Detecting internal GPSDO....
>>> [INFO] [GPS] Found an internal GPSDO: GPSTCXO, Firmware Rev 0.929b
>>> [INFO] [B200] Initialize CODEC control...
>>> [INFO] [B200] Initialize Radio control...
>>> [INFO] [B200] Performing register loopback test...
>>> [INFO] [B200] Register loopback test passed
>>> [INFO] [B200] Performing register loopback test...
>>> [INFO] [B200] Register loopback test passed
>>> [INFO] [B200] Setting master clock rate selection to 'automatic'.
>>> [INFO] [B200] Asking for clock rate 16.000000 MHz...
>>> [INFO] [B200] Actually got clock rate 16.000000 MHz.
>>> Using Device: Single USRP:
>>>   Device: B-Series Device
>>>   Mboard 0: B210
>>>   RX Channel: 0
>>>     RX DSP: 0
>>>     RX Dboard: A
>>>     RX Subdev: FE-RX2
>>>   RX Channel: 1
>>>     RX DSP: 1
>>>     RX Dboard: A
>>>     RX Subdev: FE-RX1
>>>   TX Channel: 0
>>>     TX DSP: 0
>>>     TX Dboard: A
>>>     TX Subdev: FE-TX2
>>>   TX Channel: 1
>>>     TX DSP: 1
>>>     TX Dboard: A
>>>     TX Subdev: FE-TX1
>>>
>>> Setting RX Rate: 40.000000 Msps...
>>> [INFO] [B200] Asking for clock rate 40.000000 MHz...
>>> [INFO] [B200] Actually got clock rate 40.000000 MHz.
>>> Actual RX Rate: 40.000000 Msps...
>>>
>>> Setting RX Freq: 915.000000 MHz...
>>> Setting RX LO Offset: 0.000000 MHz...
>>> Actual RX Freq: 915.000000 MHz...
>>>
>>> Setting RX Gain: 40.000000 dB...
>>> Actual RX Gain: 40.000000 dB...
>>>
>>> Setting RX Bandwidth: 36.000000 MHz...
>>> Actual RX Bandwidth: 36.000000 MHz...
>>>
>>> Waiting for "lo_locked": ++++++++++ locked.
>>>
>>> Press Ctrl + C to stop streaming...
>>> 40.0125 Msps
>>> 39.9994 Msps
>>> 39.9995 Msps
>>> OGot an overflow indication. Please consider the following:
>>>   Your write medium must sustain a rate of 160.000000MB/s.
>>>   Dropped samples will not be written to the file.
>>>   Please modify this example for your purposes.
>>>   This message will not appear again.
>>> Timeout while streaming
>>>
>>> Done!
>>>
>>> On Wed, Aug 11, 2021 at 10:42 AM Paul Atreides <maud.dib1984@gmail.com>
>>> wrote:
>>>
>>>> right on. thanks marcus.
>>>> i'm going to try a regular source build instead of pybombs and see if
>>>> that fixes it (he said for the 200th time in his career).
>>>> i just wanted 2 dev environments for gnuradio and that worked really
>>>> well for 3.7/3.8. if you have any suggestions i'm open to that.
>>>>
>>>> i'll keep you guys posted and thanks again for helping.
>>>>
>>>>
>>>> On Wed, Aug 11, 2021 at 10:36 AM Marcus D. Leech <
>>>> patchvonbraun@gmail.com> wrote:
>>>>
>>>>> On 08/11/2021 10:20 AM, Paul Atreides wrote:
>>>>>
>>>>> right. i tried 4.1 first, then master then rolled back to 4.0. they all
>>>>> did the same thing.
>>>>> according to micheal's post above the patch is applied to 4.0 master.
>>>>> the latest UHD-4.0 rev is here
>>>>> <https://github.com/EttusResearch/uhd/commit/0d184ff412c2710c15c0237711ab57c5033692a2>
>>>>> (0d184ff)
>>>>> this is my output
>>>>> UHD_4.0.0.0-193-g0d184ff4
>>>>>
>>>>>
>>>>> The patch is definitely in 4.1.0.0 and 4.1.0.1
>>>>>
>>>>>
>>>>>
>>>>> On Wed, Aug 11, 2021 at 10:07 AM Marcus D. Leech <
>>>>> patchvonbraun@gmail.com> wrote:
>>>>>
>>>>>> On 08/11/2021 10:03 AM, Paul Atreides wrote:
>>>>>>
>>>>>> Ok, then what else could it be? it's the identical behavior to the
>>>>>> report ed bug.
>>>>>>
>>>>>> I have a b210 and b205mini and both produce this issue
>>>>>> Both have worked fine at higher sample rates in the past.
>>>>>>
>>>>>> My setup is
>>>>>> ubuntu20.04
>>>>>> UHD 4.0 (via pybombs)
>>>>>> GNURadio 3.9 (via pybombs)
>>>>>>
>>>>>> This is what Michael Dickens said:
>>>>>>
>>>>>> It was not part of the UHD 4.0.0.0 release, and has not been
>>>>>> backported to the UHD-3.15-LTS (or prior) branch. - MLD
>>>>>>
>>>>>> You're still running 4.0.0.0 as shown in the UHD startup header here:
>>>>>>
>>>>>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>>>>>> UHD_4.0.0.0-193-g0d184ff4
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> 
> 
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> 
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
