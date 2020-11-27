Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CEABE2C6BAE
	for <lists+usrp-users@lfdr.de>; Fri, 27 Nov 2020 19:41:21 +0100 (CET)
Received: from [::1] (port=34776 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kiigK-0003y2-L7; Fri, 27 Nov 2020 13:41:20 -0500
Received: from sanddollar.geekisp.com ([216.168.135.167]:35095)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <philip@balister.org>) id 1kiigH-0003WL-7t
 for usrp-users@lists.ettus.com; Fri, 27 Nov 2020 13:41:17 -0500
Received: (qmail 7393 invoked by uid 1003); 27 Nov 2020 18:40:39 -0000
Received: from unknown (HELO ?10.10.51.195?) (philip@opensdr.com@96.82.14.169)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted)
 SMTP; 27 Nov 2020 18:40:39 -0000
To: aneesh patel <ampselectronics@yahoo.com>,
 Andrew Payne <wandrewp@gmail.com>,
 Andrew Payne via USRP-users <usrp-users@lists.ettus.com>
References: <CAB50+dSat-OFqtA38AxNiftepxCP4d=LuxrVjbLMKOtu6q+krg@mail.gmail.com>
 <82C8BA12-2EC5-45E9-9446-1890860A8F30@gmail.com>
 <CAB50+dT2ah526Vw7gp7q0UYNw5iWA8zt0Gyx0hOhhSF5F1Lxag@mail.gmail.com>
 <CAB50+dSFc_DDhR=-dyN85vGG_utfRwhc1Dvjciv_q3K6U3_GcA@mail.gmail.com>
 <CAB50+dTqG7GiBOn=3vBMu=n5MNS-XvpJqsw_QryGkjeP=OWQkA@mail.gmail.com>
 <1129435812.2163671.1606502063242@mail.yahoo.com>
Message-ID: <9771b8e7-c78f-d270-7bc0-a811ad19ff3e@balister.org>
Date: Fri, 27 Nov 2020 13:40:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <1129435812.2163671.1606502063242@mail.yahoo.com>
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

On 11/27/20 1:34 PM, aneesh patel via USRP-users wrote:
> Hi Andrew,
> The MAC may be in the devicetree blobs in the boot area of the SD image.
> You will need dtcedit to decompile, edit, and recompile as needed.

I don't think so, since the first time the card boots it does read from
the i2c eeprom.

I'm guessing u-boot sets the ethaddr env var and saves it in the
environment, but I forget where that might be saved. Need to review the
u-boot configuration for setting about the u-boot env (maybe getting
saved to the sd card).

Anyone from Ettus paying attention? This is a pretty serious problem for
people copying cards and using them in different units. The correct
behavior is follow the MAC address programmed into the i2c eeprom.

Philip

> Amp
> 
> Sent from Yahoo Mail on Android 
>  
>   On Fri, Nov 27, 2020 at 1:23 PM, Andrew Payne via USRP-users<usrp-users@lists.ettus.com> wrote:   _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>   
> 
> 
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> 

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
