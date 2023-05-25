Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C7DE2710D7A
	for <lists+usrp-users@lfdr.de>; Thu, 25 May 2023 15:42:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1E45E38479A
	for <lists+usrp-users@lfdr.de>; Thu, 25 May 2023 09:42:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685022173; bh=2hGH4tSYnWJyutAorzWHUI0rQhPujaexNJf9gMmo+G4=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=GB1i67iomtqUVZiXK/eAqtP1TTK0FO9r8eK9m+6wtL9CwsKD1SxWkTB0D9iZ8lzDa
	 yeqMNWIoCqTVxYJlWWDpJ81MDjPPw8Slv9yNEgo2V8m/bdG7N3n5HWY2aodaPgWrHu
	 xUsNq6IOcXMjwUhizV5QT6R5DRyBb9V8DE/pddhicG3JFkNBob+NjJmACY4w3bqZVb
	 Duzbo1TNjb3QnR4kLELnLX7YezbF9KDTLuTNxZhscReLOyfvS11LHtKE+KNeJu8SBm
	 yCElfTrzrhuVDIBgEHXpsSP+SV9RG1/2T2CQZxqrE0/Wt/yDY3DkQ/DMj1cs9LL864
	 QsCpPb1bKSp5w==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 68883380BEA
	for <usrp-users@lists.ettus.com>; Thu, 25 May 2023 09:41:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="aUIc5oqt";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-96fe88cd2fcso116745266b.1
        for <usrp-users@lists.ettus.com>; Thu, 25 May 2023 06:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1685022106; x=1687614106;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Pay0RzRhFlCms3oaSw+8PfAdM+obSX/cSk14Fef43OY=;
        b=aUIc5oqtdFI/vAXhkFCwJBHpeb9Noa9zS+2Vtr+6sbSuiBfkWssxjDkqsMU27TGsFW
         g9KN4BAWL4hsIgLv/bH3GRmKeKr5gJdLC+trgKyqhRCGR3rZcp+5cUfhYCXZXMs6LZG7
         ePxB4CzneL+W2YxfJ2F8WzmKfoKSXXY6V5lXRNBIBZentcdy3ZP/6OYFVhma87nNyltQ
         HYGvgzMV8H7Ww90FhjiniNuV2BAWBToVsJhhgv/T21qElhWYwuoX6QCHdbyknOPH++/Z
         UsQnxaH5HKqGK1ExP4H96wpaV0tb8ZN1iJN5/BRXrv/QTvEwSFMiNz494D4VcuyYPv5s
         bcSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685022106; x=1687614106;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pay0RzRhFlCms3oaSw+8PfAdM+obSX/cSk14Fef43OY=;
        b=Y6V9VAib+K8MOmcgBpguSlo5mRnWra9EcSMc8gyYpR0csNxW7hSY3zeS2nWAnMy5f6
         n8tf/EnoD/2lPoORryyP4y56JE2yED2X2R2NdIquk0JnHG3Y3IxDflo4aJm/tGCMa0v5
         paWKEMmIq02I2YHd+ewSk/c/DVdAnqCddChDGYnipVf4RiEGt2qmb16wKxtRw3eiMDjQ
         Dwwi8C/KGyRANtU5vAWyW3z+NEwEP2cI6Tza2Rim1e/jyGotf5VPsCIqalySVN0WTDDr
         3DEbErL0vHHF/sovoGFDk0kZctWdqnZAB5T5Xam/ohLsl/TDAVsANC9W85vu8Dof+mmE
         tS7Q==
X-Gm-Message-State: AC+VfDxZTMniuwhqtDPaQPW5aHJB5dhD7pxfNTsNzBG78tlgWNHN+uPH
	Hp494HgNfvZ4AavKppW1rJel+QXnWroFXl4WKi+beg==
X-Google-Smtp-Source: ACHHUZ5prEEjvdJiiGXTwh0GUawfF7+KeLOcbl5jbaKMMbxTmfptA2Lic6njVIs+mLqCSdCCXB0g7TxBQpFp1//j2bc=
X-Received: by 2002:a17:907:da8:b0:973:713c:d782 with SMTP id
 go40-20020a1709070da800b00973713cd782mr1499839ejc.65.1685022105453; Thu, 25
 May 2023 06:41:45 -0700 (PDT)
MIME-Version: 1.0
References: <W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs@lists.ettus.com>
 <c157a530-5c52-0fd4-79a4-0c65810ee0f0@gmail.com> <JN1P275MB053556431057E296A551C8C695469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
In-Reply-To: <JN1P275MB053556431057E296A551C8C695469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
Date: Thu, 25 May 2023 09:41:33 -0400
Message-ID: <CAB__hTSxoCSY8PahuLUSC-ig6FNr_r5PPsaobNh9KK8S6xNxCA@mail.gmail.com>
To: Leon Wabeke <LWabeke@csir.co.za>
Message-ID-Hash: WRMOAYUD7XNE5UMUFS2M7WTNJNVHT5C2
X-Message-ID-Hash: WRMOAYUD7XNE5UMUFS2M7WTNJNVHT5C2
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 - GPIO ATR output to TX output delay
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WRMOAYUD7XNE5UMUFS2M7WTNJNVHT5C2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3877388764601141876=="

--===============3877388764601141876==
Content-Type: multipart/alternative; boundary="00000000000008fe8d05fc84c859"

--00000000000008fe8d05fc84c859
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I may be off-base here, but I thought that the GPIO control occurred from
the Radio block such that a DUC group delay would not be the place to look.
I am wondering if the GPIO control does not use timed commands.  Instead of
the automatic setting of the Tx GPIO, we have used custom GPIO with timed
commands to pulse a GPIO bit as a trigger at the same time as we begin the
radios.  But, I have not checked the relative timing between my GPIO pulse
and the RF because I was only interested in repeatability rather than
knowing the precise relative timing.


On Thu, May 25, 2023 at 4:55=E2=80=AFAM Leon Wabeke <LWabeke@csir.co.za> wr=
ote:

> Hi
>
>
>
> We have also used a =E2=80=9Cmeasure in the lab approach=E2=80=9D, togeth=
er with zero
> padding before and after and have at times seen these need to be adjusted
> after a UHD upgrade.
>
>
>
> We have also in some cases taken the GPIO strobe via another FPGA to
> adjust the strobe by adding an extra configurable delays on rising and
> falling edges. It is just annoying to use an external function to do this
> and it would in my opinion be a very useful feature if such configurable
> delays were part of the basic built-in GPIO functionality at least in ter=
ms
> of the =E2=80=9Cautomatic strobe state machine=E2=80=9D, thus not requiri=
ng another FPGA or
> having to try to integrate custom logic inside the UHD firmware, which
> might need to be reintegrated on subsequent updates.
>
>
>
> Thanks
>
> Leon
>
>
>
> *From: *Marcus D. Leech <patchvonbraun@gmail.com>
> *Date: *Wednesday, 24 May 2023 at 23:14
> *To: *usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject: *[USRP-users] Re: N320 - GPIO ATR output to TX output delay
>
> [The e-mail server of the sender could not be verified (SPF Record)]
>
> On 24/05/2023 16:22, mena@chaosinc.com wrote:
>
> Thanks. Two follow up questions:
>
>    1. For a given sample rate, is there a way to deterministically
>    calculate the group delay?
>
> Look at the filter code in the version of the FPGA image that you're
> using, determine which filter bits and
>   pieces are "in circuit" when you select your sample-rate, and calculate
> the group delay from that.
>
>   Many folks who have run into the same problem have used a "measure it i=
n
> the lab" approach, and done
>   that for new releases of the FPGA code--the R&D team does occasionally
> make changes to the filter
>   parameters and "doctrine" in order to optimize for certain types of
> applications.  This may well
>   de-optimize for others.  SDRs are general-purpose devices, which means
> that there will be cases where they
>   aren't "out of the factory" optimized for any *particular* application.
>
> The approach some have take is to pad at one end or the other (or both) t=
o
> account for these delays, which comprise
>   a deterministic-but-version-dependent component, and an analog componen=
t
> that is less deterministic, but at much
>   smaller times scales.
>
>
>
>
>    1. Why do I not see the same delay at the back end of the transmission
>    (i.e. after the GPIO goes low)?
>
> My suspicion is that part of what you're seeing is an analog switching
> effect, and things like turn-on/turn-off
>   times are not perfectly symmetric.
>
> This issue (lack of tight synchronization between ATR signals and actual
> waveforms appearing at the antenna) has been
>   an issue in digital comms since I got involved in the 1980s, albeit, in
> the 1980s, the time-scales were much larger.
>   You simply had to account for these effects for every new radio your
> application encountered.   In the DSP age, the
>   effects are at much smaller time-scales, but so are the data rates.
>
>
>
>
>
> _______________________________________________
>
> USRP-users mailing list -- usrp-users@lists.ettus.com
>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000008fe8d05fc84c859
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">I may be off-base here, but I thought tha=
t the GPIO control occurred from the Radio block such that a DUC group dela=
y would not be the place to look. I am wondering if the GPIO control does n=
ot use timed commands.=C2=A0 Instead of the automatic setting of the Tx GPI=
O, we have used custom GPIO with timed commands=C2=A0to pulse a GPIO bit as=
 a trigger at the same time as we begin the radios.=C2=A0 But, I have not c=
hecked the relative timing between my GPIO pulse and the RF because I was o=
nly interested in repeatability rather than knowing the precise relative ti=
ming.</div><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Thu, May 25, 2023 at 4:55=E2=80=AFAM Leo=
n Wabeke &lt;<a href=3D"mailto:LWabeke@csir.co.za">LWabeke@csir.co.za</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div c=
lass=3D"msg3278616206152528484">





<div lang=3D"EN-ZA" style=3D"overflow-wrap: break-word;">
<div class=3D"m_-6926515693448721747WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Hi<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">We have also used a =
=E2=80=9Cmeasure in the lab approach=E2=80=9D, together with zero padding b=
efore and after and have at times seen these need to be adjusted after a UH=
D upgrade.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">We have also in some =
cases taken the GPIO strobe via another FPGA to adjust the strobe by adding=
 an extra configurable delays on rising and falling edges. It is just annoy=
ing to
 use an external function to do this and it would in my opinion be a very u=
seful feature if such configurable delays were part of the basic built-in G=
PIO functionality at least in terms of the =E2=80=9Cautomatic strobe state =
machine=E2=80=9D, thus not requiring another FPGA
 or having to try to integrate custom logic inside the UHD firmware, which =
might need to be reintegrated on subsequent updates.<u></u><u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Thanks<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Leon
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(181,196,223);padding:3pt 0cm 0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><b><span style=3D"font-=
size:12pt;color:black">From:
</span></b><span style=3D"font-size:12pt;color:black">Marcus D. Leech &lt;<=
a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@g=
mail.com</a>&gt;<br>
<b>Date: </b>Wednesday, 24 May 2023 at 23:14<br>
<b>To: </b><a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject: </b>[USRP-users] Re: N320 - GPIO ATR output to TX output delay<=
u></u><u></u></span></p>
</div>
<pre>[The e-mail server of the sender could not be verified (SPF Record)]<u=
></u><u></u></pre>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">On 24/05/2023 16:22, =
<a href=3D"mailto:mena@chaosinc.com" target=3D"_blank">
mena@chaosinc.com</a> wrote:<u></u><u></u></span></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<p>Thanks. Two follow up questions:<u></u><u></u></p>
<ol start=3D"1" type=3D"1">
<li>For a given sample rate, is there a way to deterministically calculate =
the group delay?<u></u><u></u></li></ol>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Look at the filter co=
de in the version of the FPGA image that you&#39;re using, determine which =
filter bits and<br>
=C2=A0 pieces are &quot;in circuit&quot; when you select your sample-rate, =
and calculate the group delay from that.<br>
<br>
=C2=A0 Many folks who have run into the same problem have used a &quot;meas=
ure it in the lab&quot; approach, and done<br>
=C2=A0 that for new releases of the FPGA code--the R&amp;D team does occasi=
onally make changes to the filter<br>
=C2=A0 parameters and &quot;doctrine&quot; in order to optimize for certain=
 types of applications.=C2=A0 This may well<br>
=C2=A0 de-optimize for others.=C2=A0 SDRs are general-purpose devices, whic=
h means that there will be cases where they<br>
=C2=A0 aren&#39;t &quot;out of the factory&quot; optimized for any *particu=
lar* application.<br>
<br>
The approach some have take is to pad at one end or the other (or both) to =
account for these delays, which comprise<br>
=C2=A0 a deterministic-but-version-dependent component, and an analog compo=
nent that is less deterministic, but at much<br>
=C2=A0 smaller times scales.<br>
<br>
<br>
<br>
<u></u><u></u></span></p>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<ol start=3D"1" type=3D"1">
<li>Why do I not see the same delay at the back end of the transmission (i.=
e. after the GPIO goes low)?<u></u><u></u></li></ol>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">My suspicion is that =
part of what you&#39;re seeing is an analog switching effect, and things li=
ke turn-on/turn-off<br>
=C2=A0 times are not perfectly symmetric.<br>
<br>
This issue (lack of tight synchronization between ATR signals and actual wa=
veforms appearing at the antenna) has been<br>
=C2=A0 an issue in digital comms since I got involved in the 1980s, albeit,=
 in the 1980s, the time-scales were much larger.<br>
=C2=A0 You simply had to account for these effects for every new radio your=
 application encountered.=C2=A0=C2=A0 In the DSP age, the<br>
=C2=A0 effects are at much smaller time-scales, but so are the data rates.<=
br>
<br>
<br>
<br>
<u></u><u></u></span></p>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><br>
<br>
<u></u><u></u></span></p>
<pre>_______________________________________________<u></u><u></u></pre>
<pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><u></u><u></u></pre>
<pre>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><u></u>=
<u></u></pre>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div></div>

--00000000000008fe8d05fc84c859--

--===============3877388764601141876==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3877388764601141876==--
