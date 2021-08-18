Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1113F0817
	for <lists+usrp-users@lfdr.de>; Wed, 18 Aug 2021 17:34:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 20AB7383CA8
	for <lists+usrp-users@lfdr.de>; Wed, 18 Aug 2021 11:34:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="U+uwcPHC";
	dkim-atps=neutral
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id BD36E383B4D
	for <usrp-users@lists.ettus.com>; Wed, 18 Aug 2021 11:33:49 -0400 (EDT)
Received: by mail-ed1-f54.google.com with SMTP id b7so3809962edu.3
        for <usrp-users@lists.ettus.com>; Wed, 18 Aug 2021 08:33:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=knZ8LfzDjEKoOKQkG0vDGKZt9X9c5DO9AURPpnATdFA=;
        b=U+uwcPHCUcq3LCfTTKdz8boXt30Z5jQm63OvA9Ne+2OaXW5UqrkHbQlQeWbrf2WOVT
         ihZpWRoNFblkxVjJ+Ig4cP88Dg22Oe5AXzmYYzP2+bn72yBtH+1O8UuJQcAHEEHAzTA6
         +mzZfBG2jUVV2M2ebdEeV8MhWzL9LViuuU2C4hnED1WK25bN40COpM3lqn1Sc05G7F6t
         Rfdq8574Mex6nvgtlIWYnrNYYoxHXb42Zchh7CUfzgC+oQ8Wx9o5xCTrn5cbZubfNFo0
         bS+mySwAJBCeg+NBI/HjoWtoreEozOxbE9scPbIH+S7xD4+cylj1OBrB7XIfeNaSSHF4
         K+Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=knZ8LfzDjEKoOKQkG0vDGKZt9X9c5DO9AURPpnATdFA=;
        b=TMNtQwwUC7C/X10X4ZJMkeck7cXoBkDUT5Ul+X0vlH44MubzI5KKNPRkcG6Jhd/Aww
         dCD4BLVlryPCeR9UYtQ9/65L68ZM4MnK0WIusPtZnW13Zi7MJIh+gAFm260VuJltjJY2
         hIzjRxE9HkavOXEgkXRyHbDyG1C/16L3eFHiruvYpmkbrJHT3juT5E32bRBlPEmXKFj/
         7xlsU8NaZyZDCDbBD2I+AocWbBSwQsHLD/2PFx9I9cAVYkZXuGzIDrM7Gp79Xef+jdym
         Rs+6BRgo24EahdWaFe33t2gabEgXdJcG9qNeHPjQXnZI7KycaNNpiTniy0vST/x4G62a
         kGFg==
X-Gm-Message-State: AOAM533SXoGSP8xuyZ/oGuby/aqVDYjqIJWgX7RwPgg7pAtx4+7ILlQY
	kwyatIHQcV3IFKrgy5HFRrKP6ImGJ1TM/e1NJMC0Wd2w/Mk=
X-Google-Smtp-Source: ABdhPJwtwIHPuVFASWtq9RNB7J17FwlW0qIUZlKAXNWDRvxbpMp0+dVcnfP1xGgedgfxeFvkhJ5OBmApTze3B0iiqXk=
X-Received: by 2002:aa7:c302:: with SMTP id l2mr10877389edq.200.1629300828647;
 Wed, 18 Aug 2021 08:33:48 -0700 (PDT)
MIME-Version: 1.0
From: Sunny Sam <sunny04sam@gmail.com>
Date: Wed, 18 Aug 2021 11:33:37 -0400
Message-ID: <CAGu8PGz9RQWE+DTY8ZP1BmWY3ynyrO3P+56w+0ZSOvF5-DNBzQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 5U75ZPGUZEY5LBLMJM6MA6JIUCLLNABE
X-Message-ID-Hash: 5U75ZPGUZEY5LBLMJM6MA6JIUCLLNABE
X-MailFrom: sunny04sam@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP scheduling multiple receive with multiple time_spec without waiting for the rx_streamer.recv blocking call to return
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5U75ZPGUZEY5LBLMJM6MA6JIUCLLNABE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6456343711365008017=="

--===============6456343711365008017==
Content-Type: multipart/alternative; boundary="0000000000001fb52605c9d729ad"

--0000000000001fb52605c9d729ad
Content-Type: text/plain; charset="UTF-8"

Hello,

I want to be able to schedule multiple timed receives without waiting for
the rx_streamer blocking call to schedule the next receive. When the time
difference between two consecutive rx_streamer->recv() calls is below
around 400 microseconds, the  time_spec for the second call sometimes will
be in the past because of the latency of the first blocking call
for lower sample rates. Is there a way to schedule multiple receives in
advance to avoid this issue? I included a sample code below. The
next_rx_time is configured to make sure rx has enough time to collect the
number of samples specified in num_rx_samples based on the radio sample
rate. I am using X310.

For tx, the buffer and the time to send is issued with the
tx_streamer.send() call. But for rx, the time to receive has to be set
first with issue_stream_cmd before calling the rx_streamer.recv(). Why is
this implemented this way for rx?

uhd::stream_cmd_t
stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);
stream_cmd.stream_now = false;
stream_cmd.num_samps = num_rx_samples;
stream_cmd.time_spec = uhd::time_spec_t(rx_time_spec);
rx_streamer->issue_stream_cmd(stream_cmd);

while (1)
{
   rx_streamer->recv(&buff.front(),  num_rx_samples , md, 1.0);
   ....
   //schedule the next recv
   rx_time_spec += next_rx_time;
   stream_cmd.time_spec = uhd::time_spec_t(rx_time_spec);
   stream_cmd.stream_now = false;
   stream_cmd.num_samps =  num_rx_samples;
   rx_streamer->issue_stream_cmd(stream_cmd);
}

Thank you in advance for your help.

Sunny

--0000000000001fb52605c9d729ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,=C2=A0</div><div><br></div><div>I want to be ab=
le to schedule multiple timed receives without waiting for the rx_streamer =
blocking call to schedule the next receive. When the time difference=C2=A0b=
etween two consecutive rx_streamer-&gt;recv() calls is below around 400 mic=
roseconds, the=C2=A0

time_spec=C2=A0for the second call sometimes will be in the past because of=
 the latency of the first blocking call for=C2=A0lower=C2=A0sample rates. I=
s there a way to schedule=C2=A0multiple receives in advance=C2=A0to avoid t=
his issue? I included a sample code below. The next_rx_time is configured=
=C2=A0to make sure rx has enough time to collect the number of samples spec=
ified=C2=A0in num_rx_samples based on the radio sample rate. I am using X31=
0.</div><div><br></div><div>For tx, the buffer and the time to send is issu=
ed with the tx_streamer.send() call. But for rx, the time to receive has to=
 be set first with issue_stream_cmd before calling the rx_streamer.recv(). =
Why is this implemented this way for rx?=C2=A0<br></div><div><br></div><div=
>uhd::stream_cmd_t stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_=
DONE);<br>stream_cmd.stream_now =3D false;<br>stream_cmd.num_samps =3D num_=
rx_samples;=C2=A0</div><div>stream_cmd.time_spec =3D uhd::time_spec_t(rx_ti=
me_spec);<br>rx_streamer-&gt;issue_stream_cmd(stream_cmd);<br></div><div><b=
r></div><div>while (1)</div><div>{</div><div>=C2=A0 =C2=A0rx_streamer-&gt;r=
ecv(&amp;buff.front(),=C2=A0

num_rx_samples=C2=A0, md, 1.0);=C2=A0</div><div>=C2=A0 =C2=A0....</div><div=
>=C2=A0 =C2=A0//schedule the next recv<br>=C2=A0 =C2=A0rx_time_spec +=3D ne=
xt_rx_time;<br>=C2=A0 =C2=A0stream_cmd.time_spec =3D uhd::time_spec_t(rx_ti=
me_spec);<br>=C2=A0 =C2=A0stream_cmd.stream_now =3D false;<br></div><div>=
=C2=A0 =C2=A0stream_cmd.num_samps =3D=C2=A0

num_rx_samples;=C2=A0<br></div><div>=C2=A0 =C2=A0rx_streamer-&gt;issue_stre=
am_cmd(stream_cmd);<br></div><div>}</div><div><br></div><div>Thank you in a=
dvance for your help.=C2=A0</div><div><br></div><div>Sunny</div></div>

--0000000000001fb52605c9d729ad--

--===============6456343711365008017==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6456343711365008017==--
