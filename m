Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E55B26F4A44
	for <lists+usrp-users@lfdr.de>; Tue,  2 May 2023 21:24:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0C8E8384759
	for <lists+usrp-users@lfdr.de>; Tue,  2 May 2023 15:24:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683055470; bh=zUdP6E0Pci1Mv9f+m6szfuAUUpjM4g4Z347T+t19Ifs=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=BVzhonrkT0Lf+OYnhHAOgDJJSZ7oBSr5TF3Oyzu62tgsaAf7Bdo0wU42BvmIGrzV7
	 c4ujMO6w7dmHerhEgSgNnHfmkona2mg93QgcsV+WzEaMNTWpGpcRGTNGzHiLM2kyVb
	 6lFUyO8PqYkgE7HBkV7Rz8wooNIK/OvGVzMDmceFtMfI7XieTOxAcyWtFfn7SQwtEJ
	 kBni4vRd6yQZTqBq9N5jC3aU459qIr43CRD/lsKMtEaivul1qNgOukQkgMRTirLHMW
	 AgK9dzc7RfyXZqbBpLSnRIqhb2ps+rH5ip4kc5JGDyBJOr1RwFp6y3jKgu0NqG4jC2
	 iDyZRanRmUP8A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 475F63846ED
	for <usrp-users@lists.ettus.com>; Tue,  2 May 2023 15:23:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683055432; bh=FibGSPhrPcIAUpB4vnsCHQarYLub1QzwZMY8JjNQsng=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=FdnVDN7j3QFyynOygiRdXtb2lMSdivFtFrfh/nngV4kH01jSHtsV9rE8wj5nmdV1y
	 dZzHWBqCnJP/ojTBmt85A5cayr9r1OcPIrSeefFeA7ecoFXJLyuwxOjSLAZjc1eBHu
	 /PzWk8zanxS05Wx8zJADtVbDMfdeLy2AiqToECkUVj2+WaW5u0v9MqJA1iYNq8nNmY
	 tYWuMjrk/bUg0rxQEKedwllyFBPoW6wBUCsIpM+PGBq46Sq4679UwmagmlpZscoxb8
	 6aK6Zp0tijjXBQNpH9HlBTwKCJFLd47FoRjd6u7Z8OXeM++KQ2GPIjXZEDKlR2MuUw
	 jQrbEWxPg5xlA==
Date: Tue, 2 May 2023 19:23:52 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <TdBV5qJ67rxeF1gmAnY8kGAmENVOf2LiEsag6eBe3Rw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAEXYVK4Ts0dGUfgAs5Js-iozwK5EUS_gqa-KOXuM9SDORYTQ7w@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: JK72GDC2DJJ2Q66TQ2BSNXTGVARQ643R
X-Message-ID-Hash: JK72GDC2DJJ2Q66TQ2BSNXTGVARQ643R
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Tail of every transmit trimmed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JK72GDC2DJJ2Q66TQ2BSNXTGVARQ643R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2740182807582292166=="

This is a multi-part message in MIME format.

--===============2740182807582292166==
Content-Type: multipart/alternative;
 boundary="b1_TdBV5qJ67rxeF1gmAnY8kGAmENVOf2LiEsag6eBe3Rw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_TdBV5qJ67rxeF1gmAnY8kGAmENVOf2LiEsag6eBe3Rw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

> Try interpolating on the host to 200 Msps and see how things go.

I=E2=80=99m not sure what you are suggesting. If I take the =E2=80=9Cbad=E2=
=80=9D recorded file and I interpolate from 25 to 200 Msps, it=E2=80=99s =
not going to make chopped tail the appropriate width.

I also can=E2=80=99t just run the USRP at 200 Msps, because I=E2=80=99m u=
sing a UBX-160 daughterboard which has an analog bandwidth of 160 MHz.=20

I think I=E2=80=99m just asking the wrong question somehow. I can=E2=80=99=
t be the only person to have ever tried to write a UHD application and as=
ked =E2=80=9CWhy is my signal shifted by a constant group delay? Why are =
my final 20 or so samples always chopped off?=E2=80=9D

I would expect UHD to handle these transparently for me. If there is a co=
nstant group delay, why doesn=E2=80=99t the timestamp get decremented by =
N clock ticks? If there are X taps in the transmit chain filters and I re=
quested to transmit 1000 samples, why aren=E2=80=99t the 1000 samples tra=
nsmitted taken from the useful part of the filter convolution? Do I have =
to always instead transmit 1020 samples at the application layer?

I understand that there are different devices and different configuration=
s of devices. But there=E2=80=99s nothing stopping UHD on the host softwa=
re side from reading a register to learn some information about the confi=
gured device.=20

It may also be because of the RFNoC stuff it=E2=80=99s complicated for th=
e host software to figure out some of these values. Even if it can=E2=80=99=
t be automatically figured out in software, I would not expect the answer=
 to be =E2=80=9Cread the Verilog for the Tx filter chain and determine ho=
w many taps exist=E2=80=9D for the average user. Is there an application =
note that talks about best practices somewhere?

--b1_TdBV5qJ67rxeF1gmAnY8kGAmENVOf2LiEsag6eBe3Rw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<blockquote><p>Try interpolating on the host to 200 Msps and see how things=
 go.</p></blockquote><p>I=E2=80=99m not sure what you are suggesting. If I =
take the =E2=80=9Cbad=E2=80=9D recorded file and I interpolate from 25 to 2=
00 Msps, it=E2=80=99s not going to make chopped tail the appropriate width.=
</p><p>I also can=E2=80=99t just run the USRP at 200 Msps, because I=
=E2=80=99m using a UBX-160 daughterboard which has an analog bandwidth of 1=
60 MHz. </p><p>I think I=E2=80=99m just asking the wrong question somehow. =
I can=E2=80=99t be the only person to have ever tried to write a UHD applic=
ation and asked =E2=80=9CWhy is my signal shifted by a constant group delay=
? Why are my final 20 or so samples always chopped off?=E2=80=9D</p><p>I wo=
uld expect UHD to handle these transparently for me. If there is a constant=
 group delay, why doesn=E2=80=99t the timestamp get decremented by N clock =
ticks? If there are X taps in the transmit chain filters and I requested to=
 transmit 1000 samples, why aren=E2=80=99t the 1000 samples transmitted tak=
en from the useful part of the filter convolution? Do I have to always inst=
ead transmit 1020 samples at the application layer?</p><p>I understand that=
 there are different devices and different configurations of devices. But t=
here=E2=80=99s nothing stopping UHD on the host software side from reading =
a register to learn some information about the configured device. </p><p>It=
 may also be because of the RFNoC stuff it=E2=80=99s complicated for the ho=
st software to figure out some of these values. Even if it can=E2=80=99t be=
 automatically figured out in software, I would not expect the answer to be=
 =E2=80=9Cread the Verilog for the Tx filter chain and determine how many t=
aps exist=E2=80=9D for the average user. Is there an application note that =
talks about best practices somewhere? </p>

--b1_TdBV5qJ67rxeF1gmAnY8kGAmENVOf2LiEsag6eBe3Rw--

--===============2740182807582292166==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2740182807582292166==--
