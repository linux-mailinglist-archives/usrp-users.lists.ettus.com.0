Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 91518A14DF9
	for <lists+usrp-users@lfdr.de>; Fri, 17 Jan 2025 11:50:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7BA49385A8C
	for <lists+usrp-users@lfdr.de>; Fri, 17 Jan 2025 05:50:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737111054; bh=c7K1bL1P2RXhv50OrnZ1kewXjJbuCZw5cV6OaRli2M8=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=TtWDyfR0hysfD//arxfFFgnO70iETUuHiiT8cGN5btPCN1UU8M4UbjevCNe9iYOZi
	 yTGbcdhFdBBe9VT4LFpLXv3Cj31qA5787d/KZcki0msBYQg9ltp5k0jN6EwqY6ighp
	 ptN23azSi6A4E2WoFBJAQb83YRmS2ZUur3AZ4UFow5Z35JID8wpCjdOPAwEWMVDKLd
	 4aG5UUUNAtNliOpdlk8QbooBChoPagthmONWmVnD3A8gJe7fHB/RgUJUaPbeiD0D+m
	 KI8sDDlEESzue/gzH2rWJOwCUyCgWD6hcRsneoxnwr0eFpnXqLga1s6eS6SgarsTJX
	 dnzXw265bp6cA==
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 296883858C1
	for <usrp-users@lists.ettus.com>; Fri, 17 Jan 2025 05:50:15 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="zgi4Ji/f";
	dkim-atps=neutral
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-aa6c0d1833eso387478666b.1
        for <usrp-users@lists.ettus.com>; Fri, 17 Jan 2025 02:50:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1737111014; x=1737715814; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=t9q23dmWloSyxYmAFjJdJ1cIA2J2YEA7Fua5pXqSKBU=;
        b=zgi4Ji/fSCuRxwmcME5Sj4+5CLWnTu7trr/7DeU+D/Ltmi68NUGVToN4pFpzTbp0F6
         PV76iMPHBaF6hBtFtxrRtt3EotJxaJsJFBhMXqn7YJsjn19TOMCZDKU05ie1yaUkORkz
         XZjcgR6vcdmbo1djJcAv3mUvLKuiontVeIOUOuBC2g/OdY2u2Uikdp8oYl4RSI1qXi90
         J1Iu+OcdIRiGnhSM10oiShnrfEeU/hfFSmho1NAx1hlaDIURvNq+Q6gmcoSen8QrEYm9
         l9ZwT94H9Oq1nbxoW6ASuQWw46a4imd4yfJacO2sF8LEILYsd+pkVCkNU+tw4oNpYsxK
         ynUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737111014; x=1737715814;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t9q23dmWloSyxYmAFjJdJ1cIA2J2YEA7Fua5pXqSKBU=;
        b=YSOPVjVF6HZyXTfkLEpa61zKvYugNP2HL4YmAJ5wtvFe89XBiHtUUVruzKasFCumqn
         bg2B0GT/k8SB7UxRgNlG27TXbAxRDobEWS13qxzSa4FhfXzDPczEBLxcTFwum3x9PlMI
         rWYuAf0k7emN2aRp42/+cafr8NTDPd1KYWl3dkXAb640DUnejMQGiESXCLFjN70WXUgI
         IdD8qgpca/rr2uW+bfoMRHWO2SIzDT4D01Ej0WQyJz8ftQOx3UFNhzFm4mBPlsL7twbA
         A4OX6I/PJ4Dc6iPrPmdG6P7hcH8iL9ixW18TjgHvXuouioe0ftyGeUvJ+glDocRQXQSY
         sL2A==
X-Forwarded-Encrypted: i=1; AJvYcCViQGu3kMpZhuzGxo0ViXNNdide4gEtZqNOxbXCyuOiryt6bWsGxZNLhWEEwJhxNEKG0sRdvJbQhND7@lists.ettus.com
X-Gm-Message-State: AOJu0YxYn7DOLqmtnGWTk/+WdLemuP/OOdCKjKzAtkcvVi+YHVDaIUUn
	q2bA9/gDnFG2DaaQOfPLuLB7MIMhpL6v1IssPa/pxDg7747vz9/U6aE4HP0rnF9xTz4bDfy2+37
	yiMRVCf4ndiFVDIlh6lPWIFWZAFhSE20gERkNpY2x
X-Gm-Gg: ASbGnctbvOo2cUg0+3oSaIlPcnW0eh5qJjTcLCWy3F6NKLzabLp43KmXp8n5mJ+kRK9
	MT0QK+lrfbAxHSeXLGvkJiA5EmAAsi+LY/5ZFhCVhCOmWXndUVwff+GsZVoX5JKa15ZZaXw==
X-Google-Smtp-Source: AGHT+IHcxiMkLZtxE443qeK24yyJIHsuGzkjMkKx+Mn+m9+HA+Xjrk9FnaFXlE00eVORLYmaf+cL6ax+4kKbVyFhohY=
X-Received: by 2002:a17:907:1b03:b0:aaf:1183:e9be with SMTP id
 a640c23a62f3a-ab38b1e8f64mr224151366b.2.1737111014015; Fri, 17 Jan 2025
 02:50:14 -0800 (PST)
MIME-Version: 1.0
References: <89a4b5930a3e4d4693aa8bbb9f4b66ed@foi.se> <sjh5ltvrjm6mus2dcylql3wz5iorwyofyjz2ip6n37hnugaxmf@znijngdsrgjr>
 <c028b761bca24e1891f0cb0149f5cd1d@foi.se> <gembijbfsj5m3pjamhfexpqdknmqbgpeeb2p64ouhonqdckn4q@gdyl6g2yzo6x>
In-Reply-To: <gembijbfsj5m3pjamhfexpqdknmqbgpeeb2p64ouhonqdckn4q@gdyl6g2yzo6x>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 17 Jan 2025 11:50:03 +0100
X-Gm-Features: AbW1kvZTFiM5SHkwrvVliefnf-qAPWD6mU_mEEkibhcx_RDv6N6vAdgh6vGXSAQ
Message-ID: <CAFOi1A4xzVrAbV9AceE3T9wS08KmiC7MLdpG=+rkJe2jayZKig@mail.gmail.com>
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>,
	usrp-users@lists.ettus.com
Message-ID-Hash: SXPV3FCRXMBMLSS6IIIUSMEMB6AOXLWO
X-Message-ID-Hash: SXPV3FCRXMBMLSS6IIIUSMEMB6AOXLWO
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem sending samples with tx_samples_from_file to two USRP2/USRPN210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SXPV3FCRXMBMLSS6IIIUSMEMB6AOXLWO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5177291784219381977=="

--===============5177291784219381977==
Content-Type: multipart/alternative; boundary="000000000000ed1c07062be4ac96"

--000000000000ed1c07062be4ac96
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 9, 2025 at 10:14=E2=80=AFAM C=C3=A9dric Hannotier via USRP-user=
s <
usrp-users@lists.ettus.com> wrote:

> On 2025-01-07 11:29 +0000, Per Zetterberg wrote:
> > Thanks C=C3=A9dric!
> >
> >
> > Now I get a signal from both USRPs, great!
> >
> > I still get get the below error. Maybe it doesn't matter....
> >
> >
> >   in ~usrp2_fifo_ctrl_impl
> >   at /home/perzet/uhd_here/uhd/host/lib/usrp/usrp2/usrp2_fifo_ctrl.cpp:=
49
> > this->peek32(0); -> RuntimeError: fifo ctrl timed out looking for acks
> > ^[[A^C^C[WARNING] [UHD] Exception caught in safe-call.
> >   in ~usrp2_fifo_ctrl_impl
> >   at /home/perzet/uhd_here/uhd/host/lib/usrp/usrp2/usrp2_fifo_ctrl.cpp:=
49
> > this->peek32(0); -> RuntimeError: fifo ctrl timed out looking for acks
>
> I do not know for sure.
> But if it is only happening after you stop the script by pressing CTRL-C,
> I would not worry too much about it.
>
>
Yeah I was going to say something similar -- but why are you Ctrl-C'ing? Is
it hanging, or do you just prefer the --repeat mode? Does this occur
without --repeat?

--M

--000000000000ed1c07062be4ac96
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><br><div class=3D"gmail_quote gmail=
_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 9, 2025=
 at 10:14=E2=80=AFAM C=C3=A9dric Hannotier via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 2025-01-07 11=
:29 +0000, Per Zetterberg wrote:<br>
&gt; Thanks C=C3=A9dric!<br>
&gt; <br>
&gt; <br>
&gt; Now I get a signal from both USRPs, great!<br>
&gt; <br>&gt; I still get get the below error. Maybe it doesn&#39;t matter.=
...<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0in ~usrp2_fifo_ctrl_impl<br>
&gt;=C2=A0 =C2=A0at /home/perzet/uhd_here/uhd/host/lib/usrp/usrp2/usrp2_fif=
o_ctrl.cpp:49<br>
&gt; this-&gt;peek32(0); -&gt; RuntimeError: fifo ctrl timed out looking fo=
r acks<br>
&gt; ^[[A^C^C[WARNING] [UHD] Exception caught in safe-call.<br>
&gt;=C2=A0 =C2=A0in ~usrp2_fifo_ctrl_impl<br>
&gt;=C2=A0 =C2=A0at /home/perzet/uhd_here/uhd/host/lib/usrp/usrp2/usrp2_fif=
o_ctrl.cpp:49<br>
&gt; this-&gt;peek32(0); -&gt; RuntimeError: fifo ctrl timed out looking fo=
r acks<br>
<br>
I do not know for sure.<br>
But if it is only happening after you stop the script by pressing CTRL-C,<b=
r>
I would not worry too much about it.<br>
<br></blockquote><div><br></div><div>Yeah I was going to say something simi=
lar -- but why are you Ctrl-C&#39;ing? Is it hanging, or do you just prefer=
 the --repeat mode? Does this occur without --repeat?</div><div><br></div><=
div>--M<br></div></div></div>

--000000000000ed1c07062be4ac96--

--===============5177291784219381977==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5177291784219381977==--
