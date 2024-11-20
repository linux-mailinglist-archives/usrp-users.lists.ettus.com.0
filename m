Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 664D59D32C4
	for <lists+usrp-users@lfdr.de>; Wed, 20 Nov 2024 04:48:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3642F385E35
	for <lists+usrp-users@lfdr.de>; Tue, 19 Nov 2024 22:48:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732074505; bh=X1gHtTAnU3UltN1aLndhkrfJWICo0MuwHNoz4iDmpE0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=u9HqSdP4vC8g3xo226AHMPVaInfhYMSgJJNny2C5sZHSjeZsKnUN5U3VIqukMsmii
	 qF79iPnpirjZzHYQywl7UjQfMfRrvHdQ35RYDif0Ysu20GUFq11HrVob7OGpyUj5HL
	 ZS2dt5VRJPw/9DBMIqNAAeHaxV54M6Mvxm84j/b7sR4q2Yta9/MbyIiHIhDxSMq8wg
	 0kTTUCrjNoaRZxkFEKAksjucLZGvdDm4MZJ0bmwYTKt9YJ3Y9Fn79PFbJaqRLTUiDw
	 hnqIgA+Tix+Wf/nxH/Mp0Tk8YBqG6IS3w6GB4P9jyY5OXFrGo3p93AunOTJQ9IJGTn
	 p9fkyjeAYp0YA==
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 31915385DE0
	for <usrp-users@lists.ettus.com>; Tue, 19 Nov 2024 22:47:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ilzOSQJp";
	dkim-atps=neutral
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2fb4af0b6beso59467921fa.3
        for <usrp-users@lists.ettus.com>; Tue, 19 Nov 2024 19:47:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732074474; x=1732679274; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ER7mpIoVKR7XDSuESGVX2ALC74xN4sNRwvQv+bt5JVY=;
        b=ilzOSQJpkEH5WLAp1vLSivHLmeyKujkwDxg8YelmKJyycWwpfW+ezBip5sYCnv26V+
         ZZTuYo0yVAilaIGQzrhIz2opPOgCuFJjVdiQ0QnxHwToedbtwp2kKLd6pFlWRYJhcPOD
         3u0CYczslgI0jmISt0XLbxe6IR+vB7o0MHVAI6kDr9wGbf9Qeck3OwCqZ8961DjWPckt
         6uSO19T6cHGdpvktBnp+uGPUmBlU9+YA6ai4LcYDYtXO3AtbiAJeNzLRvJh0cFnAdC4n
         1OC+zVS/MrepxmDO3jdHMKLxerxa/b6e87C6ZmAdpqw7rz/qzPTkg5JfpIXwWbluO95g
         LRRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732074474; x=1732679274;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ER7mpIoVKR7XDSuESGVX2ALC74xN4sNRwvQv+bt5JVY=;
        b=tTTpTdQtlB7T+/pio4kjobxzQRRZ4OXi/Qz+gexBMhFpchIFbn3k7B49OyBJSkixO8
         IeGcFltKr7FZZ61Kk1/pIrrE0VAUNntBwqYjn9orRKmL9iv6iePN+E3zr+wrsdWq/5NF
         1QhhHkxDv8gQuvhBtGIT745UsHOS9OlWgT/1wsRBUrjQDYPbPzSmrRqOcfef4TFJIPdV
         QEEJx3oLWsz7jxRLvur959N2+CLE1FcbZ1BlE2CtgA9HfFJxO8KOSSD/mZc6Y17QMzes
         ILEnsJXmPKDxrZU8ArqWl0Oy2MZluTQWj9IlODC4PV+1wiezIfnDnq2TPmVYTYPInjwP
         +rIg==
X-Gm-Message-State: AOJu0YxoBEzMDEQCUl0VoVtyNWFk3iBygdFNXY2owDg159JtDvjQg5Vo
	oPPdoIVscm9SpQw08XbJq3GA9SCJCgohnUTcUn8LVOlrv6OU1DzIrZZOPqPGPhDKtGwUE/Bhmnw
	C/swymcnY1eyPt2u9pwO+lT3W94IdvYrczuA=
X-Google-Smtp-Source: AGHT+IHTWccyzc852ydDbsHRYEbuZPvgceOSCKsirZ9SKKbg7MGi874oHVpJCGW9pzRiQt6iR8HKzwkotBOknDS5ycc=
X-Received: by 2002:a2e:a5c3:0:b0:2fb:4f8e:efd with SMTP id
 38308e7fff4ca-2ff8dc764c3mr12916471fa.32.1732074473929; Tue, 19 Nov 2024
 19:47:53 -0800 (PST)
MIME-Version: 1.0
References: <m0kwRgcE6IqIxgoZNdg445uOHr6Gm0EBZsiw5wg@lists.ettus.com>
In-Reply-To: <m0kwRgcE6IqIxgoZNdg445uOHr6Gm0EBZsiw5wg@lists.ettus.com>
From: hui cj <cjh416593819@gmail.com>
Date: Wed, 20 Nov 2024 11:47:42 +0800
Message-ID: <CAEL-RA2JbyizuZ-kJtaEDq6PAKs0MD809+c=8WJDNZiWT+0MnA@mail.gmail.com>
To: william.haftel@bluehalo.com
Message-ID-Hash: BLAWIOTGVXSD6DAWOEDKZ4UFB5FKWVCA
X-Message-ID-Hash: BLAWIOTGVXSD6DAWOEDKZ4UFB5FKWVCA
X-MailFrom: cjh416593819@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Can only control 1 pin of x310 GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BLAWIOTGVXSD6DAWOEDKZ4UFB5FKWVCA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0222043409370782295=="

--===============0222043409370782295==
Content-Type: multipart/alternative; boundary="000000000000be477f062750034b"

--000000000000be477f062750034b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

According to the manual,

The mask argument can be used to apply value only to select pins, and
retain the existing value on the rest. Because of this feature, this API
call will incur two register transactions (one read, one write).

I think the value parameter should be a hexadecimal number, each bit
represents the value of the corresponding pin.
If you want to set pin 0 and 1 to 1 at the same time.
It should be
usrp->set_gpio_attr("FP0", "OUT", 0x0003, 0x0003);
And that only apply values to the pin you selected.

Cao Jiahui

Will Haftel via USRP-users <usrp-users@lists.ettus.com> =E4=BA=8E2024=E5=B9=
=B411=E6=9C=8820=E6=97=A5=E5=91=A8=E4=B8=89
04:17=E5=86=99=E9=81=93=EF=BC=9A

> Hi,
>
> I am having some issues controlling the GPIO on the x310. So far I have
> only been able to control the output of pin 0. Here are some code snippet=
s
> of things I have tried:
>
>
> I have these lines before trying to control pins:
>
> usrp->set_gpio_attr("FP0", "CTRL", 0x000, 0xFFF);
>
> usrp->set_gpio_attr("FP0", "DDR", 0xFFF, 0xFFF);
>
>
> This block works - set pin 0 to high, and pins 1 and 2 to low:
>
> usrp->set_gpio_attr("FP0", "OUT", 1, 1);
>
> usrp->set_gpio_attr("FP0", "OUT", 0, (1<<1));
>
> usrp->set_gpio_attr("FP0", "OUT", 0, (1<<2));
>
>
> This block does not work - trying to set pins 0 and 1 to high, but only
> pin 0 outputs high:
>
> usrp->set_gpio_attr("FP0", "OUT", 1, 1);
>
> usrp->set_gpio_attr("FP0", "OUT", 1, (1<<1));
>
> usrp->set_gpio_attr("FP0", "OUT", 0, (1<<2));
>
>
> I attempt to set all pins to high using this line, but again only pin 0
> outputs high:
>
> usrp->set_gpio_attr("FP0", "OUT", 1, 0xFFF);
>
>
> Am I doing something wrong in the cases where the GPIO doesn=E2=80=99t ha=
ve my
> desired outputs?
>
>
> Thanks,
>
> Will
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000be477f062750034b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,<div><br></div><div>According to the m=
anual,</div><div><br></div><div><span style=3D"color:rgb(0,0,0);font-family=
:Roboto,sans-serif;font-size:14px">The=C2=A0</span><code style=3D"color:rgb=
(0,0,0);font-size:14px">mask</code><span style=3D"color:rgb(0,0,0);font-fam=
ily:Roboto,sans-serif;font-size:14px">=C2=A0argument can be used to apply=
=C2=A0</span><code style=3D"color:rgb(0,0,0);font-size:14px">value</code><s=
pan style=3D"color:rgb(0,0,0);font-family:Roboto,sans-serif;font-size:14px"=
>=C2=A0only to select pins, and retain the existing value on the rest. Beca=
use of this feature, this API call will incur two register transactions (on=
e read, one write).<br><br></span></div><div>I think the value parameter sh=
ould be a hexadecimal number, each bit represents the value of the correspo=
nding pin.</div><div>If you want to set pin 0 and 1 to 1 at the same time.<=
/div><div>It should be=C2=A0</div><div>usrp-&gt;set_gpio_attr(&quot;FP0&quo=
t;, &quot;OUT&quot;, 0x0003, 0x0<span style=3D"border-bottom:2px dotted rgb=
(51,153,255)">003</span>);</div><div>And that only apply values to the pin =
you selected.</div><div><br></div><div>Cao Jiahui</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Will Haftel via USRP=
-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a>&gt; =E4=BA=8E2024=E5=B9=B411=E6=9C=8820=E6=97=A5=E5=91=A8=E4=
=B8=89 04:17=E5=86=99=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><p>Hi,</p><p>I am having some issues controlling th=
e GPIO on the x310.  So far I have only been able to control the output of =
pin 0.  Here are some code snippets of things I have tried:</p><p><br></p><=
p>I have these lines before trying to control pins:</p><p>usrp-&gt;set_gpio=
_attr(&quot;FP0&quot;, &quot;CTRL&quot;, 0x000, 0xFFF);</p><p>usrp-&gt;set_=
gpio_attr(&quot;FP0&quot;, &quot;DDR&quot;, 0xFFF, 0xFFF);</p><p><br></p><p=
>This block works - set pin 0 to high, and pins 1 and 2 to low:<br><br>usrp=
-&gt;set_gpio_attr(&quot;FP0&quot;, &quot;OUT&quot;, 1, 1);</p><p>usrp-&gt;=
set_gpio_attr(&quot;FP0&quot;, &quot;OUT&quot;, 0, (1&lt;&lt;1));</p><p>usr=
p-&gt;set_gpio_attr(&quot;FP0&quot;, &quot;OUT&quot;, 0, (1&lt;&lt;2));</p>=
<p><br></p><p>This block does not work - trying to set pins 0 and 1 to high=
, but only pin 0 outputs high:</p><p>usrp-&gt;set_gpio_attr(&quot;FP0&quot;=
, &quot;OUT&quot;, 1, 1);</p><p>usrp-&gt;set_gpio_attr(&quot;FP0&quot;, &qu=
ot;OUT&quot;, 1, (1&lt;&lt;1));</p><p>usrp-&gt;set_gpio_attr(&quot;FP0&quot=
;, &quot;OUT&quot;, 0, (1&lt;&lt;2));</p><p><br></p><p>I attempt to set all=
 pins to high using this line, but again only pin 0 outputs high:</p><p>usr=
p-&gt;set_gpio_attr(&quot;FP0&quot;, &quot;OUT&quot;, 1, 0xFFF);</p><p><br>=
</p><p>Am I doing something wrong in the cases where the GPIO doesn=E2=80=
=99t have my desired outputs?</p><p><br></p><p>Thanks,</p><p>Will</p><p><br=
></p><p><br></p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000be477f062750034b--

--===============0222043409370782295==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0222043409370782295==--
