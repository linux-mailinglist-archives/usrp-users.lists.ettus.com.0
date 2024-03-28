Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 995F78904B2
	for <lists+usrp-users@lfdr.de>; Thu, 28 Mar 2024 17:13:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 80611385C29
	for <lists+usrp-users@lfdr.de>; Thu, 28 Mar 2024 12:13:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1711642419; bh=AhwiRoXkkMztrQElztbYYQvtEsWScYSpXB/BNk9C3kg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=o98K+PEpX1hsT2+vXssUama5zYUNIJXQ1DyXpIp8RjcC2Ma7Qin1i/PvPcYRl17lf
	 Y0w1CKggEdQaYDBbE+Q+Q+zxPKiGNb0Melsi+ZsSzIJPgB2OQkAygIaoTaRoubVTrB
	 dPi0yw7iRmlyXCpAV56VoKe0fX9x3xf/yKq/tpFAk9NhfF1QfS9OwgjOgy6RhjTyNo
	 6P95jGW5BrjzkxLwhBX4DD0hSkCMDZQ99760vih5Yfb2bo6SKvvpFzrvr0q7nBsuVi
	 JjSNMImvyRZYeL611ZT6+AtXvRHCjJc5tCo3Gfk4XQd72ebHBvKnorWYia7tHyLgcW
	 wX6Yl//FSOwpA==
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 4D354385C11
	for <usrp-users@lists.ettus.com>; Thu, 28 Mar 2024 12:13:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="r4nXsWJs";
	dkim-atps=neutral
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a466fc8fcccso153073566b.1
        for <usrp-users@lists.ettus.com>; Thu, 28 Mar 2024 09:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1711642383; x=1712247183; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=i7PufXvhEYn5N2nhefQoLgFNg0tzjqGVNikTWiSKGGw=;
        b=r4nXsWJsIlSwxaU0J99HXMjS2Ekz8sLBZZHm3DXw7lawM//kZ7ToG82ko0bthnvIJ7
         heGB2jq6PThakNmqbsTZC89TVQOVr12xexijmLeU4rkRI6uBEcjr+vZ938+LyGFewZFk
         XoQm2Wtcj726ux3jM22h4Yv2Lum28cRVoLUnkznKhQATJyBLoiloLcEIyBPVPK5LkvcL
         R4CpCi+i362GfCkToKDxgA2vIUGccgh9XluUFK6/05j7CTr3koR+bKwzndNLqPVnwudq
         DnSPf9Ju5hK9oPHT06Rv8srf65E/5+N38lhkHFPZzC6oA57mrgQg8xlMTj7+osCObcm+
         IR2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711642383; x=1712247183;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i7PufXvhEYn5N2nhefQoLgFNg0tzjqGVNikTWiSKGGw=;
        b=JZKKuR55iBmeB0TXIgpG2H/fyNTGuefwjmYx+eE2BvILKQBfM1f6FgLzsdnQZIqysG
         EMFtaSzk/IPapN/YLloEB4nfnBEhn5TZY3ATGU4hhbq5qF3L2YgNp4sLt6n3UrtWozZK
         OgGfuDus0FXtA0jKSXJ2RcQQFO0Aj7SqZ3ymGUArQpX8AydZcGvwQ6Rsgy1GfNv01b7f
         lb8t748Vdg8mvX4fiy8gXUg2rHpWjIEDP1pYVjVtYUdiCzhiCgvrGNAslDTtSEYLxuau
         B3C5dMjPyVz4fPX+3MLk1vmXi0Mnhn7ly9wtWrhghsOu8XCxSebewjuOAa645SKrkXEW
         z4iQ==
X-Gm-Message-State: AOJu0YzCWLLruuSU+4yRIzS/wJpdDhu81d4FL3a70RJhaq27f51WtvSz
	TD1GlsqPdEQgm/+qPC6k6J3hkVVmIZgJT7qJNhavxgCjFBX2rtwSlVFG69HM3J/OoSZGj7w61NZ
	D2W4PJFh/Yvu2QQB77jTm+bPa3zASaado4rQf6HOS
X-Google-Smtp-Source: AGHT+IG00PSwaAdV+jMgr5ums2KF3iJIw+k59mrVF5RERLCAwa897fDdAYij5GiT0h4j8SiT6DueDdtdvtZDi/DtQSM=
X-Received: by 2002:a17:906:5a88:b0:a4e:2ac2:cc67 with SMTP id
 l8-20020a1709065a8800b00a4e2ac2cc67mr595949ejq.9.1711642383078; Thu, 28 Mar
 2024 09:13:03 -0700 (PDT)
MIME-Version: 1.0
References: <uc6mjxsRLSVW35mQTMhRDfQe6Z0yI25dq3rsx7IHg@lists.ettus.com>
In-Reply-To: <uc6mjxsRLSVW35mQTMhRDfQe6Z0yI25dq3rsx7IHg@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 28 Mar 2024 11:12:46 -0500
Message-ID: <CAFche=jAJq6PzmQNJf2+SJy-sf+FqNAsq-QD577uEc7f9rZ-+A@mail.gmail.com>
To: chris.pineda@chaosinc.com
Message-ID-Hash: NWXLHJBH3F2IUTLWHS6PJBBZZVHSFEGJ
X-Message-ID-Hash: NWXLHJBH3F2IUTLWHS6PJBBZZVHSFEGJ
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Unable to Simulate RFNoC FFT Module in Questa/Modelsim
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NWXLHJBH3F2IUTLWHS6PJBBZZVHSFEGJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0302869453409496844=="

--===============0302869453409496844==
Content-Type: multipart/alternative; boundary="00000000000039f1700614bacc74"

--00000000000039f1700614bacc74
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sure, at this moment I'm using:
Vivado v2021.1_AR76780
Model Technology ModelSim SE-64 vsim 2021.3 Simulator 2021.07 Jul 13 2021

Our CI pipelines appear to be using:
ModelSim SE-64 2020.4

I know we've used PE, DE, and Questa as well, but I don't know for sure
when we last tested this particular IP with those.

Wade

On Wed, Mar 27, 2024 at 3:05=E2=80=AFPM chris.pineda--- via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I=E2=80=99ve tried make modelsim and it has the same issue. That=E2=80=99=
s interesting
> that you=E2=80=99re able to get it to work.
>
>
> Do you mind if I ask what version of ModelSim/Questa you=E2=80=99re using=
? Also to
> confirm that you=E2=80=99re using Vivado 2021.1 with the AR patch? And la=
stly if
> it=E2=80=99s at all possible to share what=E2=80=99s in your library sect=
ion? I=E2=80=99m
> definitely at a loss for why I=E2=80=99m having these issues despite havi=
ng
> seemingly set it up correctly.
>
>
> Thank you!
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000039f1700614bacc74
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Sure, at this moment I&#39;m using:</div><div>Vivado =
v2021.1_AR76780 <br></div><div>Model Technology ModelSim SE-64 vsim 2021.3 =
Simulator 2021.07 Jul 13 2021</div><div><br></div><div>Our CI pipelines app=
ear to be using:<br>
<span class=3D"gmail-line-area gmail-flex-center gmail-flex-row gmail-flex-=
grow gmail-justify-start" role=3D"group"><span class=3D"gmail-content"><spa=
n class=3D"gmail-pl-plain"><span><span id=3D"gmail-rowContent-415">ModelSim=
 SE-64 2020.4</span></span></span></span></span></div><div><span class=3D"g=
mail-line-area gmail-flex-center gmail-flex-row gmail-flex-grow gmail-justi=
fy-start" role=3D"group"><span class=3D"gmail-content"><span class=3D"gmail=
-pl-plain"><span><span id=3D"gmail-rowContent-415"><br></span></span></span=
></span></span></div><div><span class=3D"gmail-line-area gmail-flex-center =
gmail-flex-row gmail-flex-grow gmail-justify-start" role=3D"group"><span cl=
ass=3D"gmail-content"><span class=3D"gmail-pl-plain"><span><span id=3D"gmai=
l-rowContent-415">I know we&#39;ve used PE, DE, and Questa as well, but I d=
on&#39;t know for sure when we last tested this particular IP with those.<b=
r></span></span></span></span></span></div><div><span class=3D"gmail-line-a=
rea gmail-flex-center gmail-flex-row gmail-flex-grow gmail-justify-start" r=
ole=3D"group"><span class=3D"gmail-content"><span class=3D"gmail-pl-plain">=
<span><span id=3D"gmail-rowContent-415"><br></span></span></span></span></s=
pan></div><div><span class=3D"gmail-line-area gmail-flex-center gmail-flex-=
row gmail-flex-grow gmail-justify-start" role=3D"group"><span class=3D"gmai=
l-content"><span class=3D"gmail-pl-plain"><span><span id=3D"gmail-rowConten=
t-415">Wade<br></span></span></span></span></span>

</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Wed, Mar 27, 2024 at 3:05=E2=80=AFPM chris.pineda--- via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><p>I=E2=80=99ve tried <code>make modelsim</code> and it has the same iss=
ue. That=E2=80=99s interesting that you=E2=80=99re able to get it to work. =
</p><p><br>Do you mind if I ask what version of ModelSim/Questa you=E2=80=
=99re using? Also to confirm that you=E2=80=99re using Vivado 2021.1 with t=
he AR patch? And lastly if it=E2=80=99s at all possible to share what=E2=80=
=99s in your library section? I=E2=80=99m definitely at a loss for why I=E2=
=80=99m having these issues despite having seemingly set it up correctly. <=
/p><p><br></p><p>Thank you! </p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000039f1700614bacc74--

--===============0302869453409496844==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0302869453409496844==--
