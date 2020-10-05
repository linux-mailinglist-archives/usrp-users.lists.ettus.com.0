Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CA6283066
	for <lists+usrp-users@lfdr.de>; Mon,  5 Oct 2020 08:37:27 +0200 (CEST)
Received: from [::1] (port=37394 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kPK7g-0004He-HV; Mon, 05 Oct 2020 02:37:24 -0400
Received: from mail-wr1-f46.google.com ([209.85.221.46]:33958)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ra.anes@globaledgesoft.com>)
 id 1kPK7c-0004BM-F6
 for usrp-users@lists.ettus.com; Mon, 05 Oct 2020 02:37:20 -0400
Received: by mail-wr1-f46.google.com with SMTP id t10so8154236wrv.1
 for <usrp-users@lists.ettus.com>; Sun, 04 Oct 2020 23:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=globaledgesoft-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=FOEG8Gk5e33llt+Yj+SLKesdogpgWF0xYVbyQR8KLTI=;
 b=dX1hWV2BDz56NCaet6FMf4W53tg133uCohJ4n2u0yk6Pb4o/yZD1ZQxZvfhNfdoDC9
 /N0RsI9AiNzDPqBGbCCIZ5YwI43CvBT5T0N8dA+8T6eQjn7KF7K3JhIxQaTLO7+6knxi
 N3PXuFO274ewyuemIOLMeJDOvU87VCOLMr3Or0Lk6uTlEi0d92+kytYGeNIi4XXJ/XSF
 IRWK1YtQJY5aMlXgTZlBAqPigdwMN74COnQ2cgwb3kDbZyzVi0A8ftOUmxRZVfPrixkY
 Xa5sYCowTAW94t8kyknHW8bvqmo2pXU9CX1AOeqdTWZ+b2BvKmi1MTWbWR3GX4wiIgp4
 t7YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=FOEG8Gk5e33llt+Yj+SLKesdogpgWF0xYVbyQR8KLTI=;
 b=sEMnwF5GPpo/6iP/w/jSS7Fw41wiQ7ZHSGgMuIKEhXP6lXwgEnshibnS36D3jO7ifZ
 RIWK81qxzzeTsvOPXfrZMnc9Cmap+euoiihKhzZXAPU9fqL6zNP5lmg+ihPoUk6nqIqW
 tBJViJwsdIsaoUtOPdqM/KvEtOdPvpxIiBDlYtQYZduB/vxtzDqzrkSizmZ0u969Lkud
 43VTGHi73BfSLYx1EpwzqNL7ZrYdcECZzCRMQjMWq4gGTGeuWksR3/o6KhSGPGOwuVDK
 UGyAAdMKUCpxJ48JOVybv3QRhXHIli0ehBWIydNAhfU9kL0/cBdMJusyPOTil43vuhl5
 3HVg==
X-Gm-Message-State: AOAM532v+deVGdUyy9se8z1k/jnF1aMZnNfZKWBAbi2UP6HpYkwLy9de
 RsliyxQSgkls5DiA2fSULPUY2xqTuDAxCmhy4QHvsBMqopuKs6QgYKQHIEaH9EqLR9BDm00roQH
 7OS/5Q35cc4tyINPOqn10VYJOTTpPubwjr/I8Pn1z
X-Google-Smtp-Source: ABdhPJxOPZtkkoLTmE3kbmOX/qCXPdmgWF74lMQHEQ+SwG7RR1Bfb8jHq1rBjKx7jfklw7MDdt7Qp9/3tBebmGtF1yQ=
X-Received: by 2002:adf:94e3:: with SMTP id 90mr14755201wrr.380.1601879799038; 
 Sun, 04 Oct 2020 23:36:39 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 5 Oct 2020 12:06:28 +0530
Message-ID: <CAEP-zC1h9MNePZLF4UnB93013d0MTbA-m+12jPCCDbyy+LeHKQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] USRP and Bladerf Sync
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Anes Rose Rigiel Anony via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Anes Rose Rigiel Anony <ra.anes@globaledgesoft.com>
Content-Type: multipart/mixed; boundary="===============0730205587150045485=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============0730205587150045485==
Content-Type: multipart/alternative; boundary="0000000000006519d105b0e6b44f"

--0000000000006519d105b0e6b44f
Content-Type: text/plain; charset="UTF-8"

Hi Team,

We are using *Bladerf XA4 as Base station 1 and USRP B210 as Base Station 2*.
Since both devices use an internal clock as the clock source, both are *not
in sync* so our application fails.

I need to sync these both devices.

*Is there any way to synchronize without an external clock and with an
external clock?*

Please share the detailed information on this.

-- 
Regards,
Rigiel,
Cellular.

-- 
Disclaimer:This message is intended only for the designated recipient(s). 
It may contain confidential or proprietary information and may be subject 
to other confidentiality protections. If you are not a designated 
recipient, you may not review, copy or distribute this message. Please 
notify the sender by e-mail and delete this message. GlobalEdge does not 
accept any liability for virus infected mails.


--0000000000006519d105b0e6b44f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Team,<div><br></div><div>We are using <b>Bladerf XA4 as=
 Base station 1 and USRP B210 as Base Station 2</b>. Since both devices use=
 an internal clock as the clock source, both are <b>not in sync</b> so our =
application fails.</div><div><br></div><div>I need to sync these both devic=
es.=C2=A0</div><div><b><br></b></div><div><b>Is there any way to synchroniz=
e without an external clock and with an external clock?</b></div><div><br><=
/div><div>Please share the detailed information on this.<br clear=3D"all"><=
div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartm=
ail=3D"gmail_signature"><div dir=3D"ltr"><div>Regards,</div><div>Rigiel,</d=
iv><div>Cellular.</div></div></div></div></div>

<br>
<div align=3D"left">Disclaimer:This message is intended only for the design=
ated recipient(s). It may contain confidential or proprietary information a=
nd may be subject to other confidentiality protections. If you are not a de=
signated recipient, you may not review, copy or distribute this message. Pl=
ease notify the sender by e-mail and delete this message. GlobalEdge does n=
ot accept any liability for virus infected mails.<br></div>
--0000000000006519d105b0e6b44f--


--===============0730205587150045485==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0730205587150045485==--

