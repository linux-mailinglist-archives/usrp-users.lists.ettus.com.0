Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D17ABBFE9
	for <lists+usrp-users@lfdr.de>; Tue, 24 Sep 2019 04:13:40 +0200 (CEST)
Received: from [::1] (port=55086 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iCaKg-0002RV-9I; Mon, 23 Sep 2019 22:13:38 -0400
Received: from mail-io1-f44.google.com ([209.85.166.44]:35656)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <austinadam42@gmail.com>)
 id 1iCaKc-0002Ls-R8
 for usrp-users@lists.ettus.com; Mon, 23 Sep 2019 22:13:34 -0400
Received: by mail-io1-f44.google.com with SMTP id q10so588094iop.2
 for <usrp-users@lists.ettus.com>; Mon, 23 Sep 2019 19:13:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=XvaD39806Y97xWtNzdpGI10hGFOtBQrp5lIrpPtyQNo=;
 b=AGFVe9yy6kW16hQ6sLKi0j/6EVliBvWCD6nkoqo0Xnw3S7/EbLKg4ir1LPQPDy+/yi
 LItYW6wxPS9RgViFCvwefnERXnE9/c9pzrTNLTmu9jfN1huBsJwHzlnI67QzgC1okOON
 ljJlk2gP54arOKx0bV0p/u72X7CNi2u+IHxt3Av4sgyodfw4gRZ36ztwnoWX0bR8FQtP
 yVm3BE227tG6OLRwVx5UfAVYcWmbfOJNZl27pfMV3u7+AkpfraqDD4+eyGLsT/+rC3pr
 rCvftZZm7/p6f49/nRMRIuLt1mea2+nBoHT05SP4bWjJ3M6D6LFy8gMvzPkBiA5fQCiq
 XPHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=XvaD39806Y97xWtNzdpGI10hGFOtBQrp5lIrpPtyQNo=;
 b=tIb2q/e3HtsCIqVdP6a6+vy1C6yavu1DTB3NrzTzivpm10oBvUPY3gEcnCxS8L1kA7
 piUvPVy+Ls5kRP1oQT/8qoT6pdVYfcbgmjYpxpBPBEC0PbY+/NRyqCqGDjo2sDIAdVV0
 xKaPHNqcHMisC/L3HFHYOnYtyHDJy/5PdKfZi2/U3XUPIpI8+n6o5YRsHjgNExE8J+c6
 qfudTPHSN64yK6EErKYMjY+8oKcETmoiWfMInjH5sbYyRrm93vpxHBokGwIbBAywxKPO
 WNRb2nNHVpNa8/CWEcGU8u72dXMROX5KwdEu78nYAUOPEDNm5OaP5Uq3NywyLOdbCoO1
 Er3Q==
X-Gm-Message-State: APjAAAUYA7WzSSBunD3wjHMnW71xNPJX+kaZ5Uu9jITeqPod+RhNwkw2
 hmgX+kfESBsZx+slWTh4p3KiGUL59UeDlVOFM+O4PA==
X-Google-Smtp-Source: APXvYqzEHNdvqiAZauN/Xc8yEyKBcVsEyj/uhz1q2/CgFNEspSFA0oF2uWlHYaVg79FcxtIN2wylEnlRonuM3gnOwG8=
X-Received: by 2002:a5d:9c4c:: with SMTP id 12mr734780iof.276.1569291173762;
 Mon, 23 Sep 2019 19:12:53 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 23 Sep 2019 19:12:42 -0700
Message-ID: <CAMKs6heJ9P9ThPC=EAdSdb-8jHDkC6yi4+h-By-Fq3CeNnZBFw@mail.gmail.com>
To: Ettus Mail List <usrp-users@lists.ettus.com>
Subject: [USRP-users] USRP N310 Phase Bouncing Issue
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Austin Adam via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Austin Adam <austinadam42@gmail.com>
Content-Type: multipart/mixed; boundary="===============0273329173941310912=="
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

--===============0273329173941310912==
Content-Type: multipart/alternative; boundary="000000000000f61864059343128a"

--000000000000f61864059343128a
Content-Type: text/plain; charset="UTF-8"

Hi USRP Users,

Currently we are taking a signal from a signal generator, splitting it four
ways, and connecting it to the receiving ports of the USRP N310.  We are
using a USRP N210 as an external local oscillator (splitting the output
into the RX LO ports on the N310) to help synchronize the four signals.

During first observation, using GNU Radio, we noticed that the four signals
display about a 180 degree phase shift between the daughter boards, as
stated online within the getting started manual of the N310.  We expected
to see this 180 degrees phase shift however, we are unexpectedly noticing a
bouncing of phase shift during our simulations. This can be seen in the
video attached.

We thought the cause of this was because of insufficient power being input
into the external LO (+3dBm-6dBm) however increasing the power to satisfy
this, did not solve the problem.

Are we correct to assume that there should be an initial 180 degree phase
discrepancy that can be fixed using GNU? Or is this bouncing in phase a
normal occurrence when using an N210 to drive the external LO?

The PPS an MIMO cables are not currently connected.

 Thank you for any responses!

~Austin
 Gain30.75.webm
<https://drive.google.com/file/d/1pVEcmdE--pvkEy_6eWWNzWQHlYk1CyUI/view?usp=drive_web>

--000000000000f61864059343128a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi USRP Users,<div><br></div><div>Currently we are taking =
a signal from a signal generator, splitting it four ways, and connecting it=
 to the receiving=C2=A0ports of the USRP N310.=C2=A0 We are using a USRP N2=
10 as an external local oscillator (splitting the output into the RX LO por=
ts on the N310) to help synchronize the four signals.=C2=A0 =C2=A0<div><br>=
</div><div>During first observation, using GNU Radio, we noticed that the f=
our signals display about a 180 degree phase shift between the daughter boa=
rds, as stated online within the getting started manual of the N310.=C2=A0 =
We expected to see this 180 degrees phase shift however, we are unexpectedl=
y noticing a bouncing of phase shift during our simulations. This can be se=
en in the video attached.</div><div><br></div><div>We thought the cause of =
this was because of insufficient power being input into the external LO (+3=
dBm-6dBm) however increasing the power to satisfy this, did not solve the=
=C2=A0problem.=C2=A0</div><div><br></div><div>Are we correct to assume that=
 there should be an initial 180 degree phase discrepancy that can be fixed =
using GNU? Or is this bouncing in phase a normal occurrence when using an N=
210 to drive the external LO?</div><div><br></div><div>The PPS an MIMO cabl=
es are not currently connected.</div><div><br></div><div>=C2=A0Thank you fo=
r any responses!</div><div><br></div><div>~Austin</div><div class=3D"gmail_=
chip gmail_drive_chip" style=3D"width:396px;height:18px;max-height:18px;bac=
kground-color:rgb(245,245,245);padding:5px;font-family:arial;font-weight:bo=
ld;font-size:13px;border:1px solid rgb(221,221,221);line-height:1"><a href=
=3D"https://drive.google.com/file/d/1pVEcmdE--pvkEy_6eWWNzWQHlYk1CyUI/view?=
usp=3Ddrive_web" target=3D"_blank" style=3D"display:inline-block;max-width:=
366px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;text-decora=
tion-line:none;padding:1px 0px;border:none"><img style=3D"vertical-align: b=
ottom; border: none;" src=3D"https://ssl.gstatic.com/docs/doclist/images/ic=
on_10_generic_list.png">=C2=A0<span dir=3D"ltr" style=3D"vertical-align:bot=
tom;text-decoration:none">Gain30.75.webm</span></a><img src=3D"//ssl.gstati=
c.com/ui/v1/icons/common/x_8px.png" style=3D"opacity: 0.55; cursor: pointer=
; float: right; position: relative; top: -1px; display: none;"></div></div>=
</div>

--000000000000f61864059343128a--


--===============0273329173941310912==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0273329173941310912==--

