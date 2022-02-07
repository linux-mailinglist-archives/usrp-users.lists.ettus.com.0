Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1C34AB937
	for <lists+usrp-users@lfdr.de>; Mon,  7 Feb 2022 12:02:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5430C383B70
	for <lists+usrp-users@lfdr.de>; Mon,  7 Feb 2022 06:02:08 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="5/hD93vn";
	dkim-atps=neutral
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 2EDF2384599
	for <usrp-users@lists.ettus.com>; Mon,  7 Feb 2022 06:01:13 -0500 (EST)
Received: by mail-io1-f45.google.com with SMTP id y84so16211331iof.0
        for <usrp-users@lists.ettus.com>; Mon, 07 Feb 2022 03:01:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=emJvTGmJFkJTStA0R58qoqImzA0W0jeIAoOZTAb1mg8=;
        b=5/hD93vnyy9PRxaRnnm2L4O8HfvUhJ3QCS3TPjaf36AIQQG3x/S6mEChGpIPoMcXL4
         s4yZnB4MxRFpjCPBzXp64SRe2GXAhdnMDc2KNtD3PBuj8SL63SxhiWI+y7frCtQQIo9A
         Np+JUEAxrzOCXzJmCOsTOw0K1j5KgcUopaUlOyteai01ZITO8P2w3J5pdCRejlp9aMZr
         eZ+X07Y5b4jhVPf0Kse4MjveHunDHa6Wx1ZoSEGwGK4MJYD7LTEX1oz1KzRSn/vKbqWk
         WfY+ms7p6ascwhh72kBL/bjl+tgABIR3yOrQBsLMO7HYxEzjQP56XMUPWQ97IQ+sJnaF
         Cyyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=emJvTGmJFkJTStA0R58qoqImzA0W0jeIAoOZTAb1mg8=;
        b=4I/5yYMnqDQnvLYNS2aqZqdwtC1NIuDPYrnvPijyYggO1aYMdXaosgBdVHOeGQJOH5
         cb9NnwyLR1P9UPhcWlMnnCd4E9px22nl2aKekWIu2uTR3EIgZZdf9MZcxQfSg9EAlHOx
         bScTg9iuDV7SMFkqdahA+JHG+eBt0WaT0D5atJVhg/u7OJWzZW+qsArB2C5iEhBWJySc
         J9+iX7jfdi5xs+9SZ9jth2dGl343ysLKFZZrHYjW64Cas7gf64IaDu6W4Aid5fTrx44e
         ZylU0UJP9vnt53zqXTNGmgIxF4NeG19aTKBI4QVUB3PFUCQD2K8uW9xFQbdA8J0Ti6+n
         LqIg==
X-Gm-Message-State: AOAM530MUZUSjIDPNMPTLl3aZwMkcuD09zidPd8W1efeUuQNNHYizCIu
	8SNraO7roA2ZkPleyH/VHniw55Cs/uxSAy6ANZcGHU6M
X-Google-Smtp-Source: ABdhPJymXCiw3z6RXusTPSsQSNoOM4mJMk73fpFwtdNlPiEa9h59zTXctLyjJHutnkjBRi8aQR1/CdiAQhT16cbZT6o=
X-Received: by 2002:a5d:88c1:: with SMTP id i1mr5408849iol.154.1644231672402;
 Mon, 07 Feb 2022 03:01:12 -0800 (PST)
MIME-Version: 1.0
References: <MN2PR12MB33126FE573E77ACAEC631E8CB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB33126FE573E77ACAEC631E8CB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 7 Feb 2022 12:01:01 +0100
Message-ID: <CAFOi1A6Cz3-VLxYjNgSQYOdk_ZEtK6vNC=5kPOkgi7Gyh9qbCw@mail.gmail.com>
To: Jim Palladino <jim@gardettoengineering.com>
Message-ID-Hash: 7RZCWK7OUONOJNCSUV23IC4SQ7ZSBWR7
X-Message-ID-Hash: 7RZCWK7OUONOJNCSUV23IC4SQ7ZSBWR7
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RX Frequency Tuning Questions
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7RZCWK7OUONOJNCSUV23IC4SQ7ZSBWR7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0140226633394657629=="

--===============0140226633394657629==
Content-Type: multipart/alternative; boundary="000000000000c3267605d76b84f0"

--000000000000c3267605d76b84f0
Content-Type: text/plain; charset="UTF-8"

Jim,

just a quick follow-up. There was indeed a bug with the lo-lock sensors
which was fixed in
https://github.com/EttusResearch/uhd/commit/6666f36c267fc9ca908032fb719ec318c142636f
(see also https://github.com/EttusResearch/uhd/issues/534). Both the name
mismatch (lo_lock vs. lo_locked) and the lack of reporting lock are fixed.
But as Marcus says, the tuning is not as fast as on N320.

As for your first question: Yes, these API calls are non-blocking, unless
the hardware queues are full up. This is so you can schedule future tunes
(although E320 doesn't let you do those). However, when the queues fill up,
those API calls become blocking.

--M

On Wed, Feb 2, 2022 at 5:15 PM Jim Palladino <jim@gardettoengineering.com>
wrote:

> Hello,
>
> I'm working on a frequency scanning app where I need to maximize the
> tuning speed. I've been playing with timed commands -- I'm having issues
> with that and have posted about that separately. But I have some questions
> regarding RX tuning.
>
> I'm currently using an E320 and UHD 4.1 and developing a C++ scanning app.
> My first question is related to the set_rx_freq() command. If I look at the
> documentation here:
> https://files.ettus.com/manual/page_general.html#general_tuning_rfsettling
>
> It implies that you need to wait and check the lo_locked sensor after
> tuning if you want to make sure that the LO is really locked. This tells me
> that the set_rx_freq() command does not block and wait until it locks. I
> want to make sure that this is the case, as if I send consecutive
> get_time_now() commands, the responses are somewhere around 2ms apart. If I
> send the following series of commands: get_time_now(), set_rx_freq(),
> get_time_now -- then the time difference between get_time_now() responses
> is over 100ms. So, it seems that the set_rx_freq() command takes quite a
> while to return. I just want to confirm that it is not blocking and waiting
> for lock before returning. This leads to my second question.
>
> On the E320, I list the sensors using
> "usrp->get_rx_sensor_names(ACTIVE_CHAN);" This returns the following
> sensors: ad9361_temperature,  rssi,  lo_lock. Note that it is "lo_lock" and
> not "lo_locked". I can querry "ad9361_temperature" and get a reasonable
> value each time. However, the "lo_lock" sensor always reports back
> unlocked. I use the following command to querry it:
>
> usrp->get_rx_sensor("lo_lock", ACTIVE_CHAN).to_pp_string()
>
> It doesn't matter how long I wait after tuning -- I can wait many, many
> seconds. If I look at the samples I'm streaming and capturing after tuning
> the RX LO, they look correct. If I insert a tone from a signal generator, I
> see it where I expect, and it looks good. At least by eyeball, it looks
> like the LO is locked. Similarly, if I run the "usrp_list_sensors" example
> application included with UHD, the results of the RX sensors are:
> -------------------------------
> |    /
> |   |       RX Sensors:
> |   |
> |   |   Chan 0:
> |   |   * ad9361_temperature: 66.783625 C
> |   |   * rssi: -50.75 dB
> |   |   * ad9361_lock: unlocked
> |   |
> |   |   Chan 1:
> |   |   * ad9361_temperature: 67.368423 C
> |   |   * rssi: -55.0 dB
> |   |   * ad9361_lock: unlocked
> -------------------------------------
> So, that is also reporting unlocked. Basically, I haven't been able to
> ever read that sensor and have it say: "locked".
>
> Any help understanding whether or not the set_rx_freq() command blocks
> until it's locked or why I can't seem to read the "lo_lock" state and see
> that it is locked would be appreciated.
>
> Thanks,
> Jim
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c3267605d76b84f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Jim,</div><div><br></div><div>just a quick follow-up.=
 There was indeed a bug with the lo-lock sensors which was fixed in <a href=
=3D"https://github.com/EttusResearch/uhd/commit/6666f36c267fc9ca908032fb719=
ec318c142636f">https://github.com/EttusResearch/uhd/commit/6666f36c267fc9ca=
908032fb719ec318c142636f</a> (see also <a href=3D"https://github.com/EttusR=
esearch/uhd/issues/534">https://github.com/EttusResearch/uhd/issues/534</a>=
). Both the name mismatch (lo_lock vs. lo_locked) and the lack of reporting=
 lock are fixed.</div><div>But as Marcus says, the tuning is not as fast as=
 on N320.</div><div><br></div><div>As for your first question: Yes, these A=
PI calls are non-blocking, unless the hardware queues are full up. This is =
so you can schedule future tunes (although E320 doesn&#39;t let you do thos=
e). However, when the queues fill up, those API calls become blocking.</div=
><div><br></div><div>--M<br></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 2, 2022 at 5:15 PM Jim Pallad=
ino &lt;<a href=3D"mailto:jim@gardettoengineering.com">jim@gardettoengineer=
ing.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I&#39;m working on a frequency scanning app where I need to maximize the tu=
ning speed. I&#39;ve been playing with timed commands -- I&#39;m having iss=
ues with that and have posted about that separately. But I have some questi=
ons regarding RX tuning.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I&#39;m currently using an E320 and UHD 4.1 and developing a C++ scanning a=
pp. My first question is related to the set_rx_freq() command. If I look at=
 the documentation here:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<a href=3D"https://files.ettus.com/manual/page_general.html#general_tuning_=
rfsettling" id=3D"gmail-m_5517640384839026879LPNoLPOWALinkPreview" target=
=3D"_blank">https://files.ettus.com/manual/page_general.html#general_tuning=
_rfsettling</a><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
It implies that you need to wait and check the lo_locked sensor after tunin=
g if you want to make sure that the LO is really locked. This tells me that=
 the set_rx_freq() command does not block and wait until it locks. I want t=
o make sure that this is the case,
 as if I send consecutive get_time_now() commands, the responses are somewh=
ere around 2ms apart. If I send the following series of commands: get_time_=
now(), set_rx_freq(), get_time_now -- then the time difference between get_=
time_now() responses is over 100ms.
 So, it seems that the set_rx_freq() command takes quite a while to return.=
 I just want to confirm that it is not blocking and waiting for lock before=
 returning. This leads to my second question.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
On the E320, I list the sensors using &quot;usrp-&gt;get_rx_sensor_names(AC=
TIVE_CHAN);&quot; This returns the following sensors:=C2=A0ad9361_temperatu=
re,=C2=A0 rssi,=C2=A0 lo_lock. Note that it is &quot;lo_lock&quot; and not =
&quot;lo_locked&quot;. I can querry &quot;ad9361_temperature&quot; and get =
a reasonable value
 each time. However, the &quot;lo_lock&quot; sensor always reports back unl=
ocked. I use the following command to querry it:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
usrp-&gt;get_rx_sensor(&quot;lo_lock&quot;, ACTIVE_CHAN).to_pp_string()</di=
v>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
It doesn&#39;t matter how long I wait after tuning -- I can wait many, many=
 seconds. If I look at the samples I&#39;m streaming and capturing after tu=
ning the RX LO, they look correct. If I insert a tone from a signal generat=
or, I see it where I expect, and it looks
 good. At least by eyeball, it looks like the LO is locked. Similarly, if I=
 run the &quot;usrp_list_sensors&quot; example application included with UH=
D, the results of the RX sensors are:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
-------------------------------</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
| =C2=A0 =C2=A0/
<div>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Sensors: </div>
<div>| =C2=A0 | =C2=A0 </div>
<div>| =C2=A0 | =C2=A0 Chan 0: </div>
<div>| =C2=A0 | =C2=A0 * ad9361_temperature: 66.783625 C</div>
<div>| =C2=A0 | =C2=A0 * rssi: -50.75 dB</div>
<div>| =C2=A0 | =C2=A0 * ad9361_lock: unlocked</div>
<div>| =C2=A0 | =C2=A0 </div>
<div>| =C2=A0 | =C2=A0 Chan 1: </div>
<div>| =C2=A0 | =C2=A0 * ad9361_temperature: 67.368423 C</div>
<div>| =C2=A0 | =C2=A0 * rssi: -55.0 dB</div>
<span>| =C2=A0 | =C2=A0 * ad9361_lock: unlocked</span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span>-------------------------------------</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span>So, that is also reporting unlocked. Basically, I haven&#39;t been ab=
le to ever read that sensor and have it say: &quot;locked&quot;.=C2=A0</spa=
n></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Any help understanding whether or not the set_rx_freq() command blocks unti=
l it&#39;s locked or why I can&#39;t seem to read the &quot;lo_lock&quot; s=
tate and see that it is locked would be appreciated.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div></div>
<br>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000c3267605d76b84f0--

--===============0140226633394657629==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0140226633394657629==--
