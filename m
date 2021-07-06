Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DCE3BDACE
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jul 2021 17:59:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 731A8384835
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jul 2021 11:59:55 -0400 (EDT)
Received: from smtp5.emailarray.com (smtp5.emailarray.com [65.39.216.39])
	by mm2.emwd.com (Postfix) with ESMTPS id 856D7380A32
	for <USRP-users@lists.ettus.com>; Tue,  6 Jul 2021 11:59:15 -0400 (EDT)
Received: (qmail 74778 invoked by uid 89); 6 Jul 2021 15:59:14 -0000
Received: from unknown (HELO ?192.168.11.139?) (cGhpbGlwQG9wZW5zZHIuY29tQDczLjI1MS4xMC4xNDM=) (POLARISLOCAL)  
  by smtp5.emailarray.com with SMTP; 6 Jul 2021 15:59:14 -0000
To: Ben Magistro <koncept1@gmail.com>
References: <3226c6ec-fac3-8c0f-5927-b2d5c76cbe2e@opensdr.com>
 <dfa5504f-0536-7989-4354-3cb005cdca2b@balister.org>
 <CAL7q81t=oSq6_N4jfeJd-FQUiUw-nEmZZFgoJbx1FcZeExuMmg@mail.gmail.com>
 <cfb01058-a2ed-0084-7bb6-9433bafa1357@balister.org>
 <CAKx8PBhEsFiY4D0rDqADyYO6+gAL3h+mT5M1oK+vJHQ5h_tL1A@mail.gmail.com>
From: Philip Balister <philip@balister.org>
Message-ID: <d103d000-99a1-bf6a-0a67-a99fde0b1f97@balister.org>
Date: Tue, 6 Jul 2021 11:59:14 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAKx8PBhEsFiY4D0rDqADyYO6+gAL3h+mT5M1oK+vJHQ5h_tL1A@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: LMKVCMY5FCDQQSVXDKROMA2ZH54NNKDV
X-Message-ID-Hash: LMKVCMY5FCDQQSVXDKROMA2ZH54NNKDV
X-MailFrom: philip@balister.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E300 sg3 images with uhd 4.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LMKVCMY5FCDQQSVXDKROMA2ZH54NNKDV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 7/6/21 11:50 AM, Ben Magistro wrote:
> I haven't done much testing beyond power on, but it appears the UHD 4.1
> image restores the SG3 speeds.  It is still based on Zeus with GCC 9.2 so
> likely has the fftw segfault still.

SO I should bump the meta-ettus/zeus rev on
https://github.com/balister/sdr-build/tree/dunfell-ettus and see what
happens?

Philip

> 
>  Ben
> 
> On Thu, Apr 15, 2021 at 8:45 AM Philip Balister <philip@balister.org> wrote:
> 
>> Any updates on this? Anyone have a fix for the ftw segfaults?
>>
>> Philip
>>
>> On 10/2/20 7:48 PM, Jonathon Pendlum wrote:
>>> Hey Philip,
>>>
>>> You are not the only person to report this. I'm working on getting an
>>> answer, but it will take a bit longer.
>>>
>>> Jonathon
>>>
>>> On Thu, Oct 1, 2020 at 10:46 AM Philip Balister via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Ping? Anyone noticed sg3 units running slower with the uhd 4.0 image?
>>>>
>>>> Philip
>>>>
>>>> On 9/24/20 1:28 PM, Philip Balister via USRP-users wrote:
>>>>> I booted an image from:
>>>>>
>>>>> https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.0.0.0/
>>>>>
>>>>> on a sg3 unit. The BogoMIPS display suggests the clocks are set to what
>>>>> I expect for a sg1 unit though. I couldn't find any knobs in /sys or
>>>>> /proc. I compared with the ancient release-4 image and that has the
>>>>> number of BogoMIPS expected from that unit.
>>>>>
>>>>> Anyone at Ettus have any insite into how cpu clock speed is handled
>> with
>>>>> that image. Diffing the ps7 files didn't show many diffs in clock
>> setup.
>>>>> (And they looked like they came from a source besides vivado)
>>>>>
>>>>> Philip
>>>>>
>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>
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
