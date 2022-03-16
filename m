Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 192564DB39B
	for <lists+usrp-users@lfdr.de>; Wed, 16 Mar 2022 15:48:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 34C55385134
	for <lists+usrp-users@lfdr.de>; Wed, 16 Mar 2022 10:48:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Zy6Pl6rq";
	dkim-atps=neutral
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 47D9D384C80
	for <usrp-users@lists.ettus.com>; Wed, 16 Mar 2022 10:47:33 -0400 (EDT)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-2db2add4516so26228747b3.1
        for <usrp-users@lists.ettus.com>; Wed, 16 Mar 2022 07:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mIxwHJHbpftI478SJJeQ2ycLwcF1xQUnCVdgmN8rBqg=;
        b=Zy6Pl6rqKZyiXsOFKJT65qJUldlvZBRYIymJD278JDGJvQT6NJo7rhGCS2KZ1rJtWL
         WuxiA1lMPdeIJyBmrxId8UnK4nzKccRGuKLFG8X1TWOQJxoRJwmaQsDU11OJfz+BFTaq
         iqTO5vTAA2MbOfxmFCJugyFasj06LzJjdawhPf17m0UpZFBDZwzYCeBbvz4TpEn55fe/
         yDKNSjdSq2T1vCnT8M1UR1WMt1JCM8rD3m0dPValtorhY8D224wsrlIA6OPMwocEMW2S
         5uOBqF/yxRQmvc1cXTG5vUg8a4lWTByI3CkosqdZ4CJeBGl+Dqscx4k+PzlJN+epnCHw
         BXSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mIxwHJHbpftI478SJJeQ2ycLwcF1xQUnCVdgmN8rBqg=;
        b=zrx9/UCJBPO3qIi3yYMVSmQAyvspC8ERWsQ0YxQH2VWd9mApPdzXZLo8JS6F7CvLQC
         KeA8lh7rKGmOW52q/B3LWxK8eEFcNtml59UG03tCr4dQV+YYE8/uT5uACzvzr1TYSy6z
         4L5B8uJkoVKDWBz8Y3KhdnGy5GejtUnmpxSOMbPB4L8L4k4HVZh8FP43w34++Rf3EwVx
         LvDXdPXsZQ+N5MaRyD4Z/tZUa+lHYz9TvmCi3RRemUCVYG7JODMPWClE0F2vl+KW3qwZ
         QjVPwUzu8vpzoZRInG5D7oCTlt/HXDNqIAJ71euhoLNwwVWXJOruKVXaUn3dOZIiWSn+
         Q7PQ==
X-Gm-Message-State: AOAM531vjAtp7DN4ZxYjtLmYThx0rM4coUZNwdfA/D8DQ6jKxxQTT5L7
	RDMS2WxIMBOSRIPT3tJNGHIaqF8URjvqKvzg4yh/zA==
X-Google-Smtp-Source: ABdhPJycwx43tgXTGyENxQmFH1xZDSvCaLmfp9cSRNBoYqzWg/O6ZkHizMfW59AzI51D/Vo1+Gj/XDjW0AfF5N190T0=
X-Received: by 2002:a81:4885:0:b0:2e5:9fe7:76a9 with SMTP id
 v127-20020a814885000000b002e59fe776a9mr459398ywa.396.1647442052319; Wed, 16
 Mar 2022 07:47:32 -0700 (PDT)
MIME-Version: 1.0
References: <X5kiR6Ez6KgQT6x3lYaoamvHB3GovMDfLoEteNGBXVw@lists.ettus.com>
In-Reply-To: <X5kiR6Ez6KgQT6x3lYaoamvHB3GovMDfLoEteNGBXVw@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 16 Mar 2022 10:47:21 -0400
Message-ID: <CAB__hTSjEAyeqS=0tRJkggz2aXg4mkz4otzv4crbHSM7DttGPA@mail.gmail.com>
To: tebetix672@tonaeto.com
Message-ID-Hash: 74DE6WGXTDIWNOHMUHSJIBDMOVYGDVSB
X-Message-ID-Hash: 74DE6WGXTDIWNOHMUHSJIBDMOVYGDVSB
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N32x - Signal amplitude distorted when NOT using coherent frontend ?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/74DE6WGXTDIWNOHMUHSJIBDMOVYGDVSB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5575245890500460742=="

--===============5575245890500460742==
Content-Type: multipart/alternative; boundary="000000000000514a2505da56fee7"

--000000000000514a2505da56fee7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Could this be an issue related to automatic DC bias calibration? If you are
using a "DC" pulse (that is, at 0 Hz relative to the LO), perhaps you are
seeing effects from DC bias cancellation.  You can either turn off this
calibration using the appropriate "args" at startup or you could request an
LO offset or you could modify your digital waveform to be not at DC.
Rob

On Wed, Mar 16, 2022 at 8:28 AM tebetix672--- via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello!
>
> I have been doing a simple test where an impulse (with a rather small dut=
y
> cycle) is sent over a (short) wire and then captured by two N32x boards
> synchronized with White Rabbit. The B210 has a sampling rate of 4 Msps,
> while I=E2=80=99ve tried using both 10 Msps and 5 Msps for the N32x (with=
 the
> bandwidths adjusted correspondingly).
>
> To my surprise, the amplitudes of the signals seem to be =E2=80=9Cmodulat=
ed=E2=80=9D =E2=80=94
> see, for instance, a plot of the absolute value of the signals here:
> https://ibb.co/PggyT06
>
> This effect =E2=80=9Cmagically=E2=80=9D disappears if I configure the two=
 boards to have a
> coherent frontend =E2=80=94 by connecting =E2=80=9Cout0=E2=80=9D of the N=
321 board to the LO input
> on the N320, and =E2=80=9Cout1=E2=80=9D to =E2=80=9Cin1=E2=80=9D, where I=
 do the latter despite using only
> the first channel of each board. Even weirder, if I just configure the N3=
21
> board to use the coherent frontend (thus being a timing source and
> destination), while I leave the N320 as it is, the signal on the N321 is
> just fine while the other gets largely distorted: https://ibb.co/Q9qqKcq
>
> My guess is that I=E2=80=99ve misconfigured something=E2=80=A6. but what?
> The only differences are the commands:
>
> usrp->set_rx_lo_source("external", "lo1", 0);
> usrp->set_rx_lo_source("external", "lo1", 1);
> usrp->set_rx_lo_export_enabled(true, "lo1", 0);
>
> usrp->get_device()->get_tree()->access<bool>("/blocks/0/Radio#0/dboard/rx=
_frontends/0/los/lo1/lo_distribution/LO_OUT_0/export").set(true);
>
> usrp->get_device()->get_tree()->access<bool>("/blocks/0/Radio#0/dboard/rx=
_frontends/0/los/lo1/lo_distribution/LO_OUT_1/export").set(true);
>
> on the N321, with just the first two lines for the N320 =E2=80=94 but I c=
annot see
> how this could affect the acquired signals=E2=80=A6
>
> Thanks a lot in advance for any help!
>
> Best,
> Rob
>
> (note: I=E2=80=99ve also asked help on this on dsp-related, thinking this=
 was an
> issue with my understanding of SDRs, but the last test mentioned above ma=
de
> me wonder whether this was an issue due to a misconfiguration of the N32x
> boards=E2=80=A6)
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000514a2505da56fee7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Could this be an issue related to automatic DC bias calibr=
ation? If you are using a &quot;DC&quot; pulse (that is, at 0 Hz relative t=
o the LO), perhaps you are seeing effects from DC bias cancellation.=C2=A0 =
You can either turn off this calibration using the appropriate &quot;args&q=
uot; at startup or you could request an LO offset or you could modify your =
digital waveform to be not at DC.<div>Rob</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 16, 2022 at 8:28=
 AM tebetix672--- via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><p>Hello!</p><p>I have been doing a simpl=
e test where an impulse (with a rather small duty cycle) is sent over a (sh=
ort) wire and then captured by two N32x boards synchronized with White Rabb=
it. The B210 has a sampling rate of 4 Msps, while I=E2=80=99ve tried using =
both 10 Msps and 5 Msps for the N32x (with the bandwidths adjusted correspo=
ndingly).</p><p>To my surprise, the amplitudes of the signals seem to be =
=E2=80=9Cmodulated=E2=80=9D =E2=80=94 see, for instance, a plot of the abso=
lute value of the signals here: <a href=3D"https://ibb.co/PggyT06" target=
=3D"_blank">https://ibb.co/PggyT06</a></p><p>This effect =E2=80=9Cmagically=
=E2=80=9D disappears if I configure the two boards to have a coherent front=
end =E2=80=94 by connecting =E2=80=9Cout0=E2=80=9D of the N321 board to the=
 LO input on the N320, and =E2=80=9Cout1=E2=80=9D to =E2=80=9Cin1=E2=80=9D,=
 where I do the latter despite using only the first channel of each board. =
Even weirder, if I just configure the N321 board to use the coherent fronte=
nd (thus being a timing source and destination), while I leave the N320 as =
it is, the signal on the N321 is just fine while the other gets largely dis=
torted: <a href=3D"https://ibb.co/Q9qqKcq" target=3D"_blank">https://ibb.co=
/Q9qqKcq</a></p><p>My guess is that I=E2=80=99ve misconfigured something=E2=
=80=A6. but what?<br>The only differences are the commands:</p><p><code>usr=
p-&gt;set_rx_lo_source(&quot;external&quot;, &quot;lo1&quot;, 0);<br>usrp-&=
gt;set_rx_lo_source(&quot;external&quot;, &quot;lo1&quot;, 1);<br>usrp-&gt;=
set_rx_lo_export_enabled(true, &quot;lo1&quot;, 0);<br>usrp-&gt;get_device(=
)-&gt;get_tree()-&gt;access&lt;bool&gt;(&quot;/blocks/0/Radio#0/dboard/rx_f=
rontends/0/los/lo1/lo_distribution/LO_OUT_0/export&quot;).set(true);<br>usr=
p-&gt;get_device()-&gt;get_tree()-&gt;access&lt;bool&gt;(&quot;/blocks/0/Ra=
dio#0/dboard/rx_frontends/0/los/lo1/lo_distribution/LO_OUT_1/export&quot;).=
set(true);</code></p><p>on the N321, with just the first two lines for the =
N320 =E2=80=94 but I cannot see how this could affect the acquired signals=
=E2=80=A6</p><p>Thanks a lot in advance for any help!</p><p>Best,<br>Rob</p=
><p>(note: I=E2=80=99ve also asked help on this on dsp-related, thinking th=
is was an issue with my understanding of SDRs, but the last test mentioned =
above made me wonder whether this was an issue due to a misconfiguration of=
 the N32x boards=E2=80=A6)</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000514a2505da56fee7--

--===============5575245890500460742==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5575245890500460742==--
