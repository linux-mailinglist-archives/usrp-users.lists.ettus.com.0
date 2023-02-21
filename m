Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA2569E52D
	for <lists+usrp-users@lfdr.de>; Tue, 21 Feb 2023 17:53:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A3081380946
	for <lists+usrp-users@lfdr.de>; Tue, 21 Feb 2023 11:53:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676998405; bh=4DikzY+0V1rEI5ifrjypcp6dBfzfU6Xj2Tjy38Q5s8w=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=mHEHOPdbwzDQMYLDhel5LCTKMknd1cYUbpznSSr0n82lL+NceyrK82g5NFgsKOeYA
	 O2ZYkCVlvfcVc+/ARcWZiDq9lh9vNmIeXLEfAEkLIMqko4h0JLPcpvmnXlZoZNc4um
	 GVKJ7wrg1IiRuhKNxgqEQXcU+Nhsn5EBbluP8StbjSAqseXBt+ZLP7AXNWvE4GVFao
	 icxrAz5xqmGFGVukbQwSzC4WkGDuyiYp2NcjLTlMf4/9hrvshQLN1W4YjFTUgqO0Wp
	 cq78sbBwu4Q28UWfFESMYngMZedIsNhWCAsp502Q3PR/YrlTsE7zY8x8AcACicjDbu
	 M+GXh6CCQ9UlA==
Received: from mail-il1-f225.google.com (mail-il1-f225.google.com [209.85.166.225])
	by mm2.emwd.com (Postfix) with ESMTPS id 2A160380946
	for <usrp-users@lists.ettus.com>; Tue, 21 Feb 2023 11:53:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gotenna.com header.i=@gotenna.com header.b="YtnVNImm";
	dkim-atps=neutral
Received: by mail-il1-f225.google.com with SMTP id e10so1976346ilu.4
        for <usrp-users@lists.ettus.com>; Tue, 21 Feb 2023 08:53:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TMKAzRuCRQK/bERhVJs5Bc0sG55whRbjAyVfCfCeXfw=;
        b=JG1oIYTZC6doaHQLXwskIlTi6f+EkZBjpti0ffmKYrsbsmd+JFhIhdz28y4xKVw7TY
         NaAg9OI17Rg2IAym8vLvZqEXGQxt3XZ9GMk5a6uEesFWZZDGFcI8kh+mY/htyzcXf37E
         jxcGZTz+NJN4etZ0PjyKBlD04wth9Eb+70ky/N4nRTckDkcx+vnmy62BhVQWqM+5PYFk
         jpkroqqnDFgMH2zgzexHWrFtCI12y8Z2a8xRczzqpcGKCChAFT5syp35DUs1FHylpeJK
         SkfV+NVkeox6IibntS9gEh6h2v/wYM828X6asNtKB8EbrgiBK7NCItnHqruejSX+oka2
         m6tA==
X-Gm-Message-State: AO0yUKX4GCJOucfJNxQt0Tr/T58Aqk/64bCatvtVv+d1soq/5PmCP8zd
	SJmbPH73TAYVQ+6Exk5PkCZNRd/RSgevN0Xh5XJiiMZrKgUBSsM6KMw=
X-Google-Smtp-Source: AK7set/wAIMKZbq255Bv859dP/iJoAcOTx8FJch/LrOvIt66z4NA6++LLB+J4AMgwujFkF+kHWEpdLEtK7qa
X-Received: by 2002:a92:1a41:0:b0:315:21d1:760b with SMTP id z1-20020a921a41000000b0031521d1760bmr3111617ill.1.1676998399513;
        Tue, 21 Feb 2023 08:53:19 -0800 (PST)
Received: from us2.smtp.exclaimer.net (us2.smtp.exclaimer.net. [104.209.35.28])
        by smtp-relay.gmail.com with ESMTPS id p11-20020a92c60b000000b003157e67e361sm613490ilm.2.2023.02.21.08.53.19
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2023 08:53:19 -0800 (PST)
X-Relaying-Domain: gotenna.com
Received: from mail-pl1-f198.google.com (209.85.214.198) by
	 us2.smtp.exclaimer.net (104.209.35.28) with Exclaimer Signature Manager
	 ESMTP Proxy us2.smtp.exclaimer.net (tlsversion=TLS12,
	 tlscipher=TLS_ECDHE_WITH_AES256_SHA1); Tue, 21 Feb 2023 16:53:19 +0000
X-ExclaimerHostedSignatures-MessageProcessed: true
X-ExclaimerProxyLatency: 14391027
X-ExclaimerImprintLatency: 1798780
X-ExclaimerImprintAction: 69e2fe70a6364af68756c4f8423b816e
Received: by mail-pl1-f198.google.com with SMTP id f2-20020a17090274c200b0019ac5d9fdb3so2639063plt.9
        for <usrp-users@lists.ettus.com>; Tue, 21 Feb 2023 08:53:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gotenna.com; s=google;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=TMKAzRuCRQK/bERhVJs5Bc0sG55whRbjAyVfCfCeXfw=;
        b=YtnVNImm/6rR6wmEgVd5WT6i+GiXOJuyvaAWJJMNlfx2dv+fDofn1MtlYz0oeVoW11
         GHWCY8MGcpuJt56EQYlw6Y2m2dIv6AC2zxFWRtbowmHb8MDGcVYEg646wX3KNGFIcxRA
         ug0Yhg1jruRnrAhk6mj2Q6ral758uTpzSWGlU/W50QwN1MHxJlW9XrF0BIr5pXw8OPfk
         MS4CkzE/o0w7xUkAsdKbkzHgfDO+RlEG/ZXqRu/JXApn07UFmT9n3Gn9qZAzUgpVWUGU
         7esAoX3Tl0IVKhWC8SAYzp80mn5vxL/IHZ7Z09Zeyc3IyS1MRiVQ6Vu6r3tPG5NMtE51
         Da6A==
X-Received: by 2002:a17:90b:1d43:b0:231:1c7f:81c1 with SMTP id ok3-20020a17090b1d4300b002311c7f81c1mr1317100pjb.139.1676998397191;
        Tue, 21 Feb 2023 08:53:17 -0800 (PST)
X-Received: by 2002:a17:90b:1d43:b0:231:1c7f:81c1 with SMTP id
 ok3-20020a17090b1d4300b002311c7f81c1mr1317094pjb.139.1676998396781; Tue, 21
 Feb 2023 08:53:16 -0800 (PST)
MIME-Version: 1.0
From: Maxim Belotserkovsky <maxim@gotenna.com>
Date: Tue, 21 Feb 2023 10:53:06 -0600
Message-ID: <CA+7S2faCOt9o1wmpZsVkBMu-mrjuNH4R84GVtGWO1A61Q-uyUA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 422KNENNCCSBX25UBFVWPGFO43QZQOPM
X-Message-ID-Hash: 422KNENNCCSBX25UBFVWPGFO43QZQOPM
X-MailFrom: maxim@gotenna.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Problem verifying B200 device
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/422KNENNCCSBX25UBFVWPGFO43QZQOPM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5143334180820185204=="

--===============5143334180820185204==
Content-Type: multipart/alternative; boundary="000000000000bad33505f5389d80"

--000000000000bad33505f5389d80
Content-Type: text/plain; charset="UTF-8"

Hi everyone. Got a brand-new B200-mini device, installed all the tools etc.
Ubuntu sees the device correctly once it's attached to the host:

<home>:~$ lsusb
Bus 001 Device 004: ID 2500:0021 Ettus Research LLC USRP B200-mini
...........

However, any attempt to run initial UHD verification (as per
https://kb.ettus.com/Verifying_the_Operation_of_the_USRP_Using_UHD_and_GNU_Radio),
for example, by running uhd_find_devices, fails in the following way :

<home>:~$ uhd_find_devices
[INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400;
UHD_4.4.0.0-0ubuntu1~jammy1
[INFO] [B200] Loading firmware image:
/usr/share/uhd/images/usrp_b200_fw.hex...
No UHD Devices Found
--------------------------
When I re-run 'lsusb' now, The 'B200' device no longer shows up:

<home>:~$ lsusb
 ..................
-------------------------------------
At this point, it now requires power-cycling the B200 in order for it to be
recognized by the OS again (which presumably re-loads the default factory
image that comes on the built-in flash)

So, the problem is this: it appears as if in the process of loading the
firmware image (which comes as a part of running any of the UHD utilities)
the device loses connection to the system, causing it to no longer
enumerate on the OS, so that the subsequent steps (of 'uhd_find_devices' in
our example) can no longer be executed (due to 'No UHD Devices found').

The questions I have are these :
1) Is this something generally known, with a known solution, or is there
something wrong with my particular system, the B200 device, driver
installation etc.?
2) Is the problem really caused by the FPGA image loading, or some other
non-FPGA component being disturbed causing the device to disconnect? Is it
possible the image attempted to be loaded the wrong one( usrp_b200_fw.hex
incompatible with the hardware)?
2) Is there a work-around? For example (preferred by me): can I run UHD
with the option passed to commands of not-loading the FPGA image every time
a command is executed? Say, a config file that UHD reads to know what to do
with the device? I want to be able to deal with the B200 with whatever
static image I've loaded up on it (be it the factory image or some future
custom image)

Thank you.

--000000000000bad33505f5389d80
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone. Got a brand-new B200-mini device, installed a=
ll the tools etc. Ubuntu sees the device correctly once it&#39;s attached t=
o the host:<div><br></div><div>&lt;home&gt;:~$ lsusb<br></div><div>Bus 001 =
Device 004: ID 2500:0021 Ettus Research LLC USRP B200-mini<br>...........</=
div><div><br></div><div>However, any attempt to run initial UHD verificatio=
n (as per=C2=A0<a href=3D"https://kb.ettus.com/Verifying_the_Operation_of_t=
he_USRP_Using_UHD_and_GNU_Radio">https://kb.ettus.com/Verifying_the_Operati=
on_of_the_USRP_Using_UHD_and_GNU_Radio</a>), for example, by running uhd_fi=
nd_devices, fails in the following way :</div><div><br></div><div>&lt;home&=
gt;:~$ uhd_find_devices<br>[INFO] [UHD] linux; GNU C++ version 11.3.0; Boos=
t_107400; UHD_4.4.0.0-0ubuntu1~jammy1<br>[INFO] [B200] Loading firmware ima=
ge: /usr/share/uhd/images/usrp_b200_fw.hex...<br>No UHD Devices Found</div>=
<div>--------------------------</div><div>When I re-run &#39;lsusb&#39; now=
, The &#39;B200&#39; device no longer shows up:</div><div><br>&lt;home&gt;:=
~$ lsusb</div><div>=C2=A0..................</div><div>---------------------=
----------------</div><div>At this point, it now requires power-cycling the=
=C2=A0B200 in order for it to be recognized by the OS again (which presumab=
ly re-loads the default factory image that comes on the built-in flash)</di=
v><div><br>So, the problem is this: it appears as if in the process of load=
ing the firmware image (which comes as a part of running any of the UHD uti=
lities) the device loses connection to the system, causing it to no longer =
enumerate on the OS, so that the subsequent steps (of &#39;uhd_find_devices=
&#39; in our example) can no longer be executed (due to &#39;No UHD Devices=
 found&#39;).=C2=A0</div><div><br></div><div>The questions I have are these=
 :=C2=A0</div><div>1) Is this something generally known, with a known solut=
ion, or is there something wrong with my particular system, the B200 device=
, driver installation etc.?</div><div>2) Is the problem really caused by th=
e FPGA image loading, or some other non-FPGA component being disturbed caus=
ing the device to disconnect? Is it possible the=C2=A0image attempted to be=
 loaded the wrong one( usrp_b200_fw.hex incompatible with the hardware)?</d=
iv><div>2) Is there a work-around? For example (preferred by me): can I run=
 UHD with the option passed to commands of not-loading the FPGA image every=
 time a command is executed? Say, a config file that UHD reads to know what=
 to do with the device? I want to be able to deal with the B200 with whatev=
er static image I&#39;ve loaded up on it (be it the factory image or some f=
uture custom=C2=A0image)</div><div><br></div><div>Thank you.</div><div><div=
><br></div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gma=
il_signature"></div></div></div>

--000000000000bad33505f5389d80--

--===============5143334180820185204==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5143334180820185204==--
