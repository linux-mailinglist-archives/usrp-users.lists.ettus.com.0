Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FBA1F0107
	for <lists+usrp-users@lfdr.de>; Fri,  5 Jun 2020 22:36:18 +0200 (CEST)
Received: from [::1] (port=50014 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jhJ4Z-0005kJ-40; Fri, 05 Jun 2020 16:36:15 -0400
Received: from mail-qt1-f180.google.com ([209.85.160.180]:34923)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <siddsubra@gmail.com>) id 1jhJ4V-0005Cq-DC
 for usrp-users@lists.ettus.com; Fri, 05 Jun 2020 16:36:11 -0400
Received: by mail-qt1-f180.google.com with SMTP id z1so9688036qtn.2
 for <usrp-users@lists.ettus.com>; Fri, 05 Jun 2020 13:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:message-id:date
 :to:cc; bh=2MbWoVJDZkVbJrIo16QS/NkSttDa7w5zLpyjoRsttvM=;
 b=bypPtwl1afolqoeKoSlfVWlgw0p3hNr7XxIiSMjC3KdRUHo3K6mbdMQsw9XYMDTuqU
 686UK8mPDPUyP9ecglSpV3aKVCHVDcSkKzJ7qd6TYbINlZ23hl6JUg1seqgeXAwC0HqR
 wym43FIcn6HtwNqrITG4oAc1eF8hcgWjLsFlmJuZedmNBOHHTnHC4SiWpXKk+Ea4lHdy
 Q3+gMwite3gfIQlgMXrSIULm7ROS/w8FLOcZMudVdeCU+K/uSpTC9jMl8LXlX52QvQRf
 TIWJPtkHI7jWjNiRaJy50Iz6U4kEqMdTVczWUppi8LnEgKBzfD+5lWP7HDTF+fnLNMWc
 yf+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:message-id:date:to:cc;
 bh=2MbWoVJDZkVbJrIo16QS/NkSttDa7w5zLpyjoRsttvM=;
 b=LSP/1cUgoCvkOEPDH4Z1FVvrkdmlR4ybhgi9ul60OW8/8kt4k0E4HaZ7oxkCxpmQHI
 pcylLdLlSXNuTXB/U8/OLPZ1kZvJh4AbMocKdll0ausYPZqdMEZ/bURlt/usH6OYSdP4
 tVm0D6ZSqZedZTV9GRIHlN4W9yAnIX7kqJpAG8e3bRYS/E2ATP22RrbV3kJz9mBghtWH
 zXVjSBMA/BUQ46JfJG9cCUoFjkPVTIVBtmAOrBEJtksGc7eUT2jlSgq8+uuRfG93smz6
 rzBXHgx5RnSqWIqA5OuDTjPPvtsyhbYRS1lxEHdiH+LqsaNRDCGzMVHyjXfqEss3YrYw
 YW8A==
X-Gm-Message-State: AOAM533YM6pfvcSbEOPLzRgtBvc9mWMu3le1+4keOBgJlAe1OnZ2wcif
 pme8krRnbf4tBc4tb7yxmuo=
X-Google-Smtp-Source: ABdhPJyzwFhFmwb/KQ8m8aTc07A/TJdffG0f3oMJelV+6m9y4ruqZIK8J09qOByeSQgS5F6CLNWgjQ==
X-Received: by 2002:ac8:4d0e:: with SMTP id w14mr12158254qtv.266.1591389330510; 
 Fri, 05 Jun 2020 13:35:30 -0700 (PDT)
Received: from [192.168.86.250] (c-73-236-113-201.hsd1.wv.comcast.net.
 [73.236.113.201])
 by smtp.gmail.com with ESMTPSA id h77sm810316qke.37.2020.06.05.13.35.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Jun 2020 13:35:29 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Message-Id: <985418C5-CF43-4F69-A441-6233A1D0ACBB@gmail.com>
Date: Fri, 5 Jun 2020 16:35:28 -0400
To: Marcus D Leech <patchvonbraun@gmail.com>
X-Mailer: iPad Mail (17F75)
Subject: Re: [USRP-users] Clock Bias from board mounted GPSDO
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
From: Sidd Subramanyam via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sidd Subramanyam <siddsubra@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============7422096022298280483=="
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


--===============7422096022298280483==
Content-Type: multipart/alternative; boundary=Apple-Mail-137C45F2-CE3F-40D0-A3BA-6230530720CC
Content-Transfer-Encoding: 7bit


--Apple-Mail-137C45F2-CE3F-40D0-A3BA-6230530720CC
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFBy clock bias I am referring to the difference between true GPS tim=
e and the USRP time.

For example, in my application I am running 2 Separate B210 USRPs each side b=
y side with a split signal coming from a single S band antenna. However, the=
y are both disciplined using separate GPSDOs with separate antennas to simul=
ate being 2 independent devices. They are being synchronized as described in=
 method 2 in this article (https://files.ettus.com/manual/page_sync.html) an=
d then the data collection is being commanded to start at the same GPS time f=
or both devices.=20

My goal is to try to create as phase coherent of an operation as possible be=
tween the 2 USRPs.
When I cross correlate the 2 split S band signals to calculate difference in=
 phase between the 2 signals, there is a significant drift over time. This p=
hase difference converted is about 300 nanoseconds over the course of 1 seco=
nd (300 PPB).Because of this, I wished to see if I could use the calculated c=
lock bias that I described above to compensate for this drift in phase.=20

However, now that you have mentioned that I should in fact be getting 1 PPB a=
ccuracy when synchronized to GPS time, I am questioning if I am doing the ti=
me synchronization process wrong altogether Since I seem to be getting drift=
 around 300 PB after following the instructions in the link above.

Sidd
=20

>> On Jun 4, 2020, at 1:24 PM, Marcus D Leech <patchvonbraun@gmail.com> wrot=
e:
> =EF=BB=BFWhat exactly do you mean by clock bias? compared to what?
>=20
> Once the unit is locked to GPS and you use the GPSDO as your system clock,=
 the timing will be under 1PPB. What exactly are you measuring?
>=20
> If you=E2=80=99re trying fo derive bit timing from a modulated digital sig=
nal, the usual way is to use a PLL in your DSP algorithms.=20
>=20
> Sent from my iPhone
>=20
>>> On Jun 4, 2020, at 11:52 AM, Sidd Subramanyam via USRP-users <usrp-users=
@lists.ettus.com> wrote:
>> =EF=BB=BF
>> Hi all,
>>=20
>> I was wondering if there was a way to extract or compute a precise Clock B=
ias of the USRP time vs GPS time from the GPSDO. I am using a B210 USRP with=
 the board mounted recommended TCXO GPSDO. I have previously used the GNSS-S=
DR (https://gnss-sdr.org/) software to compute pseudorange and clock bias, h=
owever this software is run by using the front end RX channels and not the G=
PSDO input.
>>=20
>> In my use case, I have a need to compute this from my built in GPSDO sinc=
e I am intending to simultaneously use the front end on S-band signals, and t=
he B series does not allow 2 separate center frequencies across its 2 RX cha=
nnels.
>>=20
>> I am aware of the NMEA messages from which I can extract the position loc=
k via serial but it does not seem like there is a time output that is more g=
ranular than one second which I can use to compute a clock bias.
>>=20
>> Any help is appreciated.
>>=20
>> Thank you,
>> Sidd
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-137C45F2-CE3F-40D0-A3BA-6230530720CC
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div dir=3D"ltr"><div dir=3D"ltr"><meta htt=
p-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8"><div dir=3D"=
ltr">=EF=BB=BF<meta http-equiv=3D"content-type" content=3D"text/html; charse=
t=3Dutf-8">By clock bias I am referring to the difference between true GPS t=
ime and the USRP time.</div><div dir=3D"ltr"><br><div>For example, in my app=
lication I am running 2 Separate B210 USRPs each side by side with a split s=
ignal coming from a single S band antenna. However, they are both discipline=
d using separate GPSDOs with separate antennas to simulate being 2 independe=
nt devices. They are being synchronized as described in method 2 in this art=
icle (<a href=3D"https://files.ettus.com/manual/page_sync.html">https://file=
s.ettus.com/manual/page_sync.html</a>) and then the data collection is being=
 commanded to start at the same GPS time for both devices.&nbsp;</div><div><=
br></div><div>My goal is to try to create as phase coherent of an operation a=
s possible between the 2 USRPs.</div><div>When I cross correlate the 2 split=
 S band signals to calculate difference in phase between the 2 signals, ther=
e is a significant drift over time. This phase difference converted is about=
 300 nanoseconds over the course of 1 second (300 PPB).Because of this, I wi=
shed to see if I could use the calculated clock bias that I described above t=
o compensate for this drift in phase.&nbsp;</div><div><br></div><div>However=
, now that you have mentioned that I should in fact be getting 1 PPB accurac=
y when synchronized to GPS time, I am questioning if I am doing the time syn=
chronization process wrong altogether Since I seem to be getting drift aroun=
d 300 PB after following the instructions in the link above.</div><div><br><=
/div><div>Sidd</div><div>&nbsp;</div><div><div><div><br><div dir=3D"ltr"><bl=
ockquote type=3D"cite">On Jun 4, 2020, at 1:24 PM, Marcus D Leech &lt;patchv=
onbraun@gmail.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"c=
ite"><div dir=3D"ltr">=EF=BB=BF<meta http-equiv=3D"content-type" content=3D"=
text/html; charset=3Dutf-8">What exactly do you mean by clock bias? compared=
 to what?<div><br></div><div>Once the unit is locked to GPS and you use the G=
PSDO as your system clock, the timing will be under 1PPB. What exactly are y=
ou measuring?</div><div><br></div><div>If you=E2=80=99re trying fo derive bi=
t timing from a modulated digital signal, the usual way is to use a PLL in y=
our DSP algorithms.&nbsp;<br><div><br><div dir=3D"ltr">Sent from my iPhone</=
div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jun 4, 2020, at 11:52 A=
M, Sidd Subramanyam via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:=
<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF<meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8">=
<div dir=3D"ltr"><meta http-equiv=3D"content-type" content=3D"text/html; cha=
rset=3Dutf-8"><div dir=3D"ltr"><meta http-equiv=3D"content-type" content=3D"=
text/html; charset=3Dutf-8">Hi all,<div><br></div><div>I was wondering if th=
ere was a way to extract or compute a precise Clock Bias of the USRP time vs=
 GPS time from the GPSDO. I am using a B210 USRP with the board mounted reco=
mmended TCXO GPSDO. I have previously used the GNSS-SDR (<a href=3D"https://=
gnss-sdr.org/">https://gnss-sdr.org/</a>) software to compute pseudorange an=
d clock bias, however this software is run by using the front end RX channel=
s and not the GPSDO input.</div><div><br></div><div>In my use case, I have a=
 need to compute this from my built in GPSDO since I am intending to simulta=
neously use the front end on S-band signals, and the B series does not allow=
 2 separate center frequencies across its 2 RX channels.</div><div><br></div=
><div>I am aware of the NMEA messages from which I can extract the position l=
ock via serial but it does not seem like there is a time output that is more=
 granular than one second which I can use to compute a clock bias.</div><div=
><br></div><div>Any help is appreciated.</div><div><br></div><div>Thank you,=
</div><div>Sidd</div><div><br></div><div><br></div></div></div><span>_______=
________________________________________</span><br><span>USRP-users mailing l=
ist</span><br><span>USRP-users@lists.ettus.com</span><br><span>http://lists.=
ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><br></div></bloc=
kquote></div></div></div></blockquote></div></div></div></div></div></div></=
body></html>=

--Apple-Mail-137C45F2-CE3F-40D0-A3BA-6230530720CC--


--===============7422096022298280483==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7422096022298280483==--

