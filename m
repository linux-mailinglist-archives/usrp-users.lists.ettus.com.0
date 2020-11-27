Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 823212C6C11
	for <lists+usrp-users@lfdr.de>; Fri, 27 Nov 2020 20:39:50 +0100 (CET)
Received: from [::1] (port=35142 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kijav-0007SQ-23; Fri, 27 Nov 2020 14:39:49 -0500
Received: from starfish.geekisp.com ([216.168.135.166]:44068)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <philip@balister.org>) id 1kijar-0007Gl-7z
 for usrp-users@lists.ettus.com; Fri, 27 Nov 2020 14:39:45 -0500
Received: (qmail 6451 invoked by uid 1003); 27 Nov 2020 19:33:01 -0000
Received: from unknown (HELO ?192.168.11.139?)
 (philip@opensdr.com@73.251.10.143)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
 27 Nov 2020 19:33:00 -0000
To: Andrew Payne <wandrewp@gmail.com>
References: <CAB50+dSat-OFqtA38AxNiftepxCP4d=LuxrVjbLMKOtu6q+krg@mail.gmail.com>
 <82C8BA12-2EC5-45E9-9446-1890860A8F30@gmail.com>
 <CAB50+dT2ah526Vw7gp7q0UYNw5iWA8zt0Gyx0hOhhSF5F1Lxag@mail.gmail.com>
 <CAB50+dSFc_DDhR=-dyN85vGG_utfRwhc1Dvjciv_q3K6U3_GcA@mail.gmail.com>
 <CAB50+dTqG7GiBOn=3vBMu=n5MNS-XvpJqsw_QryGkjeP=OWQkA@mail.gmail.com>
 <1129435812.2163671.1606502063242@mail.yahoo.com>
 <9771b8e7-c78f-d270-7bc0-a811ad19ff3e@balister.org>
 <CAB50+dRrvDhpqH3+jD+WRMx6=G8Dg91P4Z+xt7_39kVSakZ9UA@mail.gmail.com>
Message-ID: <e7bf1d1a-39c4-a7a2-380b-0daf553d867f@balister.org>
Date: Fri, 27 Nov 2020 14:39:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <CAB50+dRrvDhpqH3+jD+WRMx6=G8Dg91P4Z+xt7_39kVSakZ9UA@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Fwd: E310: Change MAC Address?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Philip Balister via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Philip Balister <philip@balister.org>
Cc: Andrew Payne via USRP-users <usrp-users@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

OK try this at the u-boot prompt:

env default -a
env save

and then

reset

This should reset the u-boot env to the default values and I think this
resets the ethaddr variable. Then you write it to the  mmc (99%
certain). On the next hard reset hopefully it reads the address from the
eeprom.

Philip

On 11/27/20 2:20 PM, Andrew Payne wrote:
> Thanks Aneesh but the decompiled dts file has no mention of the exact MAC
> address for eth0, but just to read from the eeprom from what I can gather.
> Plus an md5sum of the dtb file on the sdimg from Ettus is the same checksum
> as an e310 that has booted.
> 
> On Fri, Nov 27, 2020 at 1:40 PM Philip Balister <philip@balister.org> wrote:
> 
>> On 11/27/20 1:34 PM, aneesh patel via USRP-users wrote:
>>> Hi Andrew,
>>> The MAC may be in the devicetree blobs in the boot area of the SD image.
>>> You will need dtcedit to decompile, edit, and recompile as needed.
>>
>> I don't think so, since the first time the card boots it does read from
>> the i2c eeprom.
>>
>> I'm guessing u-boot sets the ethaddr env var and saves it in the
>> environment, but I forget where that might be saved. Need to review the
>> u-boot configuration for setting about the u-boot env (maybe getting
>> saved to the sd card).
>>
>> Anyone from Ettus paying attention? This is a pretty serious problem for
>> people copying cards and using them in different units. The correct
>> behavior is follow the MAC address programmed into the i2c eeprom.
>>
>> Philip
>>
>>> Amp
>>>
>>> Sent from Yahoo Mail on Android
>>>
>>>   On Fri, Nov 27, 2020 at 1:23 PM, Andrew Payne via USRP-users<
>> usrp-users@lists.ettus.com> wrote:
>>  _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
> 

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
