Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E476021D9D3
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jul 2020 17:10:33 +0200 (CEST)
Received: from [::1] (port=37888 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jv069-0005pX-CE; Mon, 13 Jul 2020 11:10:29 -0400
Received: from mail-qt1-f171.google.com ([209.85.160.171]:46082)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <101science@gmail.com>)
 id 1jv064-0005dk-TW
 for usrp-users@lists.ettus.com; Mon, 13 Jul 2020 11:10:24 -0400
Received: by mail-qt1-f171.google.com with SMTP id i3so10137747qtq.13
 for <usrp-users@lists.ettus.com>; Mon, 13 Jul 2020 08:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=M4X6MI7kYe3d/UVbTKYLoCnjsr1Su9sAjKVtb6aUgB8=;
 b=sjJkMfCkq1nDGAKJtF9n4Rl9ehmWZBrZwkY5lfBT2F44y53JVw+rlw4dTu+mDWqOAg
 Y2Va5WLZJVcF4jBQWx2mWr/rprV59yMbAmEY9lkMYOSD4lj65rWHAh1ta8ptixABoXNw
 C3sIMJnVo2q0OtAtMXwEQJJtQQLYjNsiAiOQpPM7B7kIMrEPxsdvumuvSuyMeO+1Zi2i
 OQDJUbmDtvv4ajm1WQ3eRTM2c0HlP+7fANQcSMTXRyXBYSHAqnOrjCAz0+y3iv6MNCtG
 hhdd5KtS1HLNq7PGQExobEDhpJvz2yHD4eR1Jm2p7ugG7fSaiHrX9AmgZM22q67zNP68
 cbSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=M4X6MI7kYe3d/UVbTKYLoCnjsr1Su9sAjKVtb6aUgB8=;
 b=imEnoGoV80YYyNtZX/zoxKjdZ+Qpa6cr2dYUEAHmsrFDFlikHPYx0Pm7b7lM+yw1OW
 c/jgdxIaaXHcXmzsV1oABL0FL6jwcZVhSWdgfxoAuJP2SjiaMp6KmFxageiT3UaiXFGK
 x696sSk56Uzdksk8tfr9H3MuYC91vRYeyKSWjv2Yxxvj5wRqKQqKqQo8O2mQGJJvlCpp
 m0LWWJJ1RPH8ma/N+EnJczeDdUS/BSYxMdTeMTZAc88j4nX6Kq2ywAtOO3rGyKZ+Q7nx
 WmfCp/+IC7P2JEk6dUCPeVCDHomuZ+Cr2Pa6UiT6qnd9xDHTP5791UpHrkNsJI9gyVWw
 WFsQ==
X-Gm-Message-State: AOAM5332E3dS90CF6/MfyAkLjGDJoJLi6BbhLp+02/iuPhYlgcoNmw1n
 gXqBq7WdDOGH9d4IW/wSqD5qpkPWMP0=
X-Google-Smtp-Source: ABdhPJxXc3nn4x1s1Slxlb4b7/9QCk454uhfBRLfyhBA6xzPCZ/CviEuA5TUrHxUcPZVED5WPV2k6w==
X-Received: by 2002:ac8:bc2:: with SMTP id p2mr67802398qti.374.1594652983704; 
 Mon, 13 Jul 2020 08:09:43 -0700 (PDT)
Received: from [192.168.1.18] ([207.89.11.117])
 by smtp.gmail.com with ESMTPSA id e203sm18848539qkb.87.2020.07.13.08.09.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Jul 2020 08:09:43 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Mon, 13 Jul 2020 11:09:42 -0400
Message-Id: <E6D92856-E24E-4220-AC05-48987EBC8FFB@gmail.com>
References: <5F0C7664.30705@gmail.com>
Cc: usrp-users@lists.ettus.com
In-Reply-To: <5F0C7664.30705@gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
X-Mailer: iPhone Mail (17F80)
Subject: Re: [USRP-users] B210 GNU HF Spectrum Analyzer
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Larry Dodd via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Larry Dodd <101science@gmail.com>
Content-Type: multipart/mixed; boundary="===============5931559382116402605=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 


--===============5931559382116402605==
Content-Type: multipart/alternative; boundary=Apple-Mail-8CEB301D-1869-42B6-81C8-AACB96E84B33
Content-Transfer-Encoding: 7bit


--Apple-Mail-8CEB301D-1869-42B6-81C8-AACB96E84B33
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Marcus
Thanks for the link. Very interesting work. I have an AirspyR2 and SpyVerter=
 running on HF on a square 24 foot TFD RHC and LHC.=20

This is my station. http://101science.com/K4LED.html

Looking forward to the B210 and learning to use GNU Radio.=20
Larry, K4LED=20

> On Jul 13, 2020, at 10:57 AM, Marcus D. Leech <patchvonbraun@gmail.com> wr=
ote:
>=20
> =EF=BB=BFOn 07/13/2020 10:52 AM, Larry Dodd wrote:
>> Marcus
>> Fantastic. Which SDR do you use with GNU Radio?
>> Larry
> Many of them :)
>=20
> Depends on the application. For pulsar work and interferometry, I use the B=
210.   I run a small not-for-profit that does radio astonomy
>  research:
>=20
> http://www.ccera.ca
>=20
> And I also am on contract with Ettus for technical support work.
>=20
>=20
>>=20
>>>> On Jul 13, 2020, at 10:48 AM, Marcus D. Leech <patchvonbraun@gmail.com>=
 wrote:
>>>=20
>>> =EF=BB=BFOn 07/12/2020 11:38 PM, Larry Dodd wrote:
>>>> Marcus
>>>> Strictly receiving Jupiter storms and solar flares. As a Radio Jove mem=
ber for a couple years now we have recorded many Jupiter storms in the 15 to=
 30 MHz range. They are generally of three types. S bursts, L bursts and N e=
vents. We send the SDR data stream to Radio Sky Spectrograph software. The f=
iles are archived for study by NASA scientists and other researchers. Jupite=
rs moon Io plays an important roll in directing these storm impulses to eart=
h. We have special software that predicts the probability of receiving the s=
torms based on Earth, Jupiter, and Io orbital positions. I can send you samp=
le spectrograms if desired. We also study ionospheric events, galactic backg=
round noise, and some celestial scintillations. Yes RFI is a problem but the=
re are software mitigation techniques.
>>>> Larry, K4LED
>>> Thanks, Larry.
>>>=20
>>> Yes, I'm familiar with all of that.  I've been doing radio astronomy on a=
nd off since 1986, and started using SDR/Gnu Radio for it in 2004.
>>>=20
>>> I did some work for Natural Resources Canada on riometers a couple of ye=
ars ago, and have been involved in riometer development with
>>>  Gnu Radio since 2010 or so.
>>>=20
>>>=20
>>>>>> On Jul 12, 2020, at 11:16 PM, Marcus D. Leech <patchvonbraun@gmail.co=
m> wrote:
>>>>> =EF=BB=BFOn 07/12/2020 10:59 PM, Larry Dodd wrote:
>>>>>> Marcus
>>>>>> Ok Thanks for the information Marcus.  I have both a Spyverter and Ha=
m-it-up already. I may get an N210 eventually. The X series unfortunately ar=
e out of my funding range. I appreciate your expertise and advice. Thanks!
>>>>>> Larry, K4LED
>>>>>>=20
>>>>> Incidentally, what kind of radio astronomy are you planning to do at t=
hat frequency range?  It's mostly, as you might expect, "a mess", but
>>>>>  some discrete frequencies are available for things like riometry, and=
 looking at solar and jupiter radio bursts...
>>>>>=20
>>>>>=20
>>>>>>>> On Jul 12, 2020, at 10:08 PM, Marcus D. Leech <patchvonbraun@gmail.=
com> wrote:
>>>>>>> =EF=BB=BFOn 07/12/2020 09:42 PM, Larry Dodd wrote:
>>>>>>>> Marcus
>>>>>>>> Actually I don=E2=80=99t have the B210 or the LFRX yet as I just or=
dered them but that=E2=80=99s all I ordered. Do I need to cancel the order?
>>>>>>>> Larry, K4LED
>>>>>>> The LFRX will be of no use to you unless you have a platform that it=
 can plug in to.
>>>>>>>=20
>>>>>>> I'd keep the B210 part of the order, and order a HamItUp or SpyVerte=
r upconverter module, which up-converts HF frequencies to
>>>>>>>  a higher range that the B210 can tune to.
>>>>>>>=20
>>>>>>> HamiTup is sold by NooElec, and the SpyVerter is sold by https://air=
spy.com/spyverter-r2/
>>>>>>>=20
>>>>>>> Again, the LFRX is a "daughtercard", which is used in various USRPS t=
hat use the daughter-card architecture, like the USRP1, USRP2,
>>>>>>>  N2xx, X3xx, B100, and E100.
>>>>>>>=20
>>>>>>> But the B210 is an excellent machine, it's just that it doesn't tune=
 down to HF frequencies.  But with the addition of a (fairly cheap, IMHO)
>>>>>>>  up-converter, you can explore the territory you're interested in qu=
ite nicely.
>>>>>>>=20
>>>>>>> In terms of software, it really depends on what you want to *do*. If=
 you just want an integrated FFT display that can cover your 15MHz
>>>>>>>  of bandwidth, you can use the uhd_fft application, and have it samp=
le at 15Msps--this assumes your computer is able to "keep up"
>>>>>>>  at that rate--a good USB3 controller will be required, and a good m=
ulti-core machine to go with it.
>>>>>>>=20
>>>>>>>=20
>>>>>>>>>> On Jul 12, 2020, at 8:06 PM, Marcus D Leech <patchvonbraun@gmail.=
com> wrote:
>>>>>>>>> =EF=BB=BFThe B210 is self contained and tunes down to 50Mhz at the=
 lowest. The LFRX is for other types of USRPs. So first things first, what t=
ype of USRP do you have?
>>>>>>>>>=20
>>>>>>>>> Sent from my iPhone
>>>>>>>>>=20
>>>>>>>>>> On Jul 12, 2020, at 7:43 PM, Larry Dodd via USRP-users <usrp-user=
s@lists.ettus.com> wrote:
>>>>>>>>>>=20
>>>>>>>>>> =EF=BB=BFI need to set up a GNU HF spectrum analyzer with a water=
fall using my B210, LNA, and LFRX daughter board. The target would be a 15 t=
o 30 MHz (or wider) instantaneous spectrum for Radio Astronomy work. Rather t=
han re-creating something that already exists where could I get a similar GN=
U flowgraph? Since I am brand new to USRP any advice is very welcome.
>>>>>>>>>> Thanks,
>>>>>>>>>> Larry, K4LED
>>>>>>>>>> _______________________________________________
>>>>>>>>>> USRP-users mailing list
>>>>>>>>>> USRP-users@lists.ettus.com
>>>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m
>=20

--Apple-Mail-8CEB301D-1869-42B6-81C8-AACB96E84B33
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div dir=3D"ltr">Marcus</div><div dir=3D"lt=
r">Thanks for the link. Very interesting work. I have an AirspyR2 and SpyVer=
ter running on HF on a square 24 foot TFD RHC and LHC.&nbsp;</div><div dir=3D=
"ltr"><br></div><div dir=3D"ltr">This is my station.&nbsp;<a href=3D"http://=
101science.com/K4LED.html">http://101science.com/K4LED.html</a></div><div di=
r=3D"ltr"><br></div><div dir=3D"ltr">Looking forward to the B210 and learnin=
g to use GNU Radio.&nbsp;</div><div dir=3D"ltr">Larry, K4LED&nbsp;</div><div=
 dir=3D"ltr"><br><blockquote type=3D"cite">On Jul 13, 2020, at 10:57 AM, Mar=
cus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:<br><br></blockquote></di=
v><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<span>On 07/13/2020 10=
:52 AM, Larry Dodd wrote:</span><br><blockquote type=3D"cite"><span>Marcus</=
span><br></blockquote><blockquote type=3D"cite"><span>Fantastic. Which SDR d=
o you use with GNU Radio?</span><br></blockquote><blockquote type=3D"cite"><=
span>Larry</span><br></blockquote><span>Many of them :)</span><br><span></sp=
an><br><span>Depends on the application. For pulsar work and interferometry,=
 I use the B210. &nbsp;&nbsp;I run a small not-for-profit that does radio as=
tonomy</span><br><span> &nbsp;research:</span><br><span></span><br><span>htt=
p://www.ccera.ca</span><br><span></span><br><span>And I also am on contract w=
ith Ettus for technical support work.</span><br><span></span><br><span></spa=
n><br><blockquote type=3D"cite"><span></span><br></blockquote><blockquote ty=
pe=3D"cite"><blockquote type=3D"cite"><span>On Jul 13, 2020, at 10:48 AM, Ma=
rcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:</span><br></blockquote>=
</blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><span></spa=
n><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D=
"cite"><span>=EF=BB=BFOn 07/12/2020 11:38 PM, Larry Dodd wrote:</span><br></=
blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite">=
<blockquote type=3D"cite"><span>Marcus</span><br></blockquote></blockquote><=
/blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote t=
ype=3D"cite"><span>Strictly receiving Jupiter storms and solar flares. As a R=
adio Jove member for a couple years now we have recorded many Jupiter storms=
 in the 15 to 30 MHz range. They are generally of three types. S bursts, L b=
ursts and N events. We send the SDR data stream to Radio Sky Spectrograph so=
ftware. The files are archived for study by NASA scientists and other resear=
chers. Jupiters moon Io plays an important roll in directing these storm imp=
ulses to earth. We have special software that predicts the probability of re=
ceiving the storms based on Earth, Jupiter, and Io orbital positions. I can s=
end you sample spectrograms if desired. We also study ionospheric events, ga=
lactic background noise, and some celestial scintillations. Yes RFI is a pro=
blem but there are software mitigation techniques.</span><br></blockquote></=
blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite">=
<blockquote type=3D"cite"><span>Larry, K4LED</span><br></blockquote></blockq=
uote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><span>=
Thanks, Larry.</span><br></blockquote></blockquote><blockquote type=3D"cite"=
><blockquote type=3D"cite"><span></span><br></blockquote></blockquote><block=
quote type=3D"cite"><blockquote type=3D"cite"><span>Yes, I'm familiar with a=
ll of that. &nbsp;I've been doing radio astronomy on and off since 1986, and=
 started using SDR/Gnu Radio for it in 2004.</span><br></blockquote></blockq=
uote><blockquote type=3D"cite"><blockquote type=3D"cite"><span></span><br></=
blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite">=
<span>I did some work for Natural Resources Canada on riometers a couple of y=
ears ago, and have been involved in riometer development with</span><br></bl=
ockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><s=
pan> &nbsp;Gnu Radio since 2010 or so.</span><br></blockquote></blockquote><=
blockquote type=3D"cite"><blockquote type=3D"cite"><span></span><br></blockq=
uote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><span>=
</span><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote t=
ype=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote=
 type=3D"cite"><span>On Jul 12, 2020, at 11:16 PM, Marcus D. Leech &lt;patch=
vonbraun@gmail.com&gt; wrote:</span><br></blockquote></blockquote></blockquo=
te></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"c=
ite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>=EF=BB=BFOn 0=
7/12/2020 10:59 PM, Larry Dodd wrote:</span><br></blockquote></blockquote></=
blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite">=
<blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite=
"><span>Marcus</span><br></blockquote></blockquote></blockquote></blockquote=
></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquot=
e type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>Ok=
 Thanks for the information Marcus. &nbsp;I have both a Spyverter and Ham-it=
-up already. I may get an N210 eventually. The X series unfortunately are ou=
t of my funding range. I appreciate your expertise and advice. Thanks!</span=
><br></blockquote></blockquote></blockquote></blockquote></blockquote><block=
quote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blo=
ckquote type=3D"cite"><blockquote type=3D"cite"><span>Larry, K4LED</span><br=
></blockquote></blockquote></blockquote></blockquote></blockquote><blockquot=
e type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockqu=
ote type=3D"cite"><blockquote type=3D"cite"><span></span><br></blockquote></=
blockquote></blockquote></blockquote></blockquote><blockquote type=3D"cite">=
<blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite=
"><span>Incidentally, what kind of radio astronomy are you planning to do at=
 that frequency range? &nbsp;It's mostly, as you might expect, "a mess", but=
</span><br></blockquote></blockquote></blockquote></blockquote><blockquote t=
ype=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote=
 type=3D"cite"><span> &nbsp;some discrete frequencies are available for thin=
gs like riometry, and looking at solar and jupiter radio bursts...</span><br=
></blockquote></blockquote></blockquote></blockquote><blockquote type=3D"cit=
e"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"c=
ite"><span></span><br></blockquote></blockquote></blockquote></blockquote><b=
lockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">=
<blockquote type=3D"cite"><span></span><br></blockquote></blockquote></block=
quote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><bloc=
kquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><bl=
ockquote type=3D"cite"><blockquote type=3D"cite"><span>On Jul 12, 2020, at 1=
0:08 PM, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:</span><br></=
blockquote></blockquote></blockquote></blockquote></blockquote></blockquote>=
</blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote=
 type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquo=
te type=3D"cite"><span>=EF=BB=BFOn 07/12/2020 09:42 PM, Larry Dodd wrote:</s=
pan><br></blockquote></blockquote></blockquote></blockquote></blockquote></b=
lockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote ty=
pe=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote t=
ype=3D"cite"><blockquote type=3D"cite"><span>Marcus</span><br></blockquote><=
/blockquote></blockquote></blockquote></blockquote></blockquote></blockquote=
><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cit=
e"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"c=
ite"><blockquote type=3D"cite"><span>Actually I don=E2=80=99t have the B210 o=
r the LFRX yet as I just ordered them but that=E2=80=99s all I ordered. Do I=
 need to cancel the order?</span><br></blockquote></blockquote></blockquote>=
</blockquote></blockquote></blockquote></blockquote><blockquote type=3D"cite=
"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"ci=
te"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"=
cite"><span>Larry, K4LED</span><br></blockquote></blockquote></blockquote></=
blockquote></blockquote></blockquote></blockquote><blockquote type=3D"cite">=
<blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite=
"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>The LFRX will be=
 of no use to you unless you have a platform that it can plug in to.</span><=
br></blockquote></blockquote></blockquote></blockquote></blockquote></blockq=
uote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><span></span><br></blockquote></blockquote></blockquote></blockquote>=
</blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite=
"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"ci=
te"><blockquote type=3D"cite"><span>I'd keep the B210 part of the order, and=
 order a HamItUp or SpyVerter upconverter module, which up-converts HF frequ=
encies to</span><br></blockquote></blockquote></blockquote></blockquote></bl=
ockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><b=
lockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">=
<blockquote type=3D"cite"><span> &nbsp;a higher range that the B210 can tune=
 to.</span><br></blockquote></blockquote></blockquote></blockquote></blockqu=
ote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockq=
uote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><bloc=
kquote type=3D"cite"><span></span><br></blockquote></blockquote></blockquote=
></blockquote></blockquote></blockquote><blockquote type=3D"cite"><blockquot=
e type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockqu=
ote type=3D"cite"><blockquote type=3D"cite"><span>HamiTup is sold by NooElec=
, and the SpyVerter is sold by https://airspy.com/spyverter-r2/</span><br></=
blockquote></blockquote></blockquote></blockquote></blockquote></blockquote>=
<blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite=
"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"ci=
te"><span></span><br></blockquote></blockquote></blockquote></blockquote></b=
lockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><=
blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"=
><blockquote type=3D"cite"><span>Again, the LFRX is a "daughtercard", which i=
s used in various USRPS that use the daughter-card architecture, like the US=
RP1, USRP2,</span><br></blockquote></blockquote></blockquote></blockquote></=
blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite">=
<blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite=
"><blockquote type=3D"cite"><span> &nbsp;N2xx, X3xx, B100, and E100.</span><=
br></blockquote></blockquote></blockquote></blockquote></blockquote></blockq=
uote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><span></span><br></blockquote></blockquote></blockquote></blockquote>=
</blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite=
"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"ci=
te"><blockquote type=3D"cite"><span>But the B210 is an excellent machine, it=
's just that it doesn't tune down to HF frequencies. &nbsp;But with the addi=
tion of a (fairly cheap, IMHO)</span><br></blockquote></blockquote></blockqu=
ote></blockquote></blockquote></blockquote><blockquote type=3D"cite"><blockq=
uote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><bloc=
kquote type=3D"cite"><blockquote type=3D"cite"><span> &nbsp;up-converter, yo=
u can explore the territory you're interested in quite nicely.</span><br></b=
lockquote></blockquote></blockquote></blockquote></blockquote></blockquote><=
blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"=
><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cit=
e"><span></span><br></blockquote></blockquote></blockquote></blockquote></bl=
ockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><b=
lockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">=
<blockquote type=3D"cite"><span>In terms of software, it really depends on w=
hat you want to *do*. If you just want an integrated FFT display that can co=
ver your 15MHz</span><br></blockquote></blockquote></blockquote></blockquote=
></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cit=
e"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"c=
ite"><blockquote type=3D"cite"><span> &nbsp;of bandwidth, you can use the uh=
d_fft application, and have it sample at 15Msps--this assumes your computer i=
s able to "keep up"</span><br></blockquote></blockquote></blockquote></block=
quote></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D=
"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><blockquote type=3D"cite"><span> &nbsp;at that rate--a good USB3 cont=
roller will be required, and a good multi-core machine to go with it.</span>=
<br></blockquote></blockquote></blockquote></blockquote></blockquote></block=
quote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><span></span><br></blockquote></blockquote></blockquote></blockquote>=
</blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite=
"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"ci=
te"><blockquote type=3D"cite"><span></span><br></blockquote></blockquote></b=
lockquote></blockquote></blockquote></blockquote><blockquote type=3D"cite"><=
blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"=
><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cit=
e"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>On Jul 12, 2020=
, at 8:06 PM, Marcus D Leech &lt;patchvonbraun@gmail.com&gt; wrote:</span><b=
r></blockquote></blockquote></blockquote></blockquote></blockquote></blockqu=
ote></blockquote></blockquote></blockquote><blockquote type=3D"cite"><blockq=
uote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><bloc=
kquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><bl=
ockquote type=3D"cite"><span>=EF=BB=BFThe B210 is self contained and tunes d=
own to 50Mhz at the lowest. The LFRX is for other types of USRPs. So first t=
hings first, what type of USRP do you have?</span><br></blockquote></blockqu=
ote></blockquote></blockquote></blockquote></blockquote></blockquote></block=
quote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span></span><br>=
</blockquote></blockquote></blockquote></blockquote></blockquote></blockquot=
e></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"ci=
te"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"=
cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><span>Sent from my iPhone</span><br></blockquote></blockquote></block=
quote></blockquote></blockquote></blockquote></blockquote></blockquote><bloc=
kquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><bl=
ockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><=
blockquote type=3D"cite"><blockquote type=3D"cite"><span></span><br></blockq=
uote></blockquote></blockquote></blockquote></blockquote></blockquote></bloc=
kquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blo=
ckquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><b=
lockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">=
<blockquote type=3D"cite"><span>On Jul 12, 2020, at 7:43 PM, Larry Dodd via U=
SRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:</span><br></blockquote><=
/blockquote></blockquote></blockquote></blockquote></blockquote></blockquote=
></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cit=
e"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"c=
ite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><blockquote type=3D"cite"><span></span><br></blockquote></blockquote>=
</blockquote></blockquote></blockquote></blockquote></blockquote></blockquot=
e></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquo=
te type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockq=
uote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><bloc=
kquote type=3D"cite"><span>=EF=BB=BFI need to set up a GNU HF spectrum analy=
zer with a waterfall using my B210, LNA, and LFRX daughter board. The target=
 would be a 15 to 30 MHz (or wider) instantaneous spectrum for Radio Astrono=
my work. Rather than re-creating something that already exists where could I=
 get a similar GNU flowgraph? Since I am brand new to USRP any advice is ver=
y welcome.</span><br></blockquote></blockquote></blockquote></blockquote></b=
lockquote></blockquote></blockquote></blockquote></blockquote><blockquote ty=
pe=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote t=
ype=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote=
 type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>Tha=
nks,</span><br></blockquote></blockquote></blockquote></blockquote></blockqu=
ote></blockquote></blockquote></blockquote></blockquote><blockquote type=3D"=
cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>Larry, K4LE=
D</span><br></blockquote></blockquote></blockquote></blockquote></blockquote=
></blockquote></blockquote></blockquote></blockquote><blockquote type=3D"cit=
e"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"c=
ite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>___________=
____________________________________</span><br></blockquote></blockquote></b=
lockquote></blockquote></blockquote></blockquote></blockquote></blockquote><=
/blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote t=
ype=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote=
 type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquo=
te type=3D"cite"><span>USRP-users mailing list</span><br></blockquote></bloc=
kquote></blockquote></blockquote></blockquote></blockquote></blockquote></bl=
ockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><b=
lockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">=
<blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite=
"><blockquote type=3D"cite"><span>USRP-users@lists.ettus.com</span><br></blo=
ckquote></blockquote></blockquote></blockquote></blockquote></blockquote></b=
lockquote></blockquote></blockquote><blockquote type=3D"cite"><blockquote ty=
pe=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote t=
ype=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote=
 type=3D"cite"><blockquote type=3D"cite"><span>http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</span><br></blockquote></blockquote></=
blockquote></blockquote></blockquote></blockquote></blockquote></blockquote>=
</blockquote><span></span><br></div></blockquote></body></html>=

--Apple-Mail-8CEB301D-1869-42B6-81C8-AACB96E84B33--


--===============5931559382116402605==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5931559382116402605==--

