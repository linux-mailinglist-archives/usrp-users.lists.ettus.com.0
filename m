Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1A18624D6
	for <lists+usrp-users@lfdr.de>; Sat, 24 Feb 2024 13:10:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3DF27384FA0
	for <lists+usrp-users@lfdr.de>; Sat, 24 Feb 2024 07:10:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708776614; bh=xymWE6zYx13q1MbNkcFhb96Ip5loSGHBJygyYSxN69M=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=PHI8yYOSUBNtZcxB+em1UiRpOQloGzluu75lPBtUzhI6QFGv7XsHcIocjA8k03fNa
	 lhkoJ3kWKOFBDlEN14b0R7ptXraQbESgGAMzFkITWQJ3s+t8PI1vZXS+Cc4POmAfDt
	 /+y5K5XKNiLBv9VKZ5pn82Fy2zb6B6Kg0TF5rcfpC3Bv6c4aBRQAH/7ZOsHQ+tVxnr
	 1hzubnPcWkQNF0SJZjmAl5zR7eNlbMxy66AG9hvgvl4cBrGAGRJmLh7Hj5dA0qR2gf
	 YKImNCguHPbsFoTmOtPsfh3J+nbL3W0xTgV1fSPzE6nYmlzIRS7pEU8vLg+3+jXMoP
	 dmZgqIOih6IQA==
Received: from sonic314-13.consmr.mail.bf2.yahoo.com (sonic314-13.consmr.mail.bf2.yahoo.com [74.6.132.123])
	by mm2.emwd.com (Postfix) with ESMTPS id 48B2B384FA0
	for <usrp-users@lists.ettus.com>; Sat, 24 Feb 2024 07:09:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="B0gP2ziT";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1708776544; bh=EKJBem6fQMKquIx9HMsbn3VB5gEZUf8rnxOM4T9+6yY=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=B0gP2ziTlsGaX9F0CGUhx0uSVHvlsFYQ17/skC+TonSO8ueHnuvrYhH4l+lbmJSAGXazyJJBKCcK0+j5tKLHWdDeRzmx47jYgZEJv1B0uDts1SNSXFunH9tna71kduaCh3hhMC5cZZggEmCXGEY1VB6WX1EkADnztX4YDuPKSeEmo0Tsj2OYK1583CD3lEBsT6c6J9YC+A65fhmhRWsSludAZT3KAhOOvqLwNFR2/Yf4dhhyEsh2/l62zE94P0xi2jZKRFJOc6T91Vhv1QdOJN9p/ai81xtiPE5dfUHX5tlspZGP+3gjPEyqHr4HHdCWN1MrNffM54c+AOvJWEUG5w==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1708776544; bh=TGjFDxvDJ+Vk1zFxZdq3iwyUFxfJxiA+xTQyu5DkHFO=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=rx5P4Yd/vxM6Mm9ffbvKSlyijqyEF1TN4A1BtkUE5sPr5ISFN2xHlhU12pzOTbXI4vwvp9G85rOVIKC56xzjeGeCRn4cZClVChBJQ2M4jJiE/IxHDsdlNOfpzomy+jPi53o9ZkAOOb4ZGUua93eoYhF0pgYDItgKLhUPw/EnB3rFYxuOlifqxfKngv/wCKLlLPvXUJZ0LeNf4vYfCPdpdfkfoFCqVYisOHNzX0i3Sh2iWhkOWXHYnngKZ+3+rNRrhAkYyJCyX1hjNt1BLtmXjcWky1Za7OJtWZUQ5gN4zn6T2duFWuSnaYIH1R3F1OFXQUbr9RqjkSXPGKQV7qafJA==
X-YMail-OSG: FofuYisVM1k8oalvFaHQgxLsAPlW2mduZCEJihnjWzXnpfrjoEqo_Ph5Lk_Mozt
 I7PhAgFYqH0WZJhYeTHCHl1nhW0bmhSOuZPAFgBWlFwMNd.q4UiC5fXnMnExOgNTgfIGYqFcwRjI
 trmR7kWen4C_T2K5ODkP6vAVlEp_z0YM9ZklsaHMvkWo.phQ5gfOFZr7P5LA3ovaVM0eH1FvTgO4
 SThRfRc.FWGg5l5Q5SgIHvKvZRbP_diqXODxJDj2zRzqbK0UABgUYAtsoJrxOhAkf29PDtVqHETW
 5Twsmnnursv.sVdS..eUcBD4pqUjf3UAjU94JJ.BHvYZJ2lAPGHIRFlATCl0PnNmS_H1FW1Fjdcn
 Vu3vpnOOjon4pqoK6N4IDFeOXM24CeY6q8Sw9wTV12.J9zrWDaux1eVSgmY3RZMGlQAEe3SkF7dw
 SMrbkgi5x_CXr5TEuvX_tf8zbgrMQBofzmgW2b4AA_QzHy_mK0M.BUqP9XJhrgfc1wxo0LkP2Pdv
 FIfvNVLG4ApFN.Vm4ooScmI9OmXQvIrlQ6GYzYFbez8BV6TsS3MFrUaxSXlG1k6sP0bB9.06IsbM
 XEA.AgVx96hTUZpEB8XWq2Gf4c0sD2I.kqociwdW9MiHMatiglNf0DZCdUoO2ppN5PMvHSv1eJ_L
 vvoGLPHHbHh3yaiGkVajxcYBvch0gat7NZ9.YupwXlyCpngLTLFoi0rmLQyGwwvsFKYsf5mm7U1K
 b1qE3KccUvEAD_PDo7ipzf6zpTwwcro.yrAzg1ZIu5USOPJiNwJEZVAd4y96_5rCusNbRW.BI1Uh
 eycQQInI28.q6qjWjk4PUu4BQOYb_7cdZN6C1NWzUYjjhxraxDklWHt3eNlTXeY4OsFkyCzoZKn4
 p0bd5r8dbE0GQySAigdi5sa4bfuiVLUNh7TkippBb9sOb0kYaGgCtoysoBER7WeMIJW51U57tT4L
 AsOCuF_3VUTZFHkR5G7dnzBwxndelYPDSYRSpdPVhhiuFoFtH5EmpmI1qy05Rh4GWpgZU_p953P5
 UuhAF3uz41khePhpviLXx1aZwBxlrrUNJppeZbgXxBl8XniK01G57ddZtcsYbVP8cyJCuvqm45CO
 pjTFPD57Fg_olkPOmJuY_dGndkeSYCTYpGW7guRn8zxIK3VVTFrwPvwN9iS1zLalIWNqJug1lZFw
 vxA6mQJ7NRHP8e1UE1pfhPw0rhAug8GA11ANeMSDC.jtU6.YJI0cM5Y8vPH2Em5UpY28KZxj8E3s
 buVIuiqzAX4RYMGCKkwfcDBlXy2L2eZrnepgEfU6g06nYFBdecY4bDQngYu_GpvarsPHwbDBRaMq
 oe4nmZSL5rXVvyc7IbYG_crjkbURIzktQUaUTagd1ejiP6tPfta2wMQ8YAXPVenPL2DdjneMylPp
 8.BmCEz4maXoyU014Ln6FWCc6MK3QaqaYNYxkdopW_LbX1LqeIzRCWWSU0sEyLlplieuEBYTrSfg
 ZCW3HDgdB0Rt4Uw9nA1XDQzzuqwUfZ3J8kBgp3gNd.Bxy8ePN74kHL2ZuzkHVu3aDjiuQyhuu3oL
 8f9Luhrhee8jYgQ9g..np47MrRUYQxRsQnKxN96TWfNyuB.zFtcgq0GnklB8Ct6lQ.q9zLrne7i3
 YVZjVttNJEqoLRNGyb5Q6KlPGQMAtYsRr9JvOS.GYrCmgVUzKDOXLBi7euTV0EVsLOFp18Nmpo52
 A6aFi6CznWqwJ95FP2T.VnnyRJG.95XiYFJ55HK7MSJ05ZmfWwOlMXYvesmAPi.Zg__mddlgC_II
 0YUXpeuitVSLW03jGcZNCFefCkg1m6DCPx3y1K.JdtUBtWQ3JBAF8efPC_Fy3dlNabLtYQOJrF4N
 A1qeTQX..NX8hEKoBqz8I5ROs_bhTLof4T7TvRR9zSKGDNDeEPXwCZs7v5WBBcepPR17BfzAjkiB
 k8bcZvAcw3PQ95UkJrzOW_aVEQGoPSw8ih2vWr8z3J3gMgwRKurmupSaemESFVxy6peHbxrvFpPp
 TLp6h8J6j_F_WcD8EdfmCKvRyStW8YFE7BYYBGk94TYixUOQtq2fvOY.oVBfGh8NH5UaMl64DMEk
 6ypLOmx1XToMRTYTBdX1GefehbN1X93jd0XPFC9EsIpjFfo8cbN7y227SY1gvNHQd95XvTJUnIh1
 Yg9l6QfJKVHP1gWXm9HWgmofnerZeI1eIu4IlYdsUGYcGFNNDPDskhLVvVfkIOcPWFA9jaOWJkI0
 R6gSgNwOxCRPvHCPy6z28BYRbsyzQI3wqgLfPP71j4EHFt7l8bwq4iXr8
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: 7a9e8a22-831a-433b-b66f-d46ecf06528c
Received: from sonic.gate.mail.ne1.yahoo.com by sonic314.consmr.mail.bf2.yahoo.com with HTTP; Sat, 24 Feb 2024 12:09:04 +0000
Date: Sat, 24 Feb 2024 12:08:59 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Pedro Vieira (Gmail - Geral)" <pav.vieira@gmail.com>
Message-ID: <170328188.112406.1708776539657@mail.yahoo.com>
In-Reply-To: <!&!AAAAAAAAAAAuAAAAAAAAAAxXouO5T5tEtC+ch5uVV4UBACOpHMELik5ErQ+ioQtu/d8AAAAAA48AABAAAAAxIdtGbEIMTq2GLSCB/zTCAQAAAAA=@gmail.com>
References: <CAO_U4K7iMNWLhLRdWozsXxNQHd0xvp611f7LXQQhSe=-hz+ong@mail.gmail.com> <1464756341.27900.1708721099612@mail.yahoo.com> <!&!AAAAAAAAAAAuAAAAAAAAAAxXouO5T5tEtC+ch5uVV4UBACOpHMELik5ErQ+ioQtu/d8AAAAAA48AABAAAAAxIdtGbEIMTq2GLSCB/zTCAQAAAAA=@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
	boundary="----=_Part_112405_908495930.1708776539657"
X-Mailer: WebService/1.1.22103 YMailNorrin
Message-ID-Hash: FRI5KDWMJB74EBVTO4GVHUW33SE7OL6E
X-Message-ID-Hash: FRI5KDWMJB74EBVTO4GVHUW33SE7OL6E
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RES: OFDM signal transmission by x310 presents a peak
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FRI5KDWMJB74EBVTO4GVHUW33SE7OL6E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>

------=_Part_112405_908495930.1708776539657
Content-Type: multipart/alternative;
	boundary="----=_Part_112404_1026630439.1708776539608"

------=_Part_112404_1026630439.1708776539608
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Pedro,
Interestingly, just found Marcus answered a similar question a few years ba=
ck:=C2=A0https://dsp.stackexchange.com/questions/30562/large-spike-at-the-c=
enter-frequency-when-using-ettus-x310

Your calibration range is pretty small. I normally calibrate from 500M - 6G=
 such that it can support multiple applications. It will take some time, bu=
t calibrating 1G should be quick.
USRP may not be able to generate LO exactly at 3.5GHz. In such case, it wil=
l try to generate LO as close as possible.=C2=A0
Which UHD version are you using?=C2=A0
What are the master clock rate and sampling rate?
If calibration doesn't have any effect on your received signal, the USRP de=
vice may be faulty, or the analyzer is problematic.=C2=A0A few things you c=
an try:1. send 0s and you may see just a spike at the centre without signal=
;2. allocate your modulation symbols to one side, lower or upper, of the OF=
DM resource grid, the signal spectrum will go to one side and should not be=
 impacted by the central spike;3. Use USRP as receiver. Loop back Tx to Rx =
of the same USRP. Plot the spectrum of the received signal to see if there =
is central spike.=C2=A0
Kind regards,Hongwei


    On Saturday, 24 February 2024 at 00:59:34 GMT, Pedro Vieira (Gmail - Ge=
ral) <pav.vieira@gmail.com> wrote: =20
=20
=20
Thank you for the quick response.

 =C2=A0

Based on the information received, it was possible to begin to understand w=
hat was happening:

1) Proceed with self-calibration:=20

uhd_cal_tx_dc_offset --verbose --freq_start=3D3.45e+9 --freq_stop=3D3.55e+9=
 --freq_step=3D1e+6 --subdev=3DA:0

uhd_cal_tx_dc_offset --verbose --freq_start=3D3.45e+9 --freq_stop=3D3.55e+9=
 --freq_step=3D1e+6 --subdev=3DB:0=20

 =C2=A0

Calibration files were generated: tx_dc_F5B3E5.cal and tx_dc_F59F87.cal=20

 =C2=A0

2) In the uhd library I found the command uhd.types.TuneRequest. And in the=
 gnuradio library the command is the suggested example: uhd.tune_request().

However, I didn't notice any changes (see below)

 =C2=A0

Any ideas what I might be overlooking? Thank you in advance.

 =C2=A0

 =C2=A0

 =C2=A0



 =C2=A0

 =C2=A0

 =C2=A0

 =C2=A0

De: zhou <hwzhou@yahoo.com>=20
Enviada em: sexta-feira, 23 de fevereiro de 2024 17:45
Para: usrp-users@lists.ettus.com; Pedro Vieira <pav.vieira@gmail.com>
Assunto: Re: [USRP-users] OFDM signal transmission by x310 presents a peak

 =C2=A0

Hi Pedro,

 =C2=A0

It could be DC leakage. Try to run the calibration commands. For X310, you =
need to loopback connect Tx and Rx antennas with 30dB attenuators.

 =C2=A0

Regards,

Hongwei

 =C2=A0

 =C2=A0

 =C2=A0

On Friday, 23 February 2024 at 01:52:37 GMT, Pedro Vieira <pav.vieira@gmail=
.com> wrote:=20

 =C2=A0

 =C2=A0

An ofdm signal, which is generated in python, presents a peak in the centra=
l part of the spectrum.=C2=A0 What could it be?

This same behavior appears on USRP X310 and HackRFOne.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_112404_1026630439.1708776539608
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpcb0b04b1yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Pedro,</div><div dir=3D"l=
tr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">=
Interestingly, just found Marcus answered a similar question a few years ba=
ck:&nbsp;</div><div dir=3D"ltr" data-setdir=3D"false"><a href=3D"https://ds=
p.stackexchange.com/questions/30562/large-spike-at-the-center-frequency-whe=
n-using-ettus-x310" rel=3D"nofollow" target=3D"_blank" class=3D"">https://d=
sp.stackexchange.com/questions/30562/large-spike-at-the-center-frequency-wh=
en-using-ettus-x310</a><br></div><div><br></div><div dir=3D"ltr" data-setdi=
r=3D"false">Your calibration range is pretty small. I normally calibrate fr=
om 500M - 6G such that it can support multiple applications. It will take s=
ome time, but calibrating 1G should be quick.</div><div dir=3D"ltr" data-se=
tdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">USRP may no=
t be able to generate LO exactly at 3.5GHz. In such case, it will try to ge=
nerate LO as close as possible.&nbsp;</div><div dir=3D"ltr" data-setdir=3D"=
false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Which UHD version a=
re you using?&nbsp;<br></div><div dir=3D"ltr" data-setdir=3D"false">What ar=
e the master clock rate and sampling rate?</div><div dir=3D"ltr" data-setdi=
r=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">If calibration=
 doesn't have any effect on your received signal, the USRP device may be fa=
ulty, or the analyzer is problematic.</div><div dir=3D"ltr" data-setdir=3D"=
false">&nbsp;</div><div dir=3D"ltr" data-setdir=3D"false">A few things you =
can try:</div><div dir=3D"ltr" data-setdir=3D"false">1. send 0s and you may=
 see just a spike at the centre without signal;</div><div dir=3D"ltr" data-=
setdir=3D"false">2. allocate your modulation symbols to one side, lower or =
upper, of the OFDM resource grid, the signal spectrum will go to one side a=
nd should not be impacted by the central spike;</div><div dir=3D"ltr" data-=
setdir=3D"false">3. Use USRP as receiver. Loop back Tx to Rx of the same US=
RP. Plot the spectrum of the received signal to see if there is central spi=
ke.&nbsp;</div><div><br></div><div dir=3D"ltr" data-setdir=3D"false">Kind r=
egards,</div><div dir=3D"ltr" data-setdir=3D"false">Hongwei</div><div dir=
=3D"ltr" data-setdir=3D"false"><br></div><div><br></div><div><br></div>
       =20
        </div><div id=3D"ydp37551550yahoo_quoted_8897038592" class=3D"ydp37=
551550yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Saturday, 24 February 2024 at 00:59:34 GMT, Pedro Vi=
eira (Gmail - Geral) &lt;pav.vieira@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydp37551550yiv8148934235"><div><div class=
=3D"ydp37551550yiv8148934235WordSection1"><p class=3D"ydp37551550yiv8148934=
235MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sa=
ns-serif;">Thank you for the quick response.</span></p><p class=3D"ydp37551=
550yiv8148934235MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;f=
ont-family:sans-serif;"> &nbsp;</span></p><p class=3D"ydp37551550yiv8148934=
235MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sa=
ns-serif;">Based on the information received, it was possible to begin to u=
nderstand what was happening:</span></p><p class=3D"ydp37551550yiv814893423=
5MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sans=
-serif;">1) Proceed with self-calibration: </span></p><p class=3D"ydp375515=
50yiv8148934235MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:sans-serif;">uhd_cal_tx_dc_offset --verbose --freq_start=3D3.45e+=
9 --freq_stop=3D3.55e+9 --freq_step=3D1e+6 --subdev=3DA:0</span></p><p clas=
s=3D"ydp37551550yiv8148934235MsoNormal"><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:sans-serif;">uhd_cal_tx_dc_offset --verbose --freq_=
start=3D3.45e+9 --freq_stop=3D3.55e+9 --freq_step=3D1e+6 --subdev=3DB:0 </s=
pan></p><p class=3D"ydp37551550yiv8148934235MsoNormal"><span lang=3D"EN-US"=
 style=3D"font-size:10.0pt;font-family:sans-serif;"> &nbsp;</span></p><p cl=
ass=3D"ydp37551550yiv8148934235MsoNormal"><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:sans-serif;">Calibration files were generated: tx=
_dc_F5B3E5.cal and tx_dc_F59F87.cal </span></p><p class=3D"ydp37551550yiv81=
48934235MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-fami=
ly:sans-serif;"> &nbsp;</span></p><p class=3D"ydp37551550yiv8148934235MsoNo=
rmal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sans-serif=
;">2) In the uhd library I found the command uhd.types.TuneRequest. And in =
the gnuradio library the command is the suggested example: uhd.tune_request=
().</span></p><p class=3D"ydp37551550yiv8148934235MsoNormal"><span lang=3D"=
EN-US" style=3D"font-size:10.0pt;font-family:sans-serif;">However, I didn't=
 notice any changes (see below)</span></p><p class=3D"ydp37551550yiv8148934=
235MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sa=
ns-serif;"> &nbsp;</span></p><p class=3D"ydp37551550yiv8148934235MsoNormal"=
><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sans-serif;">An=
y ideas what I might be overlooking? Thank you in advance.</span></p><p cla=
ss=3D"ydp37551550yiv8148934235MsoNormal"><span lang=3D"EN-US" style=3D"font=
-size:10.0pt;font-family:sans-serif;"> &nbsp;</span></p><p class=3D"ydp3755=
1550yiv8148934235MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;=
font-family:sans-serif;"> &nbsp;</span></p><p class=3D"ydp37551550yiv814893=
4235MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:s=
ans-serif;"> &nbsp;</span></p><p class=3D"ydp37551550yiv8148934235MsoNormal=
"><img id=3D"ydp37551550yiv8148934235Imagem_x0020_1" style=3D"width: 774px;=
 max-width: 774px;" src=3D"cid:pxHp0D3SBPKJX0c4oP6F"><span lang=3D"EN-US" s=
tyle=3D"font-size:10.0pt;font-family:sans-serif;"></span></p><p class=3D"yd=
p37551550yiv8148934235MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10=
.0pt;font-family:sans-serif;"> &nbsp;</span></p><p class=3D"ydp37551550yiv8=
148934235MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-fam=
ily:sans-serif;"> &nbsp;</span></p><p class=3D"ydp37551550yiv8148934235MsoN=
ormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sans-seri=
f;"> &nbsp;</span></p><p class=3D"ydp37551550yiv8148934235MsoNormal"><span =
lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sans-serif;"> &nbsp;</=
span></p><div id=3D"ydp37551550yiv8148934235yqt04558" class=3D"ydp37551550y=
iv8148934235yqt9183106292"><div><div style=3D"border:none;border-top:solid =
#E1E1E1 1.0pt;padding:3.0pt 0cm 0cm 0cm;"><p class=3D"ydp37551550yiv8148934=
235MsoNormal"><span style=3D"font-size:10.0pt;font-family:sans-serif;">De: =
zhou &lt;hwzhou@yahoo.com&gt; <br clear=3D"none"></span><b>Enviada em:</b> =
sexta-feira, 23 de fevereiro de 2024 17:45<br clear=3D"none"><b>Para:</b> u=
srp-users@lists.ettus.com; Pedro Vieira &lt;pav.vieira@gmail.com&gt;<br cle=
ar=3D"none"><b>Assunto:</b> Re: [USRP-users] OFDM signal transmission by x3=
10 presents a peak</p></div></div><p class=3D"ydp37551550yiv8148934235MsoNo=
rmal"> &nbsp;</p><div><div><p class=3D"ydp37551550yiv8148934235MsoNormal"><=
span style=3D"font-size:10.0pt;font-family:sans-serif;">Hi Pedro,</span></p=
></div><div><p class=3D"ydp37551550yiv8148934235MsoNormal"><span style=3D"f=
ont-size:10.0pt;font-family:sans-serif;"> &nbsp;</span></p></div><div><p cl=
ass=3D"ydp37551550yiv8148934235MsoNormal"><span style=3D"font-size:10.0pt;f=
ont-family:sans-serif;">It could be DC leakage. Try to run the calibration =
commands. For X310, you need to loopback connect Tx and Rx antennas with 30=
dB attenuators.</span></p></div><div><p class=3D"ydp37551550yiv8148934235Ms=
oNormal"><span style=3D"font-size:10.0pt;font-family:sans-serif;"> &nbsp;</=
span></p></div><div><p class=3D"ydp37551550yiv8148934235MsoNormal"><span st=
yle=3D"font-size:10.0pt;font-family:sans-serif;">Regards,</span></p></div><=
div><p class=3D"ydp37551550yiv8148934235MsoNormal"><span style=3D"font-size=
:10.0pt;font-family:sans-serif;">Hongwei</span></p></div><div><p class=3D"y=
dp37551550yiv8148934235MsoNormal"><span style=3D"font-size:10.0pt;font-fami=
ly:sans-serif;"> &nbsp;</span></p></div><div><p class=3D"ydp37551550yiv8148=
934235MsoNormal"><span style=3D"font-size:10.0pt;font-family:sans-serif;"> =
&nbsp;</span></p></div><div><p class=3D"ydp37551550yiv8148934235MsoNormal">=
<span style=3D"font-size:10.0pt;font-family:sans-serif;"> &nbsp;</span></p>=
</div></div><div id=3D"ydp37551550yiv8148934235ydp78e768d5yahoo_quoted_9655=
145202"><div><div><p class=3D"ydp37551550yiv8148934235MsoNormal"><span styl=
e=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;">On Friday, 23 =
February 2024 at 01:52:37 GMT, Pedro Vieira &lt;<a shape=3D"rect" href=3D"m=
ailto:pav.vieira@gmail.com" rel=3D"nofollow" target=3D"_blank">pav.vieira@g=
mail.com</a>&gt; wrote: </span></p></div><div><p class=3D"ydp37551550yiv814=
8934235MsoNormal"><span style=3D"font-size:10.0pt;font-family:sans-serif;co=
lor:#26282A;"> &nbsp;</span></p></div><div><p class=3D"ydp37551550yiv814893=
4235MsoNormal"><span style=3D"font-size:10.0pt;font-family:sans-serif;color=
:#26282A;"> &nbsp;</span></p></div><div><div id=3D"ydp37551550yiv8148934235=
ydp78e768d5yiv5836597356"><div><p class=3D"ydp37551550yiv8148934235MsoNorma=
l"><span style=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;">A=
n ofdm signal, which is generated in python, presents a peak in the central=
 part of the spectrum.&nbsp; What could it be?</span></p><div><p class=3D"y=
dp37551550yiv8148934235MsoNormal"><span style=3D"font-size:10.0pt;font-fami=
ly:sans-serif;color:#26282A;">This same behavior appears on USRP X310 and H=
ackRFOne.</span></p></div></div></div><p class=3D"ydp37551550yiv8148934235M=
soNormal"><span style=3D"font-size:10.0pt;font-family:sans-serif;color:#262=
82A;">_______________________________________________<br clear=3D"none">USR=
P-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@lists.e=
ttus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a>=
<br clear=3D"none">To unsubscribe send an email to <a shape=3D"rect" href=
=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_bl=
ank">usrp-users-leave@lists.ettus.com</a></span></p></div></div></div></div=
></div></div></div><div class=3D"ydp37551550yqt9183106292" id=3D"ydp3755155=
0yqt95402">_______________________________________________<br clear=3D"none=
">USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@li=
sts.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.co=
m</a><br clear=3D"none">To unsubscribe send an email to <a shape=3D"rect" h=
ref=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D"=
_blank">usrp-users-leave@lists.ettus.com</a><br clear=3D"none"></div></div>
            </div>
        </div></body></html>
------=_Part_112404_1026630439.1708776539608--

------=_Part_112405_908495930.1708776539657
Content-Type: image/jpeg
Content-Transfer-Encoding: base64
Content-Disposition: inline; filename="image003.jpg"
Content-ID: <pxHp0D3SBPKJX0c4oP6F>

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwgHBgoICAgLCgoLDhgQDg0NDh0VFhEYIx8lJCIf
IiEmKzcvJik0KSEiMEExNDk7Pj4+JS5ESUM8SDc9Pjv/2wBDAQoLCw4NDhwQEBw7KCIoOzs7Ozs7
Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozv/wAARCAGzAwYDASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwDx9xhz
SU+TBYkdKZTKCk70U5RlhQBO3ywgVXNTzHCgVBQAlFFLQIK9E8Lf8i7bf8C/ma87r0Twr/yLtv8A
Vv5msK/wm1H4jTamVI1MrjOoKWiigQUwr6U+imBRn0yC6ZmZyjE56VF/YVr/AM92/KnancC2tpZT
Js2D8zXPx67dOflUn6muqEZNbmEpJM3hodoP+Wz/AJU4aNaA/wCuf8qoWmtzx8yWaSj0LEVdHiE9
tLh/77rVUm+pk5pdCQaRad5XP4U4aVZ92bFMHiKXtpsA/wCBU4eI7jtp9t+dV7F9yfa+Qv8AZNl/
fenf2TY5B3PTP+Ejuu1lbUv/AAkd7/z6Wo/Cn7F9w9r5Eo02x/26cNNsfRzUP/CRX/a3th/wGlHi
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
Nw2452+tFFFMR//Z

------=_Part_112405_908495930.1708776539657
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

------=_Part_112405_908495930.1708776539657--
