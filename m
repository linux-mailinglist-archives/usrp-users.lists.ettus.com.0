Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA8547F436
	for <lists+usrp-users@lfdr.de>; Sat, 25 Dec 2021 19:22:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C339538454B
	for <lists+usrp-users@lfdr.de>; Sat, 25 Dec 2021 13:22:08 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JldUTBRr";
	dkim-atps=neutral
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 2524B38449F
	for <usrp-users@lists.ettus.com>; Sat, 25 Dec 2021 13:21:06 -0500 (EST)
Received: by mail-yb1-f180.google.com with SMTP id i3so17642427ybh.11
        for <usrp-users@lists.ettus.com>; Sat, 25 Dec 2021 10:21:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=bdGUYH6wryAz2CMFGAcQKh7Jx9ZRqhazEATw9RcShmc=;
        b=JldUTBRrRUrjYA2pai0qsw/njeuHm53+zO3gKmxectYhp1YWzWtn0pM+HBiAcobo/8
         qgKGan+CwKm3g3gIiA4Jlr5gXAtOBNKLUOYaIcpS3ZNFk/5IrBiNwJVo8nmTpHw1S6yI
         rZCzjnU1nwJZBzZ+eOf2oQjnJB7jRovAyyLAAlC5HWTOhv1bJq1pefXQ6I0qMEL0+FRI
         dZu22t/RGy8ZUIBsGeDHqyjMMAQpmxy4JxdvgwYzbClfFXJ+qrmGcPHRJbA//WQE2atZ
         hZonluX1M8f/r5VY/eYd7cjeiQBjqCplUzk1jRbPQJWixy72VtROJElai3UCsi/K4v0T
         /VMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=bdGUYH6wryAz2CMFGAcQKh7Jx9ZRqhazEATw9RcShmc=;
        b=W9Le0RnVkUUTrrjPAJDp/tolUH14npP8ruJNO0SK/Ki+Msiw8TXhYAp/ldhZ2LFsag
         FvBNbW/YqOlnSPSwhxcjhSYhCkFw0mcFgbejdwYVOPYyvkSvt7zmGYTsvmAMGb1j46hs
         zLEOfhXMrEDYb1yZPdZkUqUh9R12Bl2A/W8/g7oKui18NiOVuWap9WjHj45dzjosHilp
         ZZQOKjoYCdoHjFCR1uZTU+OGi0jvJ3gt+TDLGjDQqL1ZDpt53uR63Z1GW6xeim5XdN3p
         Ir1qQlQEGkziHQ3QPRZ9HF115Qhx/xOXTS9lQPez7YQKRMEwM9QMsuCbA63oKc7vcF0a
         oC1w==
X-Gm-Message-State: AOAM533+zcVfmDBEiR19B0SJDTgKlAQ5b8+Env+2xRiSZ8JQPiQgYuh9
	XNiXMB2SJE+xQyYfUJv3X/sNND/b8+LTKWsphLLNht56bmziwlxFhOALTw==
X-Google-Smtp-Source: ABdhPJwNjttPgp6ARbbRNL4OESg1/dh1JKRw6vlpgBjAp25zf4bTCR0Tye8nBQCQvUXcIdTBPd232iZoxraGkYZ0/KA=
X-Received: by 2002:a05:6902:1029:: with SMTP id x9mr14339187ybt.717.1640456465715;
 Sat, 25 Dec 2021 10:21:05 -0800 (PST)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Sat, 25 Dec 2021 21:50:54 +0330
Message-ID: <CAA=S3PtGfkoD9bQ+zDzpOpE5ioxQK-N_15tLAa89hj8nrG96xg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 2EUACTATC5PTMQJ4FYSEL2YOVMZUTAF6
X-Message-ID-Hash: 2EUACTATC5PTMQJ4FYSEL2YOVMZUTAF6
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] What's difference between noc_shell_gain.v & rfnoc_block_gain.v in RFNOC blocks
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2EUACTATC5PTMQJ4FYSEL2YOVMZUTAF6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1109211857013742464=="

--===============1109211857013742464==
Content-Type: multipart/alternative; boundary="000000000000e897d005d3fc88c0"

--000000000000e897d005d3fc88c0
Content-Type: text/plain; charset="UTF-8"

Hi, I am studying gain RFNOC example, there is two Verilog source in the
FPGA-src folder.
(see this link https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0)
*noc_shell_gain.v *& *rfnoc_block_gain.v  *

It is described in the referer link,

   -
*rfnoc_block_gain.v The top-level synthesizable file for the Gain block*
   -
*noc_shell_gain.v The NoC Shell for the Gain block*

My question is:
What's difference between noc_shell_gain.v & rfnoc_block_gain.v  in RFNOC
blocks.
What's NOC shell??

thanks in advance

--000000000000e897d005d3fc88c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, I am studying gain RFNOC example, there is two Verilog=
 source in the FPGA-src folder.<div>(see this link=C2=A0<a href=3D"https://=
kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0">https://kb.ettus.com/Ge=
tting_Started_with_RFNoC_in_UHD_4.0</a>)</div><div><div><div><b>noc_shell_g=
ain.v </b>&amp; <b>rfnoc_block_gain.v=C2=A0=C2=A0</b><br></div></div><div><=
br></div><div>It is described=C2=A0in the referer link,=C2=A0</div><div><ul=
 style=3D"margin:0.3em 0px 0px 1.6em;padding:0px;color:rgb(0,0,0);font-fami=
ly:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,sans-serif"><l=
i style=3D"margin-bottom:0.1em"><font size=3D"1"><b><code style=3D"font-fam=
ily:monospace,Courier;background-color:rgb(249,249,249);border:1px solid rg=
b(221,221,221);border-radius:2px;padding:1px 4px">rfnoc_block_gain.v</code>=
<br>The top-level synthesizable file for the Gain block</b></font></li><li =
style=3D"margin-bottom:0.1em"><font size=3D"1"><b><code style=3D"font-famil=
y:monospace,Courier;background-color:rgb(249,249,249);border:1px solid rgb(=
221,221,221);border-radius:2px;padding:1px 4px">noc_shell_gain.v</code><br>=
The NoC Shell for the Gain block</b></font></li></ul><div><font color=3D"#0=
00000" face=3D"Lucida Sans Unicode, Lucida Grande, sans-serif">My question =
is:</font></div></div><div>What&#39;s difference between noc_shell_gain.v &=
amp; rfnoc_block_gain.v =C2=A0in RFNOC blocks.</div></div><div>What&#39;s N=
OC shell??</div><div><br></div><div>thanks in advance</div></div>

--000000000000e897d005d3fc88c0--

--===============1109211857013742464==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1109211857013742464==--
