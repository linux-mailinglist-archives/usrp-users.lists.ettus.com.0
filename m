Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 803683FF004
	for <lists+usrp-users@lfdr.de>; Thu,  2 Sep 2021 17:21:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9FB303846FA
	for <lists+usrp-users@lfdr.de>; Thu,  2 Sep 2021 11:21:05 -0400 (EDT)
Received: from smtp7.emailarray.com (smtp7.emailarray.com [65.39.216.66])
	by mm2.emwd.com (Postfix) with ESMTPS id B252B3841FA
	for <usrp-users@lists.ettus.com>; Thu,  2 Sep 2021 11:20:22 -0400 (EDT)
Received: (qmail 50839 invoked by uid 89); 2 Sep 2021 15:20:15 -0000
Received: from unknown (HELO ?192.168.11.139?) (cGhpbGlwQG9wZW5zZHIuY29tQDczLjI1MS4xMC4xNDM=) (POLARISLOCAL)  
  by smtp7.emailarray.com with SMTP; 2 Sep 2021 15:20:15 -0000
To: Josh Starling <joshstarling92@gmail.com>, thebouleoffools@gmail.com
References: <4t2LWl1BGPF8sF066aqaclRFoH0TIam3dxT41mBQ@lists.ettus.com>
 <18DB44EB-7504-4787-A7AA-BA4EA0A159A8@gmail.com>
From: Philip Balister <philip@balister.org>
Message-ID: <09c81c9d-402c-7575-92c3-42a922c5a21d@balister.org>
Date: Thu, 2 Sep 2021 11:20:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <18DB44EB-7504-4787-A7AA-BA4EA0A159A8@gmail.com>
Content-Language: en-US
Message-ID-Hash: HX6O7NHAV526EGQ6QJLLZZ3NRE2T62YS
X-Message-ID-Hash: HX6O7NHAV526EGQ6QJLLZZ3NRE2T62YS
X-MailFrom: philip@balister.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 cross compile SDK
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HX6O7NHAV526EGQ6QJLLZZ3NRE2T62YS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Sometimes people want to run the sdk on a machine without installing UHD
on the machine ....

So a direct link is very useful.

Philip

On 9/2/21 11:04 AM, Josh Starling wrote:
> I think the proper way of getting the SDK or SD card image is using the command line function, see below. That'll handle getting the SDK/SD files that matches the UHD version you've built.
> 
> uhd_images_downloader -t sdimg -t e3xx
> uhd_images_downloader -t sdk -t e3xx
> 
>> On Sep 2, 2021, at 9:33 AM, thebouleoffools@gmail.com wrote:
>>
>> The newer versions of the SDK are at the totally obvious location of https://files.ettus.com/binaries/cache/e3xx/. https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.1.0.2-rc3/ is the newest posted.
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> 
> 
> 
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> 
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
