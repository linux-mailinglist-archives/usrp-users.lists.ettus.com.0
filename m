Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B7D1C9A84
	for <lists+usrp-users@lfdr.de>; Thu,  7 May 2020 21:10:04 +0200 (CEST)
Received: from [::1] (port=36042 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jWluC-00025b-3t; Thu, 07 May 2020 15:10:00 -0400
Received: from mail-oo1-f44.google.com ([209.85.161.44]:39683)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jWlu8-0001ou-7u
 for usrp-users@lists.ettus.com; Thu, 07 May 2020 15:09:56 -0400
Received: by mail-oo1-f44.google.com with SMTP id c83so1600726oob.6
 for <usrp-users@lists.ettus.com>; Thu, 07 May 2020 12:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uBeSOXWzkpmvXawc5oS/Fi5EG0G51v+naatlrgGSFZE=;
 b=ZC6WdYBMGLoZR3pxs/AA1rH5L0LjUQGL8BBNgJNAgaSQGYRKKbmoMs+TGDJbF1Vl4P
 EtGceOD27k7habvOWD1GZv2ECCnZIsS479+kgiyHfLc4D9pXvk62psBF/uCzZdiH3tWI
 1sG5IDaHxYgVud8TM32Qp6/nL8jzKtJYbY+hhumthbjMnawCSpqF2BKsj4Br+WPFv9HY
 LTALu7jm+eYj9qDhVRCT+q1uo9FShCi0fmTW9htN38Uowu8Ly7RHJ2Qq64EgK2EoYXOY
 MxQAR5DfuDgYZMSjrri1AhBlJEykglCFDLyCJaqlJNsbuMW4FUeh8dBrrI/ljFYxaLG3
 vuSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uBeSOXWzkpmvXawc5oS/Fi5EG0G51v+naatlrgGSFZE=;
 b=N13ihJfn/IA58d8bs94Z2XyYqt4O9HI5q0+tfkH3EAloSDtibyGm9BLihPB6RozoS/
 Q9ox+A45A4zIcHsRBScb9n2DP7Bzmt1AEdzJ0q61j2MQ+DJKwMUbxO9k3gVoKcTBLBu6
 +z5pbFwAnV7omqnK+Twyf4UJBPTjLt4sswMO0QHg4pkZJ7KspXYG5yV9ZlGZWlwLjXCx
 caOsoAHbReK8/H8B70ghMj2Dbf83oJEnsvgA0jZFkhmA96Ci87GU9byeIHO+PnDQxLsS
 L8xgBZVd21Kd5h297h+1Wxaux3O3PoyZhSavVbkVhTNF7U0VQ0Bt1a2zpaXAAyrZwLcg
 5FtA==
X-Gm-Message-State: AGi0PuZ6BqQPMYUZTR7DzZJffiwtRpzW7y+Jk3nqq7GSDLTVNlfqKv/0
 GP0DTNYUEARsimzzojLssZZ5ALtDVx8GtvbYpAFazw==
X-Google-Smtp-Source: APiQypK9RaSYgUHANdGNbaKEyjCjS31pwsGNSOwid8EyAZiOHNWkZXAmXzUAui0q0JXWBUUKzGlGuHM7SCytngI5fEU=
X-Received: by 2002:a4a:a209:: with SMTP id m9mr13008730ool.62.1588878555438; 
 Thu, 07 May 2020 12:09:15 -0700 (PDT)
MIME-Version: 1.0
References: <FE777AB1-6314-4C78-B763-82260D19A8A3@email.de>
 <CAB__hTR=aj5uxHFxtz0tEFyF8iUfygOVefy8=YYHLW_MhW931Q@mail.gmail.com>
 <3010bf0d-c84f-811f-6a61-f1ebbf9c0279@email.de>
 <CAGNhwTPdQpcTQZEGe916-EoXaWkTU3iztw-g=+Lccd6dCOhjyA@mail.gmail.com>
 <e17443be-6f0a-9c2a-a1a4-30f722ffb2e7@email.de>
 <CAEXYVK5SVxQH0KRHd1S+vOppUuEy01K0NL4g_s9NzwoXhTX=VQ@mail.gmail.com>
In-Reply-To: <CAEXYVK5SVxQH0KRHd1S+vOppUuEy01K0NL4g_s9NzwoXhTX=VQ@mail.gmail.com>
Date: Thu, 7 May 2020 15:09:04 -0400
Message-ID: <CAB__hTR1boA7o-FGP2Gng0rFNkY=cZqme199UgdNq5nL6nPEzw@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Subject: Re: [USRP-users] TX underflows when using multi_usrp vs. two
 independent tx_streamers
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>, Max <hex98@email.de>
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

My experience using dual 10Gbe is that things work generally worse for
the case where the data can fit on single 10Gbe (which is the case
here at 200 MS/s per link).

I verified in my own custom application that I can have success with
Tx 2x200 if I use separate streamers but only 1 multi_usrp.
Rob

On Thu, May 7, 2020 at 3:00 PM Brian Padalino <bpadalino@gmail.com> wrote:
>
> On Thu, May 7, 2020 at 2:58 PM Max via USRP-users <usrp-users@lists.ettus.com> wrote:
>>
>> Hi Michael,
>>
>> thank you for the feedback.
>> Unfortunately the X300 offers just one SFP+, so combining two links
>> should not be possible. I also don't think the network interface itself
>> is the bottleneck, considering two independent processes don't seem to
>> have a problem providing the data.
>
>
> You can use a dual 10Gbe FPGA image and get dual links on the X300.
>
> Brian

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
