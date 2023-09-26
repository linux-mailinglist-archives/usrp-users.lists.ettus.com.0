Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EED7AF6FE
	for <lists+usrp-users@lfdr.de>; Wed, 27 Sep 2023 01:57:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E1C3A384658
	for <lists+usrp-users@lfdr.de>; Tue, 26 Sep 2023 19:57:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695772631; bh=ACdrtNGIyiMV13qZ2i6RMacBIErgo1yQGRIPPiAypcM=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=P18gtLcqpbKaBlVsCxelJwnGWxe1W+08NClJjDmZE+QcIoX2qb+03VBL6NQRJL5Er
	 HFX0pngbAeI8HZAo9SpCNezd77GD5LyvQwIsiCoLRU61u4EeAOZZ3z+WdT5VgqQD61
	 nbxElvXo5CGF1Ty6UxLkKSLDfA2bC/hPndl8W2qhJvhvIpFDQClS9Z7on7LCL0dFC3
	 3nKHaFjBdOfkk7/650O1ywr7zL/eum6FnjlbAHR74NmCE1gjHgdH02yynjAOaT5gAr
	 fzbAmL2M71R2/TDR77BIIAdIHGjVB8PThV7e4CI2+OXOEKpSDFt9oJOTHz1SqAFjqi
	 W4hvRY1vlFTow==
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 020E13845D6
	for <usrp-users@lists.ettus.com>; Tue, 26 Sep 2023 19:57:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=umich.edu header.i=@umich.edu header.b="aF2d3+lR";
	dkim-atps=neutral
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-d868d8363e6so7388339276.2
        for <usrp-users@lists.ettus.com>; Tue, 26 Sep 2023 16:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=umich.edu; s=google-2016-06-03; t=1695772626; x=1696377426; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8N5GEk4pJZRCRqylmEKJ20/60xh1m/xTA/twVJeiPzw=;
        b=aF2d3+lRRt7vOB4WTSjTQNOXQtNJcBkSyXuYP2rsttjvg137AzeuO8Rvi0DKRXZ2SE
         TabgAgpsYfTBLgLvpI5ZfsTQ3FSyJXX5nIFseG2oX5eiuEvefglkRpYRyutUrY6Z4RdU
         S7s/xmaKpiTxnbM978zGDXfH7vHx27wp2YAOSJWzL7DWYBazx30A1l7ZN9aQttRYGvaJ
         jPiciceVEDPaeui78Dud0HUqQFE1UcKPNhWrzHFNpCwHQIVjFJC6t0HtnBpQfIMOFqLj
         +pJKH+DaCo2ZSsYMoHGaKcL8epYdRYSZ6JkVlfIMQ3GjQbYIUss43SYctl+AcpgMQVfj
         ZHIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695772626; x=1696377426;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8N5GEk4pJZRCRqylmEKJ20/60xh1m/xTA/twVJeiPzw=;
        b=Xd5nfPe09CF13LxA31y60Lv7WKXAaHab/mB7gUMWBOllnSOTrBgGq3xHFAWGVzAx7b
         0YoqvGjr5uH3ngUhn07xuJdWkwbUCuuP266izaV+tbiHPQeM+odDWbbatPyWKopuxlfd
         7+JGmLSzf7WHbwVGiZ3AozyPMal9mzzEdLcPm7K4LNi6DjnxaDWHaclskt1YHUGdmTpA
         D6t/FtdU/bJJz52ldb8Rm+GWn6iYqmRtC5enAr32Ef2n+6SppEvoT/gytPr2ovJv+bet
         Jtcq52XoidyLJ9K+DUm3Ha5mLUPNKKQccBfYDJMQDeTjyouyHy9S2AEOaqvNRk8Rypfh
         sibw==
X-Gm-Message-State: AOJu0YwVBFx/y398niDE1vtf2EZnQTiXXphuOJ7pPu4U4ZG/SOFPZu1s
	+9tOEz1lHeWvw2++wPbW5vaIvNcTMN+nqF4Rb1y+2L6ZArKWu3PNsIZS2A==
X-Google-Smtp-Source: AGHT+IFIAE39Kj6Fz5ijUFQ4VyplqIXzu/OMNuCXwrd4XR0ONXLU12xijS0WXg3C/wGRYZGLKBr0cdj8ACWLaGGyNNs=
X-Received: by 2002:a25:aca5:0:b0:d85:c21a:22c9 with SMTP id
 x37-20020a25aca5000000b00d85c21a22c9mr398149ybi.31.1695772626175; Tue, 26 Sep
 2023 16:57:06 -0700 (PDT)
MIME-Version: 1.0
From: Achilleas Anastasopoulos <anastas@umich.edu>
Date: Tue, 26 Sep 2023 19:56:50 -0400
Message-ID: <CAErymBiwZv4-RmdGWZV=o1GO8Vn_9L-2yTqjwgtz1Fna3nyf8Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 7RDIJZRFKWBKF5J2T6BMFYCYBZQRAKHE
X-Message-ID-Hash: 7RDIJZRFKWBKF5J2T6BMFYCYBZQRAKHE
X-MailFrom: anastas@umich.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Do I need package python3-uhd when I upgrade uhd?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7RDIJZRFKWBKF5J2T6BMFYCYBZQRAKHE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0255644318078952774=="

--===============0255644318078952774==
Content-Type: multipart/alternative; boundary="00000000000000de3f06064bd524"

--00000000000000de3f06064bd524
Content-Type: text/plain; charset="UTF-8"

I usually install uhd from ettus binaries through the suggested method:

sudo add-apt-repository ppa:ettusresearch/uhd
sudo apt-get update
sudo apt-get install libuhd-dev uhd-host

However, looking here:

https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd/+packages?field.name_filter=uhd&field.status_filter=published&field.series_filter=focal

I see one more package "python3-uhd".

Do I also need this package if I want to run gnuradio with USRPs and want
to do gnuradio development as well (eg, OOT modules etc)?


thanks
Achilleas

--00000000000000de3f06064bd524
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I usually install uhd from ettus binaries through the sugg=
ested method:<div><br></div><div>sudo add-apt-repository ppa:ettusresearch/=
uhd<br>sudo apt-get update<br>sudo apt-get install libuhd-dev uhd-host<br><=
/div><div><br></div><div>However, looking here:</div><div><br></div><div><a=
 href=3D"https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd/+packages=
?field.name_filter=3Duhd&amp;field.status_filter=3Dpublished&amp;field.seri=
es_filter=3Dfocal">https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd=
/+packages?field.name_filter=3Duhd&amp;field.status_filter=3Dpublished&amp;=
field.series_filter=3Dfocal</a><br></div><div><br></div><div>I see one more=
 package &quot;python3-uhd&quot;.</div><div><br></div><div>Do I also need t=
his package if I want to run gnuradio with USRPs and want to do gnuradio de=
velopment=C2=A0as well (eg, OOT modules etc)?</div><div><br></div><div><br>=
</div><div>thanks</div><div>Achilleas</div><div><br></div></div>

--00000000000000de3f06064bd524--

--===============0255644318078952774==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0255644318078952774==--
