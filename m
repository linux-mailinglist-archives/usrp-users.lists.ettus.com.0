Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F2B3609B2
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 14:45:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 430FE383FC1
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 08:45:38 -0400 (EDT)
Received: from smtp3.emailarray.com (smtp3.emailarray.com [65.39.216.17])
	by mm2.emwd.com (Postfix) with ESMTPS id A78D9383ED0
	for <USRP-users@lists.ettus.com>; Thu, 15 Apr 2021 08:44:55 -0400 (EDT)
Received: (qmail 20143 invoked by uid 89); 15 Apr 2021 12:44:52 -0000
Received: from unknown (HELO ?192.168.11.139?) (cGhpbGlwQG9wZW5zZHIuY29tQDczLjI1MS4xMC4xNDM=) (POLARISLOCAL)  
  by smtp3.emailarray.com with SMTP; 15 Apr 2021 12:44:52 -0000
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
References: <3226c6ec-fac3-8c0f-5927-b2d5c76cbe2e@opensdr.com>
 <dfa5504f-0536-7989-4354-3cb005cdca2b@balister.org>
 <CAL7q81t=oSq6_N4jfeJd-FQUiUw-nEmZZFgoJbx1FcZeExuMmg@mail.gmail.com>
From: Philip Balister <philip@balister.org>
Message-ID: <cfb01058-a2ed-0084-7bb6-9433bafa1357@balister.org>
Date: Thu, 15 Apr 2021 08:44:51 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAL7q81t=oSq6_N4jfeJd-FQUiUw-nEmZZFgoJbx1FcZeExuMmg@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: KVIDRB2MVGBDWVSRK256ZZ5KPYF2ZIUN
X-Message-ID-Hash: KVIDRB2MVGBDWVSRK256ZZ5KPYF2ZIUN
X-MailFrom: philip@balister.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E300 sg3 images with uhd 4.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KVIDRB2MVGBDWVSRK256ZZ5KPYF2ZIUN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Any updates on this? Anyone have a fix for the ftw segfaults?

Philip

On 10/2/20 7:48 PM, Jonathon Pendlum wrote:
> Hey Philip,
> 
> You are not the only person to report this. I'm working on getting an
> answer, but it will take a bit longer.
> 
> Jonathon
> 
> On Thu, Oct 1, 2020 at 10:46 AM Philip Balister via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> 
>> Ping? Anyone noticed sg3 units running slower with the uhd 4.0 image?
>>
>> Philip
>>
>> On 9/24/20 1:28 PM, Philip Balister via USRP-users wrote:
>>> I booted an image from:
>>>
>>> https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.0.0.0/
>>>
>>> on a sg3 unit. The BogoMIPS display suggests the clocks are set to what
>>> I expect for a sg1 unit though. I couldn't find any knobs in /sys or
>>> /proc. I compared with the ancient release-4 image and that has the
>>> number of BogoMIPS expected from that unit.
>>>
>>> Anyone at Ettus have any insite into how cpu clock speed is handled with
>>> that image. Diffing the ps7 files didn't show many diffs in clock setup.
>>> (And they looked like they came from a source besides vivado)
>>>
>>> Philip
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> 
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
