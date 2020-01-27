Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D9E14A88B
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2020 18:04:45 +0100 (CET)
Received: from [::1] (port=47488 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iw7oa-0003mn-4u; Mon, 27 Jan 2020 12:04:44 -0500
Received: from mail-oi1-f179.google.com ([209.85.167.179]:35756)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1iw7oW-0003gz-VC
 for usrp-users@lists.ettus.com; Mon, 27 Jan 2020 12:04:41 -0500
Received: by mail-oi1-f179.google.com with SMTP id b18so3388321oie.2
 for <usrp-users@lists.ettus.com>; Mon, 27 Jan 2020 09:04:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cFT1ukYbSr36XMYu0k1e5Mq8cMwmtizQw+uyqRiAeTc=;
 b=pV8qpWTsIkvCK7LLH2gL9pzvXOpGgQfoj1rUfhVnO5yezO+TFqusPEmo7OsCYuphUd
 pWii6tUbQ4HrjPgC+oJUjyJgannhkLYGCFwVYshZSxg7aJXJGUH+kD5DSmh5rzwcMOZs
 Aw/CAETBF79gdPS1b9UNb0RVY7rSAHfY0Y5cSCAnVOsFaIJPav38ZatZNKgQp7H6vhtt
 z6ntAVPJpAMvTcuv9Eyo9V7xhjQ6ZopbmE7oXHr0GBV3Upiwu+K/0Pg2Jyqk3KlXTm3k
 /LwxnT3QGj4p6TBU+MgyxbowOvNK5EP/MbxGHYgwmpaPcFpEaELuR26aYckmqQHlqv74
 brQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cFT1ukYbSr36XMYu0k1e5Mq8cMwmtizQw+uyqRiAeTc=;
 b=IIOKNk3j2jaR1TZ9o9szjYJwGmTJqgs0XiLhBa+tyam4c0Vg1sNSRPgZYMRbCwO69s
 EoxiXpc3q7njCMeCinJwL60UZsuH1SEiVAbIyecJKpqFA47ZGu1DaS7JehHMPQGv1m4h
 7ZsWfzglqsY50H/ZJ41xRSyjRWDOzT8NNuNDLUkaoVGhscsu+9mBb2HxzxBfYWupPsX8
 HydOWXP/OAiVP41qdIyCYBkUUzZrqRCGmXnl0jGXAjhZHmRpYl1GqNRcyY+iREBdIkuE
 qN5M8tivxG/Qv6UdA7Z8GyALhgvOHH2t8AgupaA8gxp4pxzcVrV5CQOOKqnZ6K82aoZN
 453Q==
X-Gm-Message-State: APjAAAVjoLXQl2xGgMqlr8tLeLq0L0f0Uj2/xJ4B4mD3OzgId2oGIeuo
 2hwCmr5tDGVju0VQUbBJC049JzdoM9NbS3284QNapmlT
X-Google-Smtp-Source: APXvYqyj3RidxdNyA6NqiXGTbpA8/M/na/r/LGuGZL3LgC0sRGp2XWh8GEGMjuSA23tc3oz9R01WQgdsbMs4XKtqECk=
X-Received: by 2002:a05:6808:2ce:: with SMTP id a14mr35646oid.82.1580144640022; 
 Mon, 27 Jan 2020 09:04:00 -0800 (PST)
MIME-Version: 1.0
References: <CAE6G02_pDDd2H5yX8Sf2jqBC7bo1hnqBMgz5-i09NBCBYSoZgQ@mail.gmail.com>
 <5E2DD2CA.60502@gmail.com>
 <CAE6G02_gbpWZENFyB0EuGdDiGfWKBOitqE0VamkNRuqPTd_MgA@mail.gmail.com>
 <1eae252bad4344f2b296e8bb4fb0d278@dlr.de>
 <CAE6G028jQc8Fd8U8-EmTCCZwyKjN5+MJGcEJs5FKvm1PyrNofw@mail.gmail.com>
 <9386a8b56e9b4514bfd076ce7c106cec@dlr.de>
 <CAB__hTSXvtRmb41qd2i5tL-EKG+YbWb-YqEhw6Hoey3Wj_tE6g@mail.gmail.com>
In-Reply-To: <CAB__hTSXvtRmb41qd2i5tL-EKG+YbWb-YqEhw6Hoey3Wj_tE6g@mail.gmail.com>
Date: Mon, 27 Jan 2020 09:05:53 -0800
Message-ID: <CAL263izVZA5A7jpX+5GbCMaVy4Jq=CvZkDd6-ng0xTT9-zb15A@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Subject: Re: [USRP-users] DOA with N310 or X310+TwinRX
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6020361171478073730=="
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

--===============6020361171478073730==
Content-Type: multipart/alternative; boundary="000000000000f673ee059d2217b1"

--000000000000f673ee059d2217b1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob, Robert, Sammy:

Generally for this type of application we would recommend the X310+TwinRx.
With the TwinRX, you'll be able to have repeatable phase offsets with a
given gain, frequency, sample rate and temperature of a device/system. The
N310 will have a 180 degree phase ambiguity due to the /2 LO architecture.

It is possible to share the LO across multiple motherboards for a X310/Twin
setup, and with the NI branded X310+TwinRX setup (NI-2955) the LO's are
provided out of the back panel. The chassis for currently shipping and Rev
C, F, G X310's back plate has the holes for the LO cables, but the sticker
needs to be removed. This application note covers the process:
https://kb.ettus.com/Modifying_an_X310_Chassis_for_External_LO_Sharing

You'll also need to provide a splitter and most likely an inline amplifier
to overcome splitter losses. A splitter such as the ZFRSC-4-842+ will work.
https://www.minicircuits.com/pdfs/ZFRSC-4-842+.pdf


@Rob: With the current init process of the N310, yes it is required to
first set the external LO to 5 GHz.

With regards to the offsets you're seeing, I believe you should only see a
possible phase difference of 180* within the two channels on the same DB.
Are you issuing a tune request at the start of streaming?

Regards,
Nate Temple

On Mon, Jan 27, 2020 at 8:20 AM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Robert, Sammy,
> I am presently running some tests which compare the X310/TwinRx and the
> N310 with regard to channel-to-channel phase.  In my setup, I have a sign=
al
> source that is split 8 ways (1:8 splitter) to feed the 4 channels of my
> TwinRx and 4 channels of my N310. I have seen some strange behavior of th=
e
> N310 that perhaps Robert has experienced?  Take a look:
>
>    - For the TwinRx (for which I am a more experienced user with LO
>    sharing), I get consistent channel-to-channel phase difference among a=
ll
>    channels. This is true regardless of power cycles, re-starts of UHD, e=
tc.
>    - For the N310 (for which I am a beginner when it comes to external LO
>    operation)
>       - it seems more complex to run in this mode (as compared to
>       TwinRx).  In order to get it to work, I have had to disable startup=
 QEC
>       calibration because it seems that the N310 initial cal occurs at 25=
00 MHz
>       RF such that I would need to have my external LO at 5000 MHz for st=
artup
>       (during the UHD deveice 'make') and then later switch my external L=
O to the
>       desired RF*2. Is this true?
>       - when I run with either external LO or internal LO, I see
>       inconsistent channel-to-channel phase results even between the two =
channels
>       of a given daughterboard that share the same LO.  I do not understa=
nd how
>       this is possible.  My results over 16 captures (with some re-starts=
 of UHD,
>       device reboots, and switching between internal/external LO) show th=
e
>       following channel-to-channel phase difference between channels 0 an=
d 1
>       which share the same LO: (values in degrees) -77, -19, -77, -19, -7=
7, -19,
>       -19, 39, -19, -19, -77, -19, -77, 39, -19, -19.  Note that there ar=
e only 3
>       unique values and the delta happens to be 58 deg, but I don't know =
what
>       that implies...
>
> Rob
>
>
> On Mon, Jan 27, 2020 at 9:57 AM Robert via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> With external LO its 300 MHz =E2=80=93 4 GHz, check footnote [3] from
>> https://www.ettus.com/all-products/usrp-n310/. LO has to be supplied at
>> twice the carrier freq.
>>
>>
>>
>> Currently we use 4 channels. You can find an example how to do the
>> calibration here: https://github.com/EttusResearch/gr-doa
>>
>> gr-doa was written for TwinRX, but can be adapted.
>>
>>
>>
>> Phase noise behavior of N310 and N320/1 could be different, as N310 uses
>> an RFIC and N32/1 use discrete components. This could be important if yo=
u
>> want to operate in the small sample regime.
>>
>>
>>
>>
>>
>> *From:* USRP-users [mailto:usrp-users-bounces@lists.ettus.com] *On
>> Behalf Of *Sammy Welschen via USRP-users
>> *Sent:* Monday, January 27, 2020 3:40 PM
>> *To:* usrp-users@lists.ettus.com
>> *Subject:* Re: [USRP-users] DOA with N310 or X310+TwinRX
>>
>>
>>
>> Thank you for the information Robert! Isn't it 6 GHz? However, 4 GHz
>> would also be sufficient for me.
>>
>>
>>
>> How many channels does your system have?  I suppose you use some
>> algorithm for phase calibration after power cycling? I plan to do the sa=
me,
>> so the 180 deg ambiguity should be manageable.
>>
>>
>>
>> I looked at the N32x, however, they cost twice as much and I dont't plan
>> on using 200 MHz of bandwidth. If I have an external LO signal I can fee=
d
>> it to the N310, so the only difference between N310 and N32x in this reg=
ard
>> would be that I need to generate the LO externally when using the N310,
>> right?
>>
>>
>>
>> <Robert.Poehlmann@dlr.de> schrieb am Mo., 27. Jan. 2020, 14:42:
>>
>> We use the N310 for DoA estimation, however:
>>
>> -          you are limited to 4 GHz
>>
>> -          after power-cycling you get a 180=C2=B0 ambiguity between the=
 two
>> radios (I do not know if this could also happen when you just change the=
 LO
>> frequency)
>>
>>
>>
>> If you want to have >4 channels, have a look at the new N320/N321. No
>> experience with those, but apparently they can do LO distribution.
>>
>>
>>
>> Also take into account if maybe later in the project you want to be able
>> to transmit, which you cannot do with TwinRX.
>>
>>
>>
>> Regards,
>>
>> Robert
>>
>>
>>
>> *From:* USRP-users [mailto:usrp-users-bounces@lists.ettus.com] *On
>> Behalf Of *Sammy Welschen via USRP-users
>> *Sent:* Monday, January 27, 2020 2:19 PM
>> *To:* usrp-users@lists.ettus.com
>> *Subject:* Re: [USRP-users] DOA with N310 or X310+TwinRX
>>
>>
>>
>> Thank you Marcus! So the N310 would be the way to go? I was unsure since
>> the TwinRX is recommended for phase coherent applications.
>>
>>
>>
>> Marcus D. Leech via USRP-users <usrp-users@lists.ettus.com> schrieb am
>> So., 26. Jan. 2020, 18:57:
>>
>> On 01/25/2020 11:43 AM, Sammy Welschen via USRP-users wrote:
>> > Dear all,
>> >
>> > I am planning a system with 5-10 channels that is capable of DOA
>> > estimation.
>> >
>> > Concerning the calibration of the resulting array, would there be a
>> > difference between a system made up of N310 and one made up of X310
>> > with TwinRX boards? Would there be other important differences that
>> > influence estimation performance?
>> >
>> > As I understand it, the TwinRX allows LO sharing between the boards in
>> > a single X310, but this would not help me if I have two or three X310.
>> > On the other hand, the N310s could be connected to a shared LO.
>> >
>> > Are the following thoughts correct?
>> >
>> > Suppose I turn on my system. Then I have to calibrate phase offsets
>> > between channels in any case. Now I change the center frequency. If I
>> > have N310s without shared LO, I have to recalibrate. Same for the
>> > X310s, since LOs are shared only internally. If I have N310s with a
>> > shared LO, I do not have to recalibrate.
>> >
>> > If I restart the system, I have to recalibrate in any case.
>> >
>> > The devices would by synchronized with PPS in any case and with the 10
>> > MHz reference if no external LO is used.
>> >
>> > What is the better choice for DOA estimation (N310 or X310 with TwinRX
>> > or something different)?
>> >
>> > Thank you very much
>> >
>> > Sammy
>> >
>> >
>> Sammy:
>>
>> Your characterization of the two scenarios is correct.
>>
>> There may be some folks on this list who have implemented DOA schemes,
>> but likely few-to-none who have done it on both X310 and N310
>>    and can comment on the differences they encountered.
>>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000f673ee059d2217b1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Rob, Robert, Sammy:<br><br>Generally for this type o=
f application we would recommend the X310+TwinRx. With the TwinRX, you&#39;=
ll be able to have repeatable phase offsets with a given gain, frequency, s=
ample rate and temperature of a device/system. The N310 will have a 180 deg=
ree phase ambiguity due to the /2 LO architecture. <br><br>It is possible t=
o share the LO across multiple motherboards for a X310/Twin setup, and with=
 the NI branded X310+TwinRX setup (NI-2955) the LO&#39;s are provided out o=
f the back panel. The chassis for currently shipping and Rev C, F, G X310&#=
39;s back plate has the holes for the LO cables, but the sticker needs to b=
e removed. This application note covers the process: <a href=3D"https://kb.=
ettus.com/Modifying_an_X310_Chassis_for_External_LO_Sharing">https://kb.ett=
us.com/Modifying_an_X310_Chassis_for_External_LO_Sharing</a><br><br>You&#39=
;ll also need to provide a splitter and most likely an inline amplifier to =
overcome splitter losses. A splitter such as the ZFRSC-4-842+ will work. <a=
 href=3D"https://www.minicircuits.com/pdfs/ZFRSC-4-842+.pdf">https://www.mi=
nicircuits.com/pdfs/ZFRSC-4-842+.pdf</a><br><br><br>@Rob: With the current =
init process of the N310, yes it is required to first set the external LO t=
o 5 GHz. <br><br>With regards to the offsets you&#39;re seeing, I believe y=
ou should only see a possible phase difference of 180* within the two chann=
els on the same DB. Are you issuing a tune request at the start of streamin=
g?<br><br>Regards,<br>Nate Temple</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 27, 2020 at 8:20 AM Rob =
Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">us=
rp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr">Robert, Sammy,<div>I am presently =
running some tests which compare the X310/TwinRx and the N310 with regard t=
o channel-to-channel phase.=C2=A0 In my setup, I have a signal source that =
is split 8 ways (1:8 splitter) to feed the 4 channels of my TwinRx and 4 ch=
annels of my N310. I have seen some strange behavior of the N310 that perha=
ps Robert has experienced?=C2=A0 Take a look:</div><div><ul><li>For the Twi=
nRx (for which I am a more experienced user with LO sharing), I get consist=
ent channel-to-channel phase difference among all channels. This is true re=
gardless of power cycles, re-starts of UHD, etc.</li><li>For the N310 (for =
which I am a beginner when it comes to external LO operation)</li><ul><li>i=
t seems more complex to run in this mode (as compared to TwinRx).=C2=A0 In =
order to get it to work, I have had to disable startup QEC calibration beca=
use it seems that the N310 initial cal occurs at 2500 MHz RF such that I wo=
uld need to have my external LO at 5000 MHz for startup (during the UHD dev=
eice &#39;make&#39;) and then later switch my external LO to the desired RF=
*2. Is this true?</li><li>when I run with either external LO or internal LO=
, I see inconsistent channel-to-channel phase results even between the two =
channels of a given daughterboard that share the same LO.=C2=A0 I do not un=
derstand how this is possible.=C2=A0 My results over 16 captures (with some=
 re-starts of UHD, device reboots, and switching between internal/external =
LO) show the following channel-to-channel phase difference between channels=
 0 and 1 which share the same LO: (values in degrees) -77, -19, -77, -19, -=
77, -19, -19, 39, -19, -19, -77, -19, -77, 39, -19, -19.=C2=A0 Note that th=
ere are only 3 unique values and the delta happens to be 58 deg, but I don&=
#39;t know what that implies...</li></ul></ul><div>Rob</div></div><div><br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Mon, Jan 27, 2020 at 9:57 AM Robert via USRP-users &lt;<a href=3D"=
mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">





<div lang=3D"EN-US">
<div>
<p class=3D"MsoNormal" style=3D"line-height:16pt">
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,7=
3,125)">With external LO its 300 MHz =E2=80=93 4 GHz, check footnote [3] fr=
om
</span><a href=3D"https://www.ettus.com/all-products/usrp-n310/" target=3D"=
_blank">https://www.ettus.com/all-products/usrp-n310/</a>.
<span style=3D"color:rgb(31,73,125)">LO has to be supplied at twice the car=
rier freq.<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:16pt">
<u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Currently we use 4 channels. You can find an=
 example how to do the calibration here:
</span><a href=3D"https://github.com/EttusResearch/gr-doa" target=3D"_blank=
">https://github.com/EttusResearch/gr-doa</a><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">gr-doa was written for TwinRX, but can be ad=
apted.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Phase noise behavior of N310 and N320/1 coul=
d be different, as N310 uses an RFIC and N32/1 use discrete components. Thi=
s could be important if you want to operate
 in the small sample regime.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10pt;font-family:Tahoma,=
sans-serif">From:</span></b><span style=3D"font-size:10pt;font-family:Tahom=
a,sans-serif"> USRP-users [mailto:<a href=3D"mailto:usrp-users-bounces@list=
s.ettus.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>]
<b>On Behalf Of </b>Sammy Welschen via USRP-users<br>
<b>Sent:</b> Monday, January 27, 2020 3:40 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] DOA with N310 or X310+TwinRX<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Thank you for the information Robert! Isn&#39;t it 6=
 GHz? However, 4 GHz would also be sufficient for me.=C2=A0<u></u><u></u></=
p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">How many channels does your system have?=C2=A0 I sup=
pose you use some algorithm for phase calibration after power cycling? I pl=
an to do the same, so the 180 deg ambiguity should be manageable.=C2=A0<u><=
/u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I looked at the N32x, however, they cost twice as mu=
ch and I dont&#39;t plan on using 200 MHz of bandwidth. If I have an extern=
al LO signal I can feed it to the N310, so the only difference between N310=
 and N32x in this regard would be that
 I need to generate the LO externally when using the N310, right?<u></u><u>=
</u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">&lt;<a href=3D"mailto:Robert.Poehlmann@dlr.de" targe=
t=3D"_blank">Robert.Poehlmann@dlr.de</a>&gt; schrieb am Mo., 27. Jan. 2020,=
 14:42:<u></u><u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0cm 0cm 0cm 6pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">We use the N310 for DoA estimation, however:=
</span><u></u><u></u></p>
<p><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(3=
1,73,125)">-</span><span style=3D"font-size:7pt;color:rgb(31,73,125)">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:r=
gb(31,73,125)">you are limited to 4 GHz
</span><u></u><u></u></p>
<p><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(3=
1,73,125)">-</span><span style=3D"font-size:7pt;color:rgb(31,73,125)">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:r=
gb(31,73,125)">after power-cycling you get a 180=C2=B0 ambiguity between th=
e two radios (I do not know if this could also happen when you just change =
the LO frequency)</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">If you want to have &gt;4 channels, have a l=
ook at the new N320/N321. No experience with those, but
 apparently they can do LO distribution.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Also take into account if maybe later in the=
 project you want to be able to transmit, which you cannot
 do with TwinRX.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Regards,</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Robert</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10pt;font-family:Tahoma,=
sans-serif">From:</span></b><span style=3D"font-size:10pt;font-family:Tahom=
a,sans-serif"> USRP-users [mailto:<a href=3D"mailto:usrp-users-bounces@list=
s.ettus.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>]
<b>On Behalf Of </b>Sammy Welschen via USRP-users<br>
<b>Sent:</b> Monday, January 27, 2020 2:19 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] DOA with N310 or X310+TwinRX</span><u></u>=
<u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Thank you Marcus! So the N310 would be the way to go=
? I was unsure since the TwinRX is recommended for phase coherent applicati=
ons.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Marcus D. Leech via USRP-users &lt;<a href=3D"mailto=
:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</=
a>&gt; schrieb am So., 26. Jan. 2020, 18:57:<u></u><u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0cm 0cm 0cm 6pt;margin:5pt 0cm 5pt 4.8pt">
<p class=3D"MsoNormal">On 01/25/2020 11:43 AM, Sammy Welschen via USRP-user=
s wrote:<br>
&gt; Dear all,<br>
&gt;<br>
&gt; I am planning a system with 5-10 channels that is capable of DOA <br>
&gt; estimation.<br>
&gt;<br>
&gt; Concerning the calibration of the resulting array, would there be a <b=
r>
&gt; difference between a system made up of N310 and one made up of X310 <b=
r>
&gt; with TwinRX boards? Would there be other important differences that <b=
r>
&gt; influence estimation performance?<br>
&gt;<br>
&gt; As I understand it, the TwinRX allows LO sharing between the boards in=
 <br>
&gt; a single X310, but this would not help me if I have two or three X310.=
 <br>
&gt; On the other hand, the N310s could be connected to a shared LO.<br>
&gt;<br>
&gt; Are the following thoughts correct?<br>
&gt;<br>
&gt; Suppose I turn on my system. Then I have to calibrate phase offsets <b=
r>
&gt; between channels in any case. Now I change the center frequency. If I =
<br>
&gt; have N310s without shared LO, I have to recalibrate. Same for the <br>
&gt; X310s, since LOs are shared only internally. If I have N310s with a <b=
r>
&gt; shared LO, I do not have to recalibrate.<br>
&gt;<br>
&gt; If I restart the system, I have to recalibrate in any case.<br>
&gt;<br>
&gt; The devices would by synchronized with PPS in any case and with the 10=
 <br>
&gt; MHz reference if no external LO is used.<br>
&gt;<br>
&gt; What is the better choice for DOA estimation (N310 or X310 with TwinRX=
 <br>
&gt; or something different)?<br>
&gt;<br>
&gt; Thank you very much<br>
&gt;<br>
&gt; Sammy<br>
&gt;<br>
&gt;<br>
Sammy:<br>
<br>
Your characterization of the two scenarios is correct.<br>
<br>
There may be some folks on this list who have implemented DOA schemes, <br>
but likely few-to-none who have done it on both X310 and N310<br>
=C2=A0 =C2=A0and can comment on the differences they encountered.<br>
<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a><u></u><u></u></p>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000f673ee059d2217b1--


--===============6020361171478073730==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6020361171478073730==--

