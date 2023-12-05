Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3DD804CB6
	for <lists+usrp-users@lfdr.de>; Tue,  5 Dec 2023 09:39:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 71C62384EBD
	for <lists+usrp-users@lfdr.de>; Tue,  5 Dec 2023 03:39:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701765550; bh=6S2Dxigq96haa8hLhcR+kiSJHdYgdJuEQ4TfJivEh/8=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=t1cBqlyaYXiO83m4ode0K+xk9AY7rwtj/441n37K4hYcc2RxSxEdUme+0VTnTleLX
	 o+pvKp96vzTJSUicr7U0lVHy9YMbduwf31SzXk0MeON2jTbi+D2GVLnhVvG/pA2Vwf
	 hSgwCHHJ1m5YNYUaa8fxViezACp4uV3Ho8oMm/LqbkIJWXBDVr9R/Io24glN/5arAI
	 6X1QoY9/ENSBjCMuu20keD2UHLNNGr3jljVa9f4+1LPcJD1cHGMXKatr4tmOx06wbq
	 CJC4IKso1DFU0kj8LWWRtCsyVkwuoqjkoLuzjqcTPepsi4aa2Sxs4DKfxbxZndmB8t
	 Jzad056U4n8XA==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 2EC2D384DBC
	for <usrp-users@lists.ettus.com>; Tue,  5 Dec 2023 03:38:43 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=g.ecc.u-tokyo.ac.jp header.i=@g.ecc.u-tokyo.ac.jp header.b="Rjf7OBU0";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-54ba86ae133so5562318a12.2
        for <usrp-users@lists.ettus.com>; Tue, 05 Dec 2023 00:38:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=g.ecc.u-tokyo.ac.jp; s=google; t=1701765521; x=1702370321; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=//uJshNiSRVGMQkHe1gkeiojBTglK82orj52gZXl8ww=;
        b=Rjf7OBU0vSBQr4bdUMwK3IDs7RIwn384RkmgRcGjeNNsI7G3o/iDs1a8YcR6Sdy+30
         RfOepsxJpSTHlXVJp9Ka9HpGuvvInmJ3dbmWeMkmI2LVbmPSbPrWSkm7KbHIQi+jFzJU
         I5yTuLMG8HlcoKCT8tV46tvSqO5eQ6qu+L1TwJegdeEMm2GZ1Kv4EJrFP+Sb2wU/kNAI
         rKjQqNGfl4lXO5nmnlTJw3AAYg9hmXSe4raOKoP8WaZ6EhpBJS+qrh4GgD7gnIUjm6OG
         8loCinPTmXF76V9Yqf8ZfFy16SuJoX8UtgDtjCCa7WgpPHfh6z5m/CqUJYv7OOQYQbCh
         +oDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701765521; x=1702370321;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=//uJshNiSRVGMQkHe1gkeiojBTglK82orj52gZXl8ww=;
        b=mw0XgScoyXIh2X+ZzmNptAshdXfiKcOi8Sef2awO9hEw5pySSQ6/oTNk3emA8uAsNW
         zsyM8jQVn97Ysb//4lq5a07X7jEiBGESLGU2DLQUgXiDs4Pan/2VCCAEo9/MBVZRbz+A
         uD/IEwfija05kaIIMoVHUR1q5bTg8vCtBlSmnt87cVHomx89t3lj6Tie9PIv87gf6uhO
         OH8l1AupKA0jiSI82E1d7GqsVcZfXM1uYcgezLbI2Od8emq1Zhykj642zHJ0JsUCBwUx
         RB5rsMSNU9lr2qEL2M/dPXCseRJNArAqITmyRP+WXppEOHAV6qdQ8vdvTJKq7lUqcYJz
         mf1Q==
X-Gm-Message-State: AOJu0YzTBsZf9SbIl93FVIU531JlUd+24UbPTrKlbAzornLq95rWuwEv
	HWpa+HDmtp55KYz5KYRIhgAfO/vJNcE5VRsk6biav1T5xWbr4OmO0i4=
X-Google-Smtp-Source: AGHT+IHBVaze5o/qmheV7F73byFy8FuYuIFPOxUkj/4QHZ5ICWIXLFPYY6Oq5NOfpuZEazgsjR+9Ev4QK1TVQ158Ik4=
X-Received: by 2002:a50:cdc9:0:b0:54c:4837:903f with SMTP id
 h9-20020a50cdc9000000b0054c4837903fmr3889997edj.55.1701765521455; Tue, 05 Dec
 2023 00:38:41 -0800 (PST)
MIME-Version: 1.0
From: Aerman TUERXUN <armantursun@g.ecc.u-tokyo.ac.jp>
Date: Tue, 5 Dec 2023 17:38:30 +0900
Message-ID: <CAOcHjoLpCBMWLUafr=w3yrH7=-Mrhes-1tPma5jTBc8n=KL4Sw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: A5HH6U2GVW5WTJ3C75OV2JJUK4IZY7S3
X-Message-ID-Hash: A5HH6U2GVW5WTJ3C75OV2JJUK4IZY7S3
X-MailFrom: armantursun@g.ecc.u-tokyo.ac.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Multi-process DPDK support in UHD
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A5HH6U2GVW5WTJ3C75OV2JJUK4IZY7S3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4173835358478792091=="

--===============4173835358478792091==
Content-Type: multipart/alternative; boundary="00000000000065d833060bbf29cf"

--00000000000065d833060bbf29cf
Content-Type: text/plain; charset="UTF-8"

Hi all,

I have a problem using multi USRPs with multi-processes.
I need to use two USRPs connected to a single host, and there are two
applications that invoke two USRP with DPDK enabled.
The first application successfully started, however when I ran the second
one, it gave me the following error message.
I learned that DPDK supports multi-process, and it needs to be set with
--file-prefix.
But I couldn't find any reference for UHD to use multi-DPDK.
Does anyone have any knowledge about this? How can I use multiple USRP with
DPDK in a multi-processing scenario?
Thank you in advance.

[WARNING] [PREFS] Loaded config from /root/.uhd. This location is
considered deprecated, consider moving your config file to /root/.config
instead.
EAL: Detected 8 lcore(s)
EAL: Detected 1 NUMA nodes
EAL: Cannot create lock on '/var/run/dpdk/rte/config'. Is another primary
process running?
EAL: FATAL: Cannot init config
EAL: Cannot init config
[ERROR] [DPDK] Error with EAL initialization
[ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL
initialization
EAL: FATAL: already called initialization.
EAL: already called initialization.
[ERROR] [DPDK] Error with EAL initialization
[ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL
initialization
terminate called after throwing an instance of 'uhd::key_error'
  what():  LookupError: KeyError: No devices found for ----->
Device Address:
    addr: 192.168.50.2
    mgmt_addr: 192.168.10.50
    use_dpdk: 1

Aborted

--00000000000065d833060bbf29cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I have a problem usi=
ng multi USRPs with multi-processes.</div><div>I need to use two USRPs conn=
ected to a single host, and there are two applications that invoke two USRP=
 with DPDK enabled.</div><div>The first application successfully started, h=
owever when I ran the second one, it gave me the following error message. <=
br></div><div>I learned that DPDK supports multi-process, and it needs to b=
e set with <code class=3D"gmail-docutils gmail-literal"><span class=3D"gmai=
l-pre">--file-prefix.</span></code></div><div>But I couldn&#39;t find any r=
eference for UHD to use multi-DPDK.</div><div>Does anyone have any knowledg=
e about this? How can I use multiple USRP with DPDK in a multi-processing s=
cenario?</div><div>Thank you in advance. <br></div><div><br></div><div>[WAR=
NING] [PREFS] Loaded config from /root/.uhd. This location is considered de=
precated, consider moving your config file to /root/.config instead.<br>EAL=
: Detected 8 lcore(s)<br>EAL: Detected 1 NUMA nodes<br>EAL: Cannot create l=
ock on &#39;/var/run/dpdk/rte/config&#39;. Is another primary process runni=
ng?<br>EAL: FATAL: Cannot init config<br>EAL: Cannot init config<br>[ERROR]=
 [DPDK] Error with EAL initialization<br>[ERROR] [UHD] Device discovery err=
or: RuntimeError: Error with EAL initialization<br>EAL: FATAL: already call=
ed initialization.<br>EAL: already called initialization.<br>[ERROR] [DPDK]=
 Error with EAL initialization<br>[ERROR] [X300] X300 Network discovery err=
or RuntimeError: Error with EAL initialization<br>terminate called after th=
rowing an instance of &#39;uhd::key_error&#39;<br>=C2=A0 what(): =C2=A0Look=
upError: KeyError: No devices found for -----&gt;<br>Device Address:<br>=C2=
=A0 =C2=A0 addr: 192.168.50.2<br>=C2=A0 =C2=A0 mgmt_addr: 192.168.10.50<br>=
=C2=A0 =C2=A0 use_dpdk: 1<br><br>Aborted</div></div>

--00000000000065d833060bbf29cf--

--===============4173835358478792091==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4173835358478792091==--
