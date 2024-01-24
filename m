Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9F283B3C6
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jan 2024 22:20:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E576B3853E0
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jan 2024 16:20:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706131234; bh=6a7otBgI61SYomFip3crU70Xlpv+BF+rVTW/ZXeEJlE=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=XjYKak0bJIDEqur+AAie3exfeyIPgNxu42FfuhgZkELyZ3yiswClyNzhyAL3zgev2
	 cyespU46QGCsN2nEIXV+mGoXrcPwtQoZrTpvqVkXW/CCY3rdg0EEnbadwm68Lt3dlH
	 wKxzoqrYR1U5NYEgvwwiLFPeLiTNggGpV9G0r3M92+jHHFUE+tCrgdlF2WSqVWL5+Z
	 sW8/7Kpmns7vqV+4gSQM/hmoKz10UMzrKw1vWHrUsWxla0mlp4vLZE+XTtKl8KwJuF
	 RNBUlHuIPrAQnUkzhkSbPVheH0Xpkg8Kzm8YwvFTyqpdEp3Qn2SRBc/XRau1dUIIPM
	 LNfYmgZ8hOUGQ==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id BD30F3853DA
	for <usrp-users@lists.ettus.com>; Wed, 24 Jan 2024 16:20:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="B+Mkmeil";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-783045e88a6so420758285a.0
        for <usrp-users@lists.ettus.com>; Wed, 24 Jan 2024 13:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706131218; x=1706736018; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dKFZ9n7WOJpbhKZyeh3P5Zg0dYELyodw3RIRkffH8k4=;
        b=B+Mkmeil37lpS+Hu5L7R6YynyQH7vdksIvkoPBLYBDSKB33QhTakybEkyZtsM4QN+Y
         e7AHNtF0VXbe6JxGvsjPS8aqYwDuSxfMzl61ktnknWT/uEcYlqTFIxdzjHpmdG32PwGH
         NkMH9fERo/Lf21Zuve1c5UAkKaBgXJgMdBQAFozQ80qmy6N73F89RHcXWzRhv1dH0QBL
         VwHaUeanE1GhssOL6FJUwaZicUdajrKA58QmKR5kW0ve7ZmwTxZpCR8Cc0v/Kw6+HCOo
         X6B5touvKCN+KtSW1KqA68fMlU8B44byByItTCKd/Xuv9313m6keH9pL0FtCLzicnx+1
         ld9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706131218; x=1706736018;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dKFZ9n7WOJpbhKZyeh3P5Zg0dYELyodw3RIRkffH8k4=;
        b=J0+HzaSxnDnrMvJzSVW6v933+ksAFVqw+8OvsAkGMURqxa6f1nCAdF19biUS8ib4Fe
         unIpgP4j0ZtA3PUQDHSm+BwhpRKQMnZKu/vHDorVlqu8dxJ1OwZmNlRKx8Xbi4YgtZ7n
         LRu8+X0Iz1XP4+TJMgcj2YtLLdpeW5hx0LCQCFVH5DldauM0lxH+DEcizSpjFWtlrjQ4
         Iv/oP9KngTi0+SuvV50dAM0/lxsXdk+HWJmgkLSarMjStKhelG+SmjhYr0jWaet0pfNC
         yjTB8Zhqu5cq2SGxP4QJiG16mRWEyR7z0jSy2JBwfnyphHefziGKoyj21zL01PzE5mi0
         373Q==
X-Gm-Message-State: AOJu0Yy3Wa0/kDBJ4dmBc66LQYoCI2PAga0+vAP5+XcqArwNSHDHSqSv
	c6fjtEap/59T1AsM7YaDyBmnVeNhMNFGWEzk/W3iudbCE4DJGAg7j5GOeoi7
X-Google-Smtp-Source: AGHT+IF58U6b/bcbID9BGEBMRJsmJ53zg5NYyNq/IXRScsyb1gzjbn7bcyTqtVqcvqsq44/xuGCvjA==
X-Received: by 2002:a05:620a:1193:b0:783:b4fc:e638 with SMTP id b19-20020a05620a119300b00783b4fce638mr18632qkk.14.1706131218041;
        Wed, 24 Jan 2024 13:20:18 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id e30-20020a05620a209e00b0078313c87609sm4391665qka.100.2024.01.24.13.20.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jan 2024 13:20:17 -0800 (PST)
Message-ID: <6decf301-6986-4310-817f-206f76f45504@gmail.com>
Date: Wed, 24 Jan 2024 16:20:09 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>
References: <jcruQmHQZeKDZZaLSX1gllzmNKa3cT9CH517aGVnU@lists.ettus.com>
 <ab8ed2aa-f7a2-413e-83e9-c79a1e54c1cf@gmail.com>
 <CAB__hTRoWd8xwFkOqVKsVh5nCo8b_Yi59Jcya-KHKihr=g1URQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTRoWd8xwFkOqVKsVh5nCo8b_Yi59Jcya-KHKihr=g1URQ@mail.gmail.com>
Message-ID-Hash: 3EGFNZ23LDK5FVPYKNISATMHGKNXO6VX
X-Message-ID-Hash: 3EGFNZ23LDK5FVPYKNISATMHGKNXO6VX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Getting Dropped packets
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3EGFNZ23LDK5FVPYKNISATMHGKNXO6VX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0669451957829471615=="

This is a multi-part message in MIME format.
--===============0669451957829471615==
Content-Type: multipart/alternative;
 boundary="------------LBTplclkiF0WXH1Apo2o1qgh"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------LBTplclkiF0WXH1Apo2o1qgh
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 24/01/2024 16:11, Rob Kossler wrote:
> Hi Joe,
> I noticed that you have 128GB RAM.  If you turn this into a 120GB RAM
> drive, is this sufficient memory depth for your needs? If this is
> possible, there is a good chance it will solve your issue.
>
> Prior to DPDK, I tried to save to fast SSD and I always had problems
> at high rates (X310, etc,  not X410 rates). I was always able to solve
> the problem by saving to a RAM drive.  At one point I even wrote a
> separate utility to continually monitor and copy files from the RAM
> drive to the SSD so that the RAM drive never actually filled.  Even
> when I toyed with DPDK (a long time ago), I had much improved behavior
> saving to SSD but still not as good as when I saved to RAM drive which
> always has given me performance that rivals benchmark_rate.
> Rob
An SSD can notionally write at about 300-500MB/sec, which amounts to up=20
to about 80MSPS, depending on sample format, etc.

One can optimize storage size by perhaps reducing sample-size, but any=20
computation involved in doing that conversion
 =C2=A0 must necessarily be "paid for".

Joe noted that he was writing in "bursts"=C2=A0 where he might only save =
some=20
fraction of the samples coming in, which
 =C2=A0 suggests that disk-write rate may not be the overwhelming issue h=
ere,=20
but rather the ability to safely bring all these
 =C2=A0 samples into the system in something approaching real-time, witho=
ut=20
dropping anything.


--------------LBTplclkiF0WXH1Apo2o1qgh
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 24/01/2024 16:11, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTRoWd8xwFkOqVKsVh5nCo8b_Yi59Jcya-KHKihr=3Dg1URQ@mail.gm=
ail.com"><span
      style=3D"white-space: pre-wrap">
</span>
      <pre class=3D"moz-quote-pre" wrap=3D"">Hi Joe,
I noticed that you have 128GB RAM.  If you turn this into a 120GB RAM
drive, is this sufficient memory depth for your needs? If this is
possible, there is a good chance it will solve your issue.

Prior to DPDK, I tried to save to fast SSD and I always had problems
at high rates (X310, etc,  not X410 rates). I was always able to solve
the problem by saving to a RAM drive.  At one point I even wrote a
separate utility to continually monitor and copy files from the RAM
drive to the SSD so that the RAM drive never actually filled.  Even
when I toyed with DPDK (a long time ago), I had much improved behavior
saving to SSD but still not as good as when I saved to RAM drive which
always has given me performance that rivals benchmark_rate.
Rob
</pre>
    </blockquote>
    An SSD can notionally write at about 300-500MB/sec, which amounts to
    up to about 80MSPS, depending on sample format, etc.<br>
    <br>
    One can optimize storage size by perhaps reducing sample-size, but
    any computation involved in doing that conversion<br>
    =C2=A0 must necessarily be "paid for".<br>
    <br>
    Joe noted that he was writing in "bursts"=C2=A0 where he might only s=
ave
    some fraction of the samples coming in, which<br>
    =C2=A0 suggests that disk-write rate may not be the overwhelming issu=
e
    here, but rather the ability to safely bring all these<br>
    =C2=A0 samples into the system in something approaching real-time,
    without dropping anything.<br>
    <br>
    <br>
  </body>
</html>

--------------LBTplclkiF0WXH1Apo2o1qgh--

--===============0669451957829471615==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0669451957829471615==--
