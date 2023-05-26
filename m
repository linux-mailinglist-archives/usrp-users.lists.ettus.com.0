Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA8E712A77
	for <lists+usrp-users@lfdr.de>; Fri, 26 May 2023 18:17:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9AF22383F72
	for <lists+usrp-users@lfdr.de>; Fri, 26 May 2023 12:17:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685117855; bh=6486HJ4JZD1hP/D/bdSKyds9jI7gVtQhSn+ODBXkHU8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=hsJTGO83RzrbtD7/gd+s9sRlvYva0SWGezDZ6GtEXLfmR0/gyO/MrkV+vwNcvt24O
	 Eq2IFPWVO+AV7GQjFUchosLzxZDZpQjPSAZOO8R8AjBrVcAbNoelK9+qoVVWeoueRS
	 5/ccSPmg+VmWlWQAC7qSfjYdq0OfatNK3AAH5+lTGj080du68z516MAoGPphP8jctT
	 j/fgmeswB7qoOl0MrcKhAbGM0FNHJapnOscSHlbj9V0y8sPHM7AOOTmTqG9JLNrOzd
	 gnSkI2mXFEsM0WGrf+94hqBxvEx8Lq57DywpmqDQbclFVffZtu7cYV/5lXTB58+hxQ
	 V5hK6i2urpYzw==
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 72FED38109A
	for <usrp-users@lists.ettus.com>; Fri, 26 May 2023 12:01:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="Gk79y8Tc";
	dkim-atps=neutral
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-2553b0938a9so759135a91.0
        for <usrp-users@lists.ettus.com>; Fri, 26 May 2023 09:01:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1685116910; x=1687708910;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=T7eAA2ljs6ruUzTu+sKh0//g3//s22kHsVlP3NI0Clk=;
        b=Gk79y8Tc+xQyPOEvuGJMNtgEL8NsRXB22xkLgazNiNoq34yBuge4PFYuw0OSkzqQzc
         bwXziuKynj+PKyhnCiZQLcdySnTsc0VOiRgvyvzMUeS1F3Ih+E3xyK0/XBcmNaWseRA3
         0RuV8RXsS69Wd3YaQeWUNJI/UcSvjnQIu75rBtm6FNN44ElZmBym0GfvNdB2we3T6nbV
         8PDrJ1zWfGWXMLgdPwwhHWxaq68CzzQDy56UuElarI8ppLSp0QGYQbBLvzlFS3Kb1t4w
         wnbqXoI3hMSCaSLASKxMwod+lEtbi2rHKN7xINyjzluwciJWvZyi9y/HnreKG7JCgDMK
         T04A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685116910; x=1687708910;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T7eAA2ljs6ruUzTu+sKh0//g3//s22kHsVlP3NI0Clk=;
        b=E/7mCpI13BfUQdWwpbiRY4mX9jtlFBxp0BNSriDnpKUdaO/kt7KhqQfFN71Rh8LgJe
         TscxNG02E69lqlmPREl2TaH/v0PRDldsI1cRiEH8T4DMLXPiqMS/bPF8dMJGdlLrgysH
         NZN+xtk9Fuy6F5sCFzLODenFMuB8QRv7kwy9M3RkkRZHPjYNkqM6DoQbk2+r3ftfNjBg
         aaqKXhQFK9JdZQKbD8gPFaOYL/xpsfShwMo1W5SVfGsq2J/GF/0IM0T8SIPA+tcE8KjQ
         /JHRpl5ab4D8/0lOXazZ4ySkcELzAhDB8jw/YHcu3duW41cJtyRA3nShvBFHS2saP5pY
         q6kQ==
X-Gm-Message-State: AC+VfDzS8v8sgFtVDqSCMywT+P+1hl0ChOSStkeNhPwCG7MPBSrNd89v
	SWYrCpnG1lfHMns+zqmeUhS7PpAdgw+24KsxFO0m5505
X-Google-Smtp-Source: ACHHUZ5hG7ozKQMAC7QLCzqCN4auh6gKCBpZ9YuTElqG4ILvk6vTAVh4Ka3p1v+xtjNhD1CNY8fHgg1LTKdzVLoSPBU=
X-Received: by 2002:a17:90a:a4c:b0:256:3093:1e69 with SMTP id
 o70-20020a17090a0a4c00b0025630931e69mr2205884pjo.33.1685116909726; Fri, 26
 May 2023 09:01:49 -0700 (PDT)
MIME-Version: 1.0
References: <W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs@lists.ettus.com>
 <c157a530-5c52-0fd4-79a4-0c65810ee0f0@gmail.com> <JN1P275MB053556431057E296A551C8C695469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAB__hTSxoCSY8PahuLUSC-ig6FNr_r5PPsaobNh9KK8S6xNxCA@mail.gmail.com>
 <7ed5a34a-8862-09ae-edfa-d5ca15947915@gmail.com> <JN1P275MB053547F1D25B83244EE59F8795469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
In-Reply-To: <JN1P275MB053547F1D25B83244EE59F8795469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Fri, 26 May 2023 12:01:38 -0400
Message-ID: <CAL7q81shBqtUzSaHseMO59rq1u3QSxSrA7bCaX-BVZo7FNRLZQ@mail.gmail.com>
To: Leon Wabeke <LWabeke@csir.co.za>
Message-ID-Hash: L2ZRA6ZZQ4DQNPBXLPYBE7WEBMKAEJGC
X-Message-ID-Hash: L2ZRA6ZZQ4DQNPBXLPYBE7WEBMKAEJGC
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 - GPIO ATR output to TX output delay
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L2ZRA6ZZQ4DQNPBXLPYBE7WEBMKAEJGC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6655420303586346728=="

--===============6655420303586346728==
Content-Type: multipart/alternative; boundary="000000000000cf453905fc9adae6"

--000000000000cf453905fc9adae6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Leon,

You can increase the command FIFO depth to allow for queuing up many more
timed commands. This does require building a new FPGA image though.

Jonathon

On Thu, May 25, 2023 at 10:15 AM Leon Wabeke <LWabeke@csir.co.za> wrote:

> We also used timed GPIO to generate certain strobes, however I found at
> some point that I could not generate more than about 6k strobes per secon=
d
> on an X310 (if I recall correctly) (that was with about UHD3.13 if I reca=
ll
> correctly, thus things might have changed) using the timed commands, or I
> ended up overflowing the command queues. Thus we decided in applications
> where we need more individual transmits per second (many small packets), =
we
> needed to switch to using the automatically generated strobe and handle t=
he
> misalignment that arose from that.
>
>
>
> *From: *Marcus D. Leech <patchvonbraun@gmail.com>
> *Date: *Thursday, 25 May 2023 at 15:50
> *To: *Rob Kossler <rkossler@nd.edu>, Leon Wabeke <LWabeke@csir.co.za>
> *Cc: *usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject: *Re: [USRP-users] Re: N320 - GPIO ATR output to TX output delay
>
> On 25/05/2023 09:41, Rob Kossler wrote:
>
> I may be off-base here, but I thought that the GPIO control occurred from
> the Radio block such that a DUC group delay would not be the place to loo=
k.
> I am wondering if the GPIO control does not use timed commands.  Instead =
of
> the automatic setting of the Tx GPIO, we have used custom GPIO with timed
> commands to pulse a GPIO bit as a trigger at the same time as we begin th=
e
> radios.  But, I have not checked the relative timing between my GPIO puls=
e
> and the RF because I was only interested in repeatability rather than
> knowing the precise relative timing.
>
> It was certainly the case in the past that the ATR logic was somewhat
> asynchronous to the state of the DUC.  This may well have
>   changed while I wasn't paying attention.   Since I'm not in R&D, and no=
t
> an FPGA guy, this could be the case.
>
> Regardless, my point about T/R control signals occurring
> not-precisely-aligned with when sinusoids are coming out the antenna
>   port remains.  It will always be tricky to get it "exact".
>
>
>
>
>
>
>
> On Thu, May 25, 2023 at 4:55=E2=80=AFAM Leon Wabeke <LWabeke@csir.co.za> =
wrote:
>
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
> _______________________________________________
>
> USRP-users mailing list -- usrp-users@lists.ettus.com
>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
--=20

Jonathon


*DISCLAIMER: Any attached Code is provided As Is. It has not been tested or
validated as a product, for use in a deployed application or system, or for
use in hazardous environments. You assume all risks for use of the Code.
Use of the Code is subject to terms of the licenses to the UHD or RFNoC
code with which the Code is used. Standard licenses to UHD and RFNoC can be
found at https://www.ettus.com/sdr-software/licenses/
<https://www.ettus.com/sdr-software/licenses/>.*

*NI will only perform services based on its understanding and condition
that the goods or services (i) are not for the use in the production or
development of any item produced, purchased, or ordered by any entity with
a footnote 1 designation in the license requirement column of Supplement
No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a
company is not a party to the transaction.  If our understanding is
incorrect, please notify us immediately because a specific authorization
may be required from the U.S. Commerce Department before the transaction
may proceed further.*

--000000000000cf453905fc9adae6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Leon,</div><div dir=3D"auto"><br></div><div dir=3D"aut=
o">You can increase the command FIFO depth to allow for queuing up many mor=
e timed commands. This does require building a new FPGA image though.</div>=
<div dir=3D"auto"><br></div><div dir=3D"auto">Jonathon</div><div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 25, =
2023 at 10:15 AM Leon Wabeke &lt;<a href=3D"mailto:LWabeke@csir.co.za">LWab=
eke@csir.co.za</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:sol=
id;padding-left:1ex;border-left-color:rgb(204,204,204)">





<div lang=3D"EN-ZA" link=3D"blue" vlink=3D"purple" style=3D"overflow-wrap: =
break-word;">
<div class=3D"m_5521141773528722366WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">We also used timed GP=
IO to generate certain strobes, however I found at some point that I could =
not generate more than about 6k strobes per second on an X310 (if I recall =
correctly)
 (that was with about UHD3.13 if I recall correctly, thus things might have=
 changed) using the timed commands, or I ended up overflowing the command q=
ueues. Thus we decided in applications where we need more individual transm=
its per second (many small packets),
 we needed to switch to using the automatically generated strobe and handle=
 the misalignment that arose from that.<u></u><u></u></span></p></div></div=
><div lang=3D"EN-ZA" link=3D"blue" vlink=3D"purple" style=3D"overflow-wrap:=
 break-word;"><div class=3D"m_5521141773528722366WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<div style=3D"border-width:1pt medium medium;border-style:solid none none;p=
adding:3pt 0cm 0cm;border-color:rgb(181,196,223) currentcolor currentcolor"=
>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><b><span style=3D"font-=
size:12pt;color:black">From:
</span></b><span style=3D"font-size:12pt;color:black">Marcus D. Leech &lt;<=
a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@g=
mail.com</a>&gt;<br>
<b>Date: </b>Thursday, 25 May 2023 at 15:50<br>
<b>To: </b>Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_bl=
ank">rkossler@nd.edu</a>&gt;, Leon Wabeke &lt;<a href=3D"mailto:LWabeke@csi=
r.co.za" target=3D"_blank">LWabeke@csir.co.za</a>&gt;<br>
<b>Cc: </b><a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject: </b>Re: [USRP-users] Re: N320 - GPIO ATR output to TX output de=
lay<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">On 25/05/2023 09:41, =
Rob Kossler wrote:<u></u><u></u></span></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">I may be off-base her=
e, but I thought that the GPIO control occurred from the Radio block such t=
hat a DUC group delay would not be the place to look. I am wondering if the=
 GPIO control does not use timed commands.=C2=A0
 Instead of the automatic setting of the Tx GPIO, we have used custom GPIO =
with timed commands=C2=A0to pulse a GPIO bit as a trigger at the same time =
as we begin the radios.=C2=A0 But, I have not checked the relative timing b=
etween my GPIO pulse and the RF because I
 was only interested in repeatability rather than knowing the precise relat=
ive timing.<u></u><u></u></span></p>
</div>
</div>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">It was certainly the =
case in the past that the ATR logic was somewhat asynchronous to the state =
of the DUC.=C2=A0 This may well have<br>
=C2=A0 changed while I wasn&#39;t paying attention.=C2=A0=C2=A0 Since I&#39=
;m not in R&amp;D, and not an FPGA guy, this could be the case.<br>
<br>
Regardless, my point about T/R control signals occurring not-precisely-alig=
ned with when sinusoids are coming out the antenna<br>
=C2=A0 port remains.=C2=A0 It will always be tricky to get it &quot;exact&q=
uot;.<br>
<br>
<br>
<br>
<u></u><u></u></span></p>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">On Thu, May 25, 2023 =
at 4:55=E2=80=AFAM Leon Wabeke &lt;<a href=3D"mailto:LWabeke@csir.co.za" ta=
rget=3D"_blank">LWabeke@csir.co.za</a>&gt; wrote:<u></u><u></u></span></p>
</div>
<blockquote style=3D"border-width:medium medium medium 1pt;border-style:non=
e none none solid;padding:0cm 0cm 0cm 6pt;margin-left:4.8pt;margin-right:0c=
m;border-color:currentcolor currentcolor currentcolor rgb(204,204,204)">
<div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Hi<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">We have also used a =
=E2=80=9Cmeasure in the lab approach=E2=80=9D, together with zero padding b=
efore and after and have at times seen these need to be adjusted after
 a UHD upgrade.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">We have also in some =
cases taken the GPIO strobe via another FPGA to adjust the strobe by adding=
 an extra configurable delays on rising and falling
 edges. It is just annoying to use an external function to do this and it w=
ould in my opinion be a very useful feature if such configurable delays wer=
e part of the basic built-in GPIO functionality at least in terms of the =
=E2=80=9Cautomatic strobe state machine=E2=80=9D,
 thus not requiring another FPGA or having to try to integrate custom logic=
 inside the UHD firmware, which might need to be reintegrated on subsequent=
 updates.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Thanks<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Leon
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0<u></u><u></u><=
/span></p>
<div style=3D"border-width:1pt medium medium;border-style:solid none none;p=
adding:3pt 0cm 0cm;border-color:rgb(181,196,223) currentcolor currentcolor"=
>
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
/span><span style=3D"font-size:11pt"><u></u><u></u></span></p>
</div>
<pre style=3D"font-family:monospace">[The e-mail server of the sender could=
 not be verified (SPF Record)]<u style=3D"font-family:monospace"></u><u sty=
le=3D"font-family:monospace"></u></pre>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">On 24/05/2023 16:22,
<a href=3D"mailto:mena@chaosinc.com" target=3D"_blank">mena@chaosinc.com</a=
> wrote:<u></u><u></u></span></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<p>Thanks. Two follow up questions:<u></u><u></u></p>
<ol start=3D"1" type=3D"1">
<li class=3D"MsoNormal">
<span style=3D"font-size:11pt">For a given sample rate, is there a way to d=
eterministically calculate the group delay?<u></u><u></u></span></li></ol>
</blockquote>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:11pt">Look at the filter code in the version of the FPGA image that you&#=
39;re using, determine which filter bits and<br>
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
<u></u><u></u></span></p>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<ol start=3D"1" type=3D"1">
<li class=3D"MsoNormal">
<span style=3D"font-size:11pt">Why do I not see the same delay at the back =
end of the transmission (i.e. after the GPIO goes low)?<u></u><u></u></span=
></li></ol>
</blockquote>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:11pt">My suspicion is that part of what you&#39;re seeing is an analog sw=
itching effect, and things like turn-on/turn-off<br>
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
<u></u><u></u></span></p>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:11pt"><u></u>=C2=A0<u></u></span></p>
<pre style=3D"font-family:monospace">______________________________________=
_________<u style=3D"font-family:monospace"></u><u style=3D"font-family:mon=
ospace"></u></pre>
<pre style=3D"font-family:monospace">USRP-users mailing list -- <a href=3D"=
mailto:usrp-users@lists.ettus.com" target=3D"_blank" style=3D"font-family:m=
onospace">usrp-users@lists.ettus.com</a><u style=3D"font-family:monospace">=
</u><u style=3D"font-family:monospace"></u></pre>
<pre style=3D"font-family:monospace">To unsubscribe send an email to <a hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank" style=3D"fo=
nt-family:monospace">usrp-users-leave@lists.ettus.com</a><u style=3D"font-f=
amily:monospace"></u><u style=3D"font-family:monospace"></u></pre>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0<u></u><u></u><=
/span></p>
</div>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">_____________________=
__________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><u></u><u></u></span></p>
</div>
</blockquote>
</div>
</div>
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
</blockquote></div></div><span class=3D"gmail_signature_prefix">-- </span><=
br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signa=
ture"><div dir=3D"ltr"><p style=3D"margin:0in;font-family:Calibri,sans-seri=
f"><font style=3D"background-color:rgb(255,255,255)" color=3D"#000000">Jona=
thon</font></p><p style=3D"margin:0in;font-family:Calibri,sans-serif"><br><=
/p><p><font size=3D"1" color=3D"#999999"><i><span style=3D"font-family:Aria=
l,sans-serif">DISCLAIMER: Any attached Code is provided As Is. It has not b=
een tested or validated as a product, for use in a deployed application or =
system, or for use in hazardous environments. You assume all risks for use =
of the Code. Use of the Code is subject to terms of the licenses to the UHD=
 or RFNoC code with which the Code is used. Standard licenses to UHD and RF=
NoC can be found at=C2=A0<a href=3D"https://www.ettus.com/sdr-software/lice=
nses/" target=3D"_blank">https://www.ettus.com/sdr-software/licenses/</a>.<=
/span></i><u></u><u></u></font></p><p><i><span style=3D"font-family:Arial,s=
ans-serif"><font size=3D"1" color=3D"#999999">NI will only perform services=
 based on its understanding and condition that the goods or services (i) ar=
e not for the use in the production or development of any item produced, pu=
rchased, or ordered by any entity with a footnote 1 designation in the lice=
nse requirement column of Supplement No. 4 to Part 744, U.S. Export Adminis=
tration Regulations and (ii) such a company is not a party to the transacti=
on.=C2=A0 If our understanding is incorrect, please notify us immediately b=
ecause a specific authorization may be required from the U.S. Commerce Depa=
rtment before the transaction may proceed further.</font></span></i></p></d=
iv></div>

--000000000000cf453905fc9adae6--

--===============6655420303586346728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6655420303586346728==--
