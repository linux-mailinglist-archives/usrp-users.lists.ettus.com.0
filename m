Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F108A4C358
	for <lists+usrp-users@lfdr.de>; Mon,  3 Mar 2025 15:26:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F091738104D
	for <lists+usrp-users@lfdr.de>; Mon,  3 Mar 2025 09:26:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741011979; bh=iViGl2pTzV8+rUHvR9TQbQDnyiagDU6powqmFoSCJB4=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=eYyHwbBH0BMruy/7x2AX6tplRT4lDVLpPskSB8bNs4AUWqGi7Q3Vs4Y3B9Q7Rc5rh
	 iEbLGtXulX+0icky1koaQ+4aq3z9dbexiYxQ7tV8lzNag6cOFg+PBC+nXcwOaV5JKA
	 IhR/iqCcTwBDCoPFmBpMdw7NvrZoK7rqP0FR9EzIb7BiihVfVU3xv8LnScVsJdm/9Y
	 jzUovDYldu/aCJlTcxIP23lKElgPg4rvayt9NUijCuwHgQTqZLyvLEBEsuOBtxfgea
	 aHV3Brh5Vtsc7jPrR3yPPM3+ivldk6AUSZ7cTb0fc5mNqj7vP4nTZkgE9S69mF6m8x
	 quCZVpMysFHQA==
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 61D76385470
	for <usrp-users@lists.ettus.com>; Mon,  3 Mar 2025 09:25:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="aZmCFPmV";
	dkim-atps=neutral
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5e4f5cc3172so4773024a12.0
        for <usrp-users@lists.ettus.com>; Mon, 03 Mar 2025 06:25:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1741011932; x=1741616732; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qnxDoMJrmlHL2L5G4NnIrfQo2qmOQsI61deSjWJytPY=;
        b=aZmCFPmVRjM6LAtwUPTbzNr3Zu7RQIW3CGhoBrwi2+SaZ99cGzK7xp2+DcWcEl3DxX
         Cmww3NqIpIRXhAkkE4IqnRq85XJthSrPIchcisO7hDqxnmjYPGR4MKjbJGiIMZhUYT76
         ZOnGowPwZGrZZ24i40cFkXQfbiLUzQf8yvCxXd2XnhH1FFwY2ghDznw1auPnBHhkkvyy
         q0XvFH4AJlgrUeGFmyoz7/l8uvE25odnbbyFLhfmu4WKtn3l961SsTuUuVSszcaocz1Y
         IN0J1P0TWfQ8AkvxRgZreruqh1jxE99JqdjL2A2p7CGeTafFBrk5mmozAU6aA9ox7rMS
         63dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741011932; x=1741616732;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qnxDoMJrmlHL2L5G4NnIrfQo2qmOQsI61deSjWJytPY=;
        b=sqza7TYtM2VVJEViAtMyNpIya5v+rjyvuC7IOtDMMl5h0muql0KbK5ZyfunjlIDlnr
         RoXxKfXWmdaRDKuFQrJ18l5yGCWHxI7TdpDJHvJK4s/mCq11uXVSFwEY4NV8V1uDT7dh
         R/rQA3LeCKwK+dsgdtQZyCAhlOKe8KANjxxP0fLqjUIr9v9qEFnwpVqSFCd/zC3KXxjr
         +zYpwnDbLygDzwHY1XzSXNw7m5yaVLI4+0zo/19/4Son6nUI6bX/q/+OL8vvo3w0r4P8
         rvfxG+N9saI+NMtPPHfFyd3nAEPadGVlHV+YG0PeJU6GD3cNRRJaGkmfY5sueLKVWmvW
         9c5Q==
X-Gm-Message-State: AOJu0YxLwTkSsG3dldOE5kfG/YdMtgl6flsIDvkIw37VeIYZxfp/POBv
	3dIOMYpSB1J57OW99CW/ZM5K9cL63aWcirO19nOA7HZJw8Gtr+scaDha3GGXcdZhlPQJ8zAfQJL
	r7bAKlRW89qgpdbRVPBrSQyieORmVeHFd/Ly/
X-Gm-Gg: ASbGncvknixJUoEnLNEG84t28CYbW0M4JjIAxRyESlYNIvHFiS/Jb/TS0mo4JMlSIlE
	5YSAgn+SHDH/9SPrvORwHfiJYfh+nG7YoBQH/qSqWP1P9sJLtVOfxs4iO+B+7tLxESbOmveIZ12
	JVI6f1XfGGs6ePCZyZaFIaoRW/Bg==
X-Google-Smtp-Source: AGHT+IFeTKmlE8BiEix+dR8rAY2fRc+f+EegHmmpUUTVpTUuVfjDYZta63gVT7+N2hKn+fRbr9191XKg/BCn2fYTYyQ=
X-Received: by 2002:a05:6402:27d1:b0:5e0:82a0:50ab with SMTP id
 4fb4d7f45d1cf-5e4d6b6240bmr16488598a12.27.1741011932293; Mon, 03 Mar 2025
 06:25:32 -0800 (PST)
MIME-Version: 1.0
References: <fPZXzogk2L9MdOrWTomBOULw9AmFFNK4Ltl2CctpvA@lists.ettus.com>
In-Reply-To: <fPZXzogk2L9MdOrWTomBOULw9AmFFNK4Ltl2CctpvA@lists.ettus.com>
Date: Mon, 3 Mar 2025 09:25:21 -0500
X-Gm-Features: AQ5f1JoVuUVn3H_GUHH3rsirGcBTJNWxAdMAwD5VrA1TVgMXhwpcuRIRabFnCBg
Message-ID: <CAB__hTTTUFc+8oExwVeOeWZL1AskhPQwrs7sOs=vq__Y4KAk+A@mail.gmail.com>
To: michalgorny01@gmail.com
Message-ID-Hash: YJK2E3QBYGC5TBVYAJLKA7CFEPA5T2LI
X-Message-ID-Hash: YJK2E3QBYGC5TBVYAJLKA7CFEPA5T2LI
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: strange behavior related to gain
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YJK2E3QBYGC5TBVYAJLKA7CFEPA5T2LI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5753830678334479134=="

--===============5753830678334479134==
Content-Type: multipart/alternative; boundary="000000000000c64d02062f70edc1"

--000000000000c64d02062f70edc1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

With an FMCW radar and a matched filter, the leakage signal will be at a
different range (close to zero range) than the targets.  So, you could just
ignore this range region of your results.  But, if the leakage signal is
strong enough to either saturate the A/D or to cause the corresponding
range sidelobes to interfere with target detection, then you will need to
mitigate the leakage. There will be two types of leakage: internal device
leakage (which you mentioned) but also direct antenna-to-antenna leakage.
You will likely want to deal with both of them.  The method I mentioned
earlier for cancelling the leakage may help.
Rob

On Sun, Mar 2, 2025 at 4:07=E2=80=AFAM <michalgorny01@gmail.com> wrote:

> There is one =E2=80=9CRF A=E2=80=9D channel, one antenna for the TX/RX po=
rt, and one
> antenna for the RX. I don=E2=80=99t need to use a circulator because I ma=
de my
> custom conjugate multiplication block.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c64d02062f70edc1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>With an FMCW radar and a matched filter, the leakage =
signal will be at a different range (close to zero range) than the targets.=
=C2=A0 So, you could just ignore this range region of your results.=C2=A0 B=
ut, if the leakage signal is strong enough to either saturate the A/D or to=
 cause the corresponding range sidelobes to interfere with target detection=
, then you will need to mitigate the leakage. There will be two types of le=
akage: internal device leakage (which you mentioned) but also direct antenn=
a-to-antenna leakage.=C2=A0 You will likely want to deal with both of them.=
=C2=A0 The method I mentioned earlier for cancelling the leakage may help.<=
/div><div>Rob</div><br><div class=3D"gmail_quote gmail_quote_container"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Sun, Mar 2, 2025 at 4:07=E2=80=AFAM &=
lt;<a href=3D"mailto:michalgorny01@gmail.com">michalgorny01@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>The=
re is one =E2=80=9CRF A=E2=80=9D channel, one antenna for the TX/RX port, a=
nd one antenna for the RX. I don=E2=80=99t need to use a circulator because=
 I made my custom conjugate multiplication block. </p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000c64d02062f70edc1--

--===============5753830678334479134==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5753830678334479134==--
