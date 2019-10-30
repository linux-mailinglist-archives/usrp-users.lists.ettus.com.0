Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE00DE9C90
	for <lists+usrp-users@lfdr.de>; Wed, 30 Oct 2019 14:45:39 +0100 (CET)
Received: from [::1] (port=42314 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iPoI5-000695-QY; Wed, 30 Oct 2019 09:45:37 -0400
Received: from mail-wr1-f46.google.com ([209.85.221.46]:42111)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1iPoI2-00060L-FB
 for usrp-users@lists.ettus.com; Wed, 30 Oct 2019 09:45:34 -0400
Received: by mail-wr1-f46.google.com with SMTP id a15so2363090wrf.9
 for <usrp-users@lists.ettus.com>; Wed, 30 Oct 2019 06:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :organization:user-agent:mime-version:content-transfer-encoding;
 bh=Zavvm4zGd9Ahqr/yxKTp4mFXGf4K0GPQFkZ4OHDBFuk=;
 b=gVV5gWDIDxqwokEG930iU6fOBuafKSWOTX7xj3dMmXrhn/8ZVceFelaZFwAU6Wr/2F
 h2G+fQqo+PuV8Y/limXPJfKNniTngsAA+daaQTNWS7LqF1QXCgcsXV6EBhv9QPgS87V+
 CQx/LBMMU9f4E7mUZdwwgcexnffY/zZ4fq1Jvn/N9CGGMkD+4xyEklQAP/7s+TiEpwcQ
 DVbRXiZomGNT6GtM4mvg9+6YGjBn0jIGPbToEM6Ku5mzGEErlR20d5Fz/nuISyejRkfv
 RW9r8932b0CsM9kcBLbIgV6oHZpyoawtKqeT4a2jd5p3PKha2UtPX7IIPETnRUXyn4e1
 6xvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=Zavvm4zGd9Ahqr/yxKTp4mFXGf4K0GPQFkZ4OHDBFuk=;
 b=nwRoFJ30IA2+8DS7dprrhtr8rIGD1Uybv87AYaENAr0hVVjH11q1iS9sn/dIstDITV
 Nsg11Y2kQgwBcG/Gr88HybQRP1Nra1o0z7AOU2mMHYhAlB2yXYrZpw645rU537OFPOE7
 XPv5j4dWeYY6ZDbSxfQ3vzvKmcHSFTAbGvQv0BpK+nFsxVQeRXTHP4/8kqhebuC/LVAX
 WbTl66oRvczxNC68Tb6+yXoCsMI5gxxJlO8cim+7WvDBv94a3SWgKrsikFpp7lsHWsSv
 RC6ucmVUsFdwXsODoihxokfrj1DP/F6WFESyxHM3jjSKH6+OjBeVmqJWsEL8xDMDX0wp
 J4XA==
X-Gm-Message-State: APjAAAUjYjyLz6Ud567iuNtsvCbbHRmZWZsJ+QRy+6Yd7ljfQjlW1H54
 SdHJaq1+fpDJ7KccgY8Lv/6EXqBcV/cMNQ==
X-Google-Smtp-Source: APXvYqyJymQLaBBMPBs0lbIEpNOYCE0wrOpnVFE+JEcLhfkcxB2Vl0U/p9s5oND1BYkZZRPJoeF9wQ==
X-Received: by 2002:a5d:4c4e:: with SMTP id n14mr8099426wrt.260.1572443093448; 
 Wed, 30 Oct 2019 06:44:53 -0700 (PDT)
Received: from wlan-cl-kit-cs-172-17-81-203.scc.kit.edu (nat.scc.kit.edu.
 [129.13.72.198])
 by smtp.gmail.com with ESMTPSA id u1sm315683wru.90.2019.10.30.06.44.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 06:44:52 -0700 (PDT)
Message-ID: <ac04f2920577fd50c34dca5777a89adee8e78fd3.camel@ettus.com>
To: Padorin Kurpinsky <padorin.kurpinsky@gmail.com>
Date: Wed, 30 Oct 2019 14:44:52 +0100
In-Reply-To: <CAB3Ezy+dH-Wo=djW7Tp7fQWhqVvkcSsHHrXtVLHTTUFPHRLMBg@mail.gmail.com>
References: <CAB3Ezy+dH-Wo=djW7Tp7fQWhqVvkcSsHHrXtVLHTTUFPHRLMBg@mail.gmail.com>
Organization: Ettus Research
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] USRP B 210 vs USRP X 310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Reply-To: Marcus =?ISO-8859-1?Q?M=FCller?= <marcus.mueller@ettus.com>
Cc: usrp-users@lists.ettus.com
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

Hello Padorin,

both are pretty good; the presentation can't fully represent the
differences; the UBX alone costs about as much as an B210, and you'll
need an X310 and two UBX to have as many channels as the B210, so
there's a solid factor in price and size and weight and power
consumption that goes for the B210. So, "B2xx < X3xx" is a
simplification, but an *often* meaningful one.

So, whether or not the B210 is measurably better than the X310 + UBX-
160 *depends on your use case and constraints* and I'll refrain from
making a general statement here: the RF chain on the B210 is actually
pretty good, but very flexible, and thus, not overly selective.

So, yes, from most datasheet properties, the UBX's frontend simply
outshines the B210.

Now comes the problem: You say you want a "clean" signal. That's not an
term that I can use to advise you. What does "clean" mean to you, or
maybe, what's "unclean"? What is it that you need that signal for? What
will be the bandwidths? The powers? The frequency stability
requirements? The number of channels, the frequency agility?

There's just way to many things which can lead to the difference
between UBX-160 and B210 being negligible. So, please tell us about
what you want to build :) I don't want to "sell" you something more
expensive that you don't need.

Best regards,
Marcus
 
On Wed, 2019-10-30 at 17:17 +0900, Padorin Kurpinsky wrote:
> Hello, Marcus!
> 
> I'm new to the RF world and curious about the RF performance between
> USRP B210 and X310 (UBX-160). Especially, I'm wondering which device
> can transmit a *clear signal*, for example, less spur would be great.
> I'm not interested in Bandwidth or Phase synchronization or MIMO.
> 
> In the spec, the DAC resolution of B210 is 12 bit, while X310 is 16
> bit. So, from the point of view of sending a clean signal, only DAC
> resolution affects the RF performance?
> 
> This presentation ( 
> https://www.openairinterface.org/docs/workshop/3_OAI_Workshop_20170427/Session2_UE/Thomas_Tsou_-_ettus.pdf
>  ) says that RF performance is B200 < N200 < X300. What is the basis
> for this claim?
> 
> Thank you very much.
> 
> 


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
