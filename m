Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB3F647534
	for <lists+usrp-users@lfdr.de>; Thu,  8 Dec 2022 18:55:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5A5343842C1
	for <lists+usrp-users@lfdr.de>; Thu,  8 Dec 2022 12:55:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1670522128; bh=dwSr5LVjviUr7P/rZvMk97kWlPy1cRGx31TWvaIImSE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=bclJPhM24HZTSm4OnW2IG9Y3Zb7YbmlqGSpHx7UcCs3s2MjT0jE818ZRg8qNbvrKE
	 hj0pYvJJ+UfdEVLEQU2EdnEvgbW42Fb5Hb4bQYnylNQRddoO9BWHXwl0R+4H5sH6ig
	 eK/HDCJ19GWXtjDH37pbYNpHFsHOLKHOGjKgUrx9LA5LUoICE6hIyEnNszBvrCQ2zB
	 0Kh61kFsxbL5sEHZlaFqjDoHMX9KHFwqZHkPAPjp5sXvIbkdOhNFm9SdNqd0ndOQWF
	 yFWH0SHgqLc5PICn25FpuRrf5Nl5dHctan8xYHY/P0Ta/4WXqHm0CdhtAUl1XBX9HV
	 xwlYpuiX0dWJA==
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 061873841C5
	for <usrp-users@lists.ettus.com>; Thu,  8 Dec 2022 12:55:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=eng.ucsd.edu header.i=@eng.ucsd.edu header.b="fvAauAnY";
	dkim-atps=neutral
Received: by mail-qt1-f174.google.com with SMTP id x28so1640046qtv.13
        for <usrp-users@lists.ettus.com>; Thu, 08 Dec 2022 09:55:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=eng.ucsd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dtEqGVuwX2wXtqpFgcTvE13mF006FiXFrUhfaPD8aaQ=;
        b=fvAauAnYTZfGnRimJk6aqAPqssf6JpcaRoMLjYcMUdFBQFrqHWbtFpvKkaD1akzxvE
         0+ymuRnlN6huQbLIfJZAtOL+EUCTv38nNepVBS4ReAfgTDXNSfHUgsdcCUcvTz6t13UI
         mCgAguCgxVf53nfg2Nr+ms7sDl6orLpowSIOA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dtEqGVuwX2wXtqpFgcTvE13mF006FiXFrUhfaPD8aaQ=;
        b=nPk4ZtrcTh+qXWy0O7akR61Bnf40AxYwSkuLYMYyvyfVQvJAoS1GqYK38RDdLcPEm9
         poC7e6v2sLVhVzgpioo1up7nAh75vJQYiK94FC1waxg+zhXL4B1c1OnK0gTwVsi7Q+BV
         rPdPl0FYqzs3W7ImZ7g6cs364I+yzrudEVQhGwIzYRcllHlRam8cmx02RlYvvy6QTfXK
         ki+3z/wWajv5Lsmah4hVgYDuZcMIxCSsDatvIGBIaCaQFcXY2h1ZwbQkgVioLV0UGSmx
         VA1G+y74RpCO+CtX/apsN8pjLIA7xBvA7s7I4Bg8iQqMy3eprUNoTw9Ii5xtdCPHfmeg
         ztKQ==
X-Gm-Message-State: ANoB5pnyyw2zpT0GTRIUtItULltfLLLVRHY+tGbJHff679bltYroRpkj
	c6fbI7US6AZecRP9q5rOQ7tpnhDumWypkZhfmYE8+Rc7QnN2lJIo
X-Google-Smtp-Source: AA0mqf6fEccFnzrPmRKWW+20DGa6DbTKJhKxuwsMzq/G2IVfYjCnvf+YgRogVyyomip2Hp3Hh+SAbBez96hmthHwjOI=
X-Received: by 2002:a05:622a:5c96:b0:3a5:2bae:77e9 with SMTP id
 ge22-20020a05622a5c9600b003a52bae77e9mr73709717qtb.318.1670522116828; Thu, 08
 Dec 2022 09:55:16 -0800 (PST)
MIME-Version: 1.0
References: <MW4PR13MB55054A97A1A8AB37A19DB265A41D9@MW4PR13MB5505.namprd13.prod.outlook.com>
 <CAA9CoE1307bfR3cfNKtVL+nMfsgOZRA_7pGj+P_JVfNqx0AN0w@mail.gmail.com> <MW4PR13MB55050E1B20434F9788293560A41D9@MW4PR13MB5505.namprd13.prod.outlook.com>
In-Reply-To: <MW4PR13MB55050E1B20434F9788293560A41D9@MW4PR13MB5505.namprd13.prod.outlook.com>
From: Raghav Subbaraman <rsubbaraman@eng.ucsd.edu>
Date: Thu, 8 Dec 2022 09:55:06 -0800
Message-ID: <CAA9CoE1qmUb27U96wYKx7UJvOUzyrpMzAXD1PyjFh2Tj-qSgdQ@mail.gmail.com>
To: Jeff S <e070832@hotmail.com>
Message-ID-Hash: AM32CQ6KSMUBOXZYUZJYEKFTERHOGI6S
X-Message-ID-Hash: AM32CQ6KSMUBOXZYUZJYEKFTERHOGI6S
X-MailFrom: rsubbaraman@eng.ucsd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 GPIO Latency
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AM32CQ6KSMUBOXZYUZJYEKFTERHOGI6S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4666944315408328410=="

--===============4666944315408328410==
Content-Type: multipart/alternative; boundary="0000000000005cfe3905ef54bd2b"

--0000000000005cfe3905ef54bd2b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you want a GPIO to trigger a transmission, then to my knowledge, it is
not possible with software in the loop (assuming the requirement is sub-ms
latency).

There is a hacky way to do it, which is to hook up your external GPIO
trigger to the PPS input of the X300 (
https://lists.gnu.org/archive/html/discuss-gnuradio/2015-09/msg00010.html)

If you want external events to trigger radio transmission/reception
behavior, you'll have to mess with the FPGA code.

Best,
Raghav


On Thu, Dec 8, 2022 at 9:48 AM Jeff S <e070832@hotmail.com> wrote:

> Raghav,
>
>
>
> I was looking into timed commands for the outputs, but how do you time th=
e
> input to GPIO and cause the timed outputs to wait for the input to be
> active?
>
>
>
> Regards,
>
> Jeff
>
>
>
> *From:* Raghav Subbaraman <rsubbaraman@eng.ucsd.edu>
> *Sent:* Thursday, December 8, 2022 11:41 AM
> *To:* Jeff S <e070832@hotmail.com>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] X310 GPIO Latency
>
>
>
> Hi Jeff,
>
>
>
> We have used Timed commands to control the GPIO set/unset timing
> accurately (UHD 4.1.5 + GNURadio 3.8.2). We have seen that the GPIOs can =
be
> controlled with 10s of ns of accuracy in the X310.
>
>
>
> Best,
>
> Raghav
>
>
>
> On Thu, Dec 8, 2022 at 3:34 AM Jeff S <e070832@hotmail.com> wrote:
>
> I=E2=80=99ve been working on a software keying loop with the GPIO on an X=
310, and
> I measured the latency for setting a GPIO pin output wrapped back into a
> GPIO input to be around 5 ms on average.  This was done by setting a pin
> manually, and then immediately polling the input pin to see how long befo=
re
> it switched states.
>
>
>
> I haven=E2=80=99t had anyone who could look at the FPGA side of the X310 =
yet, but
> I was wondering if it would be even possible to implement something in th=
e
> FPGA like the ATR functionality, except it would allow for a keying loop =
(a
> Clear to Send GPIO output wrapping to a Request to Send GPIO input) and
> prevent transmission until the condition was true.  I=E2=80=99m hoping th=
at would
> significantly decrease the latency (less than 1 ms, hopefully) if I don=
=E2=80=99t
> have to bother polling the pin.
>
>
>
> Right now I=E2=80=99m using:  UHD 4.0, and GNU Radio 3.9.5.
>
>
>
> Thanks and regards,
>
> Jeff
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
>
>
> --
>
> Raghav Subbaraman
>
> PhD Student, ECE
>
> University of California San Diego
>
> rsubbaraman.github.io
>


--=20
Raghav Subbaraman
PhD Student, ECE
University of California San Diego
rsubbaraman.github.io

--0000000000005cfe3905ef54bd2b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If you want a GPIO to trigger a transmission, then to my k=
nowledge, it is not possible with software in the loop (assuming the requir=
ement is sub-ms latency).<div><br></div><div>There is a hacky way to do it,=
 which is to hook up your external GPIO trigger to the PPS input of the X30=
0 (<a href=3D"https://lists.gnu.org/archive/html/discuss-gnuradio/2015-09/m=
sg00010.html">https://lists.gnu.org/archive/html/discuss-gnuradio/2015-09/m=
sg00010.html</a>)<br><br>If you want external events to trigger radio trans=
mission/reception behavior, you&#39;ll have to mess with the FPGA code.<br>=
<br>Best,<br>Raghav</div><div><br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 8, 2022 at 9:48 AM Jeff=
 S &lt;<a href=3D"mailto:e070832@hotmail.com">e070832@hotmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=
=3D"msg-7598738134960921203">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"m_-7598738134960921203WordSection1">
<p class=3D"MsoNormal">Raghav,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I was looking into timed commands for the outputs, b=
ut how do you time the input to GPIO and cause the timed outputs to wait fo=
r the input to be active?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Regards,<u></u><u></u></p>
<p class=3D"MsoNormal">Jeff<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Raghav Subbaraman &lt;<a href=3D"mailto=
:rsubbaraman@eng.ucsd.edu" target=3D"_blank">rsubbaraman@eng.ucsd.edu</a>&g=
t; <br>
<b>Sent:</b> Thursday, December 8, 2022 11:41 AM<br>
<b>To:</b> Jeff S &lt;<a href=3D"mailto:e070832@hotmail.com" target=3D"_bla=
nk">e070832@hotmail.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] X310 GPIO Latency<u></u><u></u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">Hi Jeff,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">We have used Timed commands to control the GPIO set/=
unset timing accurately (UHD 4.1.5 + GNURadio 3.8.2). We have seen that the=
 GPIOs can be controlled with 10s of ns of accuracy in the X310.<u></u><u><=
/u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Best,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Raghav<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Thu, Dec 8, 2022 at 3:34 AM Jeff S &lt;<a href=3D=
"mailto:e070832@hotmail.com" target=3D"_blank">e070832@hotmail.com</a>&gt; =
wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin-left:4=
.8pt;margin-right:0in">
<div>
<div>
<div>
<p class=3D"MsoNormal">I=E2=80=99ve been working on a software keying loop =
with the GPIO on an X310, and I measured the latency for setting a GPIO pin=
 output wrapped back into a GPIO input to be around 5 ms on
 average.=C2=A0 This was done by setting a pin manually, and then immediate=
ly polling the input pin to see how long before it switched states.<u></u><=
u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I haven=E2=80=99t had anyone who could look at the F=
PGA side of the X310 yet, but I was wondering if it would be even possible =
to implement something in the FPGA like the ATR functionality,
 except it would allow for a keying loop (a Clear to Send GPIO output wrapp=
ing to a Request to Send GPIO input) and prevent transmission until the con=
dition was true.=C2=A0 I=E2=80=99m hoping that would significantly decrease=
 the latency (less than 1 ms, hopefully) if I
 don=E2=80=99t have to bother polling the pin.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Right now I=E2=80=99m using:=C2=A0 UHD 4.0, and GNU =
Radio 3.9.5.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Thanks and regards,<u></u><u></u></p>
<p class=3D"MsoNormal">Jeff<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><u></u><u></u></p>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal"><br clear=3D"all">
<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<p class=3D"MsoNormal">-- <u></u><u></u></p>
<div>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal">Raghav Subbaraman<u></u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal">PhD Student, ECE<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">University of California San Diego<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><a href=3D"https://rsubbaraman.github.io" target=3D"=
_blank">rsubbaraman.github.io</a><u></u><u></u></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

</div></blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=
=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><=
div><div dir=3D"ltr">Raghav Subbaraman</div></div><div>PhD Student, ECE</di=
v><div>University of California San Diego</div><div><a href=3D"https://rsub=
baraman.github.io" target=3D"_blank">rsubbaraman.github.io</a></div></div><=
/div></div></div>

--0000000000005cfe3905ef54bd2b--

--===============4666944315408328410==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4666944315408328410==--
