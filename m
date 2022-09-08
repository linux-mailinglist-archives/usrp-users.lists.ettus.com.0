Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D35C5B20BC
	for <lists+usrp-users@lfdr.de>; Thu,  8 Sep 2022 16:37:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DF4C6383B97
	for <lists+usrp-users@lfdr.de>; Thu,  8 Sep 2022 10:37:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662647875; bh=bQbH+qPJUX14UexFBAxC9qWzuc3CUNAdWB12DiHN/4U=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=lwzLFeihg8DSci/a2P6bsTVbfx7eAG++BJggBd0EUgyeBz++vQdC4NXIirpBqFth7
	 KV4080y8kaMXawMZjNzo3UyL0mSE6I30YwTe9XIV4600ThuIMIMOhf0bDVuzUota2X
	 b4Wk1gbGcHKJTHmKKb2mJKQ32XxLWvbdc5NW1xjLkg2w9oyDDKZ+wCr2fv3lrUjE/k
	 2hkaWzBjH1giomkZz6VOpm/5ZgBp3sCsMmjwNfeARPRTiDtGB5RhlFPREPWdD1Cmzz
	 PFodgGadTVWzjoM/cb2o0ClMdLo6jiFyupHJHUh0sN5ZsXzPh3lvR1U8ky58jWfER6
	 jiMQ8RBGxKKJg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 77303383A31
	for <usrp-users@lists.ettus.com>; Thu,  8 Sep 2022 10:37:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662647821; bh=Us2l8SnQIbB8ag/HyhmsqdYMizVqHNgw0IY6NTFtcDw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=o6rBiEbfNg3du3TRMR/vr3B3zr+tc1jj4BTarAgJz8QlTM4/1xBmdX6Jb/4+/DRsm
	 rtdNDTwllhMviNrnXy0oqUFZSw8MKFgQEyeIK41uRJJv0DuzUV2UIRoIQdOEzzO1+J
	 xiNawAEmGLk73N9yrx7Po5ExcKYfJ/ptqwMcU2BejAS9ejtS757fOjWnk6dvdL11wW
	 lp+a096SjqoeP5mZgI+JTvy1R/I5rxj3OT91UQJUAe9000Vnq82QRVhZ2dgqXTqsCu
	 B+p/kVDkq99UYL8CS7vxHNNN1cAkKCnWSRosPDHx85XPzzeobIGdScfJ6XbpV6+HwU
	 Yi6vWKTq1+mlQ==
Date: Thu, 8 Sep 2022 14:37:01 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <qVlceRRVjCcOiGA4Y8GIG4PaVGY0JSbCs9dkqIH6Ik@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: d0adea51-ec47-81d8-4949-15a18d268c39@gmail.com
MIME-Version: 1.0
Message-ID-Hash: PGVCQ2WKGXZE7EFVVSHXN4EZGDHDEJS3
X-Message-ID-Hash: PGVCQ2WKGXZE7EFVVSHXN4EZGDHDEJS3
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N210 USRP synchronization performance 4x worse than expected - suspect configuration problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PGVCQ2WKGXZE7EFVVSHXN4EZGDHDEJS3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7558221553471807801=="

This is a multi-part message in MIME format.

--===============7558221553471807801==
Content-Type: multipart/alternative;
 boundary="b1_qVlceRRVjCcOiGA4Y8GIG4PaVGY0JSbCs9dkqIH6Ik"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_qVlceRRVjCcOiGA4Y8GIG4PaVGY0JSbCs9dkqIH6Ik
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Marcus D. Leech wrote:

> On 2022-09-08 04:54, Aiden Morrison via USRP-users wrote:
>
> > Hello,
> >
> > I am attempting to do synchronized multi-site reception using USRP
> > N210 radios. Our first attempt was to make use of 2x radios with ettu=
s
> > GPSDO modules installed, feeding the radios with a common PRN sequenc=
e
> > and correlating the outputs to evaluate timing offset. The Ettus GPSD=
O
> > radios say they provide +/-60ns timing accuracy, so even in the worst
> > case where one of the radios goes to each side of the limit, at 10 MH=
z
> > we would have slightly more than 1 sample of offset between them, but
> > in testing we observed +0 to +3 samples of offset.
> >
> > To isolate the problem we repeated the test with two different N210
> > radios fed by a common external 10 MHz and PPS signal from a GNSS
> > disciplined Rubidium source, and observed exactly the same +0 to +3
> > samples of shift between the captured sequences. Seeing the same erro=
r
> > when using a common clock indicates the problem is very likely to be
> > in our test software.
> >
> > In our software we follow
> > https://files.ettus.com/manual/page_sync.html for synchronization:
> >
> > 1. We create two USRP objects, one for each radio.
> > 2. We command the USRPs to use the external synchronization (radios
> >    report back that they are synchronized to the GPSDO in the former
> >    configuration)
> > 3. We use a common time in the time spec commands for each
> >    configuration change (e.g. setting LO frequencies)
> > 4. For each burst capture of 50,000 samples we set a time_spec for
> >    each USRP a long time in the future (1.0 seconds since the last
> >    capture)
> > 5. Step 4 is repeated 1000 times giving us 1000 bursts for evaluating
> >    the synchronization
> >
> > The only factor I can see is that we are using WBX radio modules, and
> > we are uncertain if this is somehow a factor in what we are seeing.
> >
> > Thanks in advance for feedback.
> >
> > \-Aiden
> >
> > ---

Hello,

Aiden was talking about time offset not phase offset. WBX phase ambiguity=
 is important information but a bit off-topic.=20

As far as I remember GPS synchronization for N2x0, the numbers from Ettus=
 specs are a bit optimistic.

It seemed what they are putting there is standard deviation of the time d=
ifference not max/min. Then it would make sense.

But I didn=E2=80=99t try to synchronize N2x0=E2=80=99s for some time (man=
y years) so I=E2=80=99m not sure. Maybe something changed.

Best Regards,\
Piotr Krysik

--b1_qVlceRRVjCcOiGA4Y8GIG4PaVGY0JSbCs9dkqIH6Ik
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Marcus D. Leech wrote:</p><blockquote><p>On 2022-09-08 04:54, Aiden Mo=
rrison via USRP-users wrote:</p><blockquote><p>Hello,</p><p>I am attempti=
ng to do synchronized multi-site reception using USRP
N210 radios. Our first attempt was to make use of 2x radios with ettus
GPSDO modules installed, feeding the radios with a common PRN sequence
and correlating the outputs to evaluate timing offset. The Ettus GPSDO
radios say they provide +/-60ns timing accuracy, so even in the worst
case where one of the radios goes to each side of the limit, at 10 MHz
we would have slightly more than 1 sample of offset between them, but
in testing we observed +0 to +3 samples of offset.</p><p>To isolate the p=
roblem we repeated the test with two different N210
radios fed by a common external 10 MHz and PPS signal from a GNSS
disciplined Rubidium source, and observed exactly the same +0 to +3
samples of shift between the captured sequences. Seeing the same error
when using a common clock indicates the problem is very likely to be
in our test software.</p><p>In our software we follow
https://files.ettus.com/manual/page_sync.html for synchronization:</p><ol=
 data-tight=3D"true"><li><p>We create two USRP objects, one for each radi=
o.</p></li><li><p>We command the USRPs to use the external synchronizatio=
n (radios
report back that they are synchronized to the GPSDO in the former
configuration)</p></li><li><p>We use a common time in the time spec comma=
nds for each
configuration change (e.g. setting LO frequencies)</p></li><li><p>For eac=
h burst capture of 50,000 samples we set a time_spec for
each USRP a long time in the future (1.0 seconds since the last
capture)</p></li><li><p>Step 4 is repeated 1000 times giving us 1000 burs=
ts for evaluating
the synchronization</p></li></ol><p>The only factor I can see is that we =
are using WBX radio modules, and
we are uncertain if this is somehow a factor in what we are seeing.</p><p=
>Thanks in advance for feedback.</p><p>-Aiden</p><div class=3D"" contente=
ditable=3D"false"><hr></div></blockquote></blockquote><p>Hello,</p><p>Aid=
en was talking about time offset not phase offset. WBX phase ambiguity is=
 important information but a bit off-topic. </p><p>As far as I remember G=
PS synchronization for N2x0, the numbers from Ettus specs are a bit optim=
istic.</p><p>It seemed what they are putting there is standard deviation =
of the time difference not max/min. Then it would make sense.</p><p>But I=
 didn=E2=80=99t try to synchronize N2x0=E2=80=99s for some time (many yea=
rs) so I=E2=80=99m not sure. Maybe something changed.</p><p>Best Regards,=
<br>Piotr Krysik</p>


--b1_qVlceRRVjCcOiGA4Y8GIG4PaVGY0JSbCs9dkqIH6Ik--

--===============7558221553471807801==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7558221553471807801==--
