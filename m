Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC42895970B
	for <lists+usrp-users@lfdr.de>; Wed, 21 Aug 2024 11:15:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1B137383C59
	for <lists+usrp-users@lfdr.de>; Wed, 21 Aug 2024 05:15:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724231758; bh=V/JELyI3lZBLiqzyduxXlgKW4TO0x854cbGCXm0oQ9w=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=OI9cPs7+WLxShVP2S8IJ1fuPw5nEDDQ8ZarI9+iMMtH5wVqC9TGSwaI1mwHt2kASa
	 HEcykMhDqvKIz9Lgxrt08T5qyZxyJi+8twSVxR4YKDEwlcFlN0oY3Q6bYFI1TmJG6n
	 pcVGbcd/4L6jizhD9NInZRpLPxrlK3+rqg20xHQ1Js8G/HCNHlqBQ+JPPnmEx8YGno
	 PUZUr/fm658YMCwJDYR8jRWOI74/2yyUA1laG/or3BNCTodK9kaPQF8qWhb+C9Sgrl
	 +7t52dj9ntr/An9R5wqBFgtaZwqjl9AMLqn4yVKPYcHO4GCh62YvImw9JcVx4R/prk
	 rWtm1C8UTOwfQ==
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	by mm2.emwd.com (Postfix) with ESMTPS id C92B1383748
	for <usrp-users@lists.ettus.com>; Wed, 21 Aug 2024 05:15:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="RvPwFooU";
	dkim-atps=neutral
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-53345604960so1368575e87.3
        for <usrp-users@lists.ettus.com>; Wed, 21 Aug 2024 02:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1724231747; x=1724836547; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=skTZlZtAaJAgpd5JoncSfj13c2RR/49h5wolpkUNpT0=;
        b=RvPwFooUc0GQ0pmUtWdhZZz/1fzJ8bUqCRIDOppdYDvl6HPcoXJ0hf3Rs6WknaaYf8
         bwYt9rGNk66u5e1cQ1Io3GAVLkGsVgHgV+t9DTGdPpJl+DIkw3NCekjN66pfc22G1NgQ
         XTkpb91Dl7q6j2ZyeO3GxQ9d57IW3LPg50radCriWddnjz+Q5juausD4Ka7DNytLK5xP
         YRkGbGh5yt8dkyZyMW4e7EtSEiqO+2n0zS4M0Qvnah+BbSx3pt4RnteTo9PHkohs0/p0
         8z98wjgtmcGRqiZ8VW1f5kCDXRC7na9I+RAfiq5spl6ipW6kxNGD94GGddNvBPOmZX8B
         fzGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724231747; x=1724836547;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=skTZlZtAaJAgpd5JoncSfj13c2RR/49h5wolpkUNpT0=;
        b=VSG9xv0Rfmjo3e3HXy+XExbRz3B0poksUSYH1l7Px5h/6rVY6ZZyWyHhrna3Zq2uE8
         x+VYUTcPfpMLyZFaOwwMNOrfcEA9f20FB0r2etRVXSiGm3iLKba25A9hN7jmgJVjPV8w
         zyELf1RieynhWgE6kES77Hdwu30IZCk4F4jgjQ/ld5+Z1TV9NAxiq/YfUXA1m8LgB1ln
         hQiFf10dxLdTm7Jwgb5SwBv1VS2pGz5oKpYoRJqKiLzNB7pfZSTq32wlWyMB82UFuz2d
         +xoT6F4vbnWjO9wYw2uTsKx+RCtsiHQQr/w2Ll7sMt+OrbnuQGT0CqPnOocfx8qiDwCV
         X/qg==
X-Gm-Message-State: AOJu0Yw83g08w0afK1Fzyb1mLM0BEgO/UJ1eMGXYO+tirrwy7HX9fHeM
	2z/JKQncWRZEOjHDAhE33jgsp9XBxvAFl6JCQ8Dc01g9OHizUoglWFWJO3BUPQehoOf6O5ghpEb
	903wTE0br/QZ7UlvUWN40VggblrzstJozsa9OYyBz
X-Google-Smtp-Source: AGHT+IHyv8KVtMF2HXLSH64GiceiHQfHw3lajZoF7OVFG5znpNCGpPVCr8fkrkGQfe4nCvmoN5Bnh+MzilDLn4AmP6A=
X-Received: by 2002:a05:6512:3f27:b0:52c:cd4f:b95b with SMTP id
 2adb3069b0e04-53348592a3bmr1024013e87.22.1724231747022; Wed, 21 Aug 2024
 02:15:47 -0700 (PDT)
MIME-Version: 1.0
References: <PH0PR05MB7768455FE7B996179FDE2899D1872@PH0PR05MB7768.namprd05.prod.outlook.com>
In-Reply-To: <PH0PR05MB7768455FE7B996179FDE2899D1872@PH0PR05MB7768.namprd05.prod.outlook.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 21 Aug 2024 11:15:35 +0200
Message-ID: <CAFOi1A7iOdVExaZg5zH0qDF1roQghiz9M=C_3bvK2O7u_Jg47w@mail.gmail.com>
To: "Sathish, Aditya" <saditya@vt.edu>
Message-ID-Hash: SWKMFERCQ5XNFXND77SBLTOXBBJGAVVK
X-Message-ID-Hash: SWKMFERCQ5XNFXND77SBLTOXBBJGAVVK
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Managing Half Duplex with X-310 and RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SWKMFERCQ5XNFXND77SBLTOXBBJGAVVK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2596226083182008618=="

--===============2596226083182008618==
Content-Type: multipart/alternative; boundary="000000000000cad86606202dfcba"

--000000000000cad86606202dfcba
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It's the former. More specifically, if your TX data has a time stamp, then
it will only switch over when the desired TX time is reached and the packet
actually goes out to the DAC.

--M

On Wed, Aug 14, 2024 at 3:04=E2=80=AFAM Sathish, Aditya <saditya@vt.edu> wr=
ote:

> Hello,
>
>
>
> I am trying to perform spectrum sensing in my USRP in half-duplex mode. M=
y
> host application is constantly sending packets to transmit, and I have
> created an FPGA RFNoC block that is intending to sense the spectrum and
> change the packet before transmitting it.
>
> I understand that the ATR logic in USRP X310 will allow Rx only when ther=
e
> is nothing to transmit. However, when exactly does the ATR logic get
> triggered to switch from Rx to Tx? Is it when the signal reaches the
> radio control block or when the packets enter the Tx streamer?
>
>
>
> The reason I ask this is because if the ATR logic switches from Rx to Tx
> when the packets reach the Tx streamer then my FPGA block would never
> really get any spectrum to sense per-se.
>
> But if the ATR logic is kicked when the signal reaches the radio control,
> I can perform spectrum sensing and then if required, pass the data over t=
o
> the radio block
>
>
>
> My RFNoC Block is currently as below:
> [------------------] =C3=9F [RX STREAMER] =C3=9F [GAIN SENSING BLOCK] =C3=
=9F [DUC] =C3=9F
> [RADIO CONTROL RX]
> [ APPLICATION]
>                                      \/
> [------------------] =C3=A0 [TX STREAMER] =C3=A0 [MODIFIED BLOCK] =C3=A0 =
[DDC] =C3=A0 [RADIO
> CONTROL TX]
>
>
>
> Regards,
>
> Aditya
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000cad86606202dfcba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It&#39;s the former. More specifically, if your TX da=
ta has a time stamp, then it will only switch over when the desired TX time=
 is reached and the packet actually goes out to the DAC.</div><div><br></di=
v><div>--M<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Wed, Aug 14, 2024 at 3:04=E2=80=AFAM Sathish, Aditya=
 &lt;<a href=3D"mailto:saditya@vt.edu">saditya@vt.edu</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-3658=
903374910654751">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"m_-3658903374910654751WordSection1">
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am trying to perform spectrum sensing in my USRP i=
n half-duplex mode. My host application is constantly sending packets to tr=
ansmit, and I have created an FPGA RFNoC block that is intending to sense t=
he spectrum and change the packet
 before transmitting it.<u></u><u></u></p>
<p class=3D"MsoNormal">I understand that the ATR logic in USRP X310 will al=
low Rx only when there is nothing to transmit. However, when exactly does t=
he ATR logic get triggered to switch
<span style=3D"background:yellow">from Rx to Tx</span>? Is it when the sign=
al reaches the radio control block or when the packets enter the Tx streame=
r?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">The reason I ask this is because if the ATR logic sw=
itches from Rx to Tx when the packets reach the Tx streamer then my FPGA bl=
ock would never really get any spectrum to sense per-se.<u></u><u></u></p>
<p class=3D"MsoNormal">But if the ATR logic is kicked when the signal reach=
es the radio control, I can perform spectrum sensing and then if required, =
pass the data over to the radio block<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">My RFNoC Block is currently as below:<br>
[------------------] <span style=3D"font-family:Wingdings">=C3=9F</span> [R=
X STREAMER] <span style=3D"font-family:Wingdings">
=C3=9F</span> <span style=3D"background:lime">[GAIN SENSING BLOCK]</span>
<span style=3D"font-family:Wingdings">=C3=9F</span> [DUC] <span style=3D"fo=
nt-family:Wingdings">
=C3=9F</span> [RADIO CONTROL RX]<br>
[ APPLICATION]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\/<br>
[------------------] <span style=3D"font-family:Wingdings">=C3=A0</span> [T=
X STREAMER] <span style=3D"font-family:Wingdings">
=C3=A0</span> <span style=3D"background:lime">[MODIFIED BLOCK]</span>
<span style=3D"font-family:Wingdings">=C3=A0</span> [DDC] <span style=3D"fo=
nt-family:Wingdings">
=C3=A0</span> [RADIO CONTROL TX]<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Regards,<u></u><u></u></p>
<p class=3D"MsoNormal">Aditya<u></u><u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000cad86606202dfcba--

--===============2596226083182008618==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2596226083182008618==--
