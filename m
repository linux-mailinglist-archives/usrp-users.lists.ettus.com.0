Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFBF3DE4D2
	for <lists+usrp-users@lfdr.de>; Tue,  3 Aug 2021 05:52:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A010C384010
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 23:52:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qK3iVy9F";
	dkim-atps=neutral
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 5327B383F8E
	for <usrp-users@lists.ettus.com>; Mon,  2 Aug 2021 23:51:20 -0400 (EDT)
Received: by mail-qk1-f179.google.com with SMTP id e14so1205781qkg.3
        for <usrp-users@lists.ettus.com>; Mon, 02 Aug 2021 20:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=ulP6CUFEmGUMESG5nqWuyANmMf57XDeprMdxU43SSu4=;
        b=qK3iVy9FJv3mq+Z/5gJ6T6Ak08pQQkjl9zDOowceziLMB+uuG/ezc9DaiJSYwkfHLh
         kgvNkoM6ijptoYWrCDQK0qyS8pYszY1yTnAQ94yHsmutuv5hHpyZGxhnbqu+V8GJhwa/
         oo0QFHOBzybvOmnWRtFLArQ2Mbvrs7j4uKDiGG0DO8ymxlfgJW2IsNPeV0GtOJA6lNYU
         Ff/YTCupf2DIkVOg+KxKgssFJnXBXjDGQT23apRPKMHn+0HePDTbOgfElPt3o7tUmIC9
         oemaVKBdWr+tP4zvSTRNIRuOD5fDfMIeG5OAn6K9Yl42KdL5fv6wDggFF4lHOJFVdGx5
         WKKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=ulP6CUFEmGUMESG5nqWuyANmMf57XDeprMdxU43SSu4=;
        b=nGDwKRBcZcJtQt1ULJTU+6UVvMk2io4WN94+ca05yk56zunFe8En1YPLe8QNQd/7eA
         FZwrnX/uB1eBa7+xhoTAsbokU2k5JSYleT/tU8K+ml3TfzKfGx3ZUAfL9AuiDwi4T0Yv
         QBVw0d9blxLwCPTNw5L/37WAY14LH2dY61VEBpVd4WJ4b3lQcbIQ9PbdlqEs+qb9FAHv
         yRs7dxLbAdoezXd/W0AZcdyhGcsO2LPQd5XtrtLwW3RuFh9UbL+cisgVEOKC+9MrOHPd
         JAn50TQSxX7zakoS/SUuujNY1tGLrxvjmsPcA6xlr4YmDtGRooWCQsAGiqU58eabO+vf
         o4pg==
X-Gm-Message-State: AOAM5313vZr9vNqtB2fRV1GgTnA8c2+QGXxRvxUO3TfUQck04g6Ha/Xu
	+6kR9bZrAV+guhiBm9kkbFihdDo9QTo=
X-Google-Smtp-Source: ABdhPJy8cDV1F9cCMKHqOoSRwiNGvOw6yjD3a4tpEJeWqB7KUCa31XwVT37kQQ5XbuTzSI/NnY+xrw==
X-Received: by 2002:a05:620a:a19:: with SMTP id i25mr18491983qka.426.1627962679480;
        Mon, 02 Aug 2021 20:51:19 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id l1sm5647945qtk.63.2021.08.02.20.51.18
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Aug 2021 20:51:19 -0700 (PDT)
Message-ID: <6108BD36.6090208@gmail.com>
Date: Mon, 02 Aug 2021 23:51:18 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: ZHOU Yuxuan <yzhoudo@connect.ust.hk>,
 "Discuss-gnuradio@gnu.org" <Discuss-gnuradio@gnu.org>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <TYAP286MB0217AB8837C04DA21788E3728FEF9@TYAP286MB0217.JPNP286.PROD.OUTLOOK.COM> <32CDEB66-B9EB-4D5A-8B93-2A8AFE434750@gmail.com> <TYAP286MB0217DE9950427ED956E9DF228FF09@TYAP286MB0217.JPNP286.PROD.OUTLOOK.COM>
In-Reply-To: <TYAP286MB0217DE9950427ED956E9DF228FF09@TYAP286MB0217.JPNP286.PROD.OUTLOOK.COM>
Message-ID-Hash: L76O7ODVEAKOHS2CTJA5TGPRNZ7LFZOW
X-Message-ID-Hash: L76O7ODVEAKOHS2CTJA5TGPRNZ7LFZOW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users]  Re: =?utf-8?q?=E5=9B=9E=E5=A4=8D=3A_=5BUSRP-users=5D_Is_there_a_=22trigger=22_in_GNURadio_with_USRP=3F?=
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L76O7ODVEAKOHS2CTJA5TGPRNZ7LFZOW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7995727644824971558=="

This is a multi-part message in MIME format.
--===============7995727644824971558==
Content-Type: multipart/alternative;
 boundary="------------040907050502040801010806"

This is a multi-part message in MIME format.
--------------040907050502040801010806
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 08/02/2021 09:48 PM, ZHOU Yuxuan wrote:
>
> Thanks for your reply.
>
> Actually I need the human triggered function in GnuRadio but I just do=20
> not know how to do that=E2=80=A6 thanks for your help.
>
If you took Gnu Radio and radios out of the picture, and the question=20
was "how do I trigger something to happen when I press a certain key on t=
he
   keyboard, or press a button of some sort?" is solving THAT problem=20
something that is easy for you?  If the answer is a decided NO, then
   you may need to gain more experience in general software design FIRST=20
before wandering into the abstruse disciplines of signal processing
   and radios.

if the answer is instead "not a problem, I already know how to do that",=20
then I suggest that you spend some time with the Gnu Radio tutorials.
   it should come as no surprise that Gnu Radio, being what amounts to=20
just a specialized programming environment, hasn't necessarily already
   come up with everything you might want to do in a nice tidy package. =20
Some programming will be required.

 From your e-mail address I assume that you're a student. it may not=20
have occurred to you this early in your software career that the set
   "useful things someone might want to do with a computer" and "useful=20
things someone might want to do with radios" are very very large
   (if not infinite) sets.  Which means that from a practical=20
perspective "some programming will likely be required" is almost always=20
the answer.

I've cross-posted to discuss-gnuradio because there may be an audience=20
there who have already done something similar to what you want and
   may ask more clarifying questions.




> *=E5=8F=91=E4=BB=B6=E4=BA=BA:*Marcus D Leech <patchvonbraun@gmail.com>
> *=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4:*2021=E5=B9=B48=E6=9C=883=E6=97=A5=
3:52
> *=E6=94=B6=E4=BB=B6=E4=BA=BA:*ZHOU Yuxuan <yzhoudo@connect.ust.hk>
> *=E6=8A=84=E9=80=81:*USRP-users@lists.ettus.com
> *=E4=B8=BB=E9=A2=98:*Re: [USRP-users] Is there a "trigger" in GNURadio =
with USRP?
>
> It depends on what sort of latency you need in the trigger. Given that=20
> it is human triggered I=E2=80=99m guessing fairly sloppy.
>
> If it could be a keyboard key and you don=E2=80=99t need microsecond sc=
ale=20
> latency, then this is all doable in software/GnuRadio and you should=20
> probably post your question on the discuss-gnuradio mailing list since=20
> an implementation of this would be largely independent of radio hardwar=
e.
>
> Sent from my iPhone
>
>
>
>     On Aug 2, 2021, at 8:26 AM, ZHOU Yuxuan <yzhoudo@connect.ust.hk
>     <mailto:yzhoudo@connect.ust.hk>> wrote:
>
>     =EF=BB=BF
>
>     Hello everyone.
>
>     I am using USRP N210 and Gnuradio 3.7. I want a =E2=80=9Ctrigger=E2=
=80=9Dlike a
>     button that only when I push the button then the USRP start to
>     transmit the sample from file source. I did not find any materials
>     or experience from other about this case.
>
>     The reason I want to do this is that the transmission is
>     correlated to the human motion so I need to control the timing.
>
>     Is there anyone know how to implement this fuction?
>
>     Regards,
>
>     Kevin
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>


--------------040907050502040801010806
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 08/02/2021 09:48 PM, ZHOU Yuxuan
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:TYAP286MB0217DE9950427ED956E9DF228FF09@TYAP286MB0217.JPNP286.=
PROD.OUTLOOK.COM"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Du=
tf-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:=E5=AE=8B=E4=BD=93;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:=E7=AD=89=E7=BA=BF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@=E7=AD=89=E7=BA=BF";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@=E5=AE=8B=E4=BD=93";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:=E7=AD=89=E7=BA=BF;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks for your reply=
.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Actually I need the
            human triggered function in GnuRadio but I just do not know
            how to do that=E2=80=A6 thanks for your help.</span></p>
      </div>
    </blockquote>
    If you took Gnu Radio and radios out of the picture, and the
    question was "how do I trigger something to happen when I press a
    certain key on the<br>
    =C2=A0 keyboard, or press a button of some sort?" is solving THAT pro=
blem
    something that is easy for you?=C2=A0 If the answer is a decided NO, =
then<br>
    =C2=A0 you may need to gain more experience in general software desig=
n
    FIRST before wandering into the abstruse disciplines of signal
    processing<br>
    =C2=A0 and radios.<br>
    <br>
    if the answer is instead "not a problem, I already know how to do
    that", then I suggest that you spend some time with the Gnu Radio
    tutorials.<br>
    =C2=A0 it should come as no surprise that Gnu Radio, being what amoun=
ts
    to just a specialized programming environment, hasn't necessarily
    already<br>
    =C2=A0 come up with everything you might want to do in a nice tidy
    package.=C2=A0 Some programming will be required.<br>
    <br>
    From your e-mail address I assume that you're a student. it may not
    have occurred to you this early in your software career that the set<=
br>
    =C2=A0 "useful things someone might want to do with a computer" and
    "useful things someone might want to do with radios" are very very
    large<br>
    =C2=A0 (if not infinite) sets.=C2=A0 Which means that from a practica=
l
    perspective "some programming will likely be required" is almost
    always the answer.<br>
    <br>
    I've cross-posted to discuss-gnuradio because there may be an
    audience there who have already done something similar to what you
    want and<br>
    =C2=A0 may ask more clarifying questions.<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote
cite=3D"mid:TYAP286MB0217DE9950427ED956E9DF228FF09@TYAP286MB0217.JPNP286.=
PROD.OUTLOOK.COM"
      type=3D"cite">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p></o:p></span></p=
>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0cm 0cm 0cm">
            <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"lef=
t"><b><span
                  style=3D"font-size:11.0pt">=E5=8F=91=E4=BB=B6=E4=BA=BA<=
span lang=3D"EN-US">:</span></span></b><span
                style=3D"font-size:11.0pt" lang=3D"EN-US"> Marcus D Leech
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvo=
nbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>
                <br>
              </span><b><span style=3D"font-size:11.0pt">=E5=8F=91=E9=80=81=
=E6=97=B6=E9=97=B4<span
                    lang=3D"EN-US">:</span></span></b><span
                style=3D"font-size:11.0pt" lang=3D"EN-US"> 2021</span><sp=
an
                style=3D"font-size:11.0pt">=E5=B9=B4<span lang=3D"EN-US">=
8</span>=E6=9C=88<span
                  lang=3D"EN-US">3</span>=E6=97=A5<span lang=3D"EN-US"> 3=
:52<br>
                </span><b>=E6=94=B6=E4=BB=B6=E4=BA=BA<span lang=3D"EN-US"=
>:</span></b><span
                  lang=3D"EN-US"> ZHOU Yuxuan
                  <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:yzhou=
do@connect.ust.hk">&lt;yzhoudo@connect.ust.hk&gt;</a><br>
                </span><b>=E6=8A=84=E9=80=81<span lang=3D"EN-US">:</span>=
</b><span
                  lang=3D"EN-US"> <a class=3D"moz-txt-link-abbreviated" h=
ref=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><=
br>
                </span><b>=E4=B8=BB=E9=A2=98<span lang=3D"EN-US">:</span>=
</b><span
                  lang=3D"EN-US"> Re: [USRP-users] Is there a "trigger" i=
n
                  GNURadio with USRP?<o:p></o:p></span></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"><=
span
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"><=
span
            lang=3D"EN-US">It depends on what sort of latency you need in
            the trigger. Given that it is human triggered I=E2=80=99m gue=
ssing
            fairly sloppy.=C2=A0</span><span style=3D"font-size:12.0pt"
            lang=3D"EN-US"><o:p></o:p></span></p>
        <div>
          <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></=
span></p>
        </div>
        <div>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              lang=3D"EN-US">If it could be a keyboard key and you don=E2=
=80=99t
              need microsecond scale latency, then this is all doable in
              software/GnuRadio and you should probably post your
              question on the discuss-gnuradio mailing list since an
              implementation of this would be largely independent of
              radio hardware.=C2=A0<o:p></o:p></span></p>
          <div>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">Sent from my iPho=
ne<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span lang=3D"EN-US"><br>
                <br>
                <o:p></o:p></span></p>
            <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
              <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
                  lang=3D"EN-US">On Aug 2, 2021, at 8:26 AM, ZHOU Yuxuan
                  &lt;<a moz-do-not-send=3D"true"
                    href=3D"mailto:yzhoudo@connect.ust.hk">yzhoudo@connec=
t.ust.hk</a>&gt;
                  wrote:<o:p></o:p></span></p>
            </blockquote>
          </div>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <div>
              <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"l=
eft"><span
                  style=3D"font-family:&quot;Tahoma&quot;,sans-serif"
                  lang=3D"EN-US">=EF=BB=BF</span><span lang=3D"EN-US">
                </span><span style=3D"font-size:12.0pt;font-family:=E5=AE=
=8B=E4=BD=93"
                  lang=3D"EN-US"><o:p></o:p></span></p>
              <p class=3D"MsoNormal"><span lang=3D"EN-US">Hello everyone.=
<o:p></o:p></span></p>
              <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<o:p></o:=
p></span></p>
              <p class=3D"MsoNormal"><span lang=3D"EN-US">I am using USRP
                  N210 and Gnuradio 3.7. I want a
                </span>=E2=80=9C<span lang=3D"EN-US">trigger</span>=E2=80=
=9D<span
                  lang=3D"EN-US"> like a button that only when I push the
                  button then the USRP start to transmit the sample from
                  file source. I did not find any materials or
                  experience from other about this case.<o:p></o:p></span=
></p>
              <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<o:p></o:=
p></span></p>
              <p class=3D"MsoNormal"><span lang=3D"EN-US">The reason I wa=
nt
                  to do this is that the transmission is correlated to
                  the human motion so I need to control the timing.<o:p><=
/o:p></span></p>
              <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<o:p></o:=
p></span></p>
              <p class=3D"MsoNormal"><span lang=3D"EN-US">Is there anyone
                  know how to implement this fuction?<o:p></o:p></span></=
p>
              <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<o:p></o:=
p></span></p>
              <p class=3D"MsoNormal"><span lang=3D"EN-US">Regards,<o:p></=
o:p></span></p>
              <p class=3D"MsoNormal"><span lang=3D"EN-US">Kevin =C2=A0<o:=
p></o:p></span></p>
              <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"l=
eft"><span
                  style=3D"font-size:12.0pt;font-family:=E5=AE=8B=E4=BD=93=
" lang=3D"EN-US">_______________________________________________<br>
                  USRP-users mailing list -- <a moz-do-not-send=3D"true"
                    href=3D"mailto:usrp-users@lists.ettus.com">usrp-users=
@lists.ettus.com</a><br>
                  To unsubscribe send an email to <a
                    moz-do-not-send=3D"true"
                    href=3D"mailto:usrp-users-leave@lists.ettus.com">
                    usrp-users-leave@lists.ettus.com</a><o:p></o:p></span=
></p>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------040907050502040801010806--

--===============7995727644824971558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7995727644824971558==--
