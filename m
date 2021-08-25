Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8791A3F7D7A
	for <lists+usrp-users@lfdr.de>; Wed, 25 Aug 2021 23:07:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 867D3383D5C
	for <lists+usrp-users@lfdr.de>; Wed, 25 Aug 2021 17:07:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ourowndomain-com.20150623.gappssmtp.com header.i=@ourowndomain-com.20150623.gappssmtp.com header.b="O4WfJ3Kx";
	dkim-atps=neutral
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 5B9BD383A39
	for <usrp-users@lists.ettus.com>; Wed, 25 Aug 2021 17:06:19 -0400 (EDT)
Received: by mail-io1-f50.google.com with SMTP id n24so772799ion.10
        for <usrp-users@lists.ettus.com>; Wed, 25 Aug 2021 14:06:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ourowndomain-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mkejlSBd0Fty/+lkb3uvnDofdB8UqRny9S/8Hz/VQsM=;
        b=O4WfJ3Kxb3a0dOpu4JelWfosA2WLQ8wR7tRYvBY+mx68ttt9tgbKqbYIR5XcRthR/I
         szK9A1snLF14IDzGK1zCipzvoP8T0LK9ElNJfdsVLM1Th58FXq85qzGVLx3AKvAaLGlh
         hlYVDiWLsV1kyHxyydhMMqjyU2SovscbhfS/j2G5x22cuFey25bKjaxelT8Zkouz5UEl
         6NFAdCh4VK2cCR909S1gQndeurhAABdIU7Y3uHvYUMUS+wwjBFYGZnXURKvcgPyzc/cu
         uWoJWBMB2Fv102MT/kXSq3Lt3aXh2HBQpS+saw7mgWBBPzwptLKjRxQRNF0cUW68j0mQ
         RYFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mkejlSBd0Fty/+lkb3uvnDofdB8UqRny9S/8Hz/VQsM=;
        b=nnqASf6UFEpqEvsy8du4LCkm+oaM2nPqogJRlPrCGF2+CYn0zzOQGaD6163JBGH4Vv
         bI7aC6r93Qs4uFlPku+DsoORv5Th5vVL/xIS0WKFiacCJMWGhTFRJ0z1D2No5VbAznKD
         92dGKdwaFl4Fm98xFUvNZ/+dLVHPOs6Xdf9cr3pzbB4Fw/BX0Y7tDXKLXj7T1FCb03ar
         AyaY0vuZXwT7YPs0A+jWd1pao1Dlw2z1koLy3XpNounROAroD4p6JvyDoFbUZbeloHhK
         UKPZtnG5syKSEzvgAEI9Yjzl6bSHZKllh6qHOpsqYPNe2CZkHJh8V4ecBtVvrhTuN4FD
         4ffA==
X-Gm-Message-State: AOAM5327tzJiNrBTfun87S2fTG9tX9v3uwlf0Ylux2jzpcHguNSpx/e0
	DjFPNA1ftcHMmR4t17dMiWyQ1yr9YF90KQEhYMNrby+IK4ahyA==
X-Google-Smtp-Source: ABdhPJwSEkmfa5VsBFl5Og9sutkntob/Z0LWGURQOfD+s4u/ffesmm+CUXqckxWKJb787cbH/3njksgIPRKN32oZMyI=
X-Received: by 2002:a05:6638:338a:: with SMTP id h10mr411991jav.8.1629925578315;
 Wed, 25 Aug 2021 14:06:18 -0700 (PDT)
MIME-Version: 1.0
References: <162984615663.11274.7703406394120943627@mm2.emwd.com> <CACDReSws6BVpoRV=bAA7v3UBKvxFzN-=k_26bztAx8kJe18dzA@mail.gmail.com>
In-Reply-To: <CACDReSws6BVpoRV=bAA7v3UBKvxFzN-=k_26bztAx8kJe18dzA@mail.gmail.com>
From: Rich Gopstein <rich@ourowndomain.com>
Date: Wed, 25 Aug 2021 17:06:07 -0400
Message-ID: <CANsNeargqVB9F_=7f_1HEYdAmizg0CinfEtKYNaazHp8LtdGRg@mail.gmail.com>
To: Ofer Saferman <ofer@navigicom.com>
Message-ID-Hash: A5AXREFGVPGNOMEG7RY763M4K4ORWOTR
X-Message-ID-Hash: A5AXREFGVPGNOMEG7RY763M4K4ORWOTR
X-MailFrom: rich@ourowndomain.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading E310 temperatures
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A5AXREFGVPGNOMEG7RY763M4K4ORWOTR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6332499856042701061=="

--===============6332499856042701061==
Content-Type: multipart/alternative; boundary="0000000000001b2c9205ca689f63"

--0000000000001b2c9205ca689f63
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks.  I'm out until next week, but I'll give it a try when I return.

For lm-sensors, get the zip file from:
https://github.com/lm-sensors/lm-sensors/archive/refs/tags/V3-6-0.zip
Then:
unzip
make all
make install

On Wed, Aug 25, 2021 at 3:53 PM Ofer Saferman <ofer@navigicom.com> wrote:

> Hello,
>
> Here are some C++ code snippets for reading all the temperatures:
> -----------------------------------------------------------------------
> uhd::device3::sptr usrp =3D uhd::device3::make(args);
>
> int temp_mb =3D
> usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/sensors/temp_mb=
").get().to_int();
> int temp_fpga =3D
> usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/sensors/temp_fp=
ga").get().to_int();
> int temp_ad9361 =3D
> usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/dboards/A/tx_fr=
ontends/0/sensors/ad9361_temperature").get().to_int();
>
> std::cout << "Motherboard temp=3D" << temp_mb << std::endl;
> std::cout << "FPGA temp=3D" << temp_fpga << std::endl;
> std::cout << "AD9361 temp=3D" << temp_ad9361 << std::endl;
> -----------------------------------------------------------------------
> If your USRP object is multi_usrp it is easier. There is a method called
> get_mboard_sensor() or something like that makes the code more pretty. Th=
e
> sensor name is as above.
>
> How did you install lm_sensors?
>
> Regards,
> Ofer Saferman
>
> On Wed, Aug 25, 2021 at 2:02 AM <usrp-users-request@lists.ettus.com>
> wrote:
>
>> Send USRP-users mailing list submissions to
>>         usrp-users@lists.ettus.com
>>
>> To subscribe or unsubscribe via email, send a message with subject or
>> body 'help' to
>>         usrp-users-request@lists.ettus.com
>>
>> You can reach the person managing the list at
>>         usrp-users-owner@lists.ettus.com
>>
>> When replying, please edit your Subject line so it is more specific
>> than "Re: Contents of USRP-users digest..."Today's Topics:
>>
>>    1. Re: Reading E310 temperatures (aneesh patel)
>>    2. Re: Reading E310 temperatures (aneesh patel)
>>    3. Re: Reading E310 temperatures (Rich Gopstein)
>>
>>
>>
>> ---------- Forwarded message ----------
>> From: aneesh patel <ampselectronics@yahoo.com>
>> To: Rich Gopstein <rich@ourowndomain.com>, Marcus D Leech <
>> patchvonbraun@gmail.com>
>> Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>> Bcc:
>> Date: Tue, 24 Aug 2021 22:19:49 +0000 (UTC)
>> Subject: [USRP-users] Re: Reading E310 temperatures
>> Concur on verifying-- that being said I know at least one of them
>> (possibly CPU) was available on the SG3 image a while back (I'm sure
>> nothing much has changed there but its been a while).
>>
>> Then is would be very simple to write a simple custom GNURadio block
>> (like basically a command line script to cat the sensor file descriptor
>> [just google that as I can't recall if its in /sys or /proc]) to pull th=
at
>> data from the OS to pass temp messages and ingest them into your message
>> passing or logging system. On the tougher end, depending on dev cycles, =
one
>> can cross-compile or pull code from lm-sensors and then turn that into a
>> GNURadio block (and maybe even being able to add the other sensors when
>> reading into the ettus kernel mod code/schematics if possible). Some
>> options exist.
>>
>> Going all from memory here but that should be >94.27% correct. :)
>>
>> Best of luck!
>>
>> Aneesh
>>
>> On Tuesday, August 24, 2021, 05:20:51 PM EDT, Marcus D Leech <
>> patchvonbraun@gmail.com> wrote:
>>
>>
>> My approach would be to see if any of those sensors are understood by th=
e
>> kernel lm_sensors subsystem.
>>
>> Sent from my iPhone
>>
>> > On Aug 24, 2021, at 5:12 PM, Rich Gopstein <rich@ourowndomain.com>
>> wrote:
>> >
>> > =EF=BB=BF
>> > I'm helping out on a project that's using an E310.  Someone else is
>> doing the GNURadio code, but I need to read the temperature values
>> periodically (once every few seconds).  My code will not be running in
>> GNURadio.
>> >
>> > It looks like there are three temp sensors (Zynq, ADT7408, and the
>> AD9361).
>> >
>> > What are my options for reading the temp values outside of GNURadio?
>> If it matters, the E310 is running UHD_3.15
>> > My code will be running on the E310 directly.
>> >
>> >
>> > Thanks.
>> >
>> > Rich
>> >
>> > _______________________________________________
>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>
>>
>> ---------- Forwarded message ----------
>> From: aneesh patel <ampselectronics@yahoo.com>
>> To: Rich Gopstein <rich@ourowndomain.com>, Marcus D Leech <
>> patchvonbraun@gmail.com>
>> Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>> Bcc:
>> Date: Tue, 24 Aug 2021 22:25:27 +0000 (UTC)
>> Subject: [USRP-users] Re: Reading E310 temperatures
>> Correction-- missed you said "outside of gnuradio." Basically everything
>> below minus gnuradio. if the sensors_lm package is available (as marcus
>> stated), parse that output or just manually parse the /sys or /proc (for=
got
>> which one) file descriptor for the sensor when you find it.
>>
>> Best of luck!
>>
>> Aneesh
>>
>> On Tuesday, August 24, 2021, 06:19:49 PM EDT, aneesh patel <
>> ampselectronics@yahoo.com> wrote:
>>
>>
>> Concur on verifying-- that being said I know at least one of them
>> (possibly CPU) was available on the SG3 image a while back (I'm sure
>> nothing much has changed there but its been a while).
>>
>> Then is would be very simple to write a simple custom GNURadio block
>> (like basically a command line script to cat the sensor file descriptor
>> [just google that as I can't recall if its in /sys or /proc]) to pull th=
at
>> data from the OS to pass temp messages and ingest them into your message
>> passing or logging system. On the tougher end, depending on dev cycles, =
one
>> can cross-compile or pull code from lm-sensors and then turn that into a
>> GNURadio block (and maybe even being able to add the other sensors when
>> reading into the ettus kernel mod code/schematics if possible). Some
>> options exist.
>>
>> Going all from memory here but that should be >94.27% correct. :)
>>
>> Best of luck!
>>
>> Aneesh
>>
>> On Tuesday, August 24, 2021, 05:20:51 PM EDT, Marcus D Leech <
>> patchvonbraun@gmail.com> wrote:
>>
>>
>> My approach would be to see if any of those sensors are understood by th=
e
>> kernel lm_sensors subsystem.
>>
>> Sent from my iPhone
>>
>> > On Aug 24, 2021, at 5:12 PM, Rich Gopstein <rich@ourowndomain.com>
>> wrote:
>> >
>> > =EF=BB=BF
>> > I'm helping out on a project that's using an E310.  Someone else is
>> doing the GNURadio code, but I need to read the temperature values
>> periodically (once every few seconds).  My code will not be running in
>> GNURadio.
>> >
>> > It looks like there are three temp sensors (Zynq, ADT7408, and the
>> AD9361).
>> >
>> > What are my options for reading the temp values outside of GNURadio?
>> If it matters, the E310 is running UHD_3.15
>> > My code will be running on the E310 directly.
>> >
>> >
>> > Thanks.
>> >
>> > Rich
>> >
>> > _______________________________________________
>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>
>>
>> ---------- Forwarded message ----------
>> From: Rich Gopstein <rich@ourowndomain.com>
>> To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>> Cc:
>> Bcc:
>> Date: Tue, 24 Aug 2021 19:02:21 -0400
>> Subject: [USRP-users] Re: Reading E310 temperatures
>> Thanks for both suggestions.  I installed lm_sensors, and it seems to
>> find two of the temp sensors.  Not sure which two, though:
>>
>> # sensors
>> e31x_battery-virtual-0
>> Adapter: Virtual device
>> temp1:       -273.0=C2=B0C
>>
>> e000b000ethernetffffffff00-mdio-0
>> Adapter: MDIO adapter
>> temp1:        +28.0=C2=B0C  (crit =3D +100.0=C2=B0C)
>>
>> jc-42.4-temp-i2c-0-19
>> Adapter: Cadence I2C at e0004000
>> temp1:        +33.2=C2=B0C  (low  =3D  +0.0=C2=B0C)                  ALA=
RM (HIGH,
>> CRIT)
>>                        (high =3D  +0.0=C2=B0C, hyst =3D  +0.0=C2=B0C)
>>                        (crit =3D  +0.0=C2=B0C, hyst =3D  +0.0=C2=B0C)
>>
>>
>> On Tue, Aug 24, 2021 at 6:25 PM aneesh patel <ampselectronics@yahoo.com>
>> wrote:
>>
>>> Correction-- missed you said "outside of gnuradio." Basically everythin=
g
>>> below minus gnuradio. if the sensors_lm package is available (as marcus
>>> stated), parse that output or just manually parse the /sys or /proc (fo=
rgot
>>> which one) file descriptor for the sensor when you find it.
>>>
>>> Best of luck!
>>>
>>> Aneesh
>>>
>>> On Tuesday, August 24, 2021, 06:19:49 PM EDT, aneesh patel <
>>> ampselectronics@yahoo.com> wrote:
>>>
>>>
>>> Concur on verifying-- that being said I know at least one of them
>>> (possibly CPU) was available on the SG3 image a while back (I'm sure
>>> nothing much has changed there but its been a while).
>>>
>>> Then is would be very simple to write a simple custom GNURadio block
>>> (like basically a command line script to cat the sensor file descriptor
>>> [just google that as I can't recall if its in /sys or /proc]) to pull t=
hat
>>> data from the OS to pass temp messages and ingest them into your messag=
e
>>> passing or logging system. On the tougher end, depending on dev cycles,=
 one
>>> can cross-compile or pull code from lm-sensors and then turn that into =
a
>>> GNURadio block (and maybe even being able to add the other sensors when
>>> reading into the ettus kernel mod code/schematics if possible). Some
>>> options exist.
>>>
>>> Going all from memory here but that should be >94.27% correct. :)
>>>
>>> Best of luck!
>>>
>>> Aneesh
>>>
>>> On Tuesday, August 24, 2021, 05:20:51 PM EDT, Marcus D Leech <
>>> patchvonbraun@gmail.com> wrote:
>>>
>>>
>>> My approach would be to see if any of those sensors are understood by
>>> the kernel lm_sensors subsystem.
>>>
>>> Sent from my iPhone
>>>
>>> > On Aug 24, 2021, at 5:12 PM, Rich Gopstein <rich@ourowndomain.com>
>>> wrote:
>>> >
>>> > =EF=BB=BF
>>> > I'm helping out on a project that's using an E310.  Someone else is
>>> doing the GNURadio code, but I need to read the temperature values
>>> periodically (once every few seconds).  My code will not be running in
>>> GNURadio.
>>> >
>>> > It looks like there are three temp sensors (Zynq, ADT7408, and the
>>> AD9361).
>>> >
>>> > What are my options for reading the temp values outside of GNURadio?
>>> If it matters, the E310 is running UHD_3.15
>>> > My code will be running on the E310 directly.
>>> >
>>> >
>>> > Thanks.
>>> >
>>> > Rich
>>> >
>>> > _______________________________________________
>>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
> --
> This message has been scanned for viruses and
> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and is
> believed to be clean. _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001b2c9205ca689f63
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks.=C2=A0 I&#39;m out until next week, but I&#39;ll gi=
ve it a try when I return.<div><br></div><div>For lm-sensors, get the zip f=
ile from:</div><a href=3D"https://github.com/lm-sensors/lm-sensors/archive/=
refs/tags/V3-6-0.zip">https://github.com/lm-sensors/lm-sensors/archive/refs=
/tags/V3-6-0.zip</a><div>Then:</div><div>unzip<br>make all<br>make install<=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Wed, Aug 25, 2021 at 3:53 PM Ofer Saferman &lt;<a href=3D"mailto:of=
er@navigicom.com">ofer@navigicom.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hello=
,</div><div dir=3D"ltr"><br></div><div>Here are some C++ code snippets for =
reading all the temperatures:</div><div>-----------------------------------=
------------------------------------<br></div><div>uhd::device3::sptr usrp =
=3D uhd::device3::make(args);</div><div><br></div><div>int temp_mb 					=3D=
 usrp-&gt;get_tree()-&gt;access&lt;uhd::sensor_value_t&gt;(&quot;/mboards/0=
/sensors/temp_mb&quot;).get().to_int();<br>		int temp_fpga 					=3D usrp-&g=
t;get_tree()-&gt;access&lt;uhd::sensor_value_t&gt;(&quot;/mboards/0/sensors=
/temp_fpga&quot;).get().to_int();<br>		int temp_ad9361					=3D usrp-&gt;get=
_tree()-&gt;access&lt;uhd::sensor_value_t&gt;(&quot;/mboards/0/dboards/A/tx=
_frontends/0/sensors/ad9361_temperature&quot;).get().to_int();</div><div><b=
r></div><div>std::cout &lt;&lt; &quot;Motherboard temp=3D&quot; &lt;&lt; te=
mp_mb &lt;&lt; std::endl;<br>		std::cout &lt;&lt; &quot;FPGA temp=3D&quot; =
&lt;&lt; temp_fpga &lt;&lt; std::endl;<br>		std::cout &lt;&lt; &quot;AD9361=
 temp=3D&quot; &lt;&lt; temp_ad9361 &lt;&lt; std::endl;</div><div>
----------------------------------------------------------------------- <br=
></div><div>If your USRP object is multi_usrp it is easier. There is a meth=
od called get_mboard_sensor() or something like that makes the code more pr=
etty. The sensor name is as above.</div><div><br></div><div>How did you ins=
tall lm_sensors?<br></div><div><br></div><div>Regards,<br></div><div>Ofer S=
aferman<br></div><div><br></div><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Wed, Aug 25, 2021 at 2:02 AM &lt;<a href=3D"mailto=
:usrp-users-request@lists.ettus.com" target=3D"_blank">usrp-users-request@l=
ists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">Send USRP-users mailing list submissions to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a><br>
<br>
To subscribe or unsubscribe via email, send a message with subject or<br>
body &#39;help&#39; to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-request@lists.ettu=
s.com" target=3D"_blank">usrp-users-request@lists.ettus.com</a><br>
<br>
You can reach the person managing the list at<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-owner@lists.ettus.=
com" target=3D"_blank">usrp-users-owner@lists.ettus.com</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of USRP-users digest...&quot;Today&#39;s Topics:<br=
>
<br>
=C2=A0 =C2=A01. Re: Reading E310 temperatures (aneesh patel)<br>
=C2=A0 =C2=A02. Re: Reading E310 temperatures (aneesh patel)<br>
=C2=A0 =C2=A03. Re: Reading E310 temperatures (Rich Gopstein)<br>
<br><br><br>---------- Forwarded message ----------<br>From:=C2=A0aneesh pa=
tel &lt;<a href=3D"mailto:ampselectronics@yahoo.com" target=3D"_blank">amps=
electronics@yahoo.com</a>&gt;<br>To:=C2=A0Rich Gopstein &lt;<a href=3D"mail=
to:rich@ourowndomain.com" target=3D"_blank">rich@ourowndomain.com</a>&gt;, =
Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_bl=
ank">patchvonbraun@gmail.com</a>&gt;<br>Cc:=C2=A0&quot;<a href=3D"mailto:us=
rp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&=
quot; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">u=
srp-users@lists.ettus.com</a>&gt;<br>Bcc:=C2=A0<br>Date:=C2=A0Tue, 24 Aug 2=
021 22:19:49 +0000 (UTC)<br>Subject:=C2=A0[USRP-users] Re: Reading E310 tem=
peratures<br><div><div style=3D"font-family:&quot;Helvetica Neue&quot;,Helv=
etica,Arial,sans-serif;font-size:13px"><div></div>
        <div dir=3D"ltr">Concur on verifying-- that being said I know at le=
ast one of them (possibly CPU) was available on the SG3 image a while back =
(I&#39;m sure nothing much has changed there but its been a while).</div><d=
iv dir=3D"ltr"><br></div><div dir=3D"ltr">Then is would be very simple to w=
rite a simple custom GNURadio block (like basically a command line script t=
o cat the sensor file descriptor [just google that as I can&#39;t recall if=
 its in /sys or /proc]) to pull that data from the OS to pass temp messages=
 and ingest them into your message passing or logging system. On the toughe=
r end, depending on dev cycles, one can cross-compile or pull code from lm-=
sensors and then turn that into a GNURadio block (and maybe even being able=
 to add the other sensors when reading into the ettus kernel mod code/schem=
atics if possible). Some options exist.</div><div dir=3D"ltr"><br></div><di=
v dir=3D"ltr">Going all from memory here but that should be &gt;94.27% corr=
ect. :)</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Best of luck!</div=
><div dir=3D"ltr"><br></div><div dir=3D"ltr">Aneesh=C2=A0</div><div><br></d=
iv>
       =20
        </div><div id=3D"gmail-m_3023954272301272537gmail-m_806771186230096=
8410ydpca33aaa6yahoo_quoted_0518387881">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                    On Tuesday, August 24, 2021, 05:20:51 PM EDT, Marcus D =
Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patc=
hvonbraun@gmail.com</a>&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div dir=3D"ltr">My approach would be to see if any of=
 those sensors are understood by the kernel lm_sensors subsystem. <br clear=
=3D"none"><br clear=3D"none">Sent from my iPhone<br clear=3D"none"><br clea=
r=3D"none">&gt; On Aug 24, 2021, at 5:12 PM, Rich Gopstein &lt;<a shape=3D"=
rect" href=3D"mailto:rich@ourowndomain.com" rel=3D"nofollow" target=3D"_bla=
nk">rich@ourowndomain.com</a>&gt; wrote:<br clear=3D"none">&gt; <br clear=
=3D"none">&gt; =EF=BB=BF<br clear=3D"none">&gt; I&#39;m helping out on a pr=
oject that&#39;s using an E310.=C2=A0 Someone else is doing the GNURadio co=
de, but I need to read the temperature values periodically (once every few =
seconds).=C2=A0 My code will not be running in GNURadio.<br clear=3D"none">=
&gt; <br clear=3D"none">&gt; It looks like there are three temp sensors (Zy=
nq, ADT7408, and the AD9361).=C2=A0 <br clear=3D"none">&gt; <br clear=3D"no=
ne">&gt; What are my options for reading the temp values outside of GNURadi=
o?=C2=A0 If it matters, the E310 is running UHD_3.15<br clear=3D"none">&gt;=
 My code will be running on the E310 directly.<br clear=3D"none">&gt; <br c=
lear=3D"none">&gt; <br clear=3D"none">&gt; Thanks.<br clear=3D"none">&gt; <=
br clear=3D"none">&gt; Rich<br clear=3D"none">&gt; <br clear=3D"none">&gt; =
_______________________________________________<br clear=3D"none">&gt; USRP=
-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@lists.et=
tus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a><=
br clear=3D"none">&gt; To unsubscribe send an email to <a shape=3D"rect" hr=
ef=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_=
blank">usrp-users-leave@lists.ettus.com</a><div id=3D"gmail-m_3023954272301=
272537gmail-m_8067711862300968410ydpca33aaa6yqtfd42373"><br clear=3D"none">=
_______________________________________________<br clear=3D"none">USRP-user=
s mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@lists.ettus.c=
om" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a><br cl=
ear=3D"none">To unsubscribe send an email to <a shape=3D"rect" href=3D"mail=
to:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usr=
p-users-leave@lists.ettus.com</a><br clear=3D"none"></div></div></div>
            </div>
        </div></div><br><br><br>---------- Forwarded message ----------<br>=
From:=C2=A0aneesh patel &lt;<a href=3D"mailto:ampselectronics@yahoo.com" ta=
rget=3D"_blank">ampselectronics@yahoo.com</a>&gt;<br>To:=C2=A0Rich Gopstein=
 &lt;<a href=3D"mailto:rich@ourowndomain.com" target=3D"_blank">rich@ourown=
domain.com</a>&gt;, Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmai=
l.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>Cc:=C2=A0&quot;=
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a>&quot; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"=
 target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>Bcc:=C2=A0<br>Date=
:=C2=A0Tue, 24 Aug 2021 22:25:27 +0000 (UTC)<br>Subject:=C2=A0[USRP-users] =
Re: Reading E310 temperatures<br><div><div style=3D"font-family:&quot;Helve=
tica Neue&quot;,Helvetica,Arial,sans-serif;font-size:13px"><div></div>
        <div dir=3D"ltr">Correction-- missed you said &quot;outside of gnur=
adio.&quot; Basically everything below minus gnuradio. if the sensors_lm pa=
ckage is available (as marcus stated), parse that output or just manually p=
arse the /sys or /proc (forgot which one) file descriptor for the sensor wh=
en you find it.=C2=A0</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Best=
 of luck!</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Aneesh</div><div=
><br></div>
       =20
        </div><div id=3D"gmail-m_3023954272301272537gmail-m_806771186230096=
8410ydpb3eb0d01yahoo_quoted_0229013022">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                    On Tuesday, August 24, 2021, 06:19:49 PM EDT, aneesh pa=
tel &lt;<a href=3D"mailto:ampselectronics@yahoo.com" target=3D"_blank">amps=
electronics@yahoo.com</a>&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"gmail-m_3023954272301272537gmail-m_80677118=
62300968410ydpb3eb0d01yiv6860814934"><div><div style=3D"font-family:&quot;H=
elvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:13px"><div></div>
        <div dir=3D"ltr">Concur on verifying-- that being said I know at le=
ast one of them (possibly CPU) was available on the SG3 image a while back =
(I&#39;m sure nothing much has changed there but its been a while).</div><d=
iv dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr">Then is would be v=
ery simple to write a simple custom GNURadio block (like basically a comman=
d line script to cat the sensor file descriptor [just google that as I can&=
#39;t recall if its in /sys or /proc]) to pull that data from the OS to pas=
s temp messages and ingest them into your message passing or logging system=
. On the tougher end, depending on dev cycles, one can cross-compile or pul=
l code from lm-sensors and then turn that into a GNURadio block (and maybe =
even being able to add the other sensors when reading into the ettus kernel=
 mod code/schematics if possible). Some options exist.</div><div dir=3D"ltr=
"><br clear=3D"none"></div><div dir=3D"ltr">Going all from memory here but =
that should be &gt;94.27% correct. :)</div><div dir=3D"ltr"><br clear=3D"no=
ne"></div><div dir=3D"ltr">Best of luck!</div><div dir=3D"ltr"><br clear=3D=
"none"></div><div dir=3D"ltr">Aneesh=C2=A0</div><div><br clear=3D"none"></d=
iv>
       =20
        </div><div id=3D"gmail-m_3023954272301272537gmail-m_806771186230096=
8410ydpb3eb0d01yiv6860814934yqt80428"><div id=3D"gmail-m_302395427230127253=
7gmail-m_8067711862300968410ydpb3eb0d01yiv6860814934ydpca33aaa6yahoo_quoted=
_0518387881">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                    On Tuesday, August 24, 2021, 05:20:51 PM EDT, Marcus D =
Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patc=
hvonbraun@gmail.com</a>&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div dir=3D"ltr">My approach would be to see if any of=
 those sensors are understood by the kernel lm_sensors subsystem. <br clear=
=3D"none"><br clear=3D"none">Sent from my iPhone<br clear=3D"none"><br clea=
r=3D"none">&gt; On Aug 24, 2021, at 5:12 PM, Rich Gopstein &lt;<a shape=3D"=
rect" href=3D"mailto:rich@ourowndomain.com" rel=3D"nofollow" target=3D"_bla=
nk">rich@ourowndomain.com</a>&gt; wrote:<br clear=3D"none">&gt; <br clear=
=3D"none">&gt; =EF=BB=BF<br clear=3D"none">&gt; I&#39;m helping out on a pr=
oject that&#39;s using an E310.=C2=A0 Someone else is doing the GNURadio co=
de, but I need to read the temperature values periodically (once every few =
seconds).=C2=A0 My code will not be running in GNURadio.<br clear=3D"none">=
&gt; <br clear=3D"none">&gt; It looks like there are three temp sensors (Zy=
nq, ADT7408, and the AD9361).=C2=A0 <br clear=3D"none">&gt; <br clear=3D"no=
ne">&gt; What are my options for reading the temp values outside of GNURadi=
o?=C2=A0 If it matters, the E310 is running UHD_3.15<br clear=3D"none">&gt;=
 My code will be running on the E310 directly.<br clear=3D"none">&gt; <br c=
lear=3D"none">&gt; <br clear=3D"none">&gt; Thanks.<br clear=3D"none">&gt; <=
br clear=3D"none">&gt; Rich<br clear=3D"none">&gt; <br clear=3D"none">&gt; =
_______________________________________________<br clear=3D"none">&gt; USRP=
-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@lists.et=
tus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a><=
br clear=3D"none">&gt; To unsubscribe send an email to <a shape=3D"rect" hr=
ef=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_=
blank">usrp-users-leave@lists.ettus.com</a><div id=3D"gmail-m_3023954272301=
272537gmail-m_8067711862300968410ydpb3eb0d01yiv6860814934ydpca33aaa6yqtfd42=
373"><br clear=3D"none">_______________________________________________<br =
clear=3D"none">USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:=
usrp-users@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@l=
ists.ettus.com</a><br clear=3D"none">To unsubscribe send an email to <a sha=
pe=3D"rect" href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollo=
w" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br clear=3D"none"=
></div></div></div>
            </div>
        </div></div></div></div></div>
            </div>
        </div></div><br><br><br>---------- Forwarded message ----------<br>=
From:=C2=A0Rich Gopstein &lt;<a href=3D"mailto:rich@ourowndomain.com" targe=
t=3D"_blank">rich@ourowndomain.com</a>&gt;<br>To:=C2=A0&quot;<a href=3D"mai=
lto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.co=
m</a>&quot; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bl=
ank">usrp-users@lists.ettus.com</a>&gt;<br>Cc:=C2=A0<br>Bcc:=C2=A0<br>Date:=
=C2=A0Tue, 24 Aug 2021 19:02:21 -0400<br>Subject:=C2=A0[USRP-users] Re: Rea=
ding E310 temperatures<br><div dir=3D"ltr">Thanks for both suggestions.=C2=
=A0 I installed lm_sensors, and it seems to find two of the temp sensors.=
=C2=A0 Not sure which two, though:<div><br></div><div><font face=3D"monospa=
ce"># sensors<br>e31x_battery-virtual-0<br>Adapter: Virtual device<br>temp1=
: =C2=A0 =C2=A0 =C2=A0 -273.0=C2=B0C<br><br>e000b000ethernetffffffff00-mdio=
-0<br>Adapter: MDIO adapter<br>temp1: =C2=A0 =C2=A0 =C2=A0 =C2=A0+28.0=C2=
=B0C =C2=A0(crit =3D +100.0=C2=B0C)<br><br>jc-42.4-temp-i2c-0-19<br>Adapter=
: Cadence I2C at e0004000<br>temp1: =C2=A0 =C2=A0 =C2=A0 =C2=A0+33.2=C2=B0C=
 =C2=A0(low =C2=A0=3D =C2=A0+0.0=C2=B0C) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0ALARM (HIGH, CRIT)<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(high =3D =C2=A0=
+0.0=C2=B0C, hyst =3D =C2=A0+0.0=C2=B0C)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(crit =3D =C2=A0+0.0=C2=
=B0C, hyst =3D =C2=A0+0.0=C2=B0C)</font><br></div><div><br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Au=
g 24, 2021 at 6:25 PM aneesh patel &lt;<a href=3D"mailto:ampselectronics@ya=
hoo.com" target=3D"_blank">ampselectronics@yahoo.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div style=3D"font=
-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:13p=
x"><div></div>
        <div dir=3D"ltr">Correction-- missed you said &quot;outside of gnur=
adio.&quot; Basically everything below minus gnuradio. if the sensors_lm pa=
ckage is available (as marcus stated), parse that output or just manually p=
arse the /sys or /proc (forgot which one) file descriptor for the sensor wh=
en you find it.=C2=A0</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Best=
 of luck!</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Aneesh</div><div=
><br></div>
       =20
        </div><div id=3D"gmail-m_3023954272301272537gmail-m_806771186230096=
8410gmail-m_13919340374060557ydpb3eb0d01yahoo_quoted_0229013022">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                    On Tuesday, August 24, 2021, 06:19:49 PM EDT, aneesh pa=
tel &lt;<a href=3D"mailto:ampselectronics@yahoo.com" target=3D"_blank">amps=
electronics@yahoo.com</a>&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"gmail-m_3023954272301272537gmail-m_80677118=
62300968410gmail-m_13919340374060557ydpb3eb0d01yiv6860814934"><div><div sty=
le=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;fon=
t-size:13px"><div></div>
        <div dir=3D"ltr">Concur on verifying-- that being said I know at le=
ast one of them (possibly CPU) was available on the SG3 image a while back =
(I&#39;m sure nothing much has changed there but its been a while).</div><d=
iv dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr">Then is would be v=
ery simple to write a simple custom GNURadio block (like basically a comman=
d line script to cat the sensor file descriptor [just google that as I can&=
#39;t recall if its in /sys or /proc]) to pull that data from the OS to pas=
s temp messages and ingest them into your message passing or logging system=
. On the tougher end, depending on dev cycles, one can cross-compile or pul=
l code from lm-sensors and then turn that into a GNURadio block (and maybe =
even being able to add the other sensors when reading into the ettus kernel=
 mod code/schematics if possible). Some options exist.</div><div dir=3D"ltr=
"><br clear=3D"none"></div><div dir=3D"ltr">Going all from memory here but =
that should be &gt;94.27% correct. :)</div><div dir=3D"ltr"><br clear=3D"no=
ne"></div><div dir=3D"ltr">Best of luck!</div><div dir=3D"ltr"><br clear=3D=
"none"></div><div dir=3D"ltr">Aneesh=C2=A0</div><div><br clear=3D"none"></d=
iv>
       =20
        </div><div id=3D"gmail-m_3023954272301272537gmail-m_806771186230096=
8410gmail-m_13919340374060557ydpb3eb0d01yiv6860814934yqt80428"><div id=3D"g=
mail-m_3023954272301272537gmail-m_8067711862300968410gmail-m_13919340374060=
557ydpb3eb0d01yiv6860814934ydpca33aaa6yahoo_quoted_0518387881">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                    On Tuesday, August 24, 2021, 05:20:51 PM EDT, Marcus D =
Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patc=
hvonbraun@gmail.com</a>&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div dir=3D"ltr">My approach would be to see if any of=
 those sensors are understood by the kernel lm_sensors subsystem. <br clear=
=3D"none"><br clear=3D"none">Sent from my iPhone<br clear=3D"none"><br clea=
r=3D"none">&gt; On Aug 24, 2021, at 5:12 PM, Rich Gopstein &lt;<a shape=3D"=
rect" href=3D"mailto:rich@ourowndomain.com" rel=3D"nofollow" target=3D"_bla=
nk">rich@ourowndomain.com</a>&gt; wrote:<br clear=3D"none">&gt; <br clear=
=3D"none">&gt; =EF=BB=BF<br clear=3D"none">&gt; I&#39;m helping out on a pr=
oject that&#39;s using an E310.=C2=A0 Someone else is doing the GNURadio co=
de, but I need to read the temperature values periodically (once every few =
seconds).=C2=A0 My code will not be running in GNURadio.<br clear=3D"none">=
&gt; <br clear=3D"none">&gt; It looks like there are three temp sensors (Zy=
nq, ADT7408, and the AD9361).=C2=A0 <br clear=3D"none">&gt; <br clear=3D"no=
ne">&gt; What are my options for reading the temp values outside of GNURadi=
o?=C2=A0 If it matters, the E310 is running UHD_3.15<br clear=3D"none">&gt;=
 My code will be running on the E310 directly.<br clear=3D"none">&gt; <br c=
lear=3D"none">&gt; <br clear=3D"none">&gt; Thanks.<br clear=3D"none">&gt; <=
br clear=3D"none">&gt; Rich<br clear=3D"none">&gt; <br clear=3D"none">&gt; =
_______________________________________________<br clear=3D"none">&gt; USRP=
-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@lists.et=
tus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a><=
br clear=3D"none">&gt; To unsubscribe send an email to <a shape=3D"rect" hr=
ef=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_=
blank">usrp-users-leave@lists.ettus.com</a><div id=3D"gmail-m_3023954272301=
272537gmail-m_8067711862300968410gmail-m_13919340374060557ydpb3eb0d01yiv686=
0814934ydpca33aaa6yqtfd42373"><br clear=3D"none">__________________________=
_____________________<br clear=3D"none">USRP-users mailing list -- <a shape=
=3D"rect" href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollow" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a><br clear=3D"none">To unsubscrib=
e send an email to <a shape=3D"rect" href=3D"mailto:usrp-users-leave@lists.=
ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users-leave@lists.ettus.=
com</a><br clear=3D"none"></div></div></div>
            </div>
        </div></div></div></div></div>
            </div>
        </div></div></blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailScanner</=
b></a>, and is
<br>believed to be clean.

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000001b2c9205ca689f63--

--===============6332499856042701061==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6332499856042701061==--
