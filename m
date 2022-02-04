Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2DA4A9C55
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 16:54:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C4C6A385DC7
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 10:54:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="d2o5xI1p";
	dkim-atps=neutral
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 087B3385D5D
	for <usrp-users@lists.ettus.com>; Fri,  4 Feb 2022 10:53:35 -0500 (EST)
Received: by mail-vk1-f177.google.com with SMTP id z15so3917792vkp.13
        for <usrp-users@lists.ettus.com>; Fri, 04 Feb 2022 07:53:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=RTgmXKXCZyafqRoS7DfyA2mqr8UhKKpUEH8ptT84Syo=;
        b=d2o5xI1p/OGZGcoGSUMT5dqmD/KLdk/skodEBRCWWqEROc6lncYZxFVFDFGSbK8o4m
         6I9EWuwS0CPdRY/nEVYE9Pzsk2kVm/rz13KljIcU5ZZxIRRtRBQNNxCWkQYoAE9N6B1O
         CJQ6+F2eINVfckBZ6Xi2KapDRimHAryXtK97sNRr5CieH5Rdh5CWRsIdWW863AYi2eje
         5rfRcyualYG9o9wR8kl+dlg2vL4Zc+CAGd5Fsca+jxCQna97gczIdj5v7Kevw72/xyVW
         Y4LH9YR0Zls6AF1Xp2GZ5NUsTXo5ntxnXDKO7YKFC/5z/KoM0IfYY3VDmCnrZTN5RIs/
         51Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=RTgmXKXCZyafqRoS7DfyA2mqr8UhKKpUEH8ptT84Syo=;
        b=ILUBKmAKna+IyEM+6ls6i4o3yvfRqFbxZmdVaWgzSSpT8dyc/cAq+gKhL98E6+NVbT
         HGPRzC+gLQRmWl1Er/RWghu71rewCyydbaZrxfYk5C2Xa/oUVBDgHDkSaNooT9aeUvhb
         nb5TAvAFwGRWnHGxOZCmb75t2biJb4MwL1Wdxz8Nzqj9R7j/uPspY+phMdldws1UHW/I
         yWRRuxzagQ7fiC0sLhvjfNK76Zz8/v0F0RFiaC0x1QqxEKm4/YKOrGG5FJ3DN42dIAji
         G7pFVzdkRC/f9jgi5vrTQwrCPGvHkQ02y6pcCgb/t9z5ZRwNAcBT1a5OVQZiSScXzRSg
         z4nQ==
X-Gm-Message-State: AOAM532+qvAP9jsAzTjNFq/Z9DXyNtrsIOV5Z45CRiNgWj+JqWK0RfhG
	xP5CbQCci+Ya8nbbDVqm1132yU+R2M2I2BSesw6MX7vaLFU=
X-Google-Smtp-Source: ABdhPJxocxv95WomEAvs0I6+E5HnvIC8Nty0y3LfNOkRMtAFb19hPKMZ02G5NgRcxACdq4eQQKK69tsj4FFp0+ggTz8=
X-Received: by 2002:a05:6122:1811:: with SMTP id ay17mr1275530vkb.2.1643990015157;
 Fri, 04 Feb 2022 07:53:35 -0800 (PST)
MIME-Version: 1.0
From: Lautaro Lorenzen <lorenzen.lautaro@gmail.com>
Date: Fri, 4 Feb 2022 12:53:24 -0300
Message-ID: <CAOucfAMOeM9u=EGztTSjS=MaspzMf6T4CF-NR4Sw0G1FXJH8Qg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: WHW7LAO655E6J6U75PMJGBVUJGIKB7E4
X-Message-ID-Hash: WHW7LAO655E6J6U75PMJGBVUJGIKB7E4
X-MailFrom: lorenzen.lautaro@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Error 'top_block_sptr' object has no attribute 'rfnoc_graph'
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WHW7LAO655E6J6U75PMJGBVUJGIKB7E4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0254129187416591855=="

--===============0254129187416591855==
Content-Type: multipart/alternative; boundary="000000000000de29bd05d733400e"

--000000000000de29bd05d733400e
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

I've been trying to implement the phosphor (among others) example with
RFNoC, but the error "'top_block_sptr' object has no attribute
'rfnoc_graph' " pops up when I try to run any flowgraph.

I'm using an E312 with UHD 4.1.0.5 and gnuradio v3.8.0.5.

I've installed gr-ettus using both DCMAKE_BUILD_TYPE=Debug and
DENABLE_QT=True flags.

I've successfully created my own noc block with rfnocmodtools, but I can't
seem to run it.

I've generated the FPGA images for every case and everything seems correct.

I get the same error message both trying to run it on the host and on the
e312.

Do you have any idea of where the problem might be?

Thanks in advance,
Regards.
Lautaro.

--000000000000de29bd05d733400e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi everyone,</div><div class=3D"gmail_default" style=3D=
"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_defa=
ult" style=3D"font-family:arial,helvetica,sans-serif">I&#39;ve been trying =
to implement the phosphor (among others) example with RFNoC, but the error =
&quot;&#39;top_block_sptr&#39; object has no attribute &#39;rfnoc_graph&#39=
; &quot; pops up when I try to run any flowgraph. <br></div><div class=3D"g=
mail_default" style=3D"font-family:arial,helvetica,sans-serif"><br></div><d=
iv class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"=
>I&#39;m using an E312 with UHD 4.1.0.5 and gnuradio v3.8.0.5. <br></div><d=
iv class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"=
><br></div><div class=3D"gmail_default" style=3D"font-family:arial,helvetic=
a,sans-serif">I&#39;ve installed gr-ettus using both DCMAKE_BUILD_TYPE=3DDe=
bug and DENABLE_QT=3DTrue flags.</div><div class=3D"gmail_default" style=3D=
"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_defa=
ult" style=3D"font-family:arial,helvetica,sans-serif">I&#39;ve successfully=
 created my own noc block with rfnocmodtools, but I can&#39;t seem to run i=
t.</div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,s=
ans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:aria=
l,helvetica,sans-serif">I&#39;ve generated the FPGA images for every case a=
nd everything seems correct.<br></div><div class=3D"gmail_default" style=3D=
"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_defa=
ult" style=3D"font-family:arial,helvetica,sans-serif">I get the same error =
message both trying to run it on the host and on the e312.</div><div class=
=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><br></d=
iv><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-s=
erif">Do you have any idea of where the problem might be?</div><div class=
=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><br></d=
iv><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-s=
erif">Thanks in advance,</div><div class=3D"gmail_default" style=3D"font-fa=
mily:arial,helvetica,sans-serif">Regards.</div><div class=3D"gmail_default"=
 style=3D"font-family:arial,helvetica,sans-serif">Lautaro.<br></div></div>

--000000000000de29bd05d733400e--

--===============0254129187416591855==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0254129187416591855==--
