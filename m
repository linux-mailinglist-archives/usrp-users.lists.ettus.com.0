Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D71132FEE05
	for <lists+usrp-users@lfdr.de>; Thu, 21 Jan 2021 16:06:51 +0100 (CET)
Received: from [::1] (port=48570 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2bXu-00055n-3F; Thu, 21 Jan 2021 10:06:50 -0500
Received: from mail-wm1-f54.google.com ([209.85.128.54]:38766)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1l2bXp-0004vX-Tc
 for usrp-users@lists.ettus.com; Thu, 21 Jan 2021 10:06:46 -0500
Received: by mail-wm1-f54.google.com with SMTP id y187so1814581wmd.3
 for <usrp-users@lists.ettus.com>; Thu, 21 Jan 2021 07:06:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=q4TOof7A0BQZ/o7LKRHlApeeQFTOiCyhNwajZVmNypM=;
 b=zRK+Uod14l39R7yjpGtNiHZa8+b6og+cehyHmOJql5m7TFfU5V+0D4sIh62pXg1pPl
 W/ZxSI65FQ++obqi9h7mej5bkpAfgULvVUnbXsKvi7qrzscv7unH0sQzc+7YzR9Wscy3
 l5gwcV1k7jrOWp6yve2r0o7BrehZvxur2Piw8aA9B6AUo/FC7Av0itZfvG7uYmZkzZ0W
 pcs9m70TSZeC0LPYqaxa4o3LrrBpFMf8bLnkBSmm+HSb60W34zWISbhJBiM3jC3foLXN
 1DvJWqvaipaveZHia1uRGrZdUYJe+bLIdiUyjgkSqylW/kUMztiK1fpmxLzUfytcEDFt
 Jzbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=q4TOof7A0BQZ/o7LKRHlApeeQFTOiCyhNwajZVmNypM=;
 b=heKsggbMN1fUNQ2312yHDKna6q1C7pkPrjVzBqJwU4wDGNt2N+I5p6OUCoPtU/DMLl
 xnDsASOVFrdXxU3r7FLJjJSsWkA8SuzZzZW1RRX0UroUKon5neKOwJIamCHLslKnQp8K
 srIt6hecpT7HD3iwPDm7ay90pdlYIyFKNhqZdH3hKFffVC8Re5ulf+AGBN07PUUX5c76
 YduuVhp94xNDGNfIR9ZClJIqbN+M5Ym9EiAuy2ETMxmxGiR6rJwU3rgHfqIi+JG9AitH
 W//0izVzVlHgOvd5ga13o58JnQ69/01fdGgVHFkTTDcVBRY9hWxDx7/3Wp3bDMwdquFI
 Tj2Q==
X-Gm-Message-State: AOAM532890FnHmb0U3Zo4wcZAoNOagjXxUPm9L/3Jtp705dDOULGlSS5
 6dEH4F+rdHe02y/0m2IH2KAbuowPOeRnepis
X-Google-Smtp-Source: ABdhPJyxet32fvmhN2fSSUO4fREedwA/GWu0XslVciD9tfy0MPSH5sW7crWpCbUz62d7b6uIPIYonQ==
X-Received: by 2002:a1c:7206:: with SMTP id n6mr9501734wmc.77.1611241564544;
 Thu, 21 Jan 2021 07:06:04 -0800 (PST)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-162-176.hsi.kabel-badenwuerttemberg.de. [46.223.162.176])
 by smtp.gmail.com with ESMTPSA id w8sm9214680wrl.91.2021.01.21.07.06.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Jan 2021 07:06:04 -0800 (PST)
To: Jeff S <e070832@hotmail.com>, usrp-users <usrp-users@lists.ettus.com>
References: <SN6PR1901MB46884B4D0EBC22B0D4F7CF08A4A10@SN6PR1901MB4688.namprd19.prod.outlook.com>
Message-ID: <6c457450-6f9e-892b-ac53-5ea7956b7f0b@ettus.com>
Date: Thu, 21 Jan 2021 16:06:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <SN6PR1901MB46884B4D0EBC22B0D4F7CF08A4A10@SN6PR1901MB4688.namprd19.prod.outlook.com>
Content-Language: en-US
Subject: Re: [USRP-users] SOB/EOB Burst Mode on X310 Splitting Signal
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
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

Hi Jeff,

which version of GNU Radio are you using? Judging by the looks of your flow=
 graph it's the
(now legacy) 3.7, but *if* I remember correctly (it's really been a while),=
 the SOB/EOB
functionality appeared *somewhen* in 3.7.x; it might be worth trying your e=
xact same
application in GNU Radio 3.8 (or 3.9).

Conceptually, it's important to note that after tx_sob you need to supply t=
he full burst
of samples: I think you're doing that, but then again, you say you get thre=
e data bursts
100 ms apart, so I'm not sure about that, to be honest. The USRP sink can't=
 guess that you
want three bursts of samples to be sent as one; it starts streaming as fast=
 as you supply
it data after the SOB, and will tell you you're late or too slow at supplyi=
ng data (tG/U
printed to your console) if you don't give it 10 million samples a second, =
until it gets
an SOB.

Best regards,
Marcus


On 21.01.21 15:53, Jeff S via USRP-users wrote:
> I am attempting to use burst mode on an X310.=A0 I'm generating a random =
signal from one
> X310 and receiving it on another.=A0 My simple flowgraph is:
> =

> I can see the tx_sob and tx_eob tags, set to true, from the time sink:
> =

> =

> where I verify that I can see the EOB, followed by a new SOB in the next =
message (both set
> to true, according to
> https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html
> <https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html>)=
.=A0 But when I am
> receiving the signal, the message seems to be broken up into three differ=
ent transmissions
> instead of one burst:
> =

> =

> =

> I'm transmitting a message every 100 ms, which seems to correspond to the=
 start of the
> three messages.
> =

> Analyzing the modulator in a debugger indicates that there are three time=
s that the work
> function is called to build the message, which may correspond to the thre=
e messages seen
> in the signal, but I'm not sure why the tx_sob and tx_eob tags are not be=
ing followed.=A0
> Maybe I may just have a major misunderstanding of how burst mode works.
> =

> Any ideas on what I may be doing wrong?
> =

> Thanks,
> Jeff
> =

> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> =


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
