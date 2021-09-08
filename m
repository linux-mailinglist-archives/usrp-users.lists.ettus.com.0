Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 533754039BB
	for <lists+usrp-users@lfdr.de>; Wed,  8 Sep 2021 14:27:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0D79B384922
	for <lists+usrp-users@lfdr.de>; Wed,  8 Sep 2021 08:27:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ourowndomain-com.20150623.gappssmtp.com header.i=@ourowndomain-com.20150623.gappssmtp.com header.b="GtG1E5Mq";
	dkim-atps=neutral
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C3783844BA
	for <usrp-users@lists.ettus.com>; Wed,  8 Sep 2021 08:26:59 -0400 (EDT)
Received: by mail-il1-f169.google.com with SMTP id x10so2071425ilm.12
        for <usrp-users@lists.ettus.com>; Wed, 08 Sep 2021 05:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ourowndomain-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=qNIEerHrGWrzN8R3aizReL35rs9ziwHIg4fETHIqcas=;
        b=GtG1E5MqLR6Rf2wDG7aUujxQ/e0hf8I164Sa7TLYPg9VZBQVWI1HzdnMBf4bXnfqkA
         SMxPdd9DUT4X5bULD2v1GUFr6jWUpSpUcKIJcp/wUmCjoCxqZbguyT6SWxy94eTdoVme
         IDgyw46NipMQaP3ALlA36Mk6r15RhNZNuZnQXVAg3P+6fgu7GKCfTyl2PcWimp6fAG0L
         M7QAbZIHr/zZyfOyNBxkbG6TptMc2jsHLBriBotZWpbbtywpuwE9Ri2rtXLpXzQZ6/OT
         IiwJfDRHv45oDOqurdbdFWC59ccgq3fWHUHHvm/Tf1y3TZ5hqzFShvzLKAgP54aHlnMG
         ptiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=qNIEerHrGWrzN8R3aizReL35rs9ziwHIg4fETHIqcas=;
        b=qbQwpxU/6sfjcfXBGoNmqA0El7J28AXSqLx7LWFl0bXR15wrB9Tn/bEwnEQkiumcIl
         83b81BmK7JgJ3+o6nm28AFodE6/lGvPL3rl8hM+Rfowrw88p9QCtgIJuGgIkcbJJFiMG
         zboxgnwrPpOpEJnlCMwKbeEJFt1anuXbMcCbJHTDW7cADNRVNfxz7nEumaefkVPEv8Rn
         bX8ynJU0F8wEwftqrAMEazlJrMm7MuEJgO4kIWhcIqr/3tJPH0DCc0f+RYyAO7R8oxI9
         ILilOS3ioW+rUT+N5+hfWmAfIiY/88yQn7GGKmzgLP0KrNRysN5cYFS44ug91jIPHBRQ
         Mw5g==
X-Gm-Message-State: AOAM531I85pW2umNyG5NIl5mBG+KNW3atgxIBLWdq+jHJbGauBMHg5ZH
	O8VSkBm95daziW0+Wfne5FfX8H5eAqUm/ELoLh40XEy1Duc=
X-Google-Smtp-Source: ABdhPJxpcQcnOwa3m1B+GKUZR6K84CDyt73vyi9quGUeA24DD63+YB4rrVRj9nGiFTNBtJE62ayKJZgxvKh4iTeBKSo=
X-Received: by 2002:a05:6e02:134e:: with SMTP id k14mr2656902ilr.39.1631104017751;
 Wed, 08 Sep 2021 05:26:57 -0700 (PDT)
MIME-Version: 1.0
References: <162984615663.11274.7703406394120943627@mm2.emwd.com>
 <CACDReSws6BVpoRV=bAA7v3UBKvxFzN-=k_26bztAx8kJe18dzA@mail.gmail.com> <CANsNeargqVB9F_=7f_1HEYdAmizg0CinfEtKYNaazHp8LtdGRg@mail.gmail.com>
In-Reply-To: <CANsNeargqVB9F_=7f_1HEYdAmizg0CinfEtKYNaazHp8LtdGRg@mail.gmail.com>
From: Rich Gopstein <rich@ourowndomain.com>
Date: Wed, 8 Sep 2021 08:26:46 -0400
Message-ID: <CANsNeap2Ghk12f3UKcuScSrpGs+t-Qti0DVRgkFb-sOsUKuPMg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="000000000000928fbc05cb7aff2e"
Message-ID-Hash: KBBM2UYIGDW57BDKXJ5QZG66V3WQMH2H
X-Message-ID-Hash: KBBM2UYIGDW57BDKXJ5QZG66V3WQMH2H
X-MailFrom: rich@ourowndomain.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading E310 temperatures
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KBBM2UYIGDW57BDKXJ5QZG66V3WQMH2H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--000000000000928fbc05cb7aff2e
Content-Type: multipart/alternative; boundary="000000000000928fba05cb7aff2c"

--000000000000928fba05cb7aff2c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

FYI - I ended up reading the raw temp values from the E310's /sys file
system.  I had to estimate the offset value for the Zynq temp sensor, so it
might not be accurate.

Here's the code I ended up using. It runs on UHD 3.15, but I don't know
about UHD 4.x.

Rich


On Wed, Aug 25, 2021 at 5:06 PM Rich Gopstein <rich@ourowndomain.com> wrote=
:

> Thanks.  I'm out until next week, but I'll give it a try when I return.
>
> For lm-sensors, get the zip file from:
> https://github.com/lm-sensors/lm-sensors/archive/refs/tags/V3-6-0.zip
> Then:
> unzip
> make all
> make install
>
> On Wed, Aug 25, 2021 at 3:53 PM Ofer Saferman <ofer@navigicom.com> wrote:
>
>> Hello,
>>
>> Here are some C++ code snippets for reading all the temperatures:
>> -----------------------------------------------------------------------
>> uhd::device3::sptr usrp =3D uhd::device3::make(args);
>>
>> int temp_mb =3D
>> usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/sensors/temp_m=
b").get().to_int();
>> int temp_fpga =3D
>> usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/sensors/temp_f=
pga").get().to_int();
>> int temp_ad9361 =3D
>> usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/dboards/A/tx_f=
rontends/0/sensors/ad9361_temperature").get().to_int();
>>
>> std::cout << "Motherboard temp=3D" << temp_mb << std::endl;
>> std::cout << "FPGA temp=3D" << temp_fpga << std::endl;
>> std::cout << "AD9361 temp=3D" << temp_ad9361 << std::endl;
>> -----------------------------------------------------------------------
>> If your USRP object is multi_usrp it is easier. There is a method called
>> get_mboard_sensor() or something like that makes the code more pretty. T=
he
>> sensor name is as above.
>>
>> How did you install lm_sensors?
>>
>> Regards,
>> Ofer Saferman
>>
>> On Wed, Aug 25, 2021 at 2:02 AM <usrp-users-request@lists.ettus.com>
>> wrote:
>>
>>> Send USRP-users mailing list submissions to
>>>         usrp-users@lists.ettus.com
>>>
>>> To subscribe or unsubscribe via email, send a message with subject or
>>> body 'help' to
>>>         usrp-users-request@lists.ettus.com
>>>
>>> You can reach the person managing the list at
>>>         usrp-users-owner@lists.ettus.com
>>>
>>> When replying, please edit your Subject line so it is more specific
>>> than "Re: Contents of USRP-users digest..."Today's Topics:
>>>
>>>    1. Re: Reading E310 temperatures (aneesh patel)
>>>    2. Re: Reading E310 temperatures (aneesh patel)
>>>    3. Re: Reading E310 temperatures (Rich Gopstein)
>>>
>>>
>>>
>>> ---------- Forwarded message ----------
>>> From: aneesh patel <ampselectronics@yahoo.com>
>>> To: Rich Gopstein <rich@ourowndomain.com>, Marcus D Leech <
>>> patchvonbraun@gmail.com>
>>> Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>>> Bcc:
>>> Date: Tue, 24 Aug 2021 22:19:49 +0000 (UTC)
>>> Subject: [USRP-users] Re: Reading E310 temperatures
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
>>>
>>>
>>> ---------- Forwarded message ----------
>>> From: aneesh patel <ampselectronics@yahoo.com>
>>> To: Rich Gopstein <rich@ourowndomain.com>, Marcus D Leech <
>>> patchvonbraun@gmail.com>
>>> Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>>> Bcc:
>>> Date: Tue, 24 Aug 2021 22:25:27 +0000 (UTC)
>>> Subject: [USRP-users] Re: Reading E310 temperatures
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
>>>
>>>
>>> ---------- Forwarded message ----------
>>> From: Rich Gopstein <rich@ourowndomain.com>
>>> To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>>> Cc:
>>> Bcc:
>>> Date: Tue, 24 Aug 2021 19:02:21 -0400
>>> Subject: [USRP-users] Re: Reading E310 temperatures
>>> Thanks for both suggestions.  I installed lm_sensors, and it seems to
>>> find two of the temp sensors.  Not sure which two, though:
>>>
>>> # sensors
>>> e31x_battery-virtual-0
>>> Adapter: Virtual device
>>> temp1:       -273.0=C2=B0C
>>>
>>> e000b000ethernetffffffff00-mdio-0
>>> Adapter: MDIO adapter
>>> temp1:        +28.0=C2=B0C  (crit =3D +100.0=C2=B0C)
>>>
>>> jc-42.4-temp-i2c-0-19
>>> Adapter: Cadence I2C at e0004000
>>> temp1:        +33.2=C2=B0C  (low  =3D  +0.0=C2=B0C)                  AL=
ARM (HIGH,
>>> CRIT)
>>>                        (high =3D  +0.0=C2=B0C, hyst =3D  +0.0=C2=B0C)
>>>                        (crit =3D  +0.0=C2=B0C, hyst =3D  +0.0=C2=B0C)
>>>
>>>
>>> On Tue, Aug 24, 2021 at 6:25 PM aneesh patel <ampselectronics@yahoo.com=
>
>>> wrote:
>>>
>>>> Correction-- missed you said "outside of gnuradio." Basically
>>>> everything below minus gnuradio. if the sensors_lm package is availabl=
e (as
>>>> marcus stated), parse that output or just manually parse the /sys or /=
proc
>>>> (forgot which one) file descriptor for the sensor when you find it.
>>>>
>>>> Best of luck!
>>>>
>>>> Aneesh
>>>>
>>>> On Tuesday, August 24, 2021, 06:19:49 PM EDT, aneesh patel <
>>>> ampselectronics@yahoo.com> wrote:
>>>>
>>>>
>>>> Concur on verifying-- that being said I know at least one of them
>>>> (possibly CPU) was available on the SG3 image a while back (I'm sure
>>>> nothing much has changed there but its been a while).
>>>>
>>>> Then is would be very simple to write a simple custom GNURadio block
>>>> (like basically a command line script to cat the sensor file descripto=
r
>>>> [just google that as I can't recall if its in /sys or /proc]) to pull =
that
>>>> data from the OS to pass temp messages and ingest them into your messa=
ge
>>>> passing or logging system. On the tougher end, depending on dev cycles=
, one
>>>> can cross-compile or pull code from lm-sensors and then turn that into=
 a
>>>> GNURadio block (and maybe even being able to add the other sensors whe=
n
>>>> reading into the ettus kernel mod code/schematics if possible). Some
>>>> options exist.
>>>>
>>>> Going all from memory here but that should be >94.27% correct. :)
>>>>
>>>> Best of luck!
>>>>
>>>> Aneesh
>>>>
>>>> On Tuesday, August 24, 2021, 05:20:51 PM EDT, Marcus D Leech <
>>>> patchvonbraun@gmail.com> wrote:
>>>>
>>>>
>>>> My approach would be to see if any of those sensors are understood by
>>>> the kernel lm_sensors subsystem.
>>>>
>>>> Sent from my iPhone
>>>>
>>>> > On Aug 24, 2021, at 5:12 PM, Rich Gopstein <rich@ourowndomain.com>
>>>> wrote:
>>>> >
>>>> > =EF=BB=BF
>>>> > I'm helping out on a project that's using an E310.  Someone else is
>>>> doing the GNURadio code, but I need to read the temperature values
>>>> periodically (once every few seconds).  My code will not be running in
>>>> GNURadio.
>>>> >
>>>> > It looks like there are three temp sensors (Zynq, ADT7408, and the
>>>> AD9361).
>>>> >
>>>> > What are my options for reading the temp values outside of GNURadio?
>>>> If it matters, the E310 is running UHD_3.15
>>>> > My code will be running on the E310 directly.
>>>> >
>>>> >
>>>> > Thanks.
>>>> >
>>>> > Rich
>>>> >
>>>> > _______________________________________________
>>>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>
>> --
>> This message has been scanned for viruses and
>> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and
>> is
>> believed to be clean. _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000928fba05cb7aff2c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">FYI - I ended up reading the raw temp values from the E310=
&#39;s /sys file system.=C2=A0 I had to estimate the offset value for the Z=
ynq temp sensor, so it might not be accurate.<div><br></div><div>Here&#39;s=
 the code I ended up=C2=A0using. It runs on UHD 3.15, but I don&#39;t know =
about UHD 4.x.</div><div><br></div><div>Rich</div><div><br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Au=
g 25, 2021 at 5:06 PM Rich Gopstein &lt;<a href=3D"mailto:rich@ourowndomain=
.com">rich@ourowndomain.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr">Thanks.=C2=A0 I&#39;m out until=
 next week, but I&#39;ll give it a try when I return.<div><br></div><div>Fo=
r lm-sensors, get the zip file from:</div><a href=3D"https://github.com/lm-=
sensors/lm-sensors/archive/refs/tags/V3-6-0.zip" target=3D"_blank">https://=
github.com/lm-sensors/lm-sensors/archive/refs/tags/V3-6-0.zip</a><div>Then:=
</div><div>unzip<br>make all<br>make install</div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 25, 2021 at 3=
:53 PM Ofer Saferman &lt;<a href=3D"mailto:ofer@navigicom.com" target=3D"_b=
lank">ofer@navigicom.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hello,</div><div =
dir=3D"ltr"><br></div><div>Here are some C++ code snippets for reading all =
the temperatures:</div><div>-----------------------------------------------=
------------------------<br></div><div>uhd::device3::sptr usrp =3D uhd::dev=
ice3::make(args);</div><div><br></div><div>int temp_mb 					=3D usrp-&gt;ge=
t_tree()-&gt;access&lt;uhd::sensor_value_t&gt;(&quot;/mboards/0/sensors/tem=
p_mb&quot;).get().to_int();<br>		int temp_fpga 					=3D usrp-&gt;get_tree()=
-&gt;access&lt;uhd::sensor_value_t&gt;(&quot;/mboards/0/sensors/temp_fpga&q=
uot;).get().to_int();<br>		int temp_ad9361					=3D usrp-&gt;get_tree()-&gt;=
access&lt;uhd::sensor_value_t&gt;(&quot;/mboards/0/dboards/A/tx_frontends/0=
/sensors/ad9361_temperature&quot;).get().to_int();</div><div><br></div><div=
>std::cout &lt;&lt; &quot;Motherboard temp=3D&quot; &lt;&lt; temp_mb &lt;&l=
t; std::endl;<br>		std::cout &lt;&lt; &quot;FPGA temp=3D&quot; &lt;&lt; tem=
p_fpga &lt;&lt; std::endl;<br>		std::cout &lt;&lt; &quot;AD9361 temp=3D&quo=
t; &lt;&lt; temp_ad9361 &lt;&lt; std::endl;</div><div>
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
        </div><div id=3D"gmail-m_666122177168656907gmail-m_3023954272301272=
537gmail-m_8067711862300968410ydpca33aaa6yahoo_quoted_0518387881">
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
blank">usrp-users-leave@lists.ettus.com</a><div id=3D"gmail-m_6661221771686=
56907gmail-m_3023954272301272537gmail-m_8067711862300968410ydpca33aaa6yqtfd=
42373"><br clear=3D"none">_______________________________________________<b=
r clear=3D"none">USRP-users mailing list -- <a shape=3D"rect" href=3D"mailt=
o:usrp-users@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users=
@lists.ettus.com</a><br clear=3D"none">To unsubscribe send an email to <a s=
hape=3D"rect" href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofol=
low" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br clear=3D"non=
e"></div></div></div>
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
        </div><div id=3D"gmail-m_666122177168656907gmail-m_3023954272301272=
537gmail-m_8067711862300968410ydpb3eb0d01yahoo_quoted_0229013022">
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
                <div><div id=3D"gmail-m_666122177168656907gmail-m_302395427=
2301272537gmail-m_8067711862300968410ydpb3eb0d01yiv6860814934"><div><div st=
yle=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;fo=
nt-size:13px"><div></div>
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
        </div><div id=3D"gmail-m_666122177168656907gmail-m_3023954272301272=
537gmail-m_8067711862300968410ydpb3eb0d01yiv6860814934yqt80428"><div id=3D"=
gmail-m_666122177168656907gmail-m_3023954272301272537gmail-m_80677118623009=
68410ydpb3eb0d01yiv6860814934ydpca33aaa6yahoo_quoted_0518387881">
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
blank">usrp-users-leave@lists.ettus.com</a><div id=3D"gmail-m_6661221771686=
56907gmail-m_3023954272301272537gmail-m_8067711862300968410ydpb3eb0d01yiv68=
60814934ydpca33aaa6yqtfd42373"><br clear=3D"none">_________________________=
______________________<br clear=3D"none">USRP-users mailing list -- <a shap=
e=3D"rect" href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollow" targ=
et=3D"_blank">usrp-users@lists.ettus.com</a><br clear=3D"none">To unsubscri=
be send an email to <a shape=3D"rect" href=3D"mailto:usrp-users-leave@lists=
.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users-leave@lists.ettus=
.com</a><br clear=3D"none"></div></div></div>
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
        </div><div id=3D"gmail-m_666122177168656907gmail-m_3023954272301272=
537gmail-m_8067711862300968410gmail-m_13919340374060557ydpb3eb0d01yahoo_quo=
ted_0229013022">
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
                <div><div id=3D"gmail-m_666122177168656907gmail-m_302395427=
2301272537gmail-m_8067711862300968410gmail-m_13919340374060557ydpb3eb0d01yi=
v6860814934"><div><div style=3D"font-family:&quot;Helvetica Neue&quot;,Helv=
etica,Arial,sans-serif;font-size:13px"><div></div>
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
        </div><div id=3D"gmail-m_666122177168656907gmail-m_3023954272301272=
537gmail-m_8067711862300968410gmail-m_13919340374060557ydpb3eb0d01yiv686081=
4934yqt80428"><div id=3D"gmail-m_666122177168656907gmail-m_3023954272301272=
537gmail-m_8067711862300968410gmail-m_13919340374060557ydpb3eb0d01yiv686081=
4934ydpca33aaa6yahoo_quoted_0518387881">
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
blank">usrp-users-leave@lists.ettus.com</a><div id=3D"gmail-m_6661221771686=
56907gmail-m_3023954272301272537gmail-m_8067711862300968410gmail-m_13919340=
374060557ydpb3eb0d01yiv6860814934ydpca33aaa6yqtfd42373"><br clear=3D"none">=
_______________________________________________<br clear=3D"none">USRP-user=
s mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@lists.ettus.c=
om" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a><br cl=
ear=3D"none">To unsubscribe send an email to <a shape=3D"rect" href=3D"mail=
to:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usr=
p-users-leave@lists.ettus.com</a><br clear=3D"none"></div></div></div>
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
</blockquote></div>

--000000000000928fba05cb7aff2c--

--000000000000928fbc05cb7aff2e
Content-Type: text/x-python-script; charset="US-ASCII"; name="readtempdemo.py"
Content-Disposition: attachment; filename="readtempdemo.py"
Content-Transfer-Encoding: base64
Content-ID: <f_ktbh3min0>
X-Attachment-Id: f_ktbh3min0

IyEvdXNyL2Jpbi9weXRob24zCgojIFJlYWRzIHRlbXBlcmF0dXJlIG9mIEUzMTAgenlucSBhbmQg
STJDIHRlbXAgc2Vuc29ycwojIGRldmVsb3BlZCBvbiBVSEQgMy4xNQojIFIuIEdvcHN0ZWluLCAy
MDIxCgppbXBvcnQgdGltZQoKYm9hcmRfb2Zmc2V0ID0gMApib2FyZF9zY2FsZSA9IC4wMDEKCiMg
enlucSBzZW5zb3Igb2Zmc2V0IGRldGVybWluZWQgZW1waXJpY2FsbHkgLSBtYXkgbm90IGJlIGFj
Y3VyYXRlCnp5bnFfb2Zmc2V0ID0gLTIyODUKenlucV9zY2FsZSA9IDAuMTIzMDQKCnp5bnEgPSBv
cGVuKCcvc3lzL2RldmljZXMvc29jMC9hbWJhL2Y4MDA3MTAwLmFkYy9paW86ZGV2aWNlMC9pbl90
ZW1wMF9yYXcnLCAncicpCmJvYXJkID0gb3BlbignL3N5cy9kZXZpY2VzL3NvYzAvYW1iYS9lMDAw
NDAwMC5pMmMvaTJjLTAvMC0wMDE5L2h3bW9uL2h3bW9uMS90ZW1wMV9pbnB1dCcsICdyJykKCiN0
ZW1wMiA9IG9wZW4oJy9zeXMvZGV2aWNlcy9zb2MwL2FtYmEvZTAwMGIwMDAuZXRoZXJuZXQvbWRp
b19idXMvZTAwMGIwMDAuZXRoZXJuZXQtZmZmZmZmZmYvZTAwMGIwMDAuZXRoZXJuZXQtZmZmZmZm
ZmY6MDAvaHdtb24vaHdtb24wL3RlbXAxX2lucHV0JywgJ3InKQoKcHJpbnQoIiBaeW5xICAgSTJD
IikKCndoaWxlIDE6CgogICAgenlucS5zZWVrKDApCiAgICBib2FyZC5zZWVrKDApCgogICAgenlu
cV90ZW1wID0gKGludCh6eW5xLnJlYWRsaW5lKCkpICsgenlucV9vZmZzZXQpICogenlucV9zY2Fs
ZQogICAgYm9hcmRfdGVtcCA9IChpbnQoYm9hcmQucmVhZGxpbmUoKSkgKyBib2FyZF9vZmZzZXQp
ICogYm9hcmRfc2NhbGUKCiAgICBwcmludCgnezo2LjJmfSB7OjYuMmZ9Jy5mb3JtYXQoenlucV90
ZW1wLCBib2FyZF90ZW1wKSkKCiAgICB0aW1lLnNsZWVwKDEpCgo=
--000000000000928fbc05cb7aff2e
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--000000000000928fbc05cb7aff2e--
