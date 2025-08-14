Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B61B26B7D
	for <lists+usrp-users@lfdr.de>; Thu, 14 Aug 2025 17:51:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3677C386BC1
	for <lists+usrp-users@lfdr.de>; Thu, 14 Aug 2025 11:51:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755186661; bh=CfFXoR+57Lk6iONESeHbFBJK551y7Ydiavk17bjeiH0=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=FiA+GjylyC1IWFZtbfZ4qM5mDRqONiEt4kf5LsNZieYCbv0CZH3jmWEtz1BzmQfdW
	 rmw2XYZsD13JM1q/oGmGsqfkzL5+/nJDPKTG922LPPOx/1SjMKXbALQw4UwEl306YY
	 mHfFLD0YGs74UphGB5iuiBzxOKhChk/RMMgeF9nqBnfms7n6Q/79m51vao+iuefT2a
	 LzEv+6jKIu6dEJAewD9y8q6uoC0uO1kpuC/L5FfCwYlQsDwSQb7+EvhDFMDK393ADb
	 Le/RPX+TTNwgEUh5xK5bnBCc0Xw3gvLyGWA43vHWndfx7IjwnZ4K4x28F299pYqqpE
	 YNnrhIXAaCehQ==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 5A130386B42
	for <usrp-users@lists.ettus.com>; Thu, 14 Aug 2025 11:50:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bnV8wL04";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-afcb7ace3baso174842066b.3
        for <usrp-users@lists.ettus.com>; Thu, 14 Aug 2025 08:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755186616; x=1755791416; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=R/b2bjpmDjCptoJLTzllQYTHqlga6ECz5eb0FokySf0=;
        b=bnV8wL04MgwrpY+M1bC1YkyRvDPCyuHiK1YdYyK1g64EOCEF1Zt/ymn1NHqO9XgkpN
         GF/hvH0hkJRLXfh0BP00wr4LU8dZHXvI8wp3XoLvaGo0FuJFMWQrINLIecI4uhNy5A03
         qQDZH1Yt7lbK3O6WH8721pJgx+kV72cOJpCsiIJRFFPKCB+lK17n76L6EFx5yskIC1/P
         uNfp/sIWtKyEJDMQxcPcQRsXmrm63wmW1rDzzLJKGIziT5Ph6kxwQNPWeJ5tob45Qwu/
         6HHYU5M0pmsIsEu6AzFnLshL8uPvLVMbqsOrinSMkHBB9/URyA0iAT5kg1DQ7C0z05XH
         dAAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755186616; x=1755791416;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R/b2bjpmDjCptoJLTzllQYTHqlga6ECz5eb0FokySf0=;
        b=heqNjjn9hGCmVvqSF2sp3qZAitl/6o6/2fG8wDI4AlSpS3uIfXMH/UgUd+VKgRI12/
         zCsyDeph//jG5LVDa5WGoDueD36gkc+Kwps2fMBsJyIlfMhfrxuE5DcrHE/7yC2+COT3
         WBNiRz1r2JWZ0/+A7S5xgNeyebbExUpejcSCFyZtte4YQHhlTZBVdUMROYZMbILGLil7
         NzYaKKWWsafY8cU3Gc5nMrI6TiZFjRHx7n9uIBHuvJlLRlkwjIwTnZzepdW5KwJa34Zr
         adw3/XUa1J/+mi0/cfHlT4/ozzfziPO+SKrVOtysTYaXJ/y9Z6wHMxaLqGU87ED5Nu7Y
         De2w==
X-Gm-Message-State: AOJu0YyBSYX8CpaC9LegtVb7DGOqXjL06tFvtdz3BC30tcbKyyKJFLOC
	eZ8niozCLJOnPXsNq4KtbC2lqkZtvLuujJSKTjW8DNDs+t8+P/QtGHikD0ldIdSpZMp48uS9E/j
	7Ax+SKSeNXTArSiflc7sRfCSAT1lCoRJkddAF
X-Gm-Gg: ASbGncsl4YB1OpCwcO2b57QjS+S7JJgcdxVw22E4S39X8GzBFJRuxQ56YclpF25Wpwi
	HmwgB61pNJ88frYKLTPd5n3ELlYCij2AGqRjo57FH5z13dCse19U4HWH1W7qIogo9X0Py0x8XbY
	l8mVybrOwkEzBwtIXIa05jpQKyIzcJeODksYD2n/eFLSolyEO0wdCg3Cs9wbxm4c8oxqdG8butR
	q9h9X+It0Vi8mI2kg==
X-Google-Smtp-Source: AGHT+IHotUP+FK5bv2WYdEk+8FHJkQDpdbi6R/N792ho46gIT/H0vfCfgT/DLG9knu6J5YjiioQxBGBNmcNBtQm87aM=
X-Received: by 2002:a17:907:9488:b0:ad8:9b5d:2c1e with SMTP id
 a640c23a62f3a-afcbe1af987mr349296866b.29.1755186615511; Thu, 14 Aug 2025
 08:50:15 -0700 (PDT)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 14 Aug 2025 11:50:03 -0400
X-Gm-Features: Ac12FXycPCR2D1034iLVKGEj3c5ITMLVwiAJPlQ6B9U2HNF7FjNhTp5cbXjhkYU
Message-ID: <CAEXYVK764y---h1ad0gFOe9pe29p+ouKn_-pFFH1mWDXr70Q9w@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: UBEWY6KBFVJKNECGXJ275NPH4EWJCLBS
X-Message-ID-Hash: UBEWY6KBFVJKNECGXJ275NPH4EWJCLBS
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X440 eth_100g PAUSE_EN and Dropped Packet Counts
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UBEWY6KBFVJKNECGXJ275NPH4EWJCLBS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7881343933200876283=="

--===============7881343933200876283==
Content-Type: multipart/alternative; boundary="000000000000bb7312063c553a1f"

--000000000000bb7312063c553a1f
Content-Type: text/plain; charset="UTF-8"

I recently ran into an issue where too much offered load to the radio would
cause the entire 100G link to become unresponsive, but dmesg didn't show
that the link actually went down. I could not ping the interface
(Destination unreachable) and packets stopped flowing through the interface
from the host machine. Reseating the cable worked, but I need to figure out
why the port stopped responding in the first place.

I see in the eth_100g that there is a generic to enable pause frames to be
generated:


https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x400/ip/eth_100g_bd/eth_100g.sv#L12

... and I also see in eth_ipv4_interface that there are some dropped
counters:


https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/xport_sv/eth_ipv4_interface.sv#L278

But in the host code, I can't find where they might be able to be read out.

So I assume that dropping packets is well supported in the code, and that
the interface should never become unresponsive.

Any insights on where to read those counters, or do I need to hook an ILA
up to it?

Any idea if the interface can run with the PAUSE_EN parameter set to 0? I
don't want to slow the link down, and I'd rather drop things in the radio
itself. I just need to be able to know when and how often it's happening.

Thanks in advance.

Brian

--000000000000bb7312063c553a1f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I recently ran into an issue where too much offered l=
oad to the radio would cause the entire 100G link to become unresponsive, b=
ut dmesg didn&#39;t show that the link actually went down. I could not ping=
 the interface (Destination unreachable) and packets stopped flowing throug=
h the interface from the host machine. Reseating the cable worked, but I ne=
ed to figure out why the port stopped=C2=A0responding in the first place.</=
div><div><br></div>I see in the eth_100g that there is a generic to enable =
pause frames to be generated:<div><br></div><div>=C2=A0=C2=A0<a href=3D"htt=
ps://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x400/ip/eth_10=
0g_bd/eth_100g.sv#L12">https://github.com/EttusResearch/uhd/blob/master/fpg=
a/usrp3/top/x400/ip/eth_100g_bd/eth_100g.sv#L12</a></div><div><br></div><di=
v>... and I also see in eth_ipv4_interface that there are some dropped coun=
ters:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"https://github.com/Et=
tusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/xport_sv/eth_ipv4_interfac=
e.sv#L278">https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/=
rfnoc/xport_sv/eth_ipv4_interface.sv#L278</a></div><div><br></div><div>But =
in the host code, I can&#39;t find where they might be able to be read out.=
</div><div><br></div><div>So I assume that dropping packets is well support=
ed in the code, and that the interface should never become unresponsive.</d=
iv><div><br></div><div>Any insights on where to read those counters, or do =
I need to hook an ILA up to it?</div><div><br></div><div>Any idea if the in=
terface can run with the PAUSE_EN parameter set to 0? I don&#39;t want to s=
low the link down, and I&#39;d rather drop things in the radio itself. I ju=
st need to be able to know when and how often it&#39;s happening.</div><div=
><br></div><div>Thanks in advance.</div><div><br></div><div>Brian</div></di=
v>

--000000000000bb7312063c553a1f--

--===============7881343933200876283==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7881343933200876283==--
