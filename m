Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B8E6E00F1
	for <lists+usrp-users@lfdr.de>; Wed, 12 Apr 2023 23:33:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1A4413838E9
	for <lists+usrp-users@lfdr.de>; Wed, 12 Apr 2023 17:33:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681335236; bh=1C9vVP+vnN/ihntMI+QtBIORLg/xyLNLH1LRwlyDrYk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=OqGaFPOoHxjkHvdMQE1aybBmtRNdY4eBJzDsqOd6nYL4yYSHQCTEGlI46TeBEXMkS
	 NqvC6kOhbGLhGCFH8oHfY08rUfdFO8uTCfPMJUQByRujkPwRrapSFeY676+3K6I68l
	 UyqBGhh4McCASq+5gMFAq0qzOrLyJKYxrHKTSeOTxgkPzY/gvkUSQY98GRCsHzbTWU
	 q4fWrF7hzO2oJR+bztNEof6WFVvu0dVxIxwVqTe721QwDODq7c0r20ZbaDiU9drPGN
	 j1aoGHb7T1iMFDgL8N9Eapr31MtSFUpClFSp6FsTldFC29ccIf5bhCWHuEZmJTNcw3
	 9t/flzgDy2Icg==
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 7FAA23830EC
	for <usrp-users@lists.ettus.com>; Wed, 12 Apr 2023 17:33:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="XwsQiHPl";
	dkim-atps=neutral
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-94a342f202bso243897166b.0
        for <usrp-users@lists.ettus.com>; Wed, 12 Apr 2023 14:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1681335203; x=1683927203;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=e0nr2ERntV4qOufEBQX7+x7QrO7xdeNR5yaotuK3WVs=;
        b=XwsQiHPl7KEA+oZ4gJ98VoYAwK4Rz/slkpB4E/zs6QUJBMaExhq3PT3fWn3W8CT1EA
         zmmYhhrmwPKGuUTkHBV69fpl63TmOIZU2sSgH6jYm69LfpTxnupZOZLlkLR7Z/IcOVSv
         /9E+dxNkvyomRqMVeXC99fA/x8tHFsoL739L34K7Fw0Pmp2M916FBoSaID4LY+cuTqCK
         vxtHcst5jdNOM9/YqT8EnaYI9LVvKb/7ayYKI2q9k7zVnCBXSvmibn6DnwjTQTqdWs+M
         ghfVKGaErg0cByWek2JSvAQ3HBzznVJISoaujmfDyyzAYccmyKIgHWFP7peIJBbUsFOt
         8/JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681335203; x=1683927203;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e0nr2ERntV4qOufEBQX7+x7QrO7xdeNR5yaotuK3WVs=;
        b=mAcLE5f9UowFPWgyAVgiDZilzbf1zjOHzQqk12nhFfb+nUQ/NQTcQg5+4V14qz8Q0F
         uGhChT5gYUF1rSoMt7MVJ94JVRTGjdZKXUY6eP9udIzv+2TY66L3qYNFB4xYaBLKHzti
         UyMPxHeXRmKWoYtfoYCbJnOUq4Lmp6AR4ikT867HfbK6g5KY8fSuxlwN1z4YPE/icz22
         SykUi37BNVO9ykUXa62z5rvetN3XuY/l/nvXo0WC/Ojo5io1+K+L7kQm+d4OsA5Wrfdz
         P7XUD43/2kwD7yhnGtqWfjafZVd/8Nm6FeA/kSHKV3YmanPfELMZAZxl0TaBs5e8dcTk
         QY6w==
X-Gm-Message-State: AAQBX9dCel94Kay71m0DETmxoDOqSezjKp9eNnsSG6KGdHrL+osVN+Zb
	vtY0o7+Ptq1PxbtBk4K0vvUS+ZTjsh3RscaYela03Y/dFRBf8XA9qjaHsg==
X-Google-Smtp-Source: AKy350YPifcmSiZWSw3mvUsRUH1HFslJmdy4RW+XuKwXBdivh3pAhOR+8L2cAX0srBcN34uW6/g6CRVv2J0OSbExVOg=
X-Received: by 2002:a50:bb05:0:b0:502:4459:f2b8 with SMTP id
 y5-20020a50bb05000000b005024459f2b8mr53692ede.8.1681335203308; Wed, 12 Apr
 2023 14:33:23 -0700 (PDT)
MIME-Version: 1.0
References: <gUDft9N9yvYDckG3aB4fwToRFd6kCIUc8jqcdfD4Wc@lists.ettus.com>
In-Reply-To: <gUDft9N9yvYDckG3aB4fwToRFd6kCIUc8jqcdfD4Wc@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 12 Apr 2023 16:33:07 -0500
Message-ID: <CAFche=g+T3qPDgYs60MLFzcVHrFe0XDPB7wD+Znx7mVP33qSLw@mail.gmail.com>
To: h57jafari@gmail.com
Message-ID-Hash: WWPFNJQUKMX2LQL3FSTPLDWJV7EZSEQM
X-Message-ID-Hash: WWPFNJQUKMX2LQL3FSTPLDWJV7EZSEQM
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: intel X710DA4 NIC card and breakout cable
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WWPFNJQUKMX2LQL3FSTPLDWJV7EZSEQM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4219352805786108472=="

--===============4219352805786108472==
Content-Type: multipart/alternative; boundary="0000000000008ac0c705f92a5b12"

--0000000000008ac0c705f92a5b12
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This is the card Ettus sells for this product. It's the Intel X7A-DA2.

https://www.ettus.com/all-products/10gige-kit/

For X410 cables, if you want to use 4 x 10 GbE, go to this link and click
to view the accessories for X410. Look for the "QSFP28 To 4xSFP28 Breakout
Cable, 1M".

https://www.ni.com/sic/configurator/configure.action?sfId=3DNI&wcs_l=3Den-u=
s&wcs_k=3Dusrp-software-defined-radio-device&wcs_s=3D523502

Thanks,

Wade


On Mon, Apr 10, 2023 at 3:06=E2=80=AFPM <h57jafari@gmail.com> wrote:

> Hi, Does any one can share the link to purchase intel X710DA4 NIC card an=
d
> breakout cable that they purchased and actually it worked with USRPX410 o=
r
> other USRP. It is not clear very well through https://kb.ettus.com/X410
> or other online resources. Thank you.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008ac0c705f92a5b12
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This is the card Ettus sells for this product. It&#39=
;s the Intel X7A-DA2.<br></div><div><br></div><div><a href=3D"https://www.e=
ttus.com/all-products/10gige-kit/">https://www.ettus.com/all-products/10gig=
e-kit/</a></div><div><br></div><div>For X410 cables, if you want to use 4 x=
 10 GbE, go to this link and click to view the accessories for X410. Look f=
or the &quot;QSFP28 To 4xSFP28 Breakout Cable, 1M&quot;.<br></div><div><br>=
</div><div><a href=3D"https://www.ni.com/sic/configurator/configure.action?=
sfId=3DNI&amp;wcs_l=3Den-us&amp;wcs_k=3Dusrp-software-defined-radio-device&=
amp;wcs_s=3D523502">https://www.ni.com/sic/configurator/configure.action?sf=
Id=3DNI&amp;wcs_l=3Den-us&amp;wcs_k=3Dusrp-software-defined-radio-device&am=
p;wcs_s=3D523502</a></div><div><br></div><div>Thanks,</div><div><br></div><=
div>Wade<br></div><div><br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 10, 2023 at 3:06=E2=80=AFPM &l=
t;<a href=3D"mailto:h57jafari@gmail.com">h57jafari@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi, Does any=
 one can share the link to purchase intel X710DA4 NIC card and breakout cab=
le that they purchased and actually it worked with USRPX410 or other USRP. =
It is not clear very well through <a href=3D"https://kb.ettus.com/X410" tar=
get=3D"_blank">https://kb.ettus.com/X410</a> or other online resources. Tha=
nk you.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000008ac0c705f92a5b12--

--===============4219352805786108472==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4219352805786108472==--
