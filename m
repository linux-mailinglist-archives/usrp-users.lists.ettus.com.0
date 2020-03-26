Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD2B19442C
	for <lists+usrp-users@lfdr.de>; Thu, 26 Mar 2020 17:21:16 +0100 (CET)
Received: from [::1] (port=45988 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jHVFn-0003PS-Pd; Thu, 26 Mar 2020 12:21:11 -0400
Received: from mail-lj1-f182.google.com ([209.85.208.182]:39504)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sam.reiter@ettus.com>)
 id 1jHVFj-0003KI-0C
 for usrp-users@lists.ettus.com; Thu, 26 Mar 2020 12:21:07 -0400
Received: by mail-lj1-f182.google.com with SMTP id i20so7025185ljn.6
 for <usrp-users@lists.ettus.com>; Thu, 26 Mar 2020 09:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XmZCnboH35TFhiOLI2bbrFkl8fSSCBdK/QuJxt/SJtQ=;
 b=Isjgrd/xT00M2O/313FBp1knxkJr2A8GhEPcinQlS4XfEnacu7a2++rjUgGRO8rBwj
 LnDGGFbvgPBFvTadVk7s92qAGpxs4i3eLmvt1h5UcJclB2tsdwipu6UzH8XhwS2+7OZP
 dG4VTmTjT/696ySqKdg9uEWfDCwj6XXW0ITidxReMtWK6uagaiS3h4moG0xY/WTJ496c
 pinn+6zH2bBC5i62VHIYiLr6FY0aNmShqFhkNwvqsrH+9/0G1hkJPZodlaey8nYENF5X
 iTYtYKPedxrqhHVGQCQionzW0y0RrFVNJ4H+q8bbq422dtJWgYv40Amq7B3mHdNq11n+
 W1kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XmZCnboH35TFhiOLI2bbrFkl8fSSCBdK/QuJxt/SJtQ=;
 b=WgMeAkQtcdwGbSQgweWfFZKwmbiqtfLxO/sK/5lEadMZPNekJL03iZRzFFiw6iT4Vy
 FyVp9LdQAaQZEmFM6xxkWAFfj829Lu3jhILHEYiFhnC5GGkas31hTWfaOw9WtIh4hrkN
 gzb7JLstNU1vqfZdNRFZXLstA9ZtkbITL3GmpD3/K0Jo9EuCxoipDo/7F6Jtj8LTGiDm
 JZO4pGmczK2kit72VuonwrOU65gpskohyeGyqj2Kngg6UYYq8NXpsSmH4mRe5fKx0VUa
 AZBVSfNSCVdZws15jp6lqUKAKlp9vdugFlrG2WmzzM1sCJO8Us8/BeKiyMnIRNh5JnkH
 izJw==
X-Gm-Message-State: ANhLgQ0qMF9j8lzTQ/zRQacKvWvLws89sC/J3+2BOIpACHkC2h/HNeN4
 5Ba1gIWJk2+aCXpbWVA+rgU8fgLEI/9Z/ohdrjNuXdPH
X-Google-Smtp-Source: ADFU+vvFiHrrP+fWPGNCZI61pJoOaNOvsOejLZdc+a9eaL4bgl0YbvSCLvMipUw6OM0gtLrCaEp/EdL1abNZ+Ji/Zvs=
X-Received: by 2002:a2e:3211:: with SMTP id y17mr5590435ljy.23.1585239625654; 
 Thu, 26 Mar 2020 09:20:25 -0700 (PDT)
MIME-Version: 1.0
References: <MN2PR09MB407777596E9014B53CBEC704D9F00@MN2PR09MB4077.namprd09.prod.outlook.com>
 <26622_1585057703_5E7A0FA7_26622_1826_2_CANf970bcHZZPWg-VQ-xNtxd5eYWWTEW+kQUGfPyC1M-ddrXKvg@mail.gmail.com>
 <DM6PR09MB4075F5B11770378E9A31179DD9CE0@DM6PR09MB4075.namprd09.prod.outlook.com>
In-Reply-To: <DM6PR09MB4075F5B11770378E9A31179DD9CE0@DM6PR09MB4075.namprd09.prod.outlook.com>
Date: Thu, 26 Mar 2020 11:20:14 -0500
Message-ID: <CANf970YbWyyOSh9E=ub2arDQF73JgRi9Md2YYjukSP19MpOy1g@mail.gmail.com>
To: "Long, Jeffrey P." <jplong@mitre.org>
Subject: Re: [USRP-users] [EXT] Re:  E320 GPS staying locked?
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1677759016450194459=="
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

--===============1677759016450194459==
Content-Type: multipart/alternative; boundary="000000000000c5752505a1c45c30"

--000000000000c5752505a1c45c30
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Jeff,

Thanks for the detailed info. The N310 and the E320 both use the LTE-Lite
from Jackson Labs for their GPSDOs, so it's conceivable that the same
rework is applicable to both, but I'm not positive - I wasn't directly
involved in the hardware investigation.  I'll reach out to you off the
mailing list and get some of that additional information / screenshots.

Best,

Sam Reiter

On Wed, Mar 25, 2020 at 4:06 PM Long, Jeffrey P. <jplong@mitre.org> wrote:

> Sam-
>
>
>
> So I am actually using a gps satellite simulator(Labsat). This plays back
> previously recorded data and there are a number of test scenarios on ther=
e
> for me to use. Currently I am using a simple static one recorded in the U=
K
> I think. To protect the output I insert a DC block in. For the GPS rxrs i=
n
> the E310, and X310 this has worked great and they lock up pretty quickly
> although the X310 does take longer than the E310. That E310 Ublox receive=
r
> is really fast.
>
>
>
> I will send my serial numbers to Ettus support but given what you said
> about the E320 I decided to go back to basics and see if I could get the
> N310 I have to reliably lock and I learned some interesting things about =
it
> and its GPS. After extensive debugging all day using gpsmon I have learne=
d
> that the N310 GPS (Jackson Labs LTE Lite) is very finicky it would seem.
>
>
>
> I found the following kind of works:
>
>
>
> 1)Power up the N310 from a cold start (unplugged at first because it seem=
s
> the board gets power even before you hit the switch).
>
> 2)Run a uhd_usrp_probe =E2=80=93args =E2=80=9Ctime_source=3Dgpsdo,clock_s=
ource=3Dgpsdo=E2=80=9D to
> force it to switch the daughtercards over
>
> 3)set the system date and time to be close to the signal coming from the
> labsat. (Maybe this does not matter but then TOFF is not so out of wack.
>
> 3)Then run gpsmon and watch it acquire. Almost immediately SNR is good
> (45-50) and TPV shows lat and long, quality is 2 and it has 8 sats. Then =
we
> wait.
>
> 4)Eventually it will acquire(takes 7-8 mins) meaning that the GPS light
> will turn on and when I run the sensor query it reports back locked.
>
>
>
> While this seems to take forever it is repeatable. Now the fun starts. If
> after I have got it to lock up and then one of two things happens, either
> the labsat file rolls over or I disconnect the signal from the jack, gpsm=
on
> will show low SNR and eventually it will unlock. This makes sense I
> although the rollover thing is weird because ublox does not have an issue
> with that. What is really annoying is that when I plug the signal back in
> or restart the labsat the GPS never seems to try to re-acquire and there
> seems to be no way to restart it. A reboot does not fix it. Only a comple=
te
> power down and disconnect from power seems to restart the GPS. It gets in
> some messed up state and that=E2=80=99s it. Does that seem normal? My N31=
0s are
> fairly old. Did they have some GPS recall at some point? By the way I
> noticed in its screwed up state it no longer sends GSV strings and if you
> decide to do a N310 bist gpsdo it will totally wipe out the GPS module an=
d
> it seems to no longer output pps or the ref too. Probably not intended
> behavior?
>
>
>
> I have some screenshots of gpsmon if you are interested. I did not want t=
o
> blast the list with images. Let me know and I can send them.
>
>
>
> I am going to do some experimenting with the E320 and see if it behaves
> similarly. I bought my E320s very recently so I would be surprised if the=
y
> needed that fix (Serial #31C8CC6). I did notice in the VHDL top for the
> E320 that there are some pin controls to the GPS module which I did not s=
ee
> in the N310 top. This could mean that there is more control over the E320
> GPS?? I was thinking of chipscoping those pins maybe too and see how they
> change with UHD startup etc..
>
>
>
>
>
> Thanks
>
> Jeff
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> *From:* Sam Reiter <sam.reiter@ettus.com>
> *Sent:* Tuesday, March 24, 2020 9:48 AM
> *To:* Long, Jeffrey P. <jplong@mitre.org>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* [EXT] Re: [USRP-users] E320 GPS staying locked?
>
>
>
> Hey Jeff,
>
>
>
> What type of GPS antenna are you using? 3.3V or 5V? If it's compatible
> with X310 & other USRPs, I would imagine you'll be good to go with the
> E320... Do you see the locked / unlocked status change between consecutiv=
e
> runs of something like gpsmon on the E320?
>
>
>
> There were some early-ish runs of the E320 that are eligible for a GPSDO
> rework, feel free to send support@ettus.com a direct email with your
> E320's serial number and I can see if yours is one of the affected units.
>
>
>
> Sam Reiter
>
>
>
> On Mon, Mar 23, 2020 at 4:27 PM Long, Jeffrey P. via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Has anyone had issues with the E320 GPS locking or staying locked? I have
> a LabSat GNSS simulator that I am reliably able to get a E310, X310, and
> even a N310 to lock to however the E320 I just got will occasionally lock
> and then fall out almost immediately. I used mender to up it to 3.15LTS a=
nd
> everything else works pretty well. I run the e320bist on the gpsdo and it
> reports it mostly being unlocked but occasionally it will lock for a minu=
te
> or so. When it does lock I can run the query gpsdo immediately after and =
it
> will report locked but again it only lasts for a min or so.
>
>
>
> Thanks
>
> Jeff
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--000000000000c5752505a1c45c30
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Jeff,<div><br></div><div>Thanks for the detailed=C2=A0=
info. The N310 and the E320 both use  the LTE-Lite from Jackson Labs for th=
eir GPSDOs, so it&#39;s conceivable that the same rework is applicable to b=
oth, but I&#39;m not positive - I wasn&#39;t directly involved in the hardw=
are investigation.=C2=A0 I&#39;ll reach out to you off the mailing list and=
 get some of that additional information / screenshots.=C2=A0</div><div><br=
></div><div>Best,</div><div><br clear=3D"all"><div><div dir=3D"ltr" class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><div dir=3D"ltr">Sam Reiter=C2=A0</div></div></div></div></div></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Wed, Mar 25, 2020 at 4:06 PM Long, Jeffrey P. &lt;<a href=3D"mailto:jplong@=
mitre.org">jplong@mitre.org</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-2701610312445515109WordSection1">
<p class=3D"MsoNormal">Sam-<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">So I am actually using a gps satellite simulator(Lab=
sat). This plays back previously recorded data and there are a number of te=
st scenarios on there for me to use. Currently I am using a simple static o=
ne recorded in the UK I think. To
 protect the output I insert a DC block in. For the GPS rxrs in the E310, a=
nd X310 this has worked great and they lock up pretty quickly although the =
X310 does take longer than the E310. That E310 Ublox receiver is really fas=
t.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I will send my serial numbers to Ettus support but g=
iven what you said about the E320 I decided to go back to basics and see if=
 I could get the N310 I have to reliably lock and I learned some interestin=
g things about it and its GPS. After
 extensive debugging all day using gpsmon I have learned that the N310 GPS =
(Jackson Labs LTE Lite) is very finicky it would seem.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I found the following kind of works:<u></u><u></u></=
p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">1)Power up the N310 from a cold start (unplugged at =
first because it seems the board gets power even before you hit the switch)=
.<u></u><u></u></p>
<p class=3D"MsoNormal">2)Run a uhd_usrp_probe =E2=80=93args =E2=80=9Ctime_s=
ource=3Dgpsdo,clock_source=3Dgpsdo=E2=80=9D to force it to switch the daugh=
tercards over<u></u><u></u></p>
<p class=3D"MsoNormal">3)set the system date and time to be close to the si=
gnal coming from the labsat. (Maybe this does not matter but then TOFF is n=
ot so out of wack.<u></u><u></u></p>
<p class=3D"MsoNormal">3)Then run gpsmon and watch it acquire. Almost immed=
iately SNR is good (45-50) and TPV shows lat and long, quality is 2 and it =
has 8 sats. Then we wait.<u></u><u></u></p>
<p class=3D"MsoNormal">4)Eventually it will acquire(takes 7-8 mins) meaning=
 that the GPS light will turn on and when I run the sensor query it reports=
 back locked.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">While this seems to take forever it is repeatable. N=
ow the fun starts. If after I have got it to lock up and then one of two th=
ings happens, either the labsat file rolls over or I disconnect the signal =
from the jack, gpsmon will show low
 SNR and eventually it will unlock. This makes sense I although the rollove=
r thing is weird because ublox does not have an issue with that. What is re=
ally annoying is that when I plug the signal back in or restart the labsat =
the GPS never seems to try to re-acquire
 and there seems to be no way to restart it. A reboot does not fix it. Only=
 a complete power down and disconnect from power seems to restart the GPS. =
It gets in some messed up state and that=E2=80=99s it. Does that seem norma=
l? My N310s are fairly old. Did they have
 some GPS recall at some point? By the way I noticed in its screwed up stat=
e it no longer sends GSV strings and if you decide to do a N310 bist gpsdo =
it will totally wipe out the GPS module and it seems to no longer output pp=
s or the ref too. Probably not intended
 behavior?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have some screenshots of gpsmon if you are interes=
ted. I did not want to blast the list with images. Let me know and I can se=
nd them.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am going to do some experimenting with the E320 an=
d see if it behaves similarly. I bought my E320s very recently so I would b=
e surprised if they needed that fix (Serial #31C8CC6). I did notice in the =
VHDL top for the E320 that there are
 some pin controls to the GPS module which I did not see in the N310 top. T=
his could mean that there is more control over the E320 GPS?? I was thinkin=
g of chipscoping those pins maybe too and see how they change with UHD star=
tup etc..<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks<u></u><u></u></p>
<p class=3D"MsoNormal">Jeff<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b>From:</b> Sam Reiter &lt;<a href=3D"mailto:sam.re=
iter@ettus.com" target=3D"_blank">sam.reiter@ettus.com</a>&gt; <br>
<b>Sent:</b> Tuesday, March 24, 2020 9:48 AM<br>
<b>To:</b> Long, Jeffrey P. &lt;<a href=3D"mailto:jplong@mitre.org" target=
=3D"_blank">jplong@mitre.org</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [EXT] Re: [USRP-users] E320 GPS staying locked?<u></u><u></=
u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Verdana,sans-serif">Hey J=
eff,=C2=A0<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Verdana,sans-serif"><u></=
u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Verdana,sans-serif">What =
type of GPS antenna are you using? 3.3V or=C2=A05V? If it&#39;s compatible =
with X310 &amp; other USRPs, I would imagine you&#39;ll be good to go with =
the E320... Do you see the locked / unlocked status
 change between consecutive runs of something like gpsmon on the E320?<u></=
u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Verdana,sans-serif"><u></=
u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Verdana,sans-serif">There=
 were some early-ish runs of the E320 that are eligible for a GPSDO rework,=
 feel free to send
<a href=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus.com</a=
> a direct email with your E320&#39;s serial number and I can see if yours =
is one of the affected units.<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Verdana,sans-serif"><u></=
u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Verdana,sans-serif">Sam R=
eiter<u></u><u></u></span></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Mar 23, 2020 at 4:27 PM Long, Jeffrey P. via=
 USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bl=
ank">usrp-users@lists.ettus.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin-left:4=
.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal">Has anyone had issues with the E320 GPS locking or s=
taying locked? I have a LabSat GNSS simulator that I am reliably able to ge=
t a E310, X310, and even a N310 to lock to however
 the E320 I just got will occasionally lock and then fall out almost immedi=
ately. I used mender to up it to 3.15LTS and everything else works pretty w=
ell. I run the e320bist on the gpsdo and it reports it mostly being unlocke=
d but occasionally it will lock
 for a minute or so. When it does lock I can run the query gpsdo immediatel=
y after and it will report locked but again it only lasts for a min or so.<=
u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Thanks<u></u><u></u></p>
<p class=3D"MsoNormal">Jeff<u></u><u></u></p>
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
</div>
</div>

</blockquote></div>

--000000000000c5752505a1c45c30--


--===============1677759016450194459==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1677759016450194459==--

