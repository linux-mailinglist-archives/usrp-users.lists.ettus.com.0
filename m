Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C026C6E14
	for <lists+usrp-users@lfdr.de>; Thu, 23 Mar 2023 17:48:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0844D3849C4
	for <lists+usrp-users@lfdr.de>; Thu, 23 Mar 2023 12:48:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679590128; bh=HJCPZDKtW0lc3sAGO566+p1CwHZOlTZGvv95MxZbPS0=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=CEJR3PCznJM7J3Xmz0zpFP9FSpFoeB90Z9CeIlMiipGYy6I0QMujs65sGXoYjIQia
	 vpj88qonrjihuLyhJ2Z5bdJoMJxplFDF/bJ2k8aC7ce/9qbn8tYyOZRbDxxQIx9xDZ
	 rn8rRLrkI7Orxs24KuywSMbpSgZf962igbGQtv0MEFamxefAKgQUy/q/DYCHB2kOUU
	 Q6dUMxpu1GFujcYtGN6SB8NVEfF61Xj8HtwP49fp01TNfoUzXObxvhoda8hoMMIK1X
	 OtejRusC+R0bO/ZLOI4b1jhbidATM8muU2M5mpjjla0j9ZNbXAUan+Wn3mvbaLM8QH
	 lHBgeTYbhubmw==
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 20C07380C11
	for <usrp-users@lists.ettus.com>; Thu, 23 Mar 2023 12:48:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="XJnd/GTc";
	dkim-atps=neutral
Received: by mail-ed1-f49.google.com with SMTP id r11so89580045edd.5
        for <usrp-users@lists.ettus.com>; Thu, 23 Mar 2023 09:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1679590093;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=M9P1ijKJyGdjWokAA6RwDATepqY0KNvtAFt7D77i1v8=;
        b=XJnd/GTcTiuWJc2nyrtjSmifJJ+MuvcLjIbYy+Tp1zdkTrGdwX7Uuu7fOrKKYmibHT
         lVgQyrmOF1piMoKVqKRb5LCaQ6VRybxcqEIa0dk2dHhXAtdwIZJvzyv4Aq3le1+4Pnmd
         migC7yBkvtWqrb6YG63aXIYBPVCMz8Av7konzPvr0d//dmdsyQm59tQnFhYzJ+ybOHXe
         9Z6XwgjF8zeDvjd3tLFWnVTNHbGkWLS2SIjFaUoxXQRs/cMkw9mVc7UkTNsGG/9HOKuo
         gVcPLf8pEp8ybaJz3fOa0D+kkoo8DQZbb5ZP0TsmwRzV4AZjsyNDCMqdwutFGXKVBQyo
         xv0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679590093;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M9P1ijKJyGdjWokAA6RwDATepqY0KNvtAFt7D77i1v8=;
        b=CtnmkbIxb1sYbh1Ws7yy34z8n5n5oJxv2W5IC190KkE82r1MExzq2EC1jIKDc+i8cz
         Lr3GQQUG+LDGco7B1c9mQ7tzY7lIDVduahpM7eohrgVI8AT1XI5WZAuX2iC6Ov7Hzr0a
         AX6UbCT3OTc6aI+lcFF5OucXdkv9s4VCJRKb/Ph2iOjVtrBtZYdGUdcwe1qDuR7wbRX/
         xd3qOPcvU89j9D6J7wv9x+kCHC8HTQOeZRoUe8S3kG1T6QA6a1AQ+9BJCz7yMZ43NqLW
         lVeC3LTXuBLODtzwEO9Bg8nEu0mUVNgTzTTCxlbuTDEY6zkzFgPFvxL4YBRZG4yIsfCV
         OCtA==
X-Gm-Message-State: AAQBX9dvqC2nTZpOrK8u0dG0beRBC9lXHVKfatrVeAuzHfOMlRm1PSkb
	0e7WL72F1cLs3uBY0C6e4vb73+ZnbsnuEzS5V9uC3A==
X-Google-Smtp-Source: AKy350YNuV0g0PZ0k0WwUatWOYlSN/gtQ9cXnC3j0Jq1dYytFxMYMKNNYT7lYhl6H3XcRYhF62a/0z2rPh1oEuTX7ZQ=
X-Received: by 2002:a50:bac7:0:b0:4ad:6052:ee90 with SMTP id
 x65-20020a50bac7000000b004ad6052ee90mr21606ede.7.1679590092769; Thu, 23 Mar
 2023 09:48:12 -0700 (PDT)
MIME-Version: 1.0
References: <21645_1621719161_60A97879_21645_2022_1_CAK6apsPDs_9FnES40RDw8qin4wDu_OHZYQebu=o0oKK2k_k8qg@mail.gmail.com>
 <BLAPR09MB661241232D0B9E777670F977D9289@BLAPR09MB6612.namprd09.prod.outlook.com>
In-Reply-To: <BLAPR09MB661241232D0B9E777670F977D9289@BLAPR09MB6612.namprd09.prod.outlook.com>
Date: Thu, 23 Mar 2023 12:48:01 -0400
Message-ID: <CAB__hTQ8y=GxHjphbatnB2yK6o2gPQv7p9sWHAuEesN5OXieOA@mail.gmail.com>
To: Jeffrey P Long <jplong@mitre.org>
Message-ID-Hash: A5KFP3W7YM5GKUU3QNIOO5QSSHNOFYR4
X-Message-ID-Hash: A5KFP3W7YM5GKUU3QNIOO5QSSHNOFYR4
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Time base error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A5KFP3W7YM5GKUU3QNIOO5QSSHNOFYR4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6936717882607092229=="

--===============6936717882607092229==
Content-Type: multipart/alternative; boundary="000000000000d93db505f7940af9"

--000000000000d93db505f7940af9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jeff,
I am getting this same error.  Did you ever figure out the problem?
Rob

On Sat, May 22, 2021 at 5:46=E2=80=AFPM Jeffrey P Long <jplong@mitre.org> w=
rote:

> I am getting some weird error about a invalid time base clock name after
> starting to create my own block. I did not see this just doing the simple
> pass thru RFnoc example. What would this mean?
>
> Thanks
> Jeff
>
> <https://aka.ms/o0ukef>
>
>
> jplong@mm241897-pc:~/proj/ettus_e320/rfnoc-example/build/apps$
> ./txcore_block
> [REGISTRY] WARNING: Attempting to overwrite previously registered RFNoC
> block with noc_id,device_id: 0xb16, 0xffff
> [REGISTRY] WARNING: Attempting to overwrite previously registered RFNoC
> block with noc_id,device_id: 0xde30, 0xffff
>
> Creating the RFNoC graph with args: ...
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> UHD_4.0.0.0-122-g75f2ba94
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D192.168.30.5,type=3De3xx,product=3De320,serial=3D31DCD15,clai=
med=3DFalse,addr=3D192.168.10.5
> [INFO] [MPM.PeriphManager] init() called with device args
> `mgmt_addr=3D192.168.30.5,product=3De320'.
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
> [INFO] [0/Radio#0] CODEC loopback test passed
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
> [INFO] [0/Radio#0] CODEC loopback test passed
> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s=
)
> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s=
)
> [ERROR] [MPMD::MB_IFACE] Invalid timebase clock name:
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
> LookupError: KeyError: [MPMD_MB::IFACE] Invalid timebase clock name:
> Error: RuntimeError: Failure to create rfnoc_graph.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d93db505f7940af9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jeff,<div>I am getting this same error.=C2=A0 Did you e=
ver figure out the=C2=A0problem?</div><div>Rob</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, May 22, 2021 at=
 5:46=E2=80=AFPM Jeffrey P Long &lt;<a href=3D"mailto:jplong@mitre.org">jpl=
ong@mitre.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">



<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>I am getting some weird error about a invalid time base clock name aft=
er starting to create my own block. I did not see this just doing the simpl=
e pass thru RFnoc example. What would this mean?</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Thanks</div>
<div dir=3D"ltr">Jeff</div>
<div><br>
</div>
<div id=3D"m_6972428964118572187ms-outlook-mobile-signature" dir=3D"ltr"><a=
 href=3D"https://aka.ms/o0ukef" target=3D"_blank"></a></div>
</div>
<div id=3D"m_6972428964118572187id-531e83e2-f623-4c10-a416-a48fca500fd1">
<div id=3D"m_6972428964118572187divRplyFwdMsg" dir=3D"ltr"><font face=3D"Ca=
libri, sans-serif"><br>
<div>=C2=A0</div>
</font></div>

<div dir=3D"ltr">jplong@mm241897-pc:~/proj/ettus_e320/rfnoc-example/build/a=
pps$ ./txcore_block
<br>
[REGISTRY] WARNING: Attempting to overwrite previously registered RFNoC blo=
ck with noc_id,device_id: 0xb16, 0xffff<br>
[REGISTRY] WARNING: Attempting to overwrite previously registered RFNoC blo=
ck with noc_id,device_id: 0xde30, 0xffff<br>
<br>
Creating the RFNoC graph with args: ...<br>
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-122-g7=
5f2ba94<br>
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.30.5,type=3De3xx,product=3De320,serial=3D31DCD15,claimed=3DFalse,add=
r=3D192.168.10.5<br>
[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D192.=
168.30.5,product=3De320&#39;.<br>
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ... <br>
[INFO] [0/Radio#0] CODEC loopback test passed<br>
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ... <br>
[INFO] [0/Radio#0] CODEC loopback test passed<br>
[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)<=
br>
[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)<=
br>
[ERROR] [MPMD::MB_IFACE] Invalid timebase clock name: <br>
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: LookupErr=
or: KeyError: [MPMD_MB::IFACE] Invalid timebase clock name:
<br>
Error: RuntimeError: Failure to create rfnoc_graph.<br>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000d93db505f7940af9--

--===============6936717882607092229==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6936717882607092229==--
