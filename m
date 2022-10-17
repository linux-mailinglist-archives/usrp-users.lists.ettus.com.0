Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFD56007EB
	for <lists+usrp-users@lfdr.de>; Mon, 17 Oct 2022 09:43:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5E1F2383C07
	for <lists+usrp-users@lfdr.de>; Mon, 17 Oct 2022 03:43:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665992603; bh=NxA7EKQRKaK7zJFNUMAk4Qsy+4BiD3GSGYU+tcYIzhM=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=UirVD1eKqTuxEyR4GTYFXtSro4L5iPLv7P/r8lQKGZDHtskScXHHA4U3mESIovoOM
	 pj53o6STydsa6iKexygZw1npmsaiITUOYTW1f1dxYm4OMK21i1U+jrK8hAa+pT6SzB
	 BBfh/PKc8f1TNUGbinN9998EuBhDU/LKYZqldMvQ1XY804TEwCfZMuO+wVzFQs+syb
	 3Cl7jenmHsUvRFkmyEMpaNN8bdlx68GhJ7sqMyja/IrmHBjDOZWC3XXP5g510L9RmP
	 s3/qffKLDjOj5G9uDAk+NMuzPGQTCOANyZdfxoYtoZRan+l6eW2aSh27yCgFhJLxnP
	 V+0KF680kd/pA==
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com [209.85.128.197])
	by mm2.emwd.com (Postfix) with ESMTPS id 57AC0380A55
	for <usrp-users@lists.ettus.com>; Mon, 17 Oct 2022 03:41:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=dolphinsystem-jp.20210112.gappssmtp.com header.i=@dolphinsystem-jp.20210112.gappssmtp.com header.b="F3aEExwr";
	dkim-atps=neutral
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-35813c409cbso103132607b3.5
        for <usrp-users@lists.ettus.com>; Mon, 17 Oct 2022 00:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dolphinsystem-jp.20210112.gappssmtp.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qjf60zQhY6qL3yIe48ocFdVqcXMYFJDIfUuQz2cipuk=;
        b=F3aEExwrmbkS/1nW9N9G6gR52VqNRvUISCZLo8StS6UohYHT2EBhCU5jdBl8yjR2OZ
         qcViouq7IlrJiBtdR3bkhWCVzUL0rNanWztTuY+ozmofM91A7ei9cZ70lsO/RDllBsm1
         BnAOG7XosgXtkQrG26cFyQe0w/Xm+2Tn0EMvFSvTqne6aQOIBaBOjha5au289RQ+ya66
         oinLSgPv5RViIqxbBS0tpK/G717rUnm2dp28s5hN8XTsrSKHu0wqIld0BHq4HPVdUW6G
         pshoDNFKuCRlcDHIS25CpgwMSYvyPxb4KGE18VFz1DT8L9dX8AUvYT8G2RZLSqxPUd2N
         Cdzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qjf60zQhY6qL3yIe48ocFdVqcXMYFJDIfUuQz2cipuk=;
        b=yd1+v6bnfmRxG9lj19bJ631dLdCeQFTLoLoPWKrE31HkBHeVwepMibvrbopOSJdrSJ
         vQLFgu9F86kbBpQuDfE5WN4kNy+sYP3roZCTN1UF5s+/IqOOgu49iGla3Cw1we+QC69a
         vn4C3l0CkW/L10KkmeWoNN34eKyVpz/t6V1HqAmMKeT9gvvx3ak6XdPNKrP6ytIhBqY6
         2lplkov+H73bqM81+igOBUhVG3360UZifFhjiCoimIIKIuLqO84nOOEzkEFQrnoEHEyM
         XuIa1QCx0mmKPeroPhtbdEum5ZC9Xnzf571p0qvFq64T72g3Q0du+aZY73+Drb14RF7n
         qbtA==
X-Gm-Message-State: ACrzQf2MWkQ9uuwsRJ0IP7o/kbJUYNbCgMx7gUrqqPDk7+ZW9uic51Ic
	wvID/yi7gTtwOG2HxeNj+tSn+FTr+HdhX2BOQfoKb7Lf3bDgYwm6
X-Google-Smtp-Source: AMsMyM6bsKSCZvBkt1O8GsgKFWFUa/89X9qI7xveFoITOkQilCsPVv1m7OhBH4kArm9T/Y9xsU9DykB5R1UR33g49Rw=
X-Received: by 2002:a0d:e2c3:0:b0:35b:72d2:e283 with SMTP id
 l186-20020a0de2c3000000b0035b72d2e283mr8070518ywe.197.1665992498391; Mon, 17
 Oct 2022 00:41:38 -0700 (PDT)
MIME-Version: 1.0
From: Mikio Fukushima <mikio@dolphinsystem.jp>
Date: Mon, 17 Oct 2022 16:41:03 +0900
Message-ID: <CABfZwcdmTTvRjhnPn-qrEy57B8CdnbTfA1x3rw44=0s4VuqfvA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: OUO3AWZGCWTTTITX7Y2R4CV6UY6ZBIV2
X-Message-ID-Hash: OUO3AWZGCWTTTITX7Y2R4CV6UY6ZBIV2
X-MailFrom: mikio@dolphinsystem.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] fifo ctrl timed out error (LFRX on a N210)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OUO3AWZGCWTTTITX7Y2R4CV6UY6ZBIV2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5574969980414520582=="

--===============5574969980414520582==
Content-Type: multipart/alternative; boundary="00000000000010bf6c05eb361bde"

--00000000000010bf6c05eb361bde
Content-Type: text/plain; charset="UTF-8"

Hi,
I want to use one or two channels on one LFRX on a N210 on Windows.
but fifo ctrl timeout error occured.
uhd_usrp_probe, uhd_find_device and ping are OK.
Why?

- Environment

Windows 10
UHD 4.3.0.0 (x64, VS2019)
LFRX on USRP2(r4)

- error message

C:\Program Files\UHD\lib\uhd\examples>rx_samples_to_file.exe --args
"addr=192.168.1.52" --rate 1e6  --freq 1e6

Creating the usrp device with: addr=192.168.1.52...
[INFO] [UHD] Win32; Microsoft Visual C++ version 1925; Boost_107000;
UHD_4.2.0.0-release
[INFO] [USRP2] Opening a USRP2/N-Series device...
[INFO] [USRP2] Current recv frame size: 1472 bytes
[INFO] [USRP2] Current send frame size: 1472 bytes
Using Device: Single USRP:
  Device: USRP2 / N-Series Device
  Mboard 0: USRP2 r4
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: LFRX (AB)
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: LFTX (AB)

Setting RX Rate: 1.000000 Msps...
[ERROR] [UHD] Exception caught in safe-call.
  in usrp2_fifo_ctrl_impl::~usrp2_fifo_ctrl_impl
  at
C:\Users\buildbot\worker0\Builder_uhdPackage_Windows_x64_vs2019\work\uhd\host\lib\usrp\usrp2\usrp2_fifo_ctrl.cpp:51
this->peek32(0); -> RuntimeError: fifo ctrl timed out looking for acks
Error: LookupError: IndexError: multi_usrp: RX channel 12 out of range for
configured RX frontends

--00000000000010bf6c05eb361bde
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><di=
v>Hi,<br>I want to use one or two channels on one LFRX on a N210 on Windows=
.<br>but fifo ctrl timeout error occured. <br>uhd_usrp_probe, uhd_find_devi=
ce and ping are OK.<br>Why?</div><div><br></div><div><div>- Environment</di=
v><div><br></div><div>Windows 10</div><div>UHD 4.3.0.0 (x64, VS2019)</div><=
div>LFRX on USRP2(r4)</div><div><br></div><div>- error message</div><div><b=
r></div>C:\Program Files\UHD\lib\uhd\examples&gt;rx_samples_to_file.exe --a=
rgs &quot;addr=3D192.168.1.52&quot; --rate 1e6 =C2=A0--freq 1e6<br><br>Crea=
ting the usrp device with: addr=3D192.168.1.52...<br>[INFO] [UHD] Win32; Mi=
crosoft Visual C++ version 1925; Boost_107000; UHD_4.2.0.0-release<br>[INFO=
] [USRP2] Opening a USRP2/N-Series device...<br>[INFO] [USRP2] Current recv=
 frame size: 1472 bytes<br>[INFO] [USRP2] Current send frame size: 1472 byt=
es<br>Using Device: Single USRP:<br>=C2=A0 Device: USRP2 / N-Series Device<=
br>=C2=A0 Mboard 0: USRP2 r4<br>=C2=A0 RX Channel: 0<br>=C2=A0 =C2=A0 RX DS=
P: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: LFRX (AB)<br=
>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard=
: A<br>=C2=A0 =C2=A0 TX Subdev: LFTX (AB)<br><br>Setting RX Rate: 1.000000 =
Msps...<br>[ERROR] [UHD] Exception caught in safe-call.<br>=C2=A0 in usrp2_=
fifo_ctrl_impl::~usrp2_fifo_ctrl_impl<br>=C2=A0 at C:\Users\buildbot\worker=
0\Builder_uhdPackage_Windows_x64_vs2019\work\uhd\host\lib\usrp\usrp2\usrp2_=
fifo_ctrl.cpp:51<br>this-&gt;peek32(0); -&gt; RuntimeError: fifo ctrl timed=
 out looking for acks<br>Error: LookupError: IndexError: multi_usrp: RX cha=
nnel 12 out of range for configured RX frontends<br></div><div><br></div></=
div></div></div></div></div>

--00000000000010bf6c05eb361bde--

--===============5574969980414520582==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5574969980414520582==--
