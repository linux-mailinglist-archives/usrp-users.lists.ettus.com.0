Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A99F150495
	for <lists+usrp-users@lfdr.de>; Mon,  3 Feb 2020 11:53:14 +0100 (CET)
Received: from [::1] (port=36080 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iyZLo-0000iH-4a; Mon, 03 Feb 2020 05:53:08 -0500
Received: from mail-oi1-f196.google.com ([209.85.167.196]:37226)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <neel.pandeya@ettus.com>)
 id 1iyZLk-0000dG-UD
 for usrp-users@lists.ettus.com; Mon, 03 Feb 2020 05:53:04 -0500
Received: by mail-oi1-f196.google.com with SMTP id q84so14310382oic.4
 for <usrp-users@lists.ettus.com>; Mon, 03 Feb 2020 02:52:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=XzQLKcGzr+60NQzVYABQ+KLg2LRBBMQSNA18duSuGu4=;
 b=D0QayaXLChxeYFvzOIFr+MFw6klrNgNabYdaAr2s34fjUveJJe+i1jB+W6FCoh2Fx1
 QlUX83BcaSxO7EV+lBJzeH3PfncqBR8+Eq0vvMDEFpAhKYfrGMq53J5cW2VIHmLARNOf
 zlIf7sUIrpyFWXO9UWq+kQVFDdj0R92b2YD0PD/xlY0cTmBz+4vGcZxxvCs+HJamJXvq
 kgObxfdA7WZ07EP75hCOUb9JI499KJSwDaAQ0DuHftxDGsw0JxmwarhlwPGP/GvdeG+/
 a1oPcLa5NsyN0AOSu3+s8FnsyaCNLenUQOtnoYTRDOMGk9ixBp35vWN8vBJkobddXxsE
 dNSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=XzQLKcGzr+60NQzVYABQ+KLg2LRBBMQSNA18duSuGu4=;
 b=XVPA/c0quH4U9ab17D3dCtHHvPC+86jRO56l9WJPUmhXyGKstpCPWqGfF6l1GbaqVB
 tbcv0xEsnqF+BKGF4XIVtRm6B3KLQq4RERKFxztVDaBpoZJoO6+8pwQVPU0i+Ew9DMXE
 aVTsSascNTx4le7/r9lgY1NZBzVgvGaL07kjKVARuPqC3h30bdUJoDeRCGXqt9DupVl9
 2EoDQ3IxldMBRIiEqRYyE07cy7bdUMxuksJlkIcCnHxiq0q6JC2uL5rbzebytjW+tFZw
 FJh4UFPQD+8vxlUzi5x2FCNLWfC06H518iSeek+VH1+O1QuYP8Ul4bniUkZ8wKd5S9TG
 pSiA==
X-Gm-Message-State: APjAAAWWJ5ZB2BHH+YBKRDD+gAcj/ciBo7gd850J5lSm5z/rFcpLYqGA
 tSb+WU0kQ8vzAg+P3spSqBOr2YBqPfP4Z6EjuNW9xX/hfmfq3l+S5rw=
X-Google-Smtp-Source: APXvYqxulR5nxHqIuvhYr3zHPrnD/N0lXT0ox8QLlCGSYohwfJdwZIZZ3mqYBJa/r2YFg6i6wEaTyu8vI7YwdiJQ6Vc=
X-Received: by 2002:aca:f20b:: with SMTP id q11mr13631203oih.78.1580727143752; 
 Mon, 03 Feb 2020 02:52:23 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 3 Feb 2020 04:51:47 -0600
Message-ID: <CACaXmv-NAvgjZU4Eivn1V6DqHkgbt1NGDqAsL9jnBiNn8qfgYg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] * GNU Radio and RFNoC (FPGA) Workshops in Newbury UK
 on February 6, 7 *
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Content-Type: multipart/mixed; boundary="===============6607980004997015865=="
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

--===============6607980004997015865==
Content-Type: multipart/alternative; boundary="000000000000e3f8e3059da9b7c4"

--000000000000e3f8e3059da9b7c4
Content-Type: text/plain; charset="UTF-8"

We are running technical hands-on training workshops on GNU Radio and RFNoC
(FPGA) at the NI office in Newbury, UK this week on Thursday February 6 and
Friday February 7.  If anyone is interested, there are still a few spots
left, so please register as soon as you can.  Please email me directly if
you have any questions.  Thank you.

https://events.ni.com/profile/451346

--Neel Pandeya

--000000000000e3f8e3059da9b7c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">We are running technical hands-on training workshops on GNU Rad=
io and RFNoC (FPGA) at the NI office in Newbury, UK this week on Thursday F=
ebruary 6 and Friday February 7.=C2=A0 If anyone is interested, there are s=
till a few spots left, so please register as soon as you can.=C2=A0 Please =
email me directly if you have any questions.=C2=A0 Thank you.<br></div><div=
 class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div=
><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><a h=
ref=3D"https://events.ni.com/profile/451346">https://events.ni.com/profile/=
451346</a></div><div class=3D"gmail_default" style=3D"font-family:verdana,s=
ans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:verd=
ana,sans-serif">--Neel Pandeya</div><div class=3D"gmail_default" style=3D"f=
ont-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif"><br></div></div>

--000000000000e3f8e3059da9b7c4--


--===============6607980004997015865==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6607980004997015865==--

