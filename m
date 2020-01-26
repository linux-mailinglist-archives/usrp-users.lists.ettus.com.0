Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C713149A87
	for <lists+usrp-users@lfdr.de>; Sun, 26 Jan 2020 12:58:15 +0100 (CET)
Received: from [::1] (port=53074 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ivgYM-0008Fp-87; Sun, 26 Jan 2020 06:58:10 -0500
Received: from mail-ot1-f50.google.com ([209.85.210.50]:36076)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <varban.metodiev@gmail.com>)
 id 1ivgYI-0008BG-Bd
 for usrp-users@lists.ettus.com; Sun, 26 Jan 2020 06:58:06 -0500
Received: by mail-ot1-f50.google.com with SMTP id g15so5851304otp.3
 for <usrp-users@lists.ettus.com>; Sun, 26 Jan 2020 03:57:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=ftobSxMHH6JVKDSR4KkA7t80FAmhE8u2nIbV6D8Tma8=;
 b=VVANR6i1llBPcF1MQYP555v48saJ+LWQ8oOEaII5lDY4pxhuu5vhPFpoAQjiaFWerU
 b0eAJ2THxR9whFDP/XfE39Ky0cGGU8TFcNvO3VKn3IDeqv0qPkpfs4UtwllqVfng1An1
 f0URXKi9P0YnrzErwS00+kmARVrtYJDeu/5DmFiRPH4kK+SIIYflljnQ51Z2655KedJd
 S16DylPxdUKnpwNslRBbGBLYVdtXKyB6sBad1LDAeFg0iQ9bhsSIpSy5LCqaS2Toa4Pc
 /nluMGXMHSwX+ccGZtqq29aQlaX0oV6WFlqZSJVH5gS+F7ALxtDXLVuq+vqjyk83Sg0D
 mZwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ftobSxMHH6JVKDSR4KkA7t80FAmhE8u2nIbV6D8Tma8=;
 b=r4jDWWM25p/tY41eXkuH3hQURiwv059KjLOIktKjdps2g3gBfiXNidnppRHKC8u4sD
 vbXepJ67HKZXlw1xEi59oWm8a2jt4aPvVGA5p/J2HxNFVSJm1DBJXTu9vt91db9r0Aag
 W3IRfS+kcyCoBhDfTKOJ6uAS2V+H33lcr7gSgu/CewUk372WU8/caK7qpBZXUxIoUs7a
 Ri/UfoEbLjMcyAoy/QqSQi0YMedrJnD+D1MDL00unba4cUUe9ENVRmG16G14wVY9zQK4
 BxXqgXrgUO07XTkggipzK/cfv1FIHgksmT7shugghw40FWC+v72tHMPMZ2JpwvSM+ols
 W1ag==
X-Gm-Message-State: APjAAAW/GKTkKnIUapAbewPgORcIyvzzTxOqtID0abLvPs9CxNKqNHE4
 OCgSMeTjAHH04Ij+48IYNF1VcDK/XcMs94SN+u1Yn2qJ
X-Google-Smtp-Source: APXvYqwAEic9+JGjts8z530coPIV3NrIUqRV8xkNbhOu4CKDndfJjA/2SXRGbtRyG+iWOnIrRQ+xNP7lEEzI/DqqbUE=
X-Received: by 2002:a9d:1ca3:: with SMTP id l35mr8974051ota.271.1580039845226; 
 Sun, 26 Jan 2020 03:57:25 -0800 (PST)
MIME-Version: 1.0
Date: Sun, 26 Jan 2020 13:57:18 +0200
Message-ID: <CAKA0MUiUUxp2ko=4A9vM4u1D4tmGP4HKpeGbe5FCKi=_q9WVUw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Simultaneous TX and RX from the UHD
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
From: Varban Metodiev via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Varban Metodiev <varban.metodiev@gmail.com>
Content-Type: multipart/mixed; boundary="===============2444997795672160926=="
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

--===============2444997795672160926==
Content-Type: multipart/alternative; boundary="000000000000b4ac37059d09b110"

--000000000000b4ac37059d09b110
Content-Type: text/plain; charset="UTF-8"

Dear USRP Community,

I need to do a realistic loopback TX-RX communication (via a feeder and
attenuator) of my B205mini device.

I took the examples from tx_samples_c.c and rx_samples_c.c, and tried
running them as two different POSIX threads. However, this way I could get
only transmission working, without any reception. When trying from GNU
Radio - both the source and sink modules work simultaneously without any
problem, meaning that I have done something really wrong in my approach...

Could you please advise what is the correct structural pattern for
simultaneous RX and TX on a single USRP device via the UHD framework?

Best regards,
Varban

--000000000000b4ac37059d09b110
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear USRP Community,<div><br></div><div>I need to do a rea=
listic loopback TX-RX communication (via a feeder and attenuator) of my B20=
5mini device.=C2=A0=C2=A0<br></div><div><br></div><div>I took the examples =
from tx_samples_c.c and rx_samples_c.c, and tried running them as two diffe=
rent POSIX threads. However, this way I could get only=C2=A0transmission wo=
rking, without any reception. When trying from GNU Radio - both the source =
and sink modules work simultaneously without any problem, meaning that I ha=
ve done something really wrong in my approach...=C2=A0</div><div><br></div>=
<div><div>Could you please advise what is the correct structural pattern fo=
r simultaneous RX and TX on a single USRP device via the UHD framework?</di=
v><div><br></div><div>Best regards,</div><div>Varban</div><div></div></div>=
</div>

--000000000000b4ac37059d09b110--


--===============2444997795672160926==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2444997795672160926==--

