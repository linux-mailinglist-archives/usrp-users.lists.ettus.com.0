Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CC060779A
	for <lists+usrp-users@lfdr.de>; Fri, 21 Oct 2022 15:06:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D04C5383064
	for <lists+usrp-users@lfdr.de>; Fri, 21 Oct 2022 09:06:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666357590; bh=qOC8tdyG6QuzaG3d+MY7oUIUGBftd05jYF/NwINn/v8=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=du/KXCo5CMxlnT+vCyxTVNiQNdzoom1DbHy+qhBfqD7ZFvt58GXh5axGOeD7hlc2H
	 rTB+J0hMk57ZAOc+dUAug+fuKlb/977Ei4D2C5byAgkHUTzVZHYgHTsqxi6bbNJUgh
	 ehnboLCazW/R4i4ToW/fm/IaVtsocCFTjkrIpFTdUAcI1LVLQXYHlKp8rA3d+rrHTI
	 tM5rLQAlimVCnjWB3gCBMiWRXpDYFf4OiiaAfgz7sd+VtErWrTJbqBEBlqzXOABhKn
	 cpYon2mZR+j//7pxYQPTzTnsw/zohSFUMqbvOeysNijNn4238kAXzi18asoKXk/duA
	 Cmbyt1Fpo7PBg==
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	by mm2.emwd.com (Postfix) with ESMTPS id EE80F380C2C
	for <usrp-users@lists.ettus.com>; Fri, 21 Oct 2022 09:04:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="l8bIt+oD";
	dkim-atps=neutral
Received: by mail-oo1-f46.google.com with SMTP id s1-20020a4a81c1000000b0047d5e28cdc0so420954oog.12
        for <usrp-users@lists.ettus.com>; Fri, 21 Oct 2022 06:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6Q8oUj48qRtPeqfVojcsEMMcdtmoB8GBjJJ53V/5Q1o=;
        b=l8bIt+oDI85kLW/lLPuh7WY9zxs3zLwSp3q7mRGAtf0mjX6dCLBHC+qEgdBRIutDep
         RtsGecv5OqcSFEdwlDTX3kyK/45EjX8A6JaiEauHmpPh9pCFeuOsds2aYssMY91Wuwx/
         QEJ1DKwymcr119zH9vU8/iCwM4epVzH5lG46AnUwMngDb/Y1eMi0KtFY2o9JsEIr2spf
         mljKat3piuaOdBboJ0xXdcTsG/i9IM8WgrsrRs9XVLhFvEsae53bt8p0X1mGKd8nky5x
         6Ybr1AyjuzQsAK63bh/fBEEKmEhfBHtBfCpAuI7Vqp3dcoBqwxpDHm7Rpfb+qjyquXGJ
         RfKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6Q8oUj48qRtPeqfVojcsEMMcdtmoB8GBjJJ53V/5Q1o=;
        b=2hihc6Pbbf42dB8E/pWMCA+qbaiU0mybbuGNZeatZeDuAOBDJxVFQikW6H0H4mqszI
         P4k3UD6jbpgnbry2BtFB/B8+GWIqscAEJBfzoVJPTN2v1iZO6dO9nRyX7YbMi2VDBoCT
         AVG2hd6TeBDDyyt8Ud886dAFZdo++PKA4BFnOQjQCWgJUEXUrJvib3KqSZTGKihhEGzr
         wxyztMHFiRq1btZzN3ea/4akLvjThSgo8XEcF70JpBkcHGyIcam0R74fJR6SYRx3nuz9
         EWKBxxU9PHzIJRYt+A5ubWRlgMFQwZukzgY+yGjfsW4YTY56EvA6bJyY7ENqlHUh/K+C
         MOsA==
X-Gm-Message-State: ACrzQf3RycHVOwzAj7xJyIsr9ysW/TUjQ6z8LGWlmMttKLyxiAHZRvpG
	Y7rk1EernAMGhS5E/mSHvTDd1Zvd/XYbygHI0pW2XpF0nHQ=
X-Google-Smtp-Source: AMsMyM6fOjZf6nc3vl/6+1EhD3NMT5Smj1qzTDHyMFwTxx8/GlmvwdzA9sjG39g/NihOCAMMDViaRnh59/gBL9iwUbo=
X-Received: by 2002:a4a:e810:0:b0:47f:775a:b028 with SMTP id
 b16-20020a4ae810000000b0047f775ab028mr8912940oob.12.1666357480787; Fri, 21
 Oct 2022 06:04:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAFPzw1m8+T8ApDoskGitdvJJq5QKprG9cWWWPi=DNf8RM0f++g@mail.gmail.com>
In-Reply-To: <CAFPzw1m8+T8ApDoskGitdvJJq5QKprG9cWWWPi=DNf8RM0f++g@mail.gmail.com>
From: Anabel Almodovar <anabel.almodovar@gmail.com>
Date: Fri, 21 Oct 2022 15:04:29 +0200
Message-ID: <CAFPzw1kqEJkZk3vNhBstYwEwvmrJ0BdqNjC_JHpAw5t4_MDwzg@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: EPYTGWOHVQ2Y235O5MTJ7E7FJRZJ5R64
X-Message-ID-Hash: EPYTGWOHVQ2Y235O5MTJ7E7FJRZJ5R64
X-MailFrom: anabel.almodovar@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Fwd: Initializing block control DmaFIFO_0 module error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EPYTGWOHVQ2Y235O5MTJ7E7FJRZJ5R64/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8360099029214054948=="

--===============8360099029214054948==
Content-Type: multipart/alternative; boundary="000000000000b6156305eb8b15cf"

--000000000000b6156305eb8b15cf
Content-Type: text/plain; charset="UTF-8"

Hello,

I am working with two X310 and TwinRx in both, Ubuntu 16.04 LTE and UHD
3.12.
I am trying to execute any code and I get an error in the initialization of
the cards in the DmaFIFO_0 module. This is my output from running the
*uhd_usrp_probe* command for each individual card and for the set.

Before the modification of one of my codes the cards worked perfectly. Due
to the malfunction of the code tests that I have carried out, I have had to
cut the operation of the cards by force (ctrl + z), is it possible that
this has caused the error in the cards? How can I solve this error?

Thanks in advance.

All the best
Anabel Almodovar

























*rs3lab@rs3lab-HP-Z8-G4-Workstation:~/workarea-uhd/uhd/host/examples/build$
uhd_usrp_probe[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
Boost_105800; UHD_3.12.0.0-69-g46ab88b4[INFO] [X300] X300 initialization
sequence...[INFO] [X300] Maximum frame size: 8000 bytes.[INFO] [X300] Radio
1x clock: 200 MHz[INFO] [GPS] No GPSDO found[INFO] [0/DmaFIFO_0]
Initializing block control (NOC ID: 0xF1F0D00000000000)[ERROR] [UHD]
Exception caught in safe-call.  in
ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with uhd::endianness_t
_endianness = (uhd::endianness_t)0u]  at
/home/rs3lab/workarea-uhd/uhd/host/lib/rfnoc/ctrl_iface.cpp:60this->send_cmd_pkt(0,
0, true); -> EnvironmentError: IOError: Block ctrl (CE_00_Port_30) packet
parse error - EnvironmentError: IOError: Expected packet index: 18 Received
index: 20Error: EnvironmentError: IOError: Block ctrl (CE_00_Port_30)
packet parse error - EnvironmentError: IOError: Expected packet index: 17
Received index:
19rs3lab@rs3lab-HP-Z8-G4-Workstation:~/workarea-uhd/uhd/host/examples/build$
sudo uhd_usrp_probe[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
Boost_105800; UHD_3.12.0.0-69-g46ab88b4[INFO] [X300] X300 initialization
sequence...[INFO] [X300] Maximum frame size: 8000 bytes.[INFO] [X300] Radio
1x clock: 200 MHz[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
0xF1F0D00000000000)[ERROR] [UHD] Exception caught in safe-call.  in
ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with uhd::endianness_t
_endianness = (uhd::endianness_t)0u]  at
/home/rs3lab/workarea-uhd/uhd/host/lib/rfnoc/ctrl_iface.cpp:60this->send_cmd_pkt(0,
0, true); -> EnvironmentError: IOError: Block ctrl (CE_00_Port_30) packet
parse error - EnvironmentError: IOError: Expected packet index: 17 Received
index: 20Error: EnvironmentError: IOError: Block ctrl (CE_00_Port_30) no
response packet - AssertionError: bool(buff)  in uint64_t
ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [with
uhd::endianness_t _endianness = (uhd::endianness_t)0u; uint64_t = long
unsigned int]  at
/home/rs3lab/workarea-uhd/uhd/host/lib/rfnoc/ctrl_iface.cpp:154*

--000000000000b6156305eb8b15cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div>Hello,</d=
iv><div><br></div><div>I am working with two X310 and TwinRx in both, Ubunt=
u 16.04 LTE and UHD 3.12.</div>I am trying to execute any code and I get an=
 error in the initialization of the cards in the DmaFIFO_0 module. This is =
my output from running the <i>uhd_usrp_probe</i> command for each individua=
l card and for the set.<br><br>Before the modification of one of my codes t=
he cards worked perfectly. Due to the malfunction of the code tests that I =
have carried out, I have had to cut the operation of the cards by force (ct=
rl + z), is it possible that this has caused the error in the cards? How ca=
n I solve this error?<br><br>Thanks in advance.<br><br><div>All the best</d=
iv><div>Anabel Almodovar<br></div><div><br></div><div><i><b>rs3lab@rs3lab-H=
P-Z8-G4-Workstation:~/workarea-uhd/uhd/host/examples/build$ uhd_usrp_probe<=
br>[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.=
12.0.0-69-g46ab88b4<br>[INFO] [X300] X300 initialization sequence...<br>[IN=
FO] [X300] Maximum frame size: 8000 bytes.<br>[INFO] [X300] Radio 1x clock:=
 200 MHz<br>[INFO] [GPS] No GPSDO found<br>[INFO] [0/DmaFIFO_0] Initializin=
g block control (NOC ID: 0xF1F0D00000000000)<br>[ERROR] [UHD] Exception cau=
ght in safe-call.<br>=C2=A0 in ctrl_iface_impl&lt;_endianness&gt;::~ctrl_if=
ace_impl() [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0u]<b=
r>=C2=A0 at /home/rs3lab/workarea-uhd/uhd/host/lib/rfnoc/ctrl_iface.cpp:60<=
br>this-&gt;send_cmd_pkt(0, 0, true); -&gt; EnvironmentError: IOError: Bloc=
k ctrl (CE_00_Port_30) packet parse error - EnvironmentError: IOError: Expe=
cted packet index: 18 Received index: 20<br>Error: EnvironmentError: IOErro=
r: Block ctrl (CE_00_Port_30) packet parse error - EnvironmentError: IOErro=
r: Expected packet index: 17 Received index: 19<br>rs3lab@rs3lab-HP-Z8-G4-W=
orkstation:~/workarea-uhd/uhd/host/examples/build$ sudo uhd_usrp_probe<br>[=
INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.12.0=
.0-69-g46ab88b4<br>[INFO] [X300] X300 initialization sequence...<br>[INFO] =
[X300] Maximum frame size: 8000 bytes.<br>[INFO] [X300] Radio 1x clock: 200=
 MHz<br>[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D000=
00000000)<br>[ERROR] [UHD] Exception caught in safe-call.<br>=C2=A0 in ctrl=
_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl() [with uhd::endianness_t =
_endianness =3D (uhd::endianness_t)0u]<br>=C2=A0 at /home/rs3lab/workarea-u=
hd/uhd/host/lib/rfnoc/ctrl_iface.cpp:60<br>this-&gt;send_cmd_pkt(0, 0, true=
); -&gt; EnvironmentError: IOError: Block ctrl (CE_00_Port_30) packet parse=
 error - EnvironmentError: IOError: Expected packet index: 17 Received inde=
x: 20<br>Error: EnvironmentError: IOError: Block ctrl (CE_00_Port_30) no re=
sponse packet - AssertionError: bool(buff)<br>=C2=A0 in uint64_t ctrl_iface=
_impl&lt;_endianness&gt;::wait_for_ack(bool, double) [with uhd::endianness_=
t _endianness =3D (uhd::endianness_t)0u; uint64_t =3D long unsigned int]<br=
>=C2=A0 at /home/rs3lab/workarea-uhd/uhd/host/lib/rfnoc/ctrl_iface.cpp:154<=
/b></i><br><br></div></div>
</div></div>

--000000000000b6156305eb8b15cf--

--===============8360099029214054948==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8360099029214054948==--
