Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3F72C411D
	for <lists+usrp-users@lfdr.de>; Wed, 25 Nov 2020 14:26:50 +0100 (CET)
Received: from [::1] (port=42418 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1khuoo-0004o1-GA; Wed, 25 Nov 2020 08:26:46 -0500
Received: from sanddollar.geekisp.com ([216.168.135.167]:17410)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <philip@balister.org>) id 1khuok-0004jh-UN
 for usrp-users@lists.ettus.com; Wed, 25 Nov 2020 08:26:42 -0500
Received: (qmail 24578 invoked by uid 1003); 25 Nov 2020 13:26:05 -0000
Received: from unknown (HELO ?192.168.11.139?)
 (philip@opensdr.com@73.251.10.143)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
 25 Nov 2020 13:26:05 -0000
To: Andrew Payne <wandrewp@gmail.com>, usrp-users <usrp-users@lists.ettus.com>
References: <CAB50+dRQJvM2+xh5ZK7D43Z_B_6aHVmZ9fGK+V8NjjTJK5Deag@mail.gmail.com>
Message-ID: <996a7e51-1d29-c221-20bb-0c7513e8eb8f@balister.org>
Date: Wed, 25 Nov 2020 08:26:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <CAB50+dRQJvM2+xh5ZK7D43Z_B_6aHVmZ9fGK+V8NjjTJK5Deag@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] E310: Change MAC Address?
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

What is that mac address? I'd like to see if it matches mine.

If I recall correctly, the mac address is flashed into the i2c eeprom,
u-boot is supposed to read that and use it. Factory test should set it
up uniquely. But my memories fade. Inspecting the u-boot source might
show us ....

https://github.com/EttusResearch/meta-ettus/blob/zeus/meta-e31x/recipes-bsp/u-boot/files/0001-ni-zynq-Add-support-for-NI-E31x-SG1-SG3-boards.patch#L397

I didn't sift through the ifdef's though.

Philip

On 11/24/20 7:28 PM, Andrew Payne via USRP-users wrote:
> Is there a way to change the mac address of my e310s?  I have imaged
> several e310s using the image file in
> https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/, and they
> all have the same MAC address.
> 
> On some searching around the web I can see that it is likely that the MAC
> address parameter is specified as a U-boot parameter.  I'd like to know
> what my options are for changing it.
> 
> Thanks,
> Andrew
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
