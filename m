Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBBB162A55
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2020 17:22:56 +0100 (CET)
Received: from [::1] (port=41138 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j45eB-0003fw-Fw; Tue, 18 Feb 2020 11:22:55 -0500
Received: from mail-ot1-f45.google.com ([209.85.210.45]:41610)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1j45e7-0003Wp-UW
 for usrp-users@lists.ettus.com; Tue, 18 Feb 2020 11:22:52 -0500
Received: by mail-ot1-f45.google.com with SMTP id r27so20027441otc.8
 for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2020 08:22:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Zzz9LU7Hf1Gh5ZGWEM4VnpyLx03pnc5nZacNk8fv/Ms=;
 b=YyKTwbebXZIcWHomVQbY/tpU1CGXgm3menrlTF8dUsBOerzDniANIAlgwo9tji7cZA
 dkXTuFDTij0S7Xrj26BwmVHb3OoWUk3CFiBS67FOaU6CZHZo7709ImG128Okh/73AoYd
 6WIJvtQ3zAa+ZlWHvUnFk4+81+h1CTL6F+cv1LbvnR41mbvtJLzmYqY7qGybb8QoVSXS
 p/FRipUQLEq8WWB9bxXwdCvq14UyomHE+Nbpdu3k5O6fOJIM1n4gJCS8eFn6/+Mge3IZ
 jzu7rhV1wpeo83TsdqhodJWYjfj66JeQLuSjHNrvUsyX0sf3fqCapqr2m55DcfNhqriK
 edOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Zzz9LU7Hf1Gh5ZGWEM4VnpyLx03pnc5nZacNk8fv/Ms=;
 b=hkkWv3UeXjt5tXrliV6hGu5SESPNN0jFmEtOF9A1oZ2q5NheFR+E+VzaavAtQ8xgrj
 q6lF48Y5gcL4S/uPqdRumDeRBe08MQfV8GiYcmbtlnHEeqagzwyxAa3BmFKyuP6dLqt4
 OFTl/S8id/mhNIiSiVyLmmS3Z9DOqzjoC5YasW9LJ1+dJtw3QdB+uwLre+YK0oGh//I9
 XA7+XeXbHb+K+HsWxK6j1zNSGhyLEMnE3N4CvpNCWiZnAwWSEzySK4/YoGzBzbCApLal
 Pz74rccwDCKhvFXOUFaScVNsYG3ylPrb9EFwTi5hf0Z3rGM4rX1f0tnbaH3d8aTLjERS
 kpsA==
X-Gm-Message-State: APjAAAXMm9xMC6genhkRG8Iia40p1IsmVsDQzwnMVytC760fs64h3Xi2
 6zxvGo9tfyLj4kPjzAGokWjWOo7N+UebSP6+Lfo0/jmfWkU=
X-Google-Smtp-Source: APXvYqzD23wYrEb0viezXlAVsmwJ5qjWBP+rleBRTQXhUygjAGhwaDWbVRH6He2UHM6i9vTkRhx30yb6V2abGzElIUs=
X-Received: by 2002:a9d:6b12:: with SMTP id g18mr15880314otp.211.1582042930238; 
 Tue, 18 Feb 2020 08:22:10 -0800 (PST)
MIME-Version: 1.0
References: <CAE6G02_pDDd2H5yX8Sf2jqBC7bo1hnqBMgz5-i09NBCBYSoZgQ@mail.gmail.com>
 <5E2DD2CA.60502@gmail.com>
 <CAE6G02_gbpWZENFyB0EuGdDiGfWKBOitqE0VamkNRuqPTd_MgA@mail.gmail.com>
 <1eae252bad4344f2b296e8bb4fb0d278@dlr.de>
 <CAE6G028jQc8Fd8U8-EmTCCZwyKjN5+MJGcEJs5FKvm1PyrNofw@mail.gmail.com>
 <9386a8b56e9b4514bfd076ce7c106cec@dlr.de>
 <CAB__hTSXvtRmb41qd2i5tL-EKG+YbWb-YqEhw6Hoey3Wj_tE6g@mail.gmail.com>
 <CAL263izVZA5A7jpX+5GbCMaVy4Jq=CvZkDd6-ng0xTT9-zb15A@mail.gmail.com>
 <CAE6G029O3YmSFeqRRvsHU9yDpXE8Zm0VSimZ8kTbrgbEmAEgoA@mail.gmail.com>
 <CAL263iwfx2im7Vp2DQDbn=ryR3qu3LE2p04i9FbwOUVx1OKhQA@mail.gmail.com>
 <1df816ebaebc45d5827b7297c48f9301@dlr.de>
In-Reply-To: <1df816ebaebc45d5827b7297c48f9301@dlr.de>
Date: Tue, 18 Feb 2020 11:21:59 -0500
Message-ID: <CAB__hTQUwXaHHTghGcs3bLrvxhsVx++WauUWDp=kkKCoyYsRcA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============6052416800620544654=="
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

--===============6052416800620544654==
Content-Type: multipart/alternative; boundary="000000000000e08fcd059edc12dd"

--000000000000e08fcd059edc12dd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Robert,
Thanks for the follow up.  One question I have is related to your comment
that you needed 3.15 for Tx but you didn't mention a version requirement
for Rx.  In my own tests, I found that I had to use 3.15 even for Rx or
else I would get varying phase behavior.  If you are able to get constant
results with say 3.14.1.1, then I wonder if perhaps I had something else
wrong and fooled myself into thinking that the UHD version fixed my issue.
Rob

On Tue, Feb 18, 2020 at 8:17 AM <Robert.Poehlmann@dlr.de> wrote:

> Hi Nate, Rob, Sammy,
>
>
>
> thanks for pointing out that the external LO should be set to 5 GHz for
> the QEC init calibration. So far I had omitted this calibration, as it
> wasn=E2=80=99t workin. This is important, please add it to the documentat=
ion (maybe
> it=E2=80=99s there and I missed it?).
>
>
>
> Happy to share some of our experiences regarding coherent operation of th=
e
> N310:
>
> We are successfully using the N310 with coherent RX for DoA estimation.
> Our setup is:
>
> -          external LO with 4-way splitter -> 2 TX 2 RX LO inputs
>
> -          tracking_cals=3DOFF
>
> -          At the beginning we run a flowgraph with force_reinit=3D1 and
> the desired init_cals settings
>
> -          Later we use exactly the same settings without force_reinit,
> this ensures that no reinit is performed
>
> -          The RX phase offset between the 4 channels is now constant,
> running different GnuRadio flowgraphs is no problem
>
> -          When the device is power-cycled or a full re-init is
> performed, the phase of the radios can jump by 180=C2=B0
>
>
>
> Very recently we added coherent TX, aiming at TX beamforming. Not much
> experience yet, but it seems to work.
>
> -          Same setup as above.
>
> -          Important: UHD 3.15.0.0 is required, some DUC bug has been
> fixed with this release
>
> -          TX phase appears to be stable until power-cycle / re-init
>
>
>
> This even works with RFNoC (the RX part, TX not tested yet), although
> quite some modifications are necessary to gr-ettus to get synchronized
> streams.
>
>
>
> Regards,
>
> Robert
>
>
>
>
>
>
>
> *From:* USRP-users [mailto:usrp-users-bounces@lists.ettus.com] *On Behalf
> Of *Nate Temple via USRP-users
> *Sent:* Tuesday, January 28, 2020 9:03 PM
> *To:* Sammy Welschen
> *Cc:* usrp-users; Rob Kossler
> *Subject:* Re: [USRP-users] DOA with N310 or X310+TwinRX
>
>
>
> Hi Sammy,
>
> >Can I turn it off and come back the next day and still have the same
> phase offset between the channels that I had the day before?
>
> Yes. This assumes that you are running with the same frequency, gain,
> sample rate and system temperature that your calibrations were made with.
> Also unless you have phase stable cables, if you move your cables at all,
> it can cause phase variation.
>
>
> Regards,
> Nate Temple
>
>
>
> On Mon, Jan 27, 2020 at 9:29 AM Sammy Welschen <sammywelschen@gmail.com>
> wrote:
>
> Hi Nate, thank you for the information.
>
>
>
> I'm still a bit unsure what repeatable phase offset means exactly. Suppos=
e
> I have a system with 8 channels with X310+TwinRX and shared LO. Can I tur=
n
> it off and come back the next day and still have the same phase offset
> between the channels that I had the day before?
>
>
>
> Sammy
>
> Nate Temple via USRP-users <usrp-users@lists.ettus.com> schrieb am Mo.,
> 27. Jan. 2020, 18:04:
>
> Hi Rob, Robert, Sammy:
>
> Generally for this type of application we would recommend the X310+TwinRx=
.
> With the TwinRX, you'll be able to have repeatable phase offsets with a
> given gain, frequency, sample rate and temperature of a device/system. Th=
e
> N310 will have a 180 degree phase ambiguity due to the /2 LO architecture=
.
>
> It is possible to share the LO across multiple motherboards for a
> X310/Twin setup, and with the NI branded X310+TwinRX setup (NI-2955) the
> LO's are provided out of the back panel. The chassis for currently shippi=
ng
> and Rev C, F, G X310's back plate has the holes for the LO cables, but th=
e
> sticker needs to be removed. This application note covers the process:
> https://kb.ettus.com/Modifying_an_X310_Chassis_for_External_LO_Sharing
>
> You'll also need to provide a splitter and most likely an inline amplifie=
r
> to overcome splitter losses. A splitter such as the ZFRSC-4-842+ will wor=
k.
> https://www.minicircuits.com/pdfs/ZFRSC-4-842+.pdf
>
>
> @Rob: With the current init process of the N310, yes it is required to
> first set the external LO to 5 GHz.
>
> With regards to the offsets you're seeing, I believe you should only see =
a
> possible phase difference of 180* within the two channels on the same DB.
> Are you issuing a tune request at the start of streaming?
>
> Regards,
> Nate Temple
>
>
>
> On Mon, Jan 27, 2020 at 8:20 AM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Robert, Sammy,
>
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
>
>
>    - it seems more complex to run in this mode (as compared to TwinRx).
>       In order to get it to work, I have had to disable startup QEC calib=
ration
>       because it seems that the N310 initial cal occurs at 2500 MHz RF su=
ch that
>       I would need to have my external LO at 5000 MHz for startup (during=
 the UHD
>       deveice 'make') and then later switch my external LO to the desired=
 RF*2.
>       Is this true?
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
>
>
>
> On Mon, Jan 27, 2020 at 9:57 AM Robert via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
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
>

--000000000000e08fcd059edc12dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Robert,<div>Thanks for the follow up.=
=C2=A0 One question I have is related to your comment that you needed 3.15 =
for Tx but you didn&#39;t mention a version requirement for Rx.=C2=A0 In my=
 own tests, I found that I had to use 3.15 even for Rx or else I would get =
varying phase behavior.=C2=A0 If you are able to get constant results with =
say 3.14.1.1, then I wonder if perhaps I had something else wrong and foole=
d myself into thinking that the UHD version fixed my issue.</div><div>Rob</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Tue, Feb 18, 2020 at 8:17 AM &lt;<a href=3D"mailto:Robert.Poehlmann@=
dlr.de">Robert.Poehlmann@dlr.de</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_8121010277132145006WordSection1">
<p class=3D"MsoNormal" style=3D"line-height:16pt">
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,7=
3,125)">Hi Nate, Rob, Sammy,<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:16pt">
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,7=
3,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:16pt">
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,7=
3,125)">thanks for pointing out that the external LO should be set to 5 GHz=
 for the QEC init calibration. So far I had omitted this calibration, as it=
 wasn=E2=80=99t workin. This is important,
 please add it to the documentation (maybe it=E2=80=99s there and I missed =
it?).<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:16pt">
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,7=
3,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:16pt">
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,7=
3,125)">Happy to share some of our experiences regarding coherent operation=
 of the N310:<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:16pt">
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,7=
3,125)">We are successfully using the N310 with coherent RX for DoA estimat=
ion.=C2=A0 Our setup is:<u></u><u></u></span></p>
<p class=3D"gmail-m_8121010277132145006MsoListParagraph" style=3D"line-heig=
ht:16pt">
<u></u><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:r=
gb(31,73,125)"><span>-<span style=3D"font:7pt &quot;Times New Roman&quot;">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><span style=3D"font-size:11pt;font-family:Calib=
ri,sans-serif;color:rgb(31,73,125)">external LO with 4-way splitter -&gt; 2=
 TX 2 RX LO inputs<u></u><u></u></span></p>
<p class=3D"gmail-m_8121010277132145006MsoListParagraph" style=3D"line-heig=
ht:16pt">
<u></u><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:r=
gb(31,73,125)"><span>-<span style=3D"font:7pt &quot;Times New Roman&quot;">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><span style=3D"font-size:11pt;font-family:Calib=
ri,sans-serif;color:rgb(31,73,125)">tracking_cals=3DOFF<u></u><u></u></span=
></p>
<p class=3D"gmail-m_8121010277132145006MsoListParagraph" style=3D"line-heig=
ht:16pt">
<u></u><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:r=
gb(31,73,125)"><span>-<span style=3D"font:7pt &quot;Times New Roman&quot;">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><span style=3D"font-size:11pt;font-family:Calib=
ri,sans-serif;color:rgb(31,73,125)">At the beginning we run a flowgraph wit=
h force_reinit=3D1 and the desired init_cals settings<u></u><u></u></span><=
/p>
<p class=3D"gmail-m_8121010277132145006MsoListParagraph" style=3D"line-heig=
ht:16pt">
<u></u><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:r=
gb(31,73,125)"><span>-<span style=3D"font:7pt &quot;Times New Roman&quot;">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><span style=3D"font-size:11pt;font-family:Calib=
ri,sans-serif;color:rgb(31,73,125)">Later we use exactly the same settings =
without force_reinit, this ensures that no reinit is performed<u></u><u></u=
></span></p>
<p class=3D"gmail-m_8121010277132145006MsoListParagraph" style=3D"line-heig=
ht:16pt">
<u></u><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:r=
gb(31,73,125)"><span>-<span style=3D"font:7pt &quot;Times New Roman&quot;">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><span style=3D"font-size:11pt;font-family:Calib=
ri,sans-serif;color:rgb(31,73,125)">The RX phase offset between the 4 chann=
els is now constant, running different GnuRadio flowgraphs is no problem<u>=
</u><u></u></span></p>
<p class=3D"gmail-m_8121010277132145006MsoListParagraph" style=3D"line-heig=
ht:16pt">
<u></u><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:r=
gb(31,73,125)"><span>-<span style=3D"font:7pt &quot;Times New Roman&quot;">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><span style=3D"font-size:11pt;font-family:Calib=
ri,sans-serif;color:rgb(31,73,125)">When the device is power-cycled or a fu=
ll re-init is performed, the phase of the radios can jump by 180=C2=B0<u></=
u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:16pt">
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,7=
3,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:16pt">
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,7=
3,125)">Very recently we added coherent TX, aiming at TX beamforming. Not m=
uch experience yet, but it seems to work.<u></u><u></u></span></p>
<p class=3D"gmail-m_8121010277132145006MsoListParagraph" style=3D"line-heig=
ht:16pt">
<u></u><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:r=
gb(31,73,125)"><span>-<span style=3D"font:7pt &quot;Times New Roman&quot;">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><span style=3D"font-size:11pt;font-family:Calib=
ri,sans-serif;color:rgb(31,73,125)">Same setup as above.<u></u><u></u></spa=
n></p>
<p class=3D"gmail-m_8121010277132145006MsoListParagraph" style=3D"line-heig=
ht:16pt">
<u></u><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:r=
gb(31,73,125)"><span>-<span style=3D"font:7pt &quot;Times New Roman&quot;">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><span style=3D"font-size:11pt;font-family:Calib=
ri,sans-serif;color:rgb(31,73,125)">Important: UHD 3.15.0.0 is required, so=
me DUC bug has been fixed with this release<u></u><u></u></span></p>
<p class=3D"gmail-m_8121010277132145006MsoListParagraph" style=3D"line-heig=
ht:16pt">
<u></u><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:r=
gb(31,73,125)"><span>-<span style=3D"font:7pt &quot;Times New Roman&quot;">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><span style=3D"font-size:11pt;font-family:Calib=
ri,sans-serif;color:rgb(31,73,125)">TX phase appears to be stable until pow=
er-cycle / re-init<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:16pt">
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,7=
3,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:16pt">
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,7=
3,125)">This even works with RFNoC (the RX part, TX not tested yet), althou=
gh quite some modifications are necessary to gr-ettus to get synchronized s=
treams.<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:16pt">
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,7=
3,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:16pt">
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,7=
3,125)">Regards,<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:16pt">
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,7=
3,125)">Robert<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10pt;font-family:Tahoma,=
sans-serif">From:</span></b><span style=3D"font-size:10pt;font-family:Tahom=
a,sans-serif"> USRP-users [mailto:<a href=3D"mailto:usrp-users-bounces@list=
s.ettus.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>]
<b>On Behalf Of </b>Nate Temple via USRP-users<br>
<b>Sent:</b> Tuesday, January 28, 2020 9:03 PM<br>
<b>To:</b> Sammy Welschen<br>
<b>Cc:</b> usrp-users; Rob Kossler<br>
<b>Subject:</b> Re: [USRP-users] DOA with N310 or X310+TwinRX<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Arial,sans-serif">Hi Samm=
y,<br>
<br>
&gt;Can I turn it off and come back the next day and still have the same ph=
ase offset between the channels that I had the day before?<br>
<br>
Yes. This assumes that you are running with the same frequency, gain, sampl=
e rate and system temperature that your calibrations were made with. Also u=
nless you have phase stable cables, if you move your cables at all, it can =
cause phase variation.
<br>
<br>
<br>
Regards,<br>
Nate Temple<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Jan 27, 2020 at 9:29 AM Sammy Welschen &lt;<=
a href=3D"mailto:sammywelschen@gmail.com" target=3D"_blank">sammywelschen@g=
mail.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;margin:5pt 0c=
m 5pt 4.8pt">
<div>
<div>
<p class=3D"MsoNormal">Hi Nate, thank you for the information.<u></u><u></u=
></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I&#39;m still a bit unsure what repeatable phase off=
set means exactly. Suppose I have a system with 8 channels with X310+TwinRX=
 and shared LO. Can I turn it off and come back the next day and still have=
 the same phase offset between the channels
 that I had the day before?<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt">Sammy<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Nate Temple via USRP-users &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&g=
t; schrieb am Mo., 27. Jan. 2020, 18:04:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;margin:5pt 0c=
m 5pt 4.8pt">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Arial,sans-serif">Hi Rob,=
 Robert, Sammy:<br>
<br>
Generally for this type of application we would recommend the X310+TwinRx. =
With the TwinRX, you&#39;ll be able to have repeatable phase offsets with a=
 given gain, frequency, sample rate and temperature of a device/system. The=
 N310 will have a 180 degree phase ambiguity
 due to the /2 LO architecture. <br>
<br>
It is possible to share the LO across multiple motherboards for a X310/Twin=
 setup, and with the NI branded X310+TwinRX setup (NI-2955) the LO&#39;s ar=
e provided out of the back panel. The chassis for currently shipping and Re=
v C, F, G X310&#39;s back plate has the
 holes for the LO cables, but the sticker needs to be removed. This applica=
tion note covers the process:
<a href=3D"https://kb.ettus.com/Modifying_an_X310_Chassis_for_External_LO_S=
haring" target=3D"_blank">
https://kb.ettus.com/Modifying_an_X310_Chassis_for_External_LO_Sharing</a><=
br>
<br>
You&#39;ll also need to provide a splitter and most likely an inline amplif=
ier to overcome splitter losses. A splitter such as the ZFRSC-4-842+ will w=
ork.
<a href=3D"https://www.minicircuits.com/pdfs/ZFRSC-4-842+.pdf" target=3D"_b=
lank">https://www.minicircuits.com/pdfs/ZFRSC-4-842+.pdf</a><br>
<br>
<br>
@Rob: With the current init process of the N310, yes it is required to firs=
t set the external LO to 5 GHz.
<br>
<br>
With regards to the offsets you&#39;re seeing, I believe you should only se=
e a possible phase difference of 180* within the two channels on the same D=
B. Are you issuing a tune request at the start of streaming?<br>
<br>
Regards,<br>
Nate Temple<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Jan 27, 2020 at 8:20 AM Rob Kossler via USRP=
-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;margin:5pt 0c=
m 5pt 4.8pt">
<div>
<p class=3D"MsoNormal">Robert, Sammy,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">I am presently running some tests which compare the =
X310/TwinRx and the N310 with regard to channel-to-channel phase.=C2=A0 In =
my setup, I have a signal source that is split 8 ways (1:8 splitter) to fee=
d the 4 channels of my TwinRx and 4 channels
 of my N310. I have seen some strange behavior of the N310 that perhaps Rob=
ert has experienced?=C2=A0 Take a look:<u></u><u></u></p>
</div>
<div>
<ul type=3D"disc">
<li class=3D"MsoNormal">
For the TwinRx (for which I am a more experienced user with LO sharing), I =
get consistent channel-to-channel phase difference among all channels. This=
 is true regardless of power cycles, re-starts of UHD, etc.<u></u><u></u></=
li><li class=3D"MsoNormal">
For the N310 (for which I am a beginner when it comes to external LO operat=
ion)<u></u><u></u></li></ul>
<ul type=3D"disc">
<ul type=3D"circle">
<li class=3D"MsoNormal">
it seems more complex to run in this mode (as compared to TwinRx).=C2=A0 In=
 order to get it to work, I have had to disable startup QEC calibration bec=
ause it seems that the N310 initial cal occurs at 2500 MHz RF such that I w=
ould need to have my external LO at 5000
 MHz for startup (during the UHD deveice &#39;make&#39;) and then later swi=
tch my external LO to the desired RF*2. Is this true?<u></u><u></u></li><li=
 class=3D"MsoNormal">
when I run with either external LO or internal LO, I see inconsistent chann=
el-to-channel phase results even between the two channels of a given daught=
erboard that share the same LO.=C2=A0 I do not understand how this is possi=
ble.=C2=A0 My results over 16 captures (with
 some re-starts of UHD, device reboots, and switching between internal/exte=
rnal LO) show the following channel-to-channel phase difference between cha=
nnels 0 and 1 which share the same LO: (values in degrees) -77, -19, -77, -=
19, -77, -19, -19, 39, -19, -19,
 -77, -19, -77, 39, -19, -19.=C2=A0 Note that there are only 3 unique value=
s and the delta happens to be 58 deg, but I don&#39;t know what that implie=
s...<u></u><u></u></li></ul>
</ul>
<div>
<p class=3D"MsoNormal">Rob<u></u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Jan 27, 2020 at 9:57 AM Robert via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-=
users@lists.ettus.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;margin:5pt 0c=
m 5pt 4.8pt">
<div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:16pt">
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,7=
3,125)">With external LO its 300 MHz =E2=80=93 4 GHz, check footnote [3] fr=
om
</span><a href=3D"https://www.ettus.com/all-products/usrp-n310/" target=3D"=
_blank">https://www.ettus.com/all-products/usrp-n310/</a>.
<span style=3D"color:rgb(31,73,125)">LO has to be supplied at twice the car=
rier freq.</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"line-height:16pt">
=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Currently we use 4 channels. You can find an=
 example how to do the calibration here:
</span><a href=3D"https://github.com/EttusResearch/gr-doa" target=3D"_blank=
">https://github.com/EttusResearch/gr-doa</a><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">gr-doa was written for TwinRX, but can be ad=
apted.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Phase noise behavior of N310 and N320/1 coul=
d be different, as N310 uses an RFIC and N32/1 use discrete
 components. This could be important if you want to operate in the small sa=
mple regime.</span><u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10pt;font-family:Tahoma,=
sans-serif">From:</span></b><span style=3D"font-size:10pt;font-family:Tahom=
a,sans-serif"> USRP-users [mailto:<a href=3D"mailto:usrp-users-bounces@list=
s.ettus.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>]
<b>On Behalf Of </b>Sammy Welschen via USRP-users<br>
<b>Sent:</b> Monday, January 27, 2020 3:40 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] DOA with N310 or X310+TwinRX</span><u></u>=
<u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Thank you for the information Robert! Isn&#39;t it 6=
 GHz? However, 4 GHz would also be sufficient for me.=C2=A0<u></u><u></u></=
p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">How many channels does your system have?=C2=A0 I sup=
pose you use some algorithm for phase calibration after power cycling? I pl=
an to do the same, so the 180 deg ambiguity should be manageable.=C2=A0<u><=
/u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I looked at the N32x, however, they cost twice as mu=
ch and I dont&#39;t plan on using 200 MHz of bandwidth. If I have an extern=
al LO signal I can feed it to the N310, so the only difference
 between N310 and N32x in this regard would be that I need to generate the =
LO externally when using the N310, right?<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">&lt;<a href=3D"mailto:Robert.Poehlmann@dlr.de" targe=
t=3D"_blank">Robert.Poehlmann@dlr.de</a>&gt; schrieb am Mo., 27. Jan. 2020,=
 14:42:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none currentcolor;border-right:none current=
color;border-bottom:none currentcolor;border-left:1pt solid rgb(204,204,204=
);padding:0cm 0cm 0cm 6pt;margin:5pt 0cm 5pt 4.8pt">
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
<blockquote style=3D"border-top:none currentcolor;border-right:none current=
color;border-bottom:none currentcolor;border-left:1pt solid rgb(204,204,204=
);padding:0cm 0cm 0cm 6pt;margin:5pt 0cm 5pt 4.8pt">
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
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a><u></u><u></u></p>
</blockquote>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a><u></u><u></u></p>
</blockquote>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
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
</blockquote>
</div>
</div>
</div>

</blockquote></div></div>

--000000000000e08fcd059edc12dd--


--===============6052416800620544654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6052416800620544654==--

