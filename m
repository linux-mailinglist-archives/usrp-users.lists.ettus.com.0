Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2544D9D4963
	for <lists+usrp-users@lfdr.de>; Thu, 21 Nov 2024 10:00:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6B444385FC5
	for <lists+usrp-users@lfdr.de>; Thu, 21 Nov 2024 04:00:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732179616; bh=uI4Xh54yrQ1hyqavfXd7Dfwp5Rn2WNgRbtxxHQPgB9E=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=urZFCX1wTj75Jmg43GRcOAkpL9Mh+byPIPly0aBbsd1eYEDLBV+8njTih0oqKfc/h
	 4WkXWv+ZnzNwp7Sv7BNEGc+mOp5pHrw8myQPCNOxNx/B2BP5v5A1nywoLCrNkGxpl3
	 5bi/6d7BXS/LFTxStcoyjXv4i5VM1XzIfjL8KDxb8Y+sjxE0rgCfMmKBoftcuJtkMy
	 G7gBw81ggWERVP1yaiWDI7p0SWrMgSCTTpHTNl0UrN9RMSu01pyn57txjyv59/mBda
	 opjPhNzyUve9fkE/owHUGpqilmIAyJxLzb335xVlZ9GBw9BFXnf65hFXeGWWMIOgpx
	 wWwRxHSgd7LxA==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id DCE8D385E02
	for <usrp-users@lists.ettus.com>; Thu, 21 Nov 2024 03:59:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="dEIp29qW";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5ced377447bso834002a12.1
        for <usrp-users@lists.ettus.com>; Thu, 21 Nov 2024 00:59:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1732179586; x=1732784386; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IWDeFIybfuakcz6azEIceFjXLn10yIngh9+cJ+YIDfI=;
        b=dEIp29qWgYUFxQHYHUndZzb15EfCeSa5DCEsuLDrdykQUV2N7PPJQpbtZTFBb6lBmh
         SyegdO7YYne+FcmO7l6YElJsgnipRaw/MYlGoCPe3O8F5lRBDTH3U9qVzSxgoehsP3PO
         9Ww4NZkNUwxc0Y17YE9dpY44mMsM59cFAGLSOCRKBlQgkwvzN9ilAg+Jp2bAbl9L0Caj
         4thFsT29Ll/9LalpO4OTGKq8YSqjTlPLhabcV4Doh0EjZFauf6rZiELP8QelCBfHIaaB
         ONehG8npyd4f/QHWX5yFhQh/b4nmJqqcZ4UVYo9exM1cr8FRy8VGY8Rigqw0jmmL0GYC
         plhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732179586; x=1732784386;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IWDeFIybfuakcz6azEIceFjXLn10yIngh9+cJ+YIDfI=;
        b=Ef7/C+2km1R5I31feZXUgnrLf6UZCMyqTGHMBy+Nlm78PehdYSaApE+HesGJ71ilZW
         rxigyqfRHwSS06FUhcv9P/0FYMY1Wv+kla+eHEbAuiZ7T6eCMRI4BrJE+aqr9tXyn+bp
         VoDxBjl7EfhdGnFmwCj1q/09hDeMm+2fvd2Q42wSj85hGaRz9FLJm11czJQaZgV10XxU
         qdJgal4z4TWkD3cgeyuvgIUqtJTSe0hlZHYnDFerI0qntFl5NJuzaLtiKa+0ZWdQjm2r
         whs/EfyxXXN2zrOc7g68Rvum6s2KsTJtwaH8IYSSilwaerVFQYsI0ESDsPbEOV0jggPs
         Ue/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUZkykpXbbUlC5ay4tpaYJnc5QelyVP86sM1czsQ0R0jShXUPuoNmxK+w9juV22mqf8ysX+au4itHMA@lists.ettus.com
X-Gm-Message-State: AOJu0Yy+nLdFR+9sxPU1AhNXnuu08sUg6W9lUaU/G8xyLIWmdH3B3iBK
	gOAyzPGTEZ25k1nF5LS+CRLPpaCb9xJAF5aixbCmfO46y/VUMhJjbs4nxK2yo13NDuPgC0BXgGu
	CCMsbQiMwNFSB8e6jpar6GoJYclRgb3j9cEyIgePv
X-Google-Smtp-Source: AGHT+IHqnUdPO5O35boBq2VuXp2/6Ofe846sbOJvu4Nblyk0X4J8WTisCMmjMr7JZqCgMqRoA+foGjaOBVia8pH4Kc4=
X-Received: by 2002:a05:6402:268e:b0:5cb:78b8:7056 with SMTP id
 4fb4d7f45d1cf-5cff4cef9abmr4823167a12.33.1732179585717; Thu, 21 Nov 2024
 00:59:45 -0800 (PST)
MIME-Version: 1.0
References: <in6Vs0ePFYK6PpSML7FpRjOlYUak7skNKCPMx2ieI@lists.ettus.com>
 <CAEL-RA33wKKfLWP9NspssMucp8+yXMjg0fSiC6N8iuS7cF6FOQ@mail.gmail.com> <CAEL-RA25oFPWg00N14WQM9BrWQtWKnzzEU83OXGghi_ZWnsZ3g@mail.gmail.com>
In-Reply-To: <CAEL-RA25oFPWg00N14WQM9BrWQtWKnzzEU83OXGghi_ZWnsZ3g@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 21 Nov 2024 09:59:34 +0100
Message-ID: <CAFOi1A7hJ3qM+D3oX_LedYWRjQmwd-0RDrF+m_OrBxeFDaG+dA@mail.gmail.com>
To: hui cj <cjh416593819@gmail.com>
Message-ID-Hash: EK4ZYHATL7LDDOX2EU5MVR7CWZ65STNI
X-Message-ID-Hash: EK4ZYHATL7LDDOX2EU5MVR7CWZ65STNI
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: william.haftel@bluehalo.com, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Can only control 1 pin of x310 GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EK4ZYHATL7LDDOX2EU5MVR7CWZ65STNI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3681306381012568064=="

--===============3681306381012568064==
Content-Type: multipart/alternative; boundary="000000000000e4f2a40627687c38"

--000000000000e4f2a40627687c38
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Will,

hui is right. If you want any pins to be high, then mask & value must be
non-zero. Is it possible that you assume that the value only applies to the
mask bits? Because they don't. In you example, this line:

usrp->set_gpio_attr("FP0", "OUT", 1, (1<<1));

will not do anything because 1 & (1<<1) =3D=3D 0. This would do the trick:

usrp->set_gpio_attr("FP0", "OUT", 1<<1, (1<<1));

Manual page:
https://uhd.readthedocs.io/en/latest/classuhd_1_1usrp_1_1multi__usrp.html#a=
57f25d118d20311aca261e6dd252625e

--M

On Thu, Nov 21, 2024 at 8:29=E2=80=AFAM hui cj <cjh416593819@gmail.com> wro=
te:

> If you want to set both pin 0 and pin 1 to high, the third parameter
> should be 0x0003.
>
> In this case:
> If your last parameter is 0xFFFF, both pin 0 and pin 1 will be set to
> high, while all other pins will be set to low.
> However, if your last parameter is 0x0003, only pin 0 and pin 1 will
> change to high, and the values of the other pins will remain unchanged.
>
>
> hui cj <cjh416593819@gmail.com> =E4=BA=8E2024=E5=B9=B411=E6=9C=8821=E6=97=
=A5=E5=91=A8=E5=9B=9B 15:24=E5=86=99=E9=81=93=EF=BC=9A
>
>> In your last example, it should be
>> usrp->set_gpio_attr("FP0", "OUT",  0xFFF  , 0xFFF);
>> The third parameter should also be a mask.
>>
>>
>> Will Haftel via USRP-users <usrp-users@lists.ettus.com> =E4=BA=8E2024=E5=
=B9=B411=E6=9C=8821=E6=97=A5=E5=91=A8=E5=9B=9B
>> 05:38=E5=86=99=E9=81=93=EF=BC=9A
>>
>>> This doesn=E2=80=99t quite work for me - in the last example I gave, I =
try using
>>> 1 mask to set all of the bits high but still only pin 0 is set. I am ab=
le
>>> to control all of the pins using ATR, but am not sure why the manual ap=
i
>>> isn=E2=80=99t giving me the same results.
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e4f2a40627687c38
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div><br></div><div>Hi Will,</div><div><b=
r></div><div>hui is right. If you want any pins to be high, then mask &amp;=
 value must be non-zero. Is it possible that you assume that the value only=
 applies to the mask bits? Because they don&#39;t. In you example, this lin=
e:</div><div><br></div><div>
usrp-&gt;set_gpio_attr(&quot;FP0&quot;, &quot;OUT&quot;, 1, (1&lt;&lt;1)); =
<br></div><div><br></div><div>will not do anything because 1 &amp; (1&lt;&l=
t;1) =3D=3D 0. This would do the trick:</div><div><br></div><div>
usrp-&gt;set_gpio_attr(&quot;FP0&quot;, &quot;OUT&quot;, 1&lt;&lt;1, (1&lt;=
&lt;1)); <br></div><div><br></div><div>Manual page: <a href=3D"https://uhd.=
readthedocs.io/en/latest/classuhd_1_1usrp_1_1multi__usrp.html#a57f25d118d20=
311aca261e6dd252625e">https://uhd.readthedocs.io/en/latest/classuhd_1_1usrp=
_1_1multi__usrp.html#a57f25d118d20311aca261e6dd252625e</a></div><div><br></=
div><div>--M<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Thu, Nov 21, 2024 at 8:29=E2=80=AFAM hui cj &lt;<a=
 href=3D"mailto:cjh416593819@gmail.com">cjh416593819@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div dir=3D"ltr">If you want to set both pin 0 and pin 1 to high, the t=
hird parameter should be 0x0003.<br><br>In this case:<br>If your last param=
eter is 0xFFFF, both pin 0 and pin 1 will be set to high, while all other p=
ins will be set to low.<br>However, if your last parameter is 0x0003, only =
pin 0 and pin 1 will change to high, and the values of the other pins will =
remain unchanged.</div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br></di=
v><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">hui cj &=
lt;<a href=3D"mailto:cjh416593819@gmail.com" target=3D"_blank">cjh416593819=
@gmail.com</a>&gt; =E4=BA=8E2024=E5=B9=B411=E6=9C=8821=E6=97=A5=E5=91=A8=E5=
=9B=9B 15:24=E5=86=99=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr">In your last example, it should be=
<div>usrp-&gt;set_gpio_attr(&quot;FP0&quot;, &quot;OUT&quot;,=C2=A0

0xFFF=C2=A0 , 0xFFF);</div><div>The third parameter should also be a mask.<=
/div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">Will Haftel via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; =
=E4=BA=8E2024=E5=B9=B411=E6=9C=8821=E6=97=A5=E5=91=A8=E5=9B=9B 05:38=E5=86=
=99=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><p>This doesn=E2=80=99t quite work for me - in the last example I gav=
e, I try using 1 mask to set all of the bits high but still only pin 0 is s=
et.  I am able to control all of the pins using ATR, but am not sure why th=
e manual api isn=E2=80=99t giving me the same results.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000e4f2a40627687c38--

--===============3681306381012568064==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3681306381012568064==--
