Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF5F570D1F
	for <lists+usrp-users@lfdr.de>; Tue, 12 Jul 2022 00:03:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DA144383C4F
	for <lists+usrp-users@lfdr.de>; Mon, 11 Jul 2022 18:03:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657577035; bh=LTovoMgMRE8Mne5UdjWeUZjN8ZnX6eLJ5fzHJmVjZbw=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=oGKLdVo7R0gxJ5qNE7Sg8AcB44NmOUhcpP4edS7DBWLJHVryJzgApLnIRoykS7aYp
	 nbrZNZ0B2K44Pr1qKMYGDmGgFkKZyJOeyTjvBoLhReJCvr5wegELiuGedc9bulkDHX
	 sKAAQ9Ei3+u1230Ew6x4aa8vsdqwvXyvjBgXOcQDJq4CRqCsNDFYMYW6WzoB+n/5AH
	 3ny+eIYx2Jw01szVC/I6JVAH7zSfzTzR/rp7cMWAPFWEkpJa6/GaqbPrN98t9CDDL1
	 e7EtsKEmcTm6xltllpc1QjLYymkaaj0q0X5BNYLfw5BTWJfg0pFXQxYGJiM4P3BH5d
	 krkobeFvoti4w==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 96C37383A7C
	for <USRP-users@lists.ettus.com>; Mon, 11 Jul 2022 18:01:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="G/MQd2dO";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id y22so3823181qki.7
        for <USRP-users@lists.ettus.com>; Mon, 11 Jul 2022 15:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=5fsmXZ0XSx58iRGgv6g4shATE6oaGmd1Spa7r4I7BPw=;
        b=G/MQd2dOPbNtjfS6vDAaaa3LR1ii53HRLwDKCnLvOhZXYSYTQf4dUbwavTnun8fbhZ
         DEc0Mfqq90KYDbb3cKca7/ZbigQ2DCteQ9S9ItOK13rg+QHKHZlEINKjwfMuOcXHY7IR
         K/fyL+vdBM9aTV1+7JVrfGtVwH0IGqgemneq4HcQz1UDmFTtIJx4q0tbKrZ+GzUMAhmq
         1f4lRsP29XdMWUCsUTfqdjH78wxF8jNw2NMkbT2i9jTNSmrnfB7mBWCLxIFL5ACamT9q
         aSnnusiqw06pXkzRNbFz48LPylM1SSr380sHIIof+VLK5KJT/yglmPhWvAE8o6DK2F8j
         le3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=5fsmXZ0XSx58iRGgv6g4shATE6oaGmd1Spa7r4I7BPw=;
        b=BidTOLtqVWAU+iSo8YYbacPHtxjk6g8iknR8ZqAHty9QfeHW6YApJlX+1cjDO74klG
         SssY5LHyyw2JJgxiYFNUpr1LdhS88t0EiGjrjTp7WkD9aaW50L/B1JBIC2ZcS9wjEKoU
         XqgIZ8JoHLuNUdjaoZHqI2Zfjpp7jfa1s7ogjBvpVFzeh3FaS4+YLmtWzIap8l9qauJI
         iAC/4eCxgZSNFT9lssGzhDGibpfmsXIXp0a1BfYUDZAE5Z5m9tiq7az120GTFqaz0e/s
         S+wffDBGLCGUN6MSQKaBE5xtm5U2eujtQn2Q04H2avStlF55xTdNxVg0kvppcLqIu+Ga
         8ScA==
X-Gm-Message-State: AJIora9/SnTqa5nopbEcZC1h814i0gpgNap51z7NtOZ75GVnZFRn49N8
	jIhgxW+k68iLD7ldwv34fQKgzXII4nE=
X-Google-Smtp-Source: AGRyM1swTUqsITnsmXH9uUz83jU9FASYBTLefoRac79TdrdF4XF9csiDdzAhsKydq7Us7paIzIfvgA==
X-Received: by 2002:a05:620a:28c1:b0:6b5:763e:ba81 with SMTP id l1-20020a05620a28c100b006b5763eba81mr8317140qkp.431.1657576904861;
        Mon, 11 Jul 2022 15:01:44 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.gmail.com with ESMTPSA id i5-20020ac87645000000b00304efba3d84sm5997604qtr.25.2022.07.11.15.01.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jul 2022 15:01:44 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 11 Jul 2022 18:01:42 -0400
Message-Id: <4CB1E913-E47C-416D-A275-603C65F1A54C@gmail.com>
References: <m5FQ7PJuZCFN5wwWxMDd8xvXsySCyh5kHX53asf2A@lists.ettus.com>
In-Reply-To: <m5FQ7PJuZCFN5wwWxMDd8xvXsySCyh5kHX53asf2A@lists.ettus.com>
To: k1barrett@ucsd.edu
X-Mailer: iPhone Mail (19F77)
Message-ID-Hash: SPTJL6OD5SIJKR26IOKMFRY7NJ7FR5FH
X-Message-ID-Hash: SPTJL6OD5SIJKR26IOKMFRY7NJ7FR5FH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem installing UHD dependencies
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SPTJL6OD5SIJKR26IOKMFRY7NJ7FR5FH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7096949300406960597=="


--===============7096949300406960597==
Content-Type: multipart/alternative; boundary=Apple-Mail-A6FDFB61-7846-4CA6-9DF8-0AA7DA93BAC4
Content-Transfer-Encoding: 7bit


--Apple-Mail-A6FDFB61-7846-4CA6-9DF8-0AA7DA93BAC4
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

My guess is that package is either renamed or not there on 22.04.  Those ins=
tructions are for 20.04 so some
Fudging may be necessary for 22.04.=20

Also UHD is a prebuilt package for Ubuntu 22.04. So unless you need absolute=
 bleeding edge UHD I=E2=80=99d just install the UHD packaged binaries.=20

Sent from my iPhone

> On Jul 11, 2022, at 5:55 PM, k1barrett--- via USRP-users <usrp-users@lists=
.ettus.com> wrote:
>=20
> =EF=BB=BF
> I am running ubuntu 22.04. I am trying to build UHD from source using this=
 guide here.
>=20
> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchai=
n_(UHD_and_GNU_Radio)_on_Linux
>=20
> However, when I run the following command:
>=20
> sudo apt-get -y install autoconf automake build-essential ccache cmake cpu=
frequtils doxygen ethtool fort77 g++ gir1.2-gtk-3.0 git gobject-introspectio=
n gpsd gpsd-clients inetutils-tools libasound2-dev libboost-all-dev libcomed=
i-dev libcppunit-dev libfftw3-bin libfftw3-dev libfftw3-doc libfontconfig1-d=
ev libgmp-dev libgps-dev libgsl-dev liblog4cpp5-dev libncurses5 libncurses5-=
dev libpulse-dev libqt5opengl5-dev libqwt-qt5-dev libsdl1.2-dev libtool libu=
dev-dev libusb-1.0-0 libusb-1.0-0-dev libusb-dev libxi-dev libxrender-dev li=
bzmq3-dev libzmq5 ncurses-bin python3-cheetah python3-click python3-click-pl=
ugins python3-click-threading python3-dev python3-docutils python3-gi python=
3-gi-cairo python3-gps python3-lxml python3-mako python3-numpy python3-numpy=
-dbg python3-opengl python3-pyqt5 python3-requests python3-scipy python3-set=
uptools python3-six python3-sphinx python3-yaml python3-zmq python3-ruamel.y=
aml swig wget
>=20
> I get the error E: Unable to locate package python3-numpy-dbg
>=20
> Any help would be appreciated.
>=20
>=20
>=20
> Thanks
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-A6FDFB61-7846-4CA6-9DF8-0AA7DA93BAC4
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">My guess is that package is either renamed o=
r not there on 22.04. &nbsp;Those instructions are for 20.04 so some<div>Fud=
ging may be necessary for 22.04.&nbsp;</div><div><br></div><div>Also UHD is a=
 prebuilt package for Ubuntu 22.04. So unless you need absolute bleeding edg=
e UHD I=E2=80=99d just install the UHD packaged binaries.&nbsp;<br><div><br>=
<div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote t=
ype=3D"cite">On Jul 11, 2022, at 5:55 PM, k1barrett--- via USRP-users &lt;us=
rp-users@lists.ettus.com&gt; wrote:<br><br></blockquote></div><blockquote ty=
pe=3D"cite"><div dir=3D"ltr">=EF=BB=BF<p>I am running ubuntu 22.04. I am try=
ing to build UHD from source using this guide here.</p><p> https://kb.ettus.=
com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radi=
o)_on_Linux</p><p>However, when I run the following command:</p><p> sudo apt=
-get -y install autoconf automake build-essential ccache cmake cpufrequtils d=
oxygen ethtool fort77 g++ gir1.2-gtk-3.0 git gobject-introspection gpsd gpsd=
-clients inetutils-tools libasound2-dev libboost-all-dev libcomedi-dev libcp=
punit-dev libfftw3-bin libfftw3-dev libfftw3-doc libfontconfig1-dev libgmp-d=
ev libgps-dev libgsl-dev liblog4cpp5-dev libncurses5 libncurses5-dev libpuls=
e-dev libqt5opengl5-dev libqwt-qt5-dev libsdl1.2-dev libtool libudev-dev lib=
usb-1.0-0 libusb-1.0-0-dev libusb-dev libxi-dev libxrender-dev libzmq3-dev l=
ibzmq5 ncurses-bin python3-cheetah python3-click python3-click-plugins pytho=
n3-click-threading python3-dev python3-docutils python3-gi python3-gi-cairo p=
ython3-gps python3-lxml python3-mako python3-numpy python3-numpy-dbg python3=
-opengl python3-pyqt5 python3-requests python3-scipy python3-setuptools pyth=
on3-six python3-sphinx python3-yaml python3-zmq python3-ruamel.yaml swig wge=
t</p><p>I get the error E: Unable to locate package python3-numpy-dbg</p><p>=
Any help would be appreciated.</p><p><br></p><p>Thanks</p>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></div></body></html>=

--Apple-Mail-A6FDFB61-7846-4CA6-9DF8-0AA7DA93BAC4--

--===============7096949300406960597==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7096949300406960597==--
