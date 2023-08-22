Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC01C784546
	for <lists+usrp-users@lfdr.de>; Tue, 22 Aug 2023 17:20:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B19F0384ABC
	for <lists+usrp-users@lfdr.de>; Tue, 22 Aug 2023 11:20:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692717621; bh=3ovgd09cpOiAOue8ck+ZNuq3qPQ7DIt9m/vskm+3mTE=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=J2ctXmu3OE1iMZCWrMMt8xoJX7SUeUOKuYFAV3dbq6PuMvwlyL78SBc+RXiw3bkKq
	 DpK9yIakkow3CRXSQ25dxotV3ILPwFKyh/gwX0irEt+0fJLvP63gpZd6Egg+LIevmD
	 opB4zd0Xe55jAnCNzxtVk5lMgq3O5TjXFjNvuotyP0UM0gRb1220fPnh+8YsCa3qAG
	 nVewa6jahZqtiwj+aMhpUQLgNKWpnf1sk60hKd5isRzcOKP3OzCHwvgaKlzKqpUCOk
	 nk7e7m5LQjx262aMOkNtpkol27NciZOT177S3DEaQqlPSfVhazFkpEeFIUPzWMDzlO
	 RwznvtwbH/szg==
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 353B5384546
	for <usrp-users@lists.ettus.com>; Tue, 22 Aug 2023 11:20:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=utexas.edu header.i=@utexas.edu header.b="Lz2GGHBy";
	dkim-atps=neutral
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3a7f74134e7so3278256b6e.1
        for <usrp-users@lists.ettus.com>; Tue, 22 Aug 2023 08:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=utexas.edu; s=google; t=1692717608; x=1693322408;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GYB8ENFotHQJ+GXcFhDbUR9X8sOxPFAjGexB52MP8AQ=;
        b=Lz2GGHByx7lo9TPZc1zaXT9HWvsyMi3fe4w4Rrawea18HR/Ew9JhldozEsNngCr/qS
         p4En8eiKBq9brU0gZey1IIdpqjzIgx/Gbt7TP10+3II7+V5yVoyWa6i3KLmz0t57HWx9
         +qyg5WDQGdcP5L6zZzDQVyu5XTTjBqTGOJsMyd730Xc7+Hm+xsuLQjLog2oZ9PrKDYE1
         qWyB67WQuZxrde3HxX7Uof7z6+nD5gNyA9EG2/U2QxOgPVo2alfr9y1stXJpFFMzeYbJ
         0k5fxp2sscOg2nfpterR/SCOxE/+fYqwBgMYBEGPHawLwodXu9pfY8vb9zCS2fRtDQ0N
         Kocw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692717608; x=1693322408;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GYB8ENFotHQJ+GXcFhDbUR9X8sOxPFAjGexB52MP8AQ=;
        b=YZ/GQGhMvYRULitTTAg+MrDR+mjnGkhdQd0SUet+lySpiPmlkXIIqztRtvLkn/5MFt
         Zga5LssxNqVv8eeyoxuNRq2tVatqVZjPLKFjM6858IWJ/iAYnM9O6PPV1mbj1IWjBF7O
         pXYMSQ0mmG91NYEEPrLVGbVUBelfV+vCMX5Dgh40NkU5d2uuQyNJbEYAZArmMLF2WyfR
         hFsajV94vjlyrSJeCbHGcO+FOfTg/1tTyOvtYmAcRVckUx7PQ+XwFWUuC7BRJBcOsJjC
         U3fYGXuTI7sH4hGJ/NnHqACFbTNxu751OdpuINyjAJ6bB5fPwUb3ILwOthrgpSFMB+TJ
         5ZmA==
X-Gm-Message-State: AOJu0Ywes+qmpGZW4PQa63PNmYRR+QO2LBs9MUuIEB8lkDVjYyAbOYxo
	P41yl/lcz8bJiQy8/3QNdpAeI9gX42ZJJABs3AUD3XHOYHWmtvNs4s8=
X-Google-Smtp-Source: AGHT+IF6+mJAJ+3aOYn/Fohdylk37KfEG6sGgd3KwkCm+0Ib1+21fJa8eBQieetnZU3OS0aVvKYdexycr/zuNZ2NT98=
X-Received: by 2002:a05:6808:8d:b0:3a7:4e0c:faa7 with SMTP id
 s13-20020a056808008d00b003a74e0cfaa7mr12567576oic.14.1692717608265; Tue, 22
 Aug 2023 08:20:08 -0700 (PDT)
MIME-Version: 1.0
From: Zacharias M Komodromos <zackkomo@utexas.edu>
Date: Tue, 22 Aug 2023 10:19:58 -0500
Message-ID: <CAN+j9f4GfGO_mKqCWkozqhbm=FuTKWrH15j0U2sC0yjnzGpWfQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: IWN3E7VF6TX7IM6SXENKNEXNGLN36NHA
X-Message-ID-Hash: IWN3E7VF6TX7IM6SXENKNEXNGLN36NHA
X-MailFrom: zackkomo@utexas.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Component fpga is too new for X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IWN3E7VF6TX7IM6SXENKNEXNGLN36NHA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2426994644002015826=="

--===============2426994644002015826==
Content-Type: multipart/alternative; boundary="000000000000bf0179060384874b"

--000000000000bf0179060384874b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all!

I currently have a USRP X410 connected to a host through a QSFP28-to-QSFP28
connection, and also connected to a router through the ethernet port (to
which the host is also connected to). I am trying to get large BW captures
with the USRP. I have been trying to use the CG_400 FPGA image which is
fixed at 400 MHz but have been getting dropped samples.

I noticed on the wiki that a new flavor, UC_200, was noted, so I switched
to the master branch on UHD and built UHD from the master branch. Once I
tried to then flash the image on my X410 with:

uhd_image_loader --args type=3Dx4xx,addr=3D192.168.1.19,fpga=3DUC_200

I got the following error:

[ERROR] [MPM.PeriphManager] Component fpga is too new (current: 8.0.0,
oldest compatible: 8.0.0, MPM version: current: 7.9, oldest compatible: 7.0=
)

[ERROR] [MPM.PeriphManager] MPM compatibility infos suggest that the new
bitfile is not compatible, skipping installation. Component fpga is too new
(current: 8.0.0, oldest compatible: 8.0.0, MPM version: current: 7.9,
oldest compatible: 7.0)

Error: RuntimeError: Error during RPC call to `update_component'. Error
message: rpc::rpc_error during call

I tried updating the X410 through a mender artifact, and also through
=E2=80=9Cusrp_update_fs -t master,=E2=80=9C but any image I try to flash wi=
ll produce the
same error. When I run "uhd_config_info --version", the host returns "UHD
4.4.0.0-265-ga2a04e31" and the x410 returns "UHD 4.4.0.0-0-g5fac246b."

How should I proceed to be able to load the new images on the x410? What
exactly needs updating and how?

Thanks for the help!

Zack

--000000000000bf0179060384874b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello all!<br><br>I currently have a USRP X410 connected t=
o a host through a QSFP28-to-QSFP28 connection, and also connected to a rou=
ter through the ethernet port (to which the host is also connected to). I a=
m trying to get large BW captures with the USRP. I have been trying to use =
the CG_400 FPGA image which is fixed at 400 MHz but have been getting dropp=
ed samples.<br><br>I noticed on the wiki that a new flavor, UC_200, was not=
ed, so I switched to the master branch on UHD and built UHD from the master=
 branch. Once I tried to then flash the image on my X410 with:<br><br>uhd_i=
mage_loader --args type=3Dx4xx,addr=3D192.168.1.19,fpga=3DUC_200<br><br>I g=
ot the following error:<br><br>[ERROR] [MPM.PeriphManager] Component fpga i=
s too new (current: 8.0.0, oldest compatible: 8.0.0, MPM version: current: =
7.9, oldest compatible: 7.0)<br><br>[ERROR] [MPM.PeriphManager] MPM compati=
bility infos suggest that the new bitfile is not compatible, skipping insta=
llation. Component fpga is too new (current: 8.0.0, oldest compatible: 8.0.=
0, MPM version: current: 7.9, oldest compatible: 7.0)<br><br>Error: Runtime=
Error: Error during RPC call to `update_component&#39;. Error message: rpc:=
:rpc_error during call<br><br>I tried updating the X410 through a mender ar=
tifact, and also through =E2=80=9Cusrp_update_fs -t master,=E2=80=9C but an=
y image I try to flash will produce the same error. When I run &quot;uhd_co=
nfig_info --version&quot;, the host returns &quot;UHD 4.4.0.0-265-ga2a04e31=
&quot; and the x410 returns &quot;UHD 4.4.0.0-0-g5fac246b.&quot;<br><br>How=
 should I proceed to be able to load the new images on the x410? What exact=
ly needs updating and how?<br><br>Thanks for the help!<br><br>Zack<br></div=
>

--000000000000bf0179060384874b--

--===============2426994644002015826==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2426994644002015826==--
