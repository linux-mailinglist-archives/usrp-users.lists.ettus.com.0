Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3B0785CB0
	for <lists+usrp-users@lfdr.de>; Wed, 23 Aug 2023 17:52:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E3609384A70
	for <lists+usrp-users@lfdr.de>; Wed, 23 Aug 2023 11:52:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692805942; bh=k96uxAh2Zo3tSCOLN95qr6yRO1peLUVuQF+qhYYxaGg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=MsgSMZmS+ywWThe5KtRwlib2Y1tNwUUgdcDvqZGnHcAboHvCaNmAU10Xz4BmDrUwp
	 dIaL0dpLa0WnW/Ln7N/GYEq+MoIQu2vmp8UE0Zha2jgGCqGrLqNpygzd/ftd4Im0zE
	 Iy2JozsE+s3zZG1ikowRGOrAHUV91AM/plrDYOYj3C4QSbNOi4IIhxoglZ8jTs8+jY
	 ND+H2BRckE7Yf5z7hsOqiveRky0vyIew1fYwSN7tslfgNs3ZP5chvhhbbXIPulzjYB
	 vzMFWjnRUx7xBk1Fa1EjNTq9unuLmU3RkEMdMHFAieXzxMBVgN0w1e98cWNvPVoShV
	 ZlbsHld1Ti37g==
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 62DBD384927
	for <usrp-users@lists.ettus.com>; Wed, 23 Aug 2023 11:51:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="TvH+VEsX";
	dkim-atps=neutral
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-99bdcade7fbso731481266b.1
        for <usrp-users@lists.ettus.com>; Wed, 23 Aug 2023 08:51:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1692805909; x=1693410709;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kjIJowmgsY1e1kmu57JaMzBTXy7zafLLbSiXPeaQyL0=;
        b=TvH+VEsXuVaJLDOeprOt5EXyhsK0iX4BYJq7Rry76VvoLOt3tib7ac7h3bGvPHnU3Z
         Lk2vIf4V7wOelYwKDNpEGXJFkArKrDjS4c7c9PNntTnABx38wHtEQbFoG/8bl9qCStxm
         7sY+t+cdKozMBuX7h3P+nqeLjLzaH3TopomqcHSiAnGYe2Z3mzULg7al6aIyTsBXDrIA
         rcZZaGs52DvJIlaXJemkBFoTKNPLT07VeOkZ9j7dft7XrgQ2sIMelCeByfRKlFbSJprm
         SGXQNekXCkwWkN5Y4qBViMucDZtVbjfd4CtFx/KYVtLY9Q1noizC0KlXCH6kHc/a9Nq5
         eVaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692805909; x=1693410709;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kjIJowmgsY1e1kmu57JaMzBTXy7zafLLbSiXPeaQyL0=;
        b=IN6/anGfuI7J6Wutzz9W9X0sPYeDojto1LfxTh4x2e32IOE33irUiF4a3OYEco5KGm
         MYHHWNTtNhmSQbBgA5EdRMqd9RHqENbnX89xTHqn2KxhQ/BGBsHbWg9038oOxQXM9KG4
         8y77ikuvSrdVV8EsmcFzPWV4NqfsAjmIOqNwwC1M9mb5eLXNQ2+mrPJd9CBQmRN4O5pW
         XBuJFTgGkcEGxXrRbvLLPPpKCGUHEmEvJfpmV1BqTOue8mL6L4Xjdop5nwEnzWx+7lOC
         atsEHvbMzPK/s96rUVFGiNIzCQDklPdf16jJjKOfBentPL12mTZI4Axk5qMSKPCfwCfX
         0ccA==
X-Gm-Message-State: AOJu0YwrEcKMxr0xhbS7ANapFA+52zt9xtvpzL8EA6hbHqqcmKjj7KMv
	7o3IvilPP+ZmDj5duxGEv0gkAUVk/10U3IouPFwLj5KW0NRfqX//GZQ=
X-Google-Smtp-Source: AGHT+IFoXzsPY20kCgup7vE1UADGKz17iA/5/NTTcdjg1fl6wSLRmGoQH0IlfiTMuvvD56gRBE65UK9kTA77mavgF/I=
X-Received: by 2002:a17:906:10cf:b0:99b:4ed4:5526 with SMTP id
 v15-20020a17090610cf00b0099b4ed45526mr12676785ejv.7.1692805909186; Wed, 23
 Aug 2023 08:51:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAN+j9f4GfGO_mKqCWkozqhbm=FuTKWrH15j0U2sC0yjnzGpWfQ@mail.gmail.com>
In-Reply-To: <CAN+j9f4GfGO_mKqCWkozqhbm=FuTKWrH15j0U2sC0yjnzGpWfQ@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 23 Aug 2023 10:51:32 -0500
Message-ID: <CAFche=gq6b_nfjxgiJ-GXPkhkzxVxn-nOe6+c4FB++Fm5=i4aA@mail.gmail.com>
To: Zacharias M Komodromos <zackkomo@utexas.edu>
Message-ID-Hash: ZK5OVIIF5LO6SZBXEDZZ6UEBHWKPS23Q
X-Message-ID-Hash: ZK5OVIIF5LO6SZBXEDZZ6UEBHWKPS23Q
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Component fpga is too new for X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZK5OVIIF5LO6SZBXEDZZ6UEBHWKPS23Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3851185713635735722=="

--===============3851185713635735722==
Content-Type: multipart/alternative; boundary="000000000000e41cb206039916fa"

--000000000000e41cb206039916fa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The MPM software on your device is older than the FPGA you're trying to
use. Because you're using master, they haven't published updated
filesystems with the new MPM yet, but there will be a release candidate
very soon for UHD 4.5 you could try.

Wade

On Tue, Aug 22, 2023 at 10:20=E2=80=AFAM Zacharias M Komodromos <zackkomo@u=
texas.edu>
wrote:

> Hello all!
>
> I currently have a USRP X410 connected to a host through a
> QSFP28-to-QSFP28 connection, and also connected to a router through the
> ethernet port (to which the host is also connected to). I am trying to ge=
t
> large BW captures with the USRP. I have been trying to use the CG_400 FPG=
A
> image which is fixed at 400 MHz but have been getting dropped samples.
>
> I noticed on the wiki that a new flavor, UC_200, was noted, so I switched
> to the master branch on UHD and built UHD from the master branch. Once I
> tried to then flash the image on my X410 with:
>
> uhd_image_loader --args type=3Dx4xx,addr=3D192.168.1.19,fpga=3DUC_200
>
> I got the following error:
>
> [ERROR] [MPM.PeriphManager] Component fpga is too new (current: 8.0.0,
> oldest compatible: 8.0.0, MPM version: current: 7.9, oldest compatible: 7=
.0)
>
> [ERROR] [MPM.PeriphManager] MPM compatibility infos suggest that the new
> bitfile is not compatible, skipping installation. Component fpga is too n=
ew
> (current: 8.0.0, oldest compatible: 8.0.0, MPM version: current: 7.9,
> oldest compatible: 7.0)
>
> Error: RuntimeError: Error during RPC call to `update_component'. Error
> message: rpc::rpc_error during call
>
> I tried updating the X410 through a mender artifact, and also through
> =E2=80=9Cusrp_update_fs -t master,=E2=80=9C but any image I try to flash =
will produce the
> same error. When I run "uhd_config_info --version", the host returns "UHD
> 4.4.0.0-265-ga2a04e31" and the x410 returns "UHD 4.4.0.0-0-g5fac246b."
>
> How should I proceed to be able to load the new images on the x410? What
> exactly needs updating and how?
>
> Thanks for the help!
>
> Zack
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e41cb206039916fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The MPM software on your device is older than the FPGA you=
&#39;re trying to use. Because you&#39;re using master, they haven&#39;t pu=
blished updated filesystems with the new MPM yet, but there will be a relea=
se candidate very soon for UHD 4.5 you could try.<div><div><br></div><div>W=
ade</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Aug 22, 2023 at 10:20=E2=80=AFAM Zacharias M Komodr=
omos &lt;<a href=3D"mailto:zackkomo@utexas.edu">zackkomo@utexas.edu</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hello all!<br><br>I currently have a USRP X410 connected to a host=
 through a QSFP28-to-QSFP28 connection, and also connected to a router thro=
ugh the ethernet port (to which the host is also connected to). I am trying=
 to get large BW captures with the USRP. I have been trying to use the CG_4=
00 FPGA image which is fixed at 400 MHz but have been getting dropped sampl=
es.<br><br>I noticed on the wiki that a new flavor, UC_200, was noted, so I=
 switched to the master branch on UHD and built UHD from the master branch.=
 Once I tried to then flash the image on my X410 with:<br><br>uhd_image_loa=
der --args type=3Dx4xx,addr=3D192.168.1.19,fpga=3DUC_200<br><br>I got the f=
ollowing error:<br><br>[ERROR] [MPM.PeriphManager] Component fpga is too ne=
w (current: 8.0.0, oldest compatible: 8.0.0, MPM version: current: 7.9, old=
est compatible: 7.0)<br><br>[ERROR] [MPM.PeriphManager] MPM compatibility i=
nfos suggest that the new bitfile is not compatible, skipping installation.=
 Component fpga is too new (current: 8.0.0, oldest compatible: 8.0.0, MPM v=
ersion: current: 7.9, oldest compatible: 7.0)<br><br>Error: RuntimeError: E=
rror during RPC call to `update_component&#39;. Error message: rpc::rpc_err=
or during call<br><br>I tried updating the X410 through a mender artifact, =
and also through =E2=80=9Cusrp_update_fs -t master,=E2=80=9C but any image =
I try to flash will produce the same error. When I run &quot;uhd_config_inf=
o --version&quot;, the host returns &quot;UHD 4.4.0.0-265-ga2a04e31&quot; a=
nd the x410 returns &quot;UHD 4.4.0.0-0-g5fac246b.&quot;<br><br>How should =
I proceed to be able to load the new images on the x410? What exactly needs=
 updating and how?<br><br>Thanks for the help!<br><br>Zack<br></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000e41cb206039916fa--

--===============3851185713635735722==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3851185713635735722==--
