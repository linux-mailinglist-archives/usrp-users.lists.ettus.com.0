Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA55AF0B60
	for <lists+usrp-users@lfdr.de>; Wed,  2 Jul 2025 08:12:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C54A2385EFE
	for <lists+usrp-users@lfdr.de>; Wed,  2 Jul 2025 02:12:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1751436764; bh=yBYyHTrOR1YIzB6PWX7pyffxeoEVSI3sx5qb05S26aw=;
	h=Date:To:In-Reply-To:References:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=qDShMU8apN+hM8IoJ3oqc0imQNhyEBgshCcsPKeFU/nVGNoH3KTQ6kqDr6T0Urc56
	 ydkIQO9sYkBWK0r+Xl3+C1VbN5Zsq/h8yCXwQBXExBd43pSwxhtYlHEWFLPo4tsUQd
	 fWLdgZf6FViwfdNMFkIuMHBzADnagKjsm8qTPh4kj7R2Za4N2YOWYXhis2NxLLl1JP
	 dcOc5XyRdb0Zwbrp82efur5hJVllSc7X3lgQEb4XE1lZjWlJ0Y+lAWFngu5BEf53yT
	 Bxu735oLvsOd/zutHcaWvl9bu41C4hRuZ1Malwu8aB1baKe91/rMxKJoqF35cmYUAz
	 1AAavcuflCPzQ==
Received: from sonic309-22.consmr.mail.ne1.yahoo.com (sonic309-22.consmr.mail.ne1.yahoo.com [66.163.184.148])
	by mm2.emwd.com (Postfix) with ESMTPS id 01865385EDB
	for <usrp-users@lists.ettus.com>; Wed,  2 Jul 2025 02:12:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="gqXve7sw";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1751436745; bh=vczIlBSnuZ0z9yoc91DASPnW90melwTC+3IIW0M59rc=; h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To; b=gqXve7swA5Q9GS1mvAI0Qz14OL5drqVovuHBJyg6gmcJd70+BgfH0ygsIEJXxdGhos+1tYkqnFyemdl5OxzdnAGGMgJLtaJAI0xIEQcGjeXuhiGHWg+vehNy7cwHksZwSNMZ6+WzwxJyYdtIW8IhY6pUwtE2dig8cvwMiy9ziFT0miuPSJgh6LEDHHgR322+0/uwCG8qkIqUat9fqYNzwx2eZPlHP9+bPWVlh8lw0pQh0+MelVqrxEEBbgqwWtF+vK++iNQTKGFa5LM9+tUk9qf+c7RGHgB8DSL5+4qwC54xYL0XBjtHsNGr03FcSdP/mjWYnnMbmyGF3ee4qrB76g==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1751436745; bh=PZARbcxSn/UV8N/LzNYjI1lKogBqyv5CRG1CogtoXnl=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=THK44niKHLgUFMerqyL4v22pIrG+/mcDo230RHeWl4XQUUGIuV6+ME6cM/O1JbEeBeD3mVCSL4OhPrn1HclrqMsHiTj97TPy+Uxk2WLI+VUD5xAZ2MlT1dMJl8eqZIGJpKH1QrIdn2WNpkm372omn+giY3h0Sv0egLUCjMeXu1eqmDmd8V8rLVBRrm9KpQH+DjeoIp1yq3GF+WWHh2ZmRTykY2YddQ/N0zkNMffm5hYHpvT2VcJ4vT7AI0l8YrK4WPnockyFg4rrU549Jd0xe/KFTLNo1QjByzNtpdY2UYhiiZ4/i/vBhozHKfeG9x5Fz0EjV7BgqLo6iCW99NepdA==
X-YMail-OSG: iolLoiEVM1mZMB1X5T25HxZ2ysIhRGRDK3eFxu_v6s3IXRRmd4u2Hl8Vml4ZKVM
 ZZcJC.Y7NON.v0a_xv3KvO_R4Suo3ZvM1uG.miBE3_YKmaFnAVlYXqhNFEDIHU_JFDbQBMccYyoH
 _Dz2F1CP1zO_XVGyezbk2NB6ihr9wbhmR8B9W5QGVxeIMQZDBY8o_5CCehsAim7CiEdOCtyfH7Zt
 kWDxJCf_P3gm3iC8zhtzoohpmGmCjNaZgAfFpBNnSRCViqowyeqwNFHkB0t5X4mnGT_h.D59khDz
 USDbVWCKAE_jN33g5eebH7zykwe8Ty5Th6tgo4O0DzFvWf5FrePziLDfhkGOtLdOb36pWAUsIKjX
 fHeZsiBjqpiFrjbauiExgx.ln.8v.8w_72hJ9EmBlFwD8wzZs9RxPRFRhSVu2lOBjN5FfmaG9HMU
 tbviDVEocpSYqyQZmr3gC.jdPaKGuMVNLZKzRlW1A.yZ1An6.LJBcfE9auXijt4eZpnTUDxOmwAo
 P35hj1YF5_uNJYeUfEuF5jpye0XmvNJZzCd3QYJFQ4ELnOe3dyjFt4XsD79eJHpKq12HligkItwi
 rQGnFiMU_YrvU.dxZFIR9Von15Ecp5bZ.2MUNYIkLmJsTeKSqVCvSuxc8o2U5u2GcoywNoGDrNYg
 Y8stbduyCv3JO_prgO8aZ4bH.Wk6TmeUQ7ZF6phdeIm8P834m.xRxHIauWjvC.yistPyZpnSMKir
 aCRCJG_.1y35OO8RtPqVcZU27LEbiqwtSi0ft1E4lMi.39O7GRvsUUD5X8V_Pxz68ecfw_iKE3Xw
 Vpl2pJQ0kG.FDsgx3DXTchWOpVqYWYG02VOMp9HWDgVv1HjYx5KMF_Vs.yXAZOGZ1_g9gND7c3uT
 mBBm0ovOB8UweUI0bFnabwxI96ZBY1AhZwJf18PI6xNiouLbt3PCS0jMLoZiLXlPtTYkoS6eoXkl
 h3NyVToRQYDrjx3tMQCdxLTOk4MpJRWC4SmROIOudivN4bzfDk4eWSoUzFmam5fKcFtXwnphaqjn
 TjQXkC_D12wnjN99U5agBrlVsXWcMTCygJZ.IpGCL_GIxNY82WeZj9pljGLtQ7w4J0P6NPHOisb5
 ovAgUJw413Uhhr.de2ot9oQlafjSLdpER40imUvzIHhAbsDz.EBK1jSrmcO.y_epdk27tK.Yh_LP
 _wbXygPZaLMDXYh7NSEZLq6CaEnlQxKc51vKmR4TvKy_aZ7BIUhTusSBzNNTisqJTH0tjYg7G66x
 mYEXhh0Iaf4HINLZJCoiRymmOP2oqztfdPvATtbeX6rmj7.63RZGXTplFqMCbZ5101LzN9WHeHZW
 mVsZgeWLMCi4ITXFdRxdldgTvvn0Di4KiD2wukmP.r4H8qoonFkbt.JsfY5R0XCo3_pgjJN1jA8J
 R8w6xfd_rdD79rcNo12JsNbN2uVcqfwC9MmjWZVrrYabgoyU55nsqqgemIYhjtmGAYTKMPFzeV_M
 xrZwhXQgIOHDnQjIGSjVGjiM4JtPijrFQ4M29kgUMcIn3tw54_d85BfXMM.6FjgoJtRnZNQsDjur
 vigqDK5aCnQ8MUFeNnmgzEff8lbcoBBtGBFHgxN5MxoYlR9u9Jnar5p0vscTNQA8BPb72osYzPOw
 MXNuAylzFPwewEwviHPSzp6gNjhbpQpg8E_F3GSCIqnDE5gmCooS7rXfs17bC0cm0OqfLdg3d8gN
 nxw.98s1XVCI160CbGfIX1ONkD8c34uyNR9OX1RZw3otTNlhN.AnT5WoM6.ViUnyv.WZ4skO8Lzt
 xpfuQB2Lc1iVLqdlnByGixy7Vk9l1cNjlMtqXJE1tTqOLgYO.7Cmy.fNukdBQ.jEcEM802X3zAA5
 .z.lIlUlPN8QqYLP5yQi.o4SiAtulYMQS3_yP7n11tqH5G_XaFSJqCd7A_j3u9bjwSs9rNG294wp
 gzp9pkQwH7eyGm7gu3LJWwa6FsX.C_kMfenLgPpAv0y3n75sInzolTkzJ4OaRBupw3FkoDHWJqII
 CDYVK7FB44PvweLst9A_GohO.VxnFaxxQPAgeuk24qgeMIA1w6gWLXf1qPimYEaX11SNZxq3o16F
 .NT7mzkM.9vyUkPJZzj6zWnWwjmoFBgW51TpH.c7rI6iOluwXgYquJ_7zW_koVQ_CjK8gcYFOkDx
 5BpwtID9FDeAS0_PI2aexo22Iu1kP5..5C9jYTWUcXrvaRR5.9.pPeWOwdwRObGGfRZgazPk9hVy
 xBxggDgeTnfUOnMpvP32E
X-Sonic-MF: <pdaderko@yahoo.com>
X-Sonic-ID: 8a952e69-e117-429e-b4d7-7ff84946d5a1
Received: from sonic.gate.mail.ne1.yahoo.com by sonic309.consmr.mail.ne1.yahoo.com with HTTP; Wed, 2 Jul 2025 06:12:25 +0000
Date: Wed, 2 Jul 2025 06:12:23 +0000 (UTC)
To: Martin Braun <martin.braun@ettus.com>
Message-ID: <644677175.529791.1751436744007@mail.yahoo.com>
In-Reply-To: <CAFOi1A6YDvB7K0Tdi7AqWqskAu2JQ2kPErm-_hdyHOSCCYg1KQ@mail.gmail.com>
References: <305515330.462687.1751101146454.ref@mail.yahoo.com> <305515330.462687.1751101146454@mail.yahoo.com> <CAFOi1A6YDvB7K0Tdi7AqWqskAu2JQ2kPErm-_hdyHOSCCYg1KQ@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.24099 YMailNodin
Message-ID-Hash: DNJJLFOA2WAYB7BPUJQJKLWFTVG7WFEC
X-Message-ID-Hash: DNJJLFOA2WAYB7BPUJQJKLWFTVG7WFEC
X-MailFrom: pdaderko@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 1PPS timing depends on 1PPS/10 MHz phase - only 100ns resolution?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DNJJLFOA2WAYB7BPUJQJKLWFTVG7WFEC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Pat Daderko via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Pat Daderko <pdaderko@yahoo.com>
Content-Type: multipart/mixed; boundary="===============8178974455207532191=="

--===============8178974455207532191==
Content-Type: multipart/alternative;
	boundary="----=_Part_529790_400598158.1751436744005"

------=_Part_529790_400598158.1751436744005
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Martin,

Thanks for the reply - your comment:
>what the PPS does is tag one specific up-flank of the 10 MHz signal as beg=
inning-of-second flank
explained it perfectly. I was hoping it did, or there was a way to use the =
200 MHz clock to sample the 1PPS signal for time tagging or time measuremen=
t.

>I don't quite understand what you're trying to do
The GPSDO I'm using phase locks the 1PPS and 10 MHz, but at a random phase =
that I can't control, which can change every power cycle, or when the GPS t=
iming drifts too far. Rather than the 1PPS always being on the rising 10 MH=
z edge and driving that to 0 ns UTC, this GPSDO puts the 1PPS at 0 ns UTC (=
regardless of where that is relative to the 10 MHz) and then phase locks th=
e 10 MHz and 1PPS. So, one power cycle it can be at the rising edge, anothe=
r it can be at the falling edge, and another it can be somewhere in between=
.

Once locked, there are exactly 10M cycles between 1PPS pulses, and the phas=
e doesn't change. But for example if I capture a signal when the 1PPS is at=
 the 10 MHz rising edge, then power cycle the GPSDO and capture the exact s=
ame signal, but with the 1PPS at the 10 MHz falling edge, the correlation o=
f the two captured signals will appear to be 50 ns different simply due to =
the 10 MHz phase difference, even though the actual difference should have =
been 0 ns.

If the 1PPS and 10 MHz were always at the same phase, then this error would=
 calibrate out, but in my case it adds up to 100 ns of uncertainty to the m=
easurements. So I'll have to implement a way to determine the 1PPS/10 MHz p=
hase so I can calibrate out the error manually.

Thanks,
Pat
     On Tuesday, July 1, 2025 at 08:30:13 AM EDT, Martin Braun <martin.brau=
n@ettus.com> wrote: =20
=20
 Pat,
the USRP expects the PPS to stay consistent with respect to the 10 MHz sign=
al. Electrically speaking, what the PPS does is tag one specific up-flank o=
f the 10 MHz signal as beginning-of-second flank. The 200 MHz master clock =
rate is generated from the 10 MHz with a zero-delay mode of the correspondi=
ng PLL, so you get exactly 20 cycles of 200 MHz signal per cycle of 10 MHz =
signal. The PPS therefore also can accurately tag a 200 MHz flank, which is=
 how we get the accuracy of our timed commands. You can set all sorts of st=
uff at 5ns resolution this way, but with a timing accuracy that is better t=
han 5ns (it depends on the quality of your reference signal).
If you start to drift the PPS relative to the 10 MHz, then that will throw =
off the USRP, but one thing to keep in mind is that we increment the timing=
 counter with the 200 MHz clock, independent of the PPS signal. That means =
the USRP won't care that you're drifting the PPS relative to your 10 MHz un=
til you do something with the PPS signal. The get_time_last_pps() value is =
such a value. So if 10 MHz and PPS are drifting apart, eventually you'd see=
 a non-integer value there.
I'm not sure if this is helping answer your question... I don't quite under=
stand what you're trying to do.
--M
On Sat, Jun 28, 2025 at 10:59=E2=80=AFAM Pat Daderko via USRP-users <usrp-u=
sers@lists.ettus.com> wrote:

Hi,

I=E2=80=99m using an X310 w/ UBX160, referenced to an external 10 MHz and 1=
PPS from a good quality GPSDO (Jackson Labs Micro-JLT).=C2=A0 I=E2=80=99m u=
sing it to receive a signal from a signal generator with precise timing, an=
d trying to make precise timing measurements.=C2=A0 E.g. begin capturing ex=
actly on the 1PPS, correlate, and find the delay.

The problem I=E2=80=99m running into is that there seems to be an additiona=
l delay uncertainty depending where the 1PPS is relative to the 10 MHz phas=
e.=C2=A0 I.e. it seems that the 1PPS is registered on the 10 MHz edge, inst=
ead of the master clock (200 MHz) like I would have expected.=C2=A0 So, ins=
tead of 5ns uncertainty (would be OK), I=E2=80=99m seeing 100ns of uncertai=
nty.

The reason it=E2=80=99s particularly problematic is that (oddly) while this=
 GPSDO phase locks the 1PPS to the 10 MHz, every time it locks to GPS, the =
1PPS locks at a random phase (wherever is closest to 0 ns to UTC).=C2=A0 It=
 doesn=E2=80=99t lock (for example) the rising edge of the 10 MHz to the 1P=
PS.=C2=A0 And if it does a =E2=80=9Cjam sync=E2=80=9D from the OCXO driftin=
g outside the allowed window, it again moves the 1PPS, disregarding the pha=
se of the 10 MHz.=C2=A0 From the documentation, it sounds like its PPS reso=
lution is based on a 180 MHz clock (5.55 ns).

I=E2=80=99m using a modified rx_samples_to_file, which sets external refere=
nce, syncs to 1PPS, starts at a specified time, etc=E2=80=A6 which has 100%=
 consistent timing, until the 1PPS/10 MHz phase changes (GPSDO power cycle =
or jam sync).=C2=A0 The signal generator creates the sequence to correlate =
against precisely on the 1PPS with just a few ns of jitter from phase of th=
e reference.

I was able to synthetically create conditions to test this.=C2=A0 I connect=
ed the signal generator and X310 to the same 1PPS and 10 MHz reference, and=
 captured/correlated at 5ns steps.=C2=A0 There=E2=80=99s a small amount of =
variation due to the GPSDO 5.55ns step resolution and signal generator 3.12=
5ns resolution, but basically, the computed timing moved linearly with the =
shift in phase relative to the 10 MHz.

Images are attached.=C2=A0 On the oscilloscope plots I used infinite persis=
tence, triggered on the rising edge of the 1PPS.=C2=A0 The yellow trace is =
one of the chips of the sequence from the signal generator, which you can s=
ee has consistent timing vs. the 1PPS.=C2=A0 The blue is the 1PPS input, an=
d magenta is the 1PPS output from the X310.=C2=A0 The green trace is the 10=
 MHz (buffered square wave from the signal generator).=C2=A0 I noticed the =
X310 1PPS output also always has consistent timing, so it seems it=E2=80=99=
s not actually the 1PPS registered in the FPGA for timing.=C2=A0 The 2nd os=
cilloscope image shows when I had shifted the 1PPS 180 degrees out of phase=
 from the 10 MHz in the first image.=C2=A0 The correlation results for each=
 shift were plotted in Excel.

First of all, does anyone know if the 1PPS triggering/time tagging is suppo=
sed to only have 100ns resolution?=C2=A0 Anyone have any ideas on how to im=
prove this, or is there some other way of determining what the offset actua=
lly is (at say 5ns resolution) even if it everything still operates at 10 M=
Hz?

I=E2=80=99ve looked at the metadata from the stream, and it always returns =
the exact same timing values.=C2=A0 Calling get_time_last_pps() also always=
 returns the same value (e.g. 3.000000000 seconds)=E2=80=A6 I was hoping on=
e of these might say 2.999999990 or something, in which case I could infer =
that there was a 10ns shift.=C2=A0 Any other timing functions that=E2=80=99=
d measure with the 200 MHz master clock?=C2=A0 Or should I give up on this =
and figure out another solution?

Thanks,
Pat_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_529790_400598158.1751436744005
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div>                Martin,<br><br>Thanks for the reply - your comment:<br=
>&gt;what the PPS does is tag one specific up-flank of the 10 MHz signal as=
 beginning-of-second flank<br>explained it perfectly. I was hoping it did, =
or there was a way to use the 200 MHz clock to sample the 1PPS signal for t=
ime tagging or time measurement.<br><br>&gt;I don&#39;t quite understand wh=
at you&#39;re trying to do<br>The GPSDO I&#39;m using phase locks the 1PPS =
and 10 MHz, but at a random phase that I can&#39;t control, which can chang=
e every power cycle, or when the GPS timing drifts too far. Rather than the=
 1PPS always being on the rising 10 MHz edge and driving that to 0 ns UTC, =
this GPSDO puts the 1PPS at 0 ns UTC (regardless of where that is relative =
to the 10 MHz) and then phase locks the 10 MHz and 1PPS. So, one power cycl=
e it can be at the rising edge, another it can be at the falling edge, and =
another it can be somewhere in between.<br><br>Once locked, there are exact=
ly 10M cycles between 1PPS pulses, and the phase doesn&#39;t change. But fo=
r example if I capture a signal when the 1PPS is at the 10 MHz rising edge,=
 then power cycle the GPSDO and capture the exact same signal, but with the=
 1PPS at the 10 MHz falling edge, the correlation of the two captured signa=
ls will appear to be 50 ns different simply due to the 10 MHz phase differe=
nce, even though the actual difference should have been 0 ns.<br><br>If the=
 1PPS and 10 MHz were always at the same phase, then this error would calib=
rate out, but in my case it adds up to 100 ns of uncertainty to the measure=
ments. So I&#39;ll have to implement a way to determine the 1PPS/10 MHz pha=
se so I can calibrate out the error manually.<br><br>Thanks,<br>Pat<br>    =
        </div>            <div class=3D"yahoo_quoted" style=3D"margin:10px =
0px 0px 0.8ex;border-left:1px solid #ccc;padding-left:1ex;">               =
                                 <div style=3D"font-family:'Helvetica Neue'=
, Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">             =
                   <div id=3D"yiv1217538534yqt54506" class=3D"yiv1217538534=
yqt7428234808"><div id=3D"yiv1217538534yqt09440" class=3D"yiv1217538534yqt1=
847614009"><div>                        On Tuesday, July 1, 2025 at 08:30:1=
3 AM EDT, Martin Braun &lt;martin.braun@ettus.com&gt; wrote:               =
     </div>                    <div><br clear=3D"none"></div>              =
      <div><br clear=3D"none"></div>                                       =
         <div><div id=3D"yiv1217538534"><div><div dir=3D"ltr"><div>Pat,</di=
v><div><br clear=3D"none"></div><div>the USRP expects the PPS to stay consi=
stent with respect to the 10 MHz signal. Electrically speaking, what the PP=
S does is tag one specific up-flank of the 10 MHz signal as beginning-of-se=
cond flank. The 200 MHz master clock rate is generated from the 10 MHz with=
 a zero-delay mode of the corresponding PLL, so you get exactly 20 cycles o=
f 200 MHz signal per cycle of 10 MHz signal. The PPS therefore also can acc=
urately tag a 200 MHz flank, which is how we get the accuracy of our timed =
commands. You can set all sorts of stuff at 5ns resolution this way, but wi=
th a timing accuracy that is better than 5ns (it depends on the quality of =
your reference signal).</div><div><br clear=3D"none"></div><div>If you star=
t to drift the PPS relative to the 10 MHz, then that will throw off the USR=
P, but one thing to keep in mind is that we increment the timing counter wi=
th the 200 MHz clock, independent of the PPS signal. That means the USRP wo=
n't care that you're drifting the PPS relative to your 10 MHz until you do =
something with the PPS signal. The get_time_last_pps() value is such a valu=
e. So if 10 MHz and PPS are drifting apart, eventually you'd see a non-inte=
ger value there.</div><div><br clear=3D"none"></div><div>I'm not sure if th=
is is helping answer your question... I don't quite understand what you're =
trying to do.</div><div><br clear=3D"none"></div><div>--M</div></div><br cl=
ear=3D"none"><div class=3D"yiv1217538534gmail_quote yiv1217538534gmail_quot=
e_container"><div id=3D"yiv1217538534yqtfd44820" class=3D"yiv1217538534yqt5=
976280204"><div dir=3D"ltr" class=3D"yiv1217538534gmail_attr">On Sat, Jun 2=
8, 2025 at 10:59=E2=80=AFAM Pat Daderko via USRP-users &lt;<a rel=3D"nofoll=
ow noopener noreferrer" shape=3D"rect" ymailto=3D"mailto:usrp-users@lists.e=
ttus.com" target=3D"_blank" href=3D"mailto:usrp-users@lists.ettus.com">usrp=
-users@lists.ettus.com</a>&gt; wrote:<br clear=3D"none"></div><blockquote s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex;" class=3D"yiv1217538534gmail_quote">Hi,<br clear=3D"none"><b=
r clear=3D"none">I=E2=80=99m using an X310 w/ UBX160, referenced to an exte=
rnal 10 MHz and 1PPS from a good quality GPSDO (Jackson Labs Micro-JLT).&nb=
sp; I=E2=80=99m using it to receive a signal from a signal generator with p=
recise timing, and trying to make precise timing measurements.&nbsp; E.g. b=
egin capturing exactly on the 1PPS, correlate, and find the delay.<br clear=
=3D"none"><br clear=3D"none">The problem I=E2=80=99m running into is that t=
here seems to be an additional delay uncertainty depending where the 1PPS i=
s relative to the 10 MHz phase.&nbsp; I.e. it seems that the 1PPS is regist=
ered on the 10 MHz edge, instead of the master clock (200 MHz) like I would=
 have expected.&nbsp; So, instead of 5ns uncertainty (would be OK), I=E2=80=
=99m seeing 100ns of uncertainty.<br clear=3D"none"><br clear=3D"none">The =
reason it=E2=80=99s particularly problematic is that (oddly) while this GPS=
DO phase locks the 1PPS to the 10 MHz, every time it locks to GPS, the 1PPS=
 locks at a random phase (wherever is closest to 0 ns to UTC).&nbsp; It doe=
sn=E2=80=99t lock (for example) the rising edge of the 10 MHz to the 1PPS.&=
nbsp; And if it does a =E2=80=9Cjam sync=E2=80=9D from the OCXO drifting ou=
tside the allowed window, it again moves the 1PPS, disregarding the phase o=
f the 10 MHz.&nbsp; From the documentation, it sounds like its PPS resoluti=
on is based on a 180 MHz clock (5.55 ns).<br clear=3D"none"><br clear=3D"no=
ne">I=E2=80=99m using a modified rx_samples_to_file, which sets external re=
ference, syncs to 1PPS, starts at a specified time, etc=E2=80=A6 which has =
100% consistent timing, until the 1PPS/10 MHz phase changes (GPSDO power cy=
cle or jam sync).&nbsp; The signal generator creates the sequence to correl=
ate against precisely on the 1PPS with just a few ns of jitter from phase o=
f the reference.<br clear=3D"none"><br clear=3D"none">I was able to synthet=
ically create conditions to test this.&nbsp; I connected the signal generat=
or and X310 to the same 1PPS and 10 MHz reference, and captured/correlated =
at 5ns steps.&nbsp; There=E2=80=99s a small amount of variation due to the =
GPSDO 5.55ns step resolution and signal generator 3.125ns resolution, but b=
asically, the computed timing moved linearly with the shift in phase relati=
ve to the 10 MHz.<br clear=3D"none"><br clear=3D"none">Images are attached.=
&nbsp; On the oscilloscope plots I used infinite persistence, triggered on =
the rising edge of the 1PPS.&nbsp; The yellow trace is one of the chips of =
the sequence from the signal generator, which you can see has consistent ti=
ming vs. the 1PPS.&nbsp; The blue is the 1PPS input, and magenta is the 1PP=
S output from the X310.&nbsp; The green trace is the 10 MHz (buffered squar=
e wave from the signal generator).&nbsp; I noticed the X310 1PPS output als=
o always has consistent timing, so it seems it=E2=80=99s not actually the 1=
PPS registered in the FPGA for timing.&nbsp; The 2nd oscilloscope image sho=
ws when I had shifted the 1PPS 180 degrees out of phase from the 10 MHz in =
the first image.&nbsp; The correlation results for each shift were plotted =
in Excel.<br clear=3D"none"><br clear=3D"none">First of all, does anyone kn=
ow if the 1PPS triggering/time tagging is supposed to only have 100ns resol=
ution?&nbsp; Anyone have any ideas on how to improve this, or is there some=
 other way of determining what the offset actually is (at say 5ns resolutio=
n) even if it everything still operates at 10 MHz?<br clear=3D"none"><br cl=
ear=3D"none">I=E2=80=99ve looked at the metadata from the stream, and it al=
ways returns the exact same timing values.&nbsp; Calling get_time_last_pps(=
) also always returns the same value (e.g. 3.000000000 seconds)=E2=80=A6 I =
was hoping one of these might say 2.999999990 or something, in which case I=
 could infer that there was a 10ns shift.&nbsp; Any other timing functions =
that=E2=80=99d measure with the 200 MHz master clock?&nbsp; Or should I giv=
e up on this and figure out another solution?<br clear=3D"none"><br clear=
=3D"none">Thanks,<br clear=3D"none">Pat____________________________________=
___________<br clear=3D"none">USRP-users mailing list -- <a rel=3D"nofollow=
 noopener noreferrer" shape=3D"rect" ymailto=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank" href=3D"mailto:usrp-users@lists.ettus.com">usrp-u=
sers@lists.ettus.com</a><br clear=3D"none">To unsubscribe send an email to =
<a rel=3D"nofollow noopener noreferrer" shape=3D"rect" ymailto=3D"mailto:us=
rp-users-leave@lists.ettus.com" target=3D"_blank" href=3D"mailto:usrp-users=
-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br clear=3D"no=
ne"></blockquote></div></div><div id=3D"yiv1217538534yqtfd45542" class=3D"y=
iv1217538534yqt5976280204"></div></div></div>______________________________=
_________________<br clear=3D"none">USRP-users mailing list -- <a rel=3D"no=
follow noopener noreferrer" shape=3D"rect" ymailto=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank" href=3D"mailto:usrp-users@lists.ettus.com">=
usrp-users@lists.ettus.com</a><br clear=3D"none">To unsubscribe send an ema=
il to <a rel=3D"nofollow noopener noreferrer" shape=3D"rect" ymailto=3D"mai=
lto:usrp-users-leave@lists.ettus.com" target=3D"_blank" href=3D"mailto:usrp=
-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br clear=
=3D"none"></div></div></div>            </div>                             =
   </div>
------=_Part_529790_400598158.1751436744005--

--===============8178974455207532191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8178974455207532191==--
