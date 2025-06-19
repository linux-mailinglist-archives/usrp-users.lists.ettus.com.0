Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E3CAE0279
	for <lists+usrp-users@lfdr.de>; Thu, 19 Jun 2025 12:16:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 05E07385F37
	for <lists+usrp-users@lfdr.de>; Thu, 19 Jun 2025 06:16:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750328179; bh=4ozYDQ9NuGXq5TCXYHKGUiaO7qme+xv6B5drpMdyvJo=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=enc8UkWwLwSCyv4g6E0PTY9PixMOkwtiIvmRJRVQ3878NjtM8nEmhsT9HsNUDmvvy
	 MHBySLkTTrUBSb/lYMxxs14hWGgttJ8iFJmsRwki634439vcVGumM0y3mCdlNxLU+9
	 H3AiurgqRj6dA+QAANB1v8cXTHZtLbZFFTKhUAIc0xnbafHO37bWnCE6OdQMryokAj
	 Ts4I2EXngfdbOPbI0a0bLmvgycxlOPmLxl6H124fY5xL2HVpuail0h/ry76UDc0PJv
	 d+CGsLbQXxEuHxM5lEPLy/8ldLjULL9k0EOSjL4HOTmLojA6cOgG+Tp6Acp53uKM88
	 VFLodc1klCaGg==
Received: from sonic311-13.consmr.mail.bf2.yahoo.com (sonic311-13.consmr.mail.bf2.yahoo.com [74.6.131.123])
	by mm2.emwd.com (Postfix) with ESMTPS id B3E833855D4
	for <usrp-users@lists.ettus.com>; Thu, 19 Jun 2025 06:15:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="sbtq1nqH";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1750328159; bh=mlwD4OwJsZrCvjXNvTNpPhZPlsGADa4tbxscFCZfjw8=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=sbtq1nqHB2fGq1kOrfvs1k2LQTuaOrdBPBuqWucCAFv02lHAYJ1L/GzBhNlB3bD0ayE1J9llMxVuM4LbN+zDwJICA/z3naavWfX0O+5v/2o9NYLVeTtetbkL7x0C5xCPucAB422KLc/gDjvmT46j3Sbwc97Zw5lV+ogoSDBZwEqLsBy8Ia0ULOROqq6CxrEKsxg7xcPTFEBL0XzLQbqMQmTOZViGHKFXyqwBoJt4A3hhwTlo/v7Eeh64xVSMfUg5xKtqzN1GLhV6y3qqHBktyc4wVlhOpkPWwhn6u2ZqYpCJ0Znl8tPkMq1HdfW+A4oTrLuvWz9k7PwCCFEZcef+tw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1750328159; bh=Ecc33LQHZFmNj14wYCNZDRDWuPadT537SxPB5+UEvcB=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=RLcUQS3ih6q5R8slRwUKCYXv3cG8Q98X/dlCUlrXWSIFkYCaRHQOt4dfgUpGmpXciGY3QMpzHHED0tzuq6v1o21nI2RzJko+dj+iymY8h0W0E7b/qsSetkP4s7tSbEi9JCYQHjBAX/QVYDGev8R5COmpQTPxJIJlj0cGUsxRB9wVbRRhTybSrz+7JoQJc/70dmk8Or468pxNVXxlRkmQ92NaaD1rKUeyKKl2k3iLLG1KlLD+f/5LKZUZo19DRj66/X5W4P29alfJFiIoTz6kdXkYSKfdfr1fbJoB8MTPZuVubtJv/3xq2o565R6MAjBrFJthvKsAGt7TMN4UYG42Mw==
X-YMail-OSG: xyeO91oVM1kZ5cHRxi0J8CuHrb_jPJqdyFHjljJvxAhuQBCuadlTeMOuPFh1Keh
 b8EzhevNqTqVYksK78eZoXOozbqhDES7PrXwjx9cra_wugKYXOJuW4kpQPMb4XSofD4BFjurG7fY
 7tsRVWMC0Q2gWCkZ6v7IBHy787GE35mTcD3vCMG1AnoauSrsCVTC9suClZmiMTsBfpKxrP_x_I94
 o4UD0CuK2TL2AFhn6He8wDMFUW5nQkjefYHJq_NCsn6Pal3VQpDTJdJgIIGOJr5DbLYfdXeZ9vvs
 dnfCrRIZHw1dQlZDLWOzGuQUtGeO.2QM4IWh3cqMEwvYZ8ivS.8M1NlfY5c3AiNvKLHf4uFPJFYV
 oe5YkmXTFDmsaHh5xlL0VEGgqfM_3JgbfFlGqamEYYUQNTPpoofG0ALqHhP6dV.sP2U6dr5FIG7e
 YNKwTpJdb.I5UrdZKnAMjoO1iI0pgyyv3FIQYldcuJuxZHTDxCiVp9P.32kAQI3BRH5itw.6x6.y
 koAtVCPR.HEIzk1Wo6iG_zr73ATYTrhYeKuKsbZHMxWfNLBJEI9fjoIGq0SzpCmHtISPgY7Jmtkh
 93dcUVVC2I6Eupx0nvMIumtg7Zv2pvCgCqj7dWu4yddo6RJnurJwbBJLyTeQbZuNCnz2HwqPOebh
 9qQ15SWyyOjfT8.4azYS37KTWNgJ3PDS6lyWDl09uEyev_ye.rZw5l.J_zaZ2cZqrOamhD2Gl.fX
 XI3ENIcCVlZkb6.4hBpX147Iv5B.m2VHMKK52I.8KtXvxR3Gnnje1vp00lkqqbZp5oszXXlbFN6D
 J6pCGLdj3AZE3IDhdyfW3MpMynYwUs47EJbapGyYbtLC.ivRbXs70C4xMloRr60jMUmw5YbRHdc2
 1jlfQT9hm.LOu5YLfyL1nLx.Eij3.epept6zE4TOTBDRaicfIhuLmFtkNPxxZdD7b12tiH99HLYw
 WCoQ5rtw6AUIHAKlwgOrkUm2B.TbPOTZKQxdm9AjfWo1Knku0FcEg2nhK0Uv39AwSe1SE8e55fKa
 0vinjZLxCBZirLlxnD_T5Os_S3.iTkFYFXTRJ7aE6OI9ImNMA6e3mSdqd5tArkATexwTFXR7y80F
 2zqr_DtrtDMZ2kXajz.Atal0K9QyfC5VY5Atn258qZ4UDl62RJyiYNC1XJMPYBTjD6HtejmRDWkF
 Olc722Fw9D3w_cr4wsQT990it3NlV42A1i2iqZDxWyCNd1pZKnYvlbVzoN.eNsbs.6XCoDY7Ncah
 unlqiAtEg_do_psb5OMEz2Kg3KCnkarBBO3OhuWc5XQwA8dtYg0GlFZovSi6eNRiFn3Tde6EPIcC
 hRYiIoqlncy8eppsm9v.lNPclhJCFhf2qS5EXaQGGiaMdYVEptvHL1pynqXYtba1a979zPiyw25X
 3QwryJ3vJE0Kqz67FSU7xCYkK1Mdgt.yA8GFUMB48vkjrS7mZh5qtp0b9SYZMBoGYc..MmeUpm8T
 D5FH4i3TW4FSJT.2PdtumifIIepOSQK0qGxztr84qomL2DGn80Ct5V7reGw5BPHV10D3ea3cRiQy
 y3A.tL.nvnpzetTKpl3nLpjg0Bg6zt_R8pSloXpORzrt65fGFappPqVmnWYH20CPwN9dE4CNzbqb
 3Fm264yD_OybuApJiRGTCB2Uhtk0smfhcZXFfpkcnqNF0SmKN4SCEiuyY5VmPjf4btXFp0L7FciW
 1pNd4EMO6Yexkqnv3Cc2m1mk5uP784I3xtKGVkOI.A7ODfcYUllxeOVt5vc6kk33LVWBkP_BHg3c
 ixpuxxHERGGLyAKTpEM1UnocaN7TMRSuKZ3sFAQvKLXDD5PhqHVVGMrUBctVMt6GAIQPzUJjnF4L
 5QmE4X5wivuopm7b6WPDdb7KMxZXQGxFfvRd01_XgCZdZWukYEfMLjhCCoJ4JfwjTpt6dLjDf98i
 dTf6oOVrRqCdHZIhKOVfgygMFFmAU9lbexS7Q1cTrUzVYcgbJbJzvDUztWz3ejFYuSeXueVQo2sd
 UsEJ2nWdwJEj6ZTzFynAOTYsnb9dcbSsgdmi51_J1bPcl89NDplmZuj95Or6jNA1NME1HmM_z8Gf
 GRDlRV7BrHRUGcaGWJn.CxQ6iJiHqtRj3dDtntyRDjPIbZgCHClDt2EnHW2FT4MRIi0G5tsCrtlE
 m4HP23sadEdds7i3rG_JK1HCrrMLP2K0idk2SN9zfflMZErfqbWPSvfAFMkEQyq6jLlZGSXMt2O5
 TfEZK.TCGxEfM6vVGpDcPbxtkOA--
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: a317a1e7-a099-4279-abe7-bce210f6ddbd
Received: from sonic.gate.mail.ne1.yahoo.com by sonic311.consmr.mail.bf2.yahoo.com with HTTP; Thu, 19 Jun 2025 10:15:59 +0000
Date: Thu, 19 Jun 2025 10:15:57 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"niels.steffen.garibaldi@emerson.com" <niels.steffen.garibaldi@emerson.com>
Message-ID: <924138156.145348.1750328157594@mail.yahoo.com>
In-Reply-To: <dC7lvBbZDtR0JMSFyDVvrCdbj0Ki1p95dnOSsPfY0c@lists.ettus.com>
References: <dC7lvBbZDtR0JMSFyDVvrCdbj0Ki1p95dnOSsPfY0c@lists.ettus.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.24027 YMailNorrin
Message-ID-Hash: WFDVBG7XW23GNIH2IQ55M22ZWB6SRKW6
X-Message-ID-Hash: WFDVBG7XW23GNIH2IQ55M22ZWB6SRKW6
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: ADC Self Cal in X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WFDVBG7XW23GNIH2IQ55M22ZWB6SRKW6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============8331057789902564179=="

--===============8331057789902564179==
Content-Type: multipart/alternative;
	boundary="----=_Part_145347_1514457607.1750328157593"

------=_Part_145347_1514457607.1750328157593
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hello Niels,
Thanks a lot for your reply. I just tried your suggestion, and it worked as=
 mint!=C2=A0In the 1st run, ADC self cal was run once;in the 2nd and the fo=
llowing runs, self cal was skipped completely! superb! that is what I want =
:)
Really appreciate your help.
Kind regards,H

    On Thursday 19 June 2025 at 10:23:39 BST, niels.steffen.garibaldi--- vi=
a USRP-users <usrp-users@lists.ettus.com> wrote: =20
=20
=20
Hi,

How are you setting your clock/time source?

If you are setting the clock/time source using the `set_clock_source()` or =
`set_time_source()` function to set your external sources, you might want t=
o try setting these via the device arguments when opening your USRP session=
 (MultiUSRP or RFNoC).

For example use something like this : =E2=80=9Caddr=3D<IP of your x410>,clo=
ck_source=3Dexternal,time_source=3Dexternal=E2=80=9C

The reason for this is, that if you open a session without giving these dev=
ice arguments, the session will be established with default arguments, whic=
h for the clock and time source are `internal`(unless otherwise specified i=
n the mpm.conf).

Then, once you change the clock settings to external after the session alre=
ady has been established, it will reinitialize with the new settings. This =
could potentially be where the two calibrations you are seeing are coming f=
rom.

Regards,

Niels.



zhou wrote:


Hello Community,I have two X410s with UHD 4.5. They are sync with an OctoCl=
ock, so I am using external clock and time.The problem is that whenever I s=
tart a test, X410s do ADC self calibration twice, in the 1st time, they cal=
ibrate with internal clock, and the 2nd time is due to my configuration of =
external clock. Self cal takes time.I need to run the test many times for d=
ebug, which means that this self cal is run many times, but all hardware co=
nnections and software configurations are not changed in test, so I hope th=
e ADC calibration can be done only once and the cal results can be reused (=
e.g., save in a file and X410s just load them at the beginning of each test=
). This will save a lot of cal time and this is the best solution.If not th=
e best, I can accept a suboptimal solution - calibrate once rather than twi=
ce. This means that I need to configure external clock in make command. Is =
it possible to configure make for this purpose?Any suggestion will be appre=
ciated.Kind regards,H.




_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_145347_1514457607.1750328157593
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpeb0b0b42yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hello Niels,</div><div dir=
=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"fa=
lse">Thanks a lot for your reply. I just tried your suggestion, and it work=
ed as mint!&nbsp;</div><div dir=3D"ltr" data-setdir=3D"false">In the 1st ru=
n, ADC self cal was run once;</div><div dir=3D"ltr" data-setdir=3D"false">i=
n the 2nd and the following runs, self cal was skipped completely! superb! =
that is what I want :)</div><div dir=3D"ltr" data-setdir=3D"false"><br></di=
v><div dir=3D"ltr" data-setdir=3D"false">Really appreciate your help.</div>=
<div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setd=
ir=3D"false">Kind regards,</div><div dir=3D"ltr" data-setdir=3D"false">H</d=
iv><div dir=3D"ltr" data-setdir=3D"false"><br></div><div><br></div>
       =20
        </div><div id=3D"ydpd60b9594yahoo_quoted_0378632360" class=3D"ydpd6=
0b9594yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                        On Thursday 19 June 2025 at 10:23:39 BST, niels.ste=
ffen.garibaldi--- via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:
                    </div>
                    <div><br></div>
                    <div><br></div>
               =20
               =20
                <div><div id=3D"ydpd60b9594yiv0726216167"><p>Hi,<br><br>How=
 are you setting your clock/time source?<br><br>If you are setting the cloc=
k/time source using the `set_clock_source()` or `set_time_source()` functio=
n to set your external sources, you might want to try setting these via the=
 <a href=3D"https://uhd.readthedocs.io/en/latest/page_usrp_x4xx.html#x4xx_u=
sage_args" title=3D"" rel=3D"nofollow" target=3D"_blank">device arguments</=
a> when opening your USRP session (MultiUSRP or RFNoC).<br><br>For example =
use something like this : =E2=80=9Caddr=3D&lt;IP of your x410&gt;,clock_sou=
rce=3Dexternal,time_source=3Dexternal=E2=80=9C<br><br>The reason for this i=
s, that if you open a session without giving these device arguments, the se=
ssion will be established with default arguments, which for the clock and t=
ime source are `internal`(unless otherwise specified in the mpm.conf).</p><=
p>Then, once you change the clock settings to external after the session al=
ready has been established, it will reinitialize with the new settings. Thi=
s could potentially be where the two calibrations you are seeing are coming=
 from.<br><br>Regards,<br><br>Niels.<br><br></p><div class=3D"ydpd60b9594yi=
v0726216167"><hr></div><p>zhou wrote:</p><blockquote><p>Hello Community,
I have two X410s with UHD 4.5. They are sync with an OctoClock, so I am usi=
ng external clock and time.The problem is that whenever I start a test, X41=
0s do ADC self calibration twice, in the 1st time, they calibrate with inte=
rnal clock, and the 2nd time is due to my configuration of external clock. =
Self cal takes time.
I need to run the test many times for debug, which means that this self cal=
 is run many times, but all hardware connections and software configuration=
s are not changed in test, so I hope the ADC calibration can be done only o=
nce and the cal results can be reused (e.g., save in a file and X410s just =
load them at the beginning of each test). This will save a lot of cal time =
and this is the best solution.
If not the best, I can accept a suboptimal solution - calibrate once rather=
 than twice. This means that I need to configure external clock in make com=
mand. Is it possible to configure make for this purpose?
Any suggestion will be appreciated.
Kind regards,H.</p></blockquote><p><br></p>
</div>_______________________________________________<br>USRP-users mailing=
 list -- <a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollow" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send an ema=
il to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" =
target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br></div>
            </div>
        </div></body></html>
------=_Part_145347_1514457607.1750328157593--

--===============8331057789902564179==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8331057789902564179==--
