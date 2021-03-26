Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B519B34B0EB
	for <lists+usrp-users@lfdr.de>; Fri, 26 Mar 2021 21:54:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AEADE383E8F
	for <lists+usrp-users@lfdr.de>; Fri, 26 Mar 2021 16:54:52 -0400 (EDT)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id E21E6383E16
	for <USRP-users@lists.ettus.com>; Fri, 26 Mar 2021 16:54:05 -0400 (EDT)
Received: by mail-qt1-f175.google.com with SMTP id 1so4576066qtb.0
        for <USRP-users@lists.ettus.com>; Fri, 26 Mar 2021 13:54:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=J0InLWeabzxcxiO6psdXhVDL0j78iSRD1PZ5mj/1QWQ=;
        b=O4X5LoCwR1feqU+debjjtH1GDAqfMXgK3/aiXWJkg83UKmH77HtFmePT0Mi8Vrk9Z2
         mSV6+c4kcYYWY+IVfTkEGGTw/iqhYIa3ftFdVJJjK7S9jqNBoUvuLmffFxY3AMzFuqlX
         ODX92AaeLZZNiPpDEhryDFXHCnQNkYzSGMPCXhxXWqeK86hW7DNMTeFasM3hGhPQQ2YH
         U673F3eayG/j0RfHYGgafihOs6c6hzh8iGGnU5c6skXRhXuZZNf9q8ZpHuqJBSHYtwcg
         cs3RXDkFSfX9/EJPy/4Br4EVHswft4Ta2nksK+rtBLdDFP2pFMrHCgYKNqFhBATpzD/G
         RK9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=J0InLWeabzxcxiO6psdXhVDL0j78iSRD1PZ5mj/1QWQ=;
        b=Tg7XtQ74gM4aHVF+9awWqQHmzpKoHNOKmDOveSIXYqFneleCUCJPX2El1LR+YMPxzk
         R5BrZEf1evRf+kp1QYXBXWEd5+8O8ajknYOUIKK+YduGE8AFuqHHKFtOyvixLu0v0nZE
         0wMf8ykAjivOduvponuaFPYvD8jht97PbDsnXKJOgRnWAsFvmn0yXYH//rE9+2FRr1g4
         BI2LPV8IVe2C5LR4GHA/L13ZjA/sh+/TApCrCQs7Ui+lPBqolvw/FLM5/N54zyzfN2VG
         ZIv3d0irXOs4bJkTkJMgACaSGIdzs389QVe8c7am2xR6vfnxDWEZPTU6GNrRD8X/713+
         WUxA==
X-Gm-Message-State: AOAM531yeXa3tdCo9M6YIkkXpi0m9ZUGgNwnz39gyiz3gLKg+CbV0aQC
	2+1xJREQoirqv+dU/E2XYcOk6pFlM/Q=
X-Google-Smtp-Source: ABdhPJyAPfjSFPew3c1MNumyRm2Q0tsB7ckmLP6sYKmB6zB1FJ3Yb1B5pzZ8PFxFElIFKaHJsNQ+dg==
X-Received: by 2002:ac8:4718:: with SMTP id f24mr13990429qtp.270.1616792045281;
        Fri, 26 Mar 2021 13:54:05 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id k28sm7652506qki.101.2021.03.26.13.54.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Mar 2021 13:54:05 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 26 Mar 2021 16:54:04 -0400
Message-Id: <176D7790-E6DC-4235-938D-C11B2CF2C3D2@gmail.com>
References: <MN2PR02MB5984AB90949D61895C7BBA54E3619@MN2PR02MB5984.namprd02.prod.outlook.com>
In-Reply-To: <MN2PR02MB5984AB90949D61895C7BBA54E3619@MN2PR02MB5984.namprd02.prod.outlook.com>
To: "Beaudoin, Christopher J" <Christopher_Beaudoin@uml.edu>
X-Mailer: iPhone Mail (18D61)
Message-ID-Hash: G2ICMEAXC75V4X6B766WLZIYCALBDSSJ
X-Message-ID-Hash: G2ICMEAXC75V4X6B766WLZIYCALBDSSJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 EVM
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G2ICMEAXC75V4X6B766WLZIYCALBDSSJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4939948913351077321=="


--===============4939948913351077321==
Content-Type: multipart/alternative; boundary=Apple-Mail-01BB3083-C0F4-4431-B5B3-2B344D96350E
Content-Transfer-Encoding: 7bit


--Apple-Mail-01BB3083-C0F4-4431-B5B3-2B344D96350E
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I would suggest going back to basics. What does the RX spectrum look like co=
mpared to the TX spectrum? Are you doing clock recovery on the RX side, or a=
ssuming both sides are synchronized?



Sent from my iPhone

> On Mar 26, 2021, at 4:38 PM, Beaudoin, Christopher J <Christopher_Beaudoin=
@uml.edu> wrote:
>=20
> =EF=BB=BF
> Hello Marcus,
>=20
>                     Sorry for the terse nature of my previous message. To b=
e more specific, the precise symbol rate is 4.608 MHz so the actual sample r=
ate is 27.648 MHz; the USRP sets the master clock rate to 27.648 MHz when I c=
ommand the sample rate. I'm not seeing any overruns at this rate and we spen=
t a fair bit of time fine tuning the host machine to sustain this data rate.=
 It will sustain this rate for as long at 10 minutes without reporting any "=
O" or "U" errors. I also embed the time stamps into the recorded data file a=
nd post recording analysis does not indicate any time disruptions.
>=20
> I'm certain that the mod signal (from my vector signal analyzer) has very l=
ow EVM (~1%) as confirmed with my Rhode Schwartz signal analyzer. I've also c=
onsidered saturation of amplifier stages within the AD9361. With 55 dB of ga=
in, I obtain a rms ADC 16-bit state count of ~15000 for a -40 dBm input leve=
l. As I understand this should be a suitable level given the B210's IIP3 spe=
c is -20 dBm. I've also reduced the input level at constant gain and didnt o=
bserve any net improvement in the EVM.
>=20
> When properly configured, can I expect the B210 to yield an EVM better tha=
n say 5%?=20
>=20
> Chris
>=20
>=20
> Creating the usrp device with: num_recv_frames=3D1024...
> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.11=
.1.0-0-unknown
> [INFO] [B200] Detected Device: B210
> [INFO] [B200] Operating over USB 3.
> [INFO] [B200] Initialize CODEC control...
> [INFO] [B200] Initialize Radio control...
> [INFO] [B200] Performing register loopback test...
> [INFO] [B200] Register loopback test passed
> [INFO] [B200] Performing register loopback test...
> [INFO] [B200] Register loopback test passed
> [INFO] [B200] Setting master clock rate selection to 'automatic'.
> [INFO] [B200] Asking for clock rate 16.000000 MHz...
> [INFO] [B200] Actually got clock rate 16.000000 MHz.
> Using Device: Single USRP:
>   Device: B-Series Device
>   Mboard 0: B210
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: FE-RX2
>   RX Channel: 1
>     RX DSP: 1
>     RX Dboard: A
>     RX Subdev: FE-RX1
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: FE-TX2
>   TX Channel: 1
>     TX DSP: 1
>     TX Dboard: A
>     TX Subdev: FE-TX1
>=20
> Setting RX Freq: 3199000000.000 Hz...
> Actual RX Freq: 3199000000.000 Hz...
>=20
> Setting RX Rate:  27648000.000 Sps...
> [INFO] [B200] Asking for clock rate 27.648000 MHz...
> [INFO] [B200] Actually got clock rate 27.648000 MHz.
> Actual RX Rate:  27648000.081 Sps...
>=20
> Setting RX Gain: 55.000000 dB...
> Actual RX Gain: 55.000000 dB...
>=20
> Waiting for "lo_locked": ++++++++++ locked.
>=20
> Press Ctrl + C to stop streaming...
>=20
> From: Marcus D Leech <patchvonbraun@gmail.com>
> Sent: Friday, March 26, 2021 2:45 PM
> To: Julian Arnold <julian@elitecoding.org>
> Cc: Beaudoin, Christopher J <Christopher_Beaudoin@uml.edu>; USRP-users@lis=
ts.ettus.com <USRP-users@lists.ettus.com>
> Subject: Re: [USRP-users] Re: B210 EVM
> =20
> This e-mail originated from outside the UMass Lowell network.
> At 30MSPS are you seeing any overruns? What is your master clock rate?
>=20
> Sent from my iPhone
>=20
>>> On Mar 26, 2021, at 2:41 PM, Julian Arnold <julian@elitecoding.org> wrot=
e:
>>>=20
>> =EF=BB=BFChris,
>>=20
>> I would say that your EVM is mainly affected by your SNR and your digital=
 receiver implementation (AGC / filters / clock recovery / equalizer / ...).=
=20
>> So without more details it=E2=80=99s going to be hard to say if what you =
 are seeing is within limits.
>>=20
>> Cheers,
>>=20
>> Julian Arnold, M.Sc
>>=20
>>> Am 26.03.2021 um 18:29 schrieb christopher_beaudoin@uml.edu:
>>>=20
>>> =EF=BB=BF
>>> I'm capturing a 3 GHz QPSK signal with 5 MHz symbol rate by sampling the=
 signal at 6 times the symbol rate. The B210 is externally referenced to a v=
ery clean 10 MHz reference. My measurements of the EVM sampling the signal f=
or ~0.5 seconds are pretty poor ~30-40%. I can provide more setup details bu=
t I'm wondering if others can comment on what EVM I can expect. I'm hoping t=
his isn't a fundamental limitation of this hardware system.
>>>=20
>>>=20
>>>=20
>>> Thanks,
>>>=20
>>> Chris
>>>=20
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-01BB3083-C0F4-4431-B5B3-2B344D96350E
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I would suggest going back to basics. What d=
oes the RX spectrum look like compared to the TX spectrum? Are you doing clo=
ck recovery on the RX side, or assuming both sides are synchronized?<div><br=
></div><div><br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"lt=
r"><br><blockquote type=3D"cite">On Mar 26, 2021, at 4:38 PM, Beaudoin, Chri=
stopher J &lt;Christopher_Beaudoin@uml.edu&gt; wrote:<br><br></blockquote></=
div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">



<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
Hello Marcus,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Sorry f=
or the terse nature of my previous message. To be more specific, the precise=
 symbol rate is 4.608 MHz so the actual sample rate is 27.648 MHz; the USRP s=
ets the master clock rate to 27.648 MHz when I command the sample rate. I'm n=
ot
 seeing any overruns at this rate and we spent a fair bit of time fine tunin=
g the host machine to sustain this data rate. It will sustain this rate for a=
s long at 10 minutes without reporting any "O" or "U" errors.&nbsp;<span sty=
le=3D"background-color:rgb(255, 255, 255);display:inline !important">I
 also embed the time stamps into the recorded data file and post recording a=
nalysis does not indicate any time disruptions.</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
I'm certain that the mod signal (from my vector signal analyzer) has very lo=
w EVM (~1%) as confirmed with my Rhode Schwartz signal analyzer. I've also c=
onsidered saturation of amplifier stages within the AD9361. With 55 dB of ga=
in, I obtain a rms ADC 16-bit
 state count of ~15000 for a -40 dBm input level. As I understand this shoul=
d be a suitable level given the B210's IIP3 spec is -20 dBm. I've also reduc=
ed the input level at constant gain and didnt observe any net improvement in=
 the EVM.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
When properly configured, can I expect the B210 to yield an EVM better than s=
ay 5%?&nbsp;</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; font-family: Cali=
bri, Arial, Helvetica, sans-serif;">
<p style=3D"margin-top: 0px; margin-bottom: 0px; font-family: Calibri, Arial=
, Helvetica, sans-serif; font-size: 12pt;">
<font color=3D"#212121">Chris</font></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px; font-family: Calibri, Arial=
, Helvetica, sans-serif; font-size: 12pt;">
<font color=3D"#212121"><br>
</font></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px; font-family: Calibri, Arial=
, Helvetica, sans-serif; font-size: 12pt;">
<font color=3D"#212121"><br>
</font></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px; font-family: Calibri, Arial=
, Helvetica, sans-serif; font-size: 12pt;">
<font color=3D"#212121">Creating the usrp device with: num_recv_frames=3D102=
4...</font></p><font color=3D"#212121">
<div>[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3=
.11.1.0-0-unknown</div>
<div>[INFO] [B200] Detected Device: B210</div>
<div>[INFO] [B200] Operating over USB 3.</div>
<div>[INFO] [B200] Initialize CODEC control...</div>
<div>[INFO] [B200] Initialize Radio control...</div>
<div>[INFO] [B200] Performing register loopback test... </div>
<div>[INFO] [B200] Register loopback test passed</div>
<div>[INFO] [B200] Performing register loopback test... </div>
<div>[INFO] [B200] Register loopback test passed</div>
<div>[INFO] [B200] Setting master clock rate selection to 'automatic'.</div>=

<div>[INFO] [B200] Asking for clock rate 16.000000 MHz... </div>
<div>[INFO] [B200] Actually got clock rate 16.000000 MHz.</div>
<div>Using Device: Single USRP:</div>
<div>&nbsp; Device: B-Series Device</div>
<div>&nbsp; Mboard 0: B210</div>
<div>&nbsp; RX Channel: 0</div>
<div>&nbsp; &nbsp; RX DSP: 0</div>
<div>&nbsp; &nbsp; RX Dboard: A</div>
<div>&nbsp; &nbsp; RX Subdev: FE-RX2</div>
<div>&nbsp; RX Channel: 1</div>
<div>&nbsp; &nbsp; RX DSP: 1</div>
<div>&nbsp; &nbsp; RX Dboard: A</div>
<div>&nbsp; &nbsp; RX Subdev: FE-RX1</div>
<div>&nbsp; TX Channel: 0</div>
<div>&nbsp; &nbsp; TX DSP: 0</div>
<div>&nbsp; &nbsp; TX Dboard: A</div>
<div>&nbsp; &nbsp; TX Subdev: FE-TX2</div>
<div>&nbsp; TX Channel: 1</div>
<div>&nbsp; &nbsp; TX DSP: 1</div>
<div>&nbsp; &nbsp; TX Dboard: A</div>
<div>&nbsp; &nbsp; TX Subdev: FE-TX1</div>
<div><br>
</div>
<div>Setting RX Freq: 3199000000.000 Hz...</div>
<div>Actual RX Freq: 3199000000.000 Hz...</div>
<div><br>
</div>
<div>Setting RX Rate: &nbsp;27648000.000 Sps...</div>
<div>[INFO] [B200] Asking for clock rate 27.648000 MHz... </div>
<div>[INFO] [B200] Actually got clock rate 27.648000 MHz.</div>
<div>Actual RX Rate: &nbsp;27648000.081 Sps...</div>
<div><br>
</div>
<div>Setting RX Gain: 55.000000 dB...</div>
<div>Actual RX Gain: 55.000000 dB...</div>
<div><br>
</div>
<div>Waiting for "lo_locked": ++++++++++ locked.</div>
<div><br>
</div>
Press Ctrl + C to stop streaming...<br>
</font>
<p></p>
<font color=3D"#000000"><span id=3D"ms-rterangepaste-end"></span></font><br>=

<p style=3D"color: rgb(0, 0, 0); margin-top: 0px; margin-bottom: 0px;"></p>
</div>
</div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" sty=
le=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D Leech &lt;patc=
hvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Friday, March 26, 2021 2:45 PM<br>
<b>To:</b> Julian Arnold &lt;julian@elitecoding.org&gt;<br>
<b>Cc:</b> Beaudoin, Christopher J &lt;Christopher_Beaudoin@uml.edu&gt;; USR=
P-users@lists.ettus.com &lt;USRP-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: B210 EVM</font>
<div>&nbsp;</div>
</div>
<div dir=3D"auto"><font color=3D"red"><b>This e-mail originated from outside=
 the UMass Lowell network.</b></font>
<hr>
At 30MSPS are you seeing any overruns? What is your master clock rate?<br>
<br>
<div dir=3D"ltr">Sent from my iPhone</div>
<div dir=3D"ltr"><br>
<blockquote type=3D"cite">On Mar 26, 2021, at 2:41 PM, Julian Arnold &lt;jul=
ian@elitecoding.org&gt; wrote:<br>
<br>
</blockquote>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">=EF=BB=BFChris,
<div><br>
</div>
<div>I would say that your EVM is mainly affected by your SNR and your digit=
al receiver implementation (AGC / filters / clock recovery / equalizer / ...=
).&nbsp;</div>
<div>So without more details it=E2=80=99s going to be hard to say if what yo=
u &nbsp;are seeing is within limits.</div>
<div><br>
</div>
<div>Cheers,<br>
<br>
<div dir=3D"ltr">Julian Arnold, M.Sc</div>
<div dir=3D"ltr"><br>
<blockquote type=3D"cite">Am 26.03.2021 um 18:29 schrieb christopher_beaudoi=
n@uml.edu:<br>
<br>
</blockquote>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">=EF=BB=BF
<p>I'm capturing a 3 GHz QPSK signal with 5 MHz symbol rate by sampling the s=
ignal at 6 times the symbol rate. The B210 is externally referenced to a ver=
y clean 10 MHz reference. My measurements of the EVM sampling the signal for=
 ~0.5 seconds are pretty poor
 ~30-40%. I can provide more setup details but I'm wondering if others can c=
omment on what EVM I can expect. I'm hoping this isn't a fundamental limitat=
ion of this hardware system.</p>
<p><br>
</p>
<p>Thanks,</p>
<p>Chris</p>
<span>_______________________________________________</span><br>
<span>USRP-users mailing list -- usrp-users@lists.ettus.com</span><br>
<span>To unsubscribe send an email to usrp-users-leave@lists.ettus.com</span=
><br>
</div>
</blockquote>
</div>
<span>_______________________________________________</span><br>
<span>USRP-users mailing list -- usrp-users@lists.ettus.com</span><br>
<span>To unsubscribe send an email to usrp-users-leave@lists.ettus.com</span=
><br>
</div>
</blockquote>
</div>


</div></blockquote></div></body></html>=

--Apple-Mail-01BB3083-C0F4-4431-B5B3-2B344D96350E--

--===============4939948913351077321==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4939948913351077321==--
