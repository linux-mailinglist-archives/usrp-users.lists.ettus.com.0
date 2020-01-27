Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D1814A7F0
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2020 17:20:25 +0100 (CET)
Received: from [::1] (port=49202 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iw77f-0005lq-Lh; Mon, 27 Jan 2020 11:20:23 -0500
Received: from mail-ot1-f49.google.com ([209.85.210.49]:37667)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1iw77c-0005fl-39
 for usrp-users@lists.ettus.com; Mon, 27 Jan 2020 11:20:20 -0500
Received: by mail-ot1-f49.google.com with SMTP id d3so8611110otp.4
 for <usrp-users@lists.ettus.com>; Mon, 27 Jan 2020 08:19:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=11qyfIRbZRDHdYtbK7nCBwLYOyKzPyxBmjQDhxS5Flw=;
 b=TJCqK1yYfc956PNJAwP2qequ8tAgYX6lz8UvIUWqplaempEN9G4jvDLnRMK2AYy4a+
 3fdRuj7Iy5aKnFsqaNK/24A72lWMCozv4pT6jP7EJEX19Byh7KfPlAO86FTCUQdi3jmt
 H5BS54BScwFlS9GPb0l0v93QaFSFJTOuWTnruN1HyEKhYpuBFcCHpsSuopDC2+1UTOO3
 AQu99f+59PvyKr4rYjT8FUKMb+Pys3jfLeTUTdbuFDdkeMpIfWgklpzhzGo6+YWbO9He
 U7gqgUF9m9PJ17Gr/ruYOcKN/0eDzmmTp5hO/Oeu2Oonv+APAVRA64kniWZr7Wrdsmxx
 w+sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=11qyfIRbZRDHdYtbK7nCBwLYOyKzPyxBmjQDhxS5Flw=;
 b=U+aVJFjbZdvWPwxXJs8hodwwzzxtx0W8UzAz0QQdGbWtAp+Hu9q0zdXTYT9S3+ftOu
 tfgfn9mwPusTizzLFOws+vM7FHdHUWsjZVbCKKOTcgf9RL7KCTybVTqZ5JN/Lsjnj43M
 CRA1fcAsSAi+3oKQNycIklKbD+AB4PoqE7QXx4N2eT5My46iHMdRdo9myigwr/UP40Ww
 q2S8awEPW0m5TFPcnDwpdqEadmBqS4JQApsI3mQK4lZJE1eDyDgC4IVhKI6vVCiECfms
 mCPjNGUjvSyQbuTEhv+ylxmDeeIMIgGoqazb+/DxUefFcil5b+zfLNltgo4jdHOCXek0
 n7mA==
X-Gm-Message-State: APjAAAWl+Cq8vdFGEfveO6CG11N8+x7BX8XHdacuiErzMPE6IXw5HGGP
 jT65vv5LZ07DwkT9HsCc5UVgkmWwEPEezr4b6w1q8Q==
X-Google-Smtp-Source: APXvYqxtr+HwJ34FiJcVx2pr/KKp5yARsEGr8Eqd+eaACtchQNwX/ewoFyQ6tSn9yw31A3UzLTXvszS+BipKFgDXRz8=
X-Received: by 2002:a9d:6b12:: with SMTP id g18mr12491647otp.211.1580141978911; 
 Mon, 27 Jan 2020 08:19:38 -0800 (PST)
MIME-Version: 1.0
References: <CAE6G02_pDDd2H5yX8Sf2jqBC7bo1hnqBMgz5-i09NBCBYSoZgQ@mail.gmail.com>
 <5E2DD2CA.60502@gmail.com>
 <CAE6G02_gbpWZENFyB0EuGdDiGfWKBOitqE0VamkNRuqPTd_MgA@mail.gmail.com>
 <1eae252bad4344f2b296e8bb4fb0d278@dlr.de>
 <CAE6G028jQc8Fd8U8-EmTCCZwyKjN5+MJGcEJs5FKvm1PyrNofw@mail.gmail.com>
 <9386a8b56e9b4514bfd076ce7c106cec@dlr.de>
In-Reply-To: <9386a8b56e9b4514bfd076ce7c106cec@dlr.de>
Date: Mon, 27 Jan 2020 11:19:28 -0500
Message-ID: <CAB__hTSXvtRmb41qd2i5tL-EKG+YbWb-YqEhw6Hoey3Wj_tE6g@mail.gmail.com>
To: Robert.Poehlmann@dlr.de
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4172397720811007292=="
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

--===============4172397720811007292==
Content-Type: multipart/alternative; boundary="000000000000593748059d2179aa"

--000000000000593748059d2179aa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Robert, Sammy,
I am presently running some tests which compare the X310/TwinRx and the
N310 with regard to channel-to-channel phase.  In my setup, I have a signal
source that is split 8 ways (1:8 splitter) to feed the 4 channels of my
TwinRx and 4 channels of my N310. I have seen some strange behavior of the
N310 that perhaps Robert has experienced?  Take a look:

   - For the TwinRx (for which I am a more experienced user with LO
   sharing), I get consistent channel-to-channel phase difference among all
   channels. This is true regardless of power cycles, re-starts of UHD, etc=
.
   - For the N310 (for which I am a beginner when it comes to external LO
   operation)
      - it seems more complex to run in this mode (as compared to TwinRx).
      In order to get it to work, I have had to disable startup QEC calibra=
tion
      because it seems that the N310 initial cal occurs at 2500 MHz RF
such that
      I would need to have my external LO at 5000 MHz for startup
(during the UHD
      deveice 'make') and then later switch my external LO to the desired R=
F*2.
      Is this true?
      - when I run with either external LO or internal LO, I see
      inconsistent channel-to-channel phase results even between the
two channels
      of a given daughterboard that share the same LO.  I do not understand=
 how
      this is possible.  My results over 16 captures (with some
re-starts of UHD,
      device reboots, and switching between internal/external LO) show the
      following channel-to-channel phase difference between channels 0 and =
1
      which share the same LO: (values in degrees) -77, -19, -77, -19,
-77, -19,
      -19, 39, -19, -19, -77, -19, -77, 39, -19, -19.  Note that there
are only 3
      unique values and the delta happens to be 58 deg, but I don't know wh=
at
      that implies...

Rob


On Mon, Jan 27, 2020 at 9:57 AM Robert via USRP-users <
usrp-users@lists.ettus.com> wrote:

> With external LO its 300 MHz =E2=80=93 4 GHz, check footnote [3] from
> https://www.ettus.com/all-products/usrp-n310/. LO has to be supplied at
> twice the carrier freq.
>
>
>
> Currently we use 4 channels. You can find an example how to do the
> calibration here: https://github.com/EttusResearch/gr-doa
>
> gr-doa was written for TwinRX, but can be adapted.
>
>
>
> Phase noise behavior of N310 and N320/1 could be different, as N310 uses
> an RFIC and N32/1 use discrete components. This could be important if you
> want to operate in the small sample regime.
>
>
>
>
>
> *From:* USRP-users [mailto:usrp-users-bounces@lists.ettus.com] *On Behalf
> Of *Sammy Welschen via USRP-users
> *Sent:* Monday, January 27, 2020 3:40 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] DOA with N310 or X310+TwinRX
>
>
>
> Thank you for the information Robert! Isn't it 6 GHz? However, 4 GHz woul=
d
> also be sufficient for me.
>
>
>
> How many channels does your system have?  I suppose you use some algorith=
m
> for phase calibration after power cycling? I plan to do the same, so the
> 180 deg ambiguity should be manageable.
>
>
>
> I looked at the N32x, however, they cost twice as much and I dont't plan
> on using 200 MHz of bandwidth. If I have an external LO signal I can feed
> it to the N310, so the only difference between N310 and N32x in this rega=
rd
> would be that I need to generate the LO externally when using the N310,
> right?
>
>
>
> <Robert.Poehlmann@dlr.de> schrieb am Mo., 27. Jan. 2020, 14:42:
>
> We use the N310 for DoA estimation, however:
>
> -          you are limited to 4 GHz
>
> -          after power-cycling you get a 180=C2=B0 ambiguity between the =
two
> radios (I do not know if this could also happen when you just change the =
LO
> frequency)
>
>
>
> If you want to have >4 channels, have a look at the new N320/N321. No
> experience with those, but apparently they can do LO distribution.
>
>
>
> Also take into account if maybe later in the project you want to be able
> to transmit, which you cannot do with TwinRX.
>
>
>
> Regards,
>
> Robert
>
>
>
> *From:* USRP-users [mailto:usrp-users-bounces@lists.ettus.com] *On Behalf
> Of *Sammy Welschen via USRP-users
> *Sent:* Monday, January 27, 2020 2:19 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] DOA with N310 or X310+TwinRX
>
>
>
> Thank you Marcus! So the N310 would be the way to go? I was unsure since
> the TwinRX is recommended for phase coherent applications.
>
>
>
> Marcus D. Leech via USRP-users <usrp-users@lists.ettus.com> schrieb am
> So., 26. Jan. 2020, 18:57:
>
> On 01/25/2020 11:43 AM, Sammy Welschen via USRP-users wrote:
> > Dear all,
> >
> > I am planning a system with 5-10 channels that is capable of DOA
> > estimation.
> >
> > Concerning the calibration of the resulting array, would there be a
> > difference between a system made up of N310 and one made up of X310
> > with TwinRX boards? Would there be other important differences that
> > influence estimation performance?
> >
> > As I understand it, the TwinRX allows LO sharing between the boards in
> > a single X310, but this would not help me if I have two or three X310.
> > On the other hand, the N310s could be connected to a shared LO.
> >
> > Are the following thoughts correct?
> >
> > Suppose I turn on my system. Then I have to calibrate phase offsets
> > between channels in any case. Now I change the center frequency. If I
> > have N310s without shared LO, I have to recalibrate. Same for the
> > X310s, since LOs are shared only internally. If I have N310s with a
> > shared LO, I do not have to recalibrate.
> >
> > If I restart the system, I have to recalibrate in any case.
> >
> > The devices would by synchronized with PPS in any case and with the 10
> > MHz reference if no external LO is used.
> >
> > What is the better choice for DOA estimation (N310 or X310 with TwinRX
> > or something different)?
> >
> > Thank you very much
> >
> > Sammy
> >
> >
> Sammy:
>
> Your characterization of the two scenarios is correct.
>
> There may be some folks on this list who have implemented DOA schemes,
> but likely few-to-none who have done it on both X310 and N310
>    and can comment on the differences they encountered.
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000593748059d2179aa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Robert, Sammy,<div>I am presently running some tests which=
 compare the X310/TwinRx and the N310 with regard to channel-to-channel pha=
se.=C2=A0 In my setup, I have a signal source that is split 8 ways (1:8 spl=
itter) to feed the 4 channels of my TwinRx and 4 channels of my N310. I hav=
e seen some strange behavior of the N310 that perhaps Robert has experience=
d?=C2=A0 Take a look:</div><div><ul><li>For the TwinRx (for which I am a mo=
re experienced user with LO sharing), I get consistent channel-to-channel p=
hase difference among all channels. This is true regardless of power cycles=
, re-starts of UHD, etc.</li><li>For the N310 (for which I am a beginner wh=
en it comes to external LO operation)</li><ul><li>it seems more complex to =
run in this mode (as compared to TwinRx).=C2=A0 In order to get it to work,=
 I have had to disable startup QEC calibration because it seems that the N3=
10 initial cal occurs at 2500 MHz RF such that I would need to have my exte=
rnal LO at 5000 MHz for startup (during the UHD deveice &#39;make&#39;) and=
 then later switch my external LO to the desired RF*2. Is this true?</li><l=
i>when I run with either external LO or internal LO, I see inconsistent cha=
nnel-to-channel phase results even between the two channels of a given daug=
hterboard that share the same LO.=C2=A0 I do not understand how this is pos=
sible.=C2=A0 My results over 16 captures (with some re-starts of UHD, devic=
e reboots, and switching between internal/external LO) show the following c=
hannel-to-channel phase difference between channels 0 and 1 which share the=
 same LO: (values in degrees) -77, -19, -77, -19, -77, -19, -19, 39, -19, -=
19, -77, -19, -77, 39, -19, -19.=C2=A0 Note that there are only 3 unique va=
lues and the delta happens to be 58 deg, but I don&#39;t know what that imp=
lies...</li></ul></ul><div>Rob</div></div><div><br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 27, 20=
20 at 9:57 AM Robert via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">





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
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;margin-left:4=
.8pt;margin-right:0cm">
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
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;margin:5pt 0c=
m 5pt 4.8pt">
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

--000000000000593748059d2179aa--


--===============4172397720811007292==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4172397720811007292==--

