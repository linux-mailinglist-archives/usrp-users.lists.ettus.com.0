Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 975B33F7CE1
	for <lists+usrp-users@lfdr.de>; Wed, 25 Aug 2021 21:53:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 640C1383DB1
	for <lists+usrp-users@lfdr.de>; Wed, 25 Aug 2021 15:53:35 -0400 (EDT)
Received: from postman.dtnt.info (postman.dtnt.info [62.219.91.51])
	by mm2.emwd.com (Postfix) with ESMTPS id E0F73383B1F
	for <usrp-users@lists.ettus.com>; Wed, 25 Aug 2021 15:52:45 -0400 (EDT)
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
	by postman.dtnt.info (Postfix) with ESMTPS id 026DE42708
	for <usrp-users@lists.ettus.com>; Wed, 25 Aug 2021 22:52:35 +0300 (IDT)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
	by o.dtnt.email (Postfix) with ESMTP id D1CF59FC07
	for <usrp-users@lists.ettus.com>; Wed, 25 Aug 2021 22:52:34 +0300 (IDT)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
	by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id roMl5rt2Oh4Z for <usrp-users@lists.ettus.com>;
	Wed, 25 Aug 2021 22:52:29 +0300 (IDT)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	by o.dtnt.email (Postfix) with ESMTPSA id 3F0499FA72
	for <usrp-users@lists.ettus.com>; Wed, 25 Aug 2021 22:52:29 +0300 (IDT)
Received: by mail-ot1-f47.google.com with SMTP id c19-20020a9d6153000000b0051829acbfc7so418400otk.9
        for <usrp-users@lists.ettus.com>; Wed, 25 Aug 2021 12:52:28 -0700 (PDT)
X-Gm-Message-State: AOAM530Ix1tXbRxrVr6MeniNe6ure6LdORiGQ1BVtuCvtCX1OfPJVTWA
	OvawMYrFpJI0LWq7j/cbjuFUG2fSMCURU6jwoIc=
X-Google-Smtp-Source: ABdhPJzKcs8KvqBYatddaXLO5gQXRpZXZZXW9PGFUUP+kOBbRi/QE1zcBA6v46kIjzUR/KbWFtO7BhVkcadGMy0HAzM=
X-Received: by 2002:a9d:6c04:: with SMTP id f4mr117903otq.185.1629921147218;
 Wed, 25 Aug 2021 12:52:27 -0700 (PDT)
MIME-Version: 1.0
References: <162984615663.11274.7703406394120943627@mm2.emwd.com>
In-Reply-To: <162984615663.11274.7703406394120943627@mm2.emwd.com>
From: Ofer Saferman <ofer@navigicom.com>
Date: Wed, 25 Aug 2021 22:52:16 +0300
X-Gmail-Original-Message-ID: <CACDReSws6BVpoRV=bAA7v3UBKvxFzN-=k_26bztAx8kJe18dzA@mail.gmail.com>
Message-ID: <CACDReSws6BVpoRV=bAA7v3UBKvxFzN-=k_26bztAx8kJe18dzA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: 026DE42708.A917F
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Message-ID-Hash: 5W6BHATZ6KJF3JSXKP7PHC62O5ZBKZWK
X-Message-ID-Hash: 5W6BHATZ6KJF3JSXKP7PHC62O5ZBKZWK
X-MailFrom: ofer@navigicom.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading E310 temperatures
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5W6BHATZ6KJF3JSXKP7PHC62O5ZBKZWK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4012193508138247852=="

--===============4012193508138247852==
Content-Type: multipart/alternative; boundary="000000000000fdef6d05ca67964b"

--000000000000fdef6d05ca67964b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Here are some C++ code snippets for reading all the temperatures:
-----------------------------------------------------------------------
uhd::device3::sptr usrp =3D uhd::device3::make(args);

int temp_mb =3D
usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/sensors/temp_mb")=
.get().to_int();
int temp_fpga =3D
usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/sensors/temp_fpga=
").get().to_int();
int temp_ad9361 =3D
usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/dboards/A/tx_fron=
tends/0/sensors/ad9361_temperature").get().to_int();

std::cout << "Motherboard temp=3D" << temp_mb << std::endl;
std::cout << "FPGA temp=3D" << temp_fpga << std::endl;
std::cout << "AD9361 temp=3D" << temp_ad9361 << std::endl;
-----------------------------------------------------------------------
If your USRP object is multi_usrp it is easier. There is a method called
get_mboard_sensor() or something like that makes the code more pretty. The
sensor name is as above.

How did you install lm_sensors?

Regards,
Ofer Saferman

On Wed, Aug 25, 2021 at 2:02 AM <usrp-users-request@lists.ettus.com> wrote:

> Send USRP-users mailing list submissions to
>         usrp-users@lists.ettus.com
>
> To subscribe or unsubscribe via email, send a message with subject or
> body 'help' to
>         usrp-users-request@lists.ettus.com
>
> You can reach the person managing the list at
>         usrp-users-owner@lists.ettus.com
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of USRP-users digest..."Today's Topics:
>
>    1. Re: Reading E310 temperatures (aneesh patel)
>    2. Re: Reading E310 temperatures (aneesh patel)
>    3. Re: Reading E310 temperatures (Rich Gopstein)
>
>
>
> ---------- Forwarded message ----------
> From: aneesh patel <ampselectronics@yahoo.com>
> To: Rich Gopstein <rich@ourowndomain.com>, Marcus D Leech <
> patchvonbraun@gmail.com>
> Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> Bcc:
> Date: Tue, 24 Aug 2021 22:19:49 +0000 (UTC)
> Subject: [USRP-users] Re: Reading E310 temperatures
> Concur on verifying-- that being said I know at least one of them
> (possibly CPU) was available on the SG3 image a while back (I'm sure
> nothing much has changed there but its been a while).
>
> Then is would be very simple to write a simple custom GNURadio block (like
> basically a command line script to cat the sensor file descriptor [just
> google that as I can't recall if its in /sys or /proc]) to pull that data
> from the OS to pass temp messages and ingest them into your message passi=
ng
> or logging system. On the tougher end, depending on dev cycles, one can
> cross-compile or pull code from lm-sensors and then turn that into a
> GNURadio block (and maybe even being able to add the other sensors when
> reading into the ettus kernel mod code/schematics if possible). Some
> options exist.
>
> Going all from memory here but that should be >94.27% correct. :)
>
> Best of luck!
>
> Aneesh
>
> On Tuesday, August 24, 2021, 05:20:51 PM EDT, Marcus D Leech <
> patchvonbraun@gmail.com> wrote:
>
>
> My approach would be to see if any of those sensors are understood by the
> kernel lm_sensors subsystem.
>
> Sent from my iPhone
>
> > On Aug 24, 2021, at 5:12 PM, Rich Gopstein <rich@ourowndomain.com>
> wrote:
> >
> > =EF=BB=BF
> > I'm helping out on a project that's using an E310.  Someone else is
> doing the GNURadio code, but I need to read the temperature values
> periodically (once every few seconds).  My code will not be running in
> GNURadio.
> >
> > It looks like there are three temp sensors (Zynq, ADT7408, and the
> AD9361).
> >
> > What are my options for reading the temp values outside of GNURadio?  If
> it matters, the E310 is running UHD_3.15
> > My code will be running on the E310 directly.
> >
> >
> > Thanks.
> >
> > Rich
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
>
> ---------- Forwarded message ----------
> From: aneesh patel <ampselectronics@yahoo.com>
> To: Rich Gopstein <rich@ourowndomain.com>, Marcus D Leech <
> patchvonbraun@gmail.com>
> Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> Bcc:
> Date: Tue, 24 Aug 2021 22:25:27 +0000 (UTC)
> Subject: [USRP-users] Re: Reading E310 temperatures
> Correction-- missed you said "outside of gnuradio." Basically everything
> below minus gnuradio. if the sensors_lm package is available (as marcus
> stated), parse that output or just manually parse the /sys or /proc (forg=
ot
> which one) file descriptor for the sensor when you find it.
>
> Best of luck!
>
> Aneesh
>
> On Tuesday, August 24, 2021, 06:19:49 PM EDT, aneesh patel <
> ampselectronics@yahoo.com> wrote:
>
>
> Concur on verifying-- that being said I know at least one of them
> (possibly CPU) was available on the SG3 image a while back (I'm sure
> nothing much has changed there but its been a while).
>
> Then is would be very simple to write a simple custom GNURadio block (like
> basically a command line script to cat the sensor file descriptor [just
> google that as I can't recall if its in /sys or /proc]) to pull that data
> from the OS to pass temp messages and ingest them into your message passi=
ng
> or logging system. On the tougher end, depending on dev cycles, one can
> cross-compile or pull code from lm-sensors and then turn that into a
> GNURadio block (and maybe even being able to add the other sensors when
> reading into the ettus kernel mod code/schematics if possible). Some
> options exist.
>
> Going all from memory here but that should be >94.27% correct. :)
>
> Best of luck!
>
> Aneesh
>
> On Tuesday, August 24, 2021, 05:20:51 PM EDT, Marcus D Leech <
> patchvonbraun@gmail.com> wrote:
>
>
> My approach would be to see if any of those sensors are understood by the
> kernel lm_sensors subsystem.
>
> Sent from my iPhone
>
> > On Aug 24, 2021, at 5:12 PM, Rich Gopstein <rich@ourowndomain.com>
> wrote:
> >
> > =EF=BB=BF
> > I'm helping out on a project that's using an E310.  Someone else is
> doing the GNURadio code, but I need to read the temperature values
> periodically (once every few seconds).  My code will not be running in
> GNURadio.
> >
> > It looks like there are three temp sensors (Zynq, ADT7408, and the
> AD9361).
> >
> > What are my options for reading the temp values outside of GNURadio?  If
> it matters, the E310 is running UHD_3.15
> > My code will be running on the E310 directly.
> >
> >
> > Thanks.
> >
> > Rich
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
>
> ---------- Forwarded message ----------
> From: Rich Gopstein <rich@ourowndomain.com>
> To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> Cc:
> Bcc:
> Date: Tue, 24 Aug 2021 19:02:21 -0400
> Subject: [USRP-users] Re: Reading E310 temperatures
> Thanks for both suggestions.  I installed lm_sensors, and it seems to find
> two of the temp sensors.  Not sure which two, though:
>
> # sensors
> e31x_battery-virtual-0
> Adapter: Virtual device
> temp1:       -273.0=C2=B0C
>
> e000b000ethernetffffffff00-mdio-0
> Adapter: MDIO adapter
> temp1:        +28.0=C2=B0C  (crit =3D +100.0=C2=B0C)
>
> jc-42.4-temp-i2c-0-19
> Adapter: Cadence I2C at e0004000
> temp1:        +33.2=C2=B0C  (low  =3D  +0.0=C2=B0C)                  ALAR=
M (HIGH, CRIT)
>                        (high =3D  +0.0=C2=B0C, hyst =3D  +0.0=C2=B0C)
>                        (crit =3D  +0.0=C2=B0C, hyst =3D  +0.0=C2=B0C)
>
>
> On Tue, Aug 24, 2021 at 6:25 PM aneesh patel <ampselectronics@yahoo.com>
> wrote:
>
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
>> My approach would be to see if any of those sensors are understood by the
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
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--=20
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--000000000000fdef6d05ca67964b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello,</div><div dir=3D"ltr"><br></div><d=
iv>Here are some C++ code snippets for reading all the temperatures:</div><=
div>-----------------------------------------------------------------------=
<br></div><div>uhd::device3::sptr usrp =3D uhd::device3::make(args);</div><=
div><br></div><div>int temp_mb 					=3D usrp-&gt;get_tree()-&gt;access&lt;u=
hd::sensor_value_t&gt;(&quot;/mboards/0/sensors/temp_mb&quot;).get().to_int=
();<br>		int temp_fpga 					=3D usrp-&gt;get_tree()-&gt;access&lt;uhd::sens=
or_value_t&gt;(&quot;/mboards/0/sensors/temp_fpga&quot;).get().to_int();<br=
>		int temp_ad9361					=3D usrp-&gt;get_tree()-&gt;access&lt;uhd::sensor_va=
lue_t&gt;(&quot;/mboards/0/dboards/A/tx_frontends/0/sensors/ad9361_temperat=
ure&quot;).get().to_int();</div><div><br></div><div>std::cout &lt;&lt; &quo=
t;Motherboard temp=3D&quot; &lt;&lt; temp_mb &lt;&lt; std::endl;<br>		std::=
cout &lt;&lt; &quot;FPGA temp=3D&quot; &lt;&lt; temp_fpga &lt;&lt; std::end=
l;<br>		std::cout &lt;&lt; &quot;AD9361 temp=3D&quot; &lt;&lt; temp_ad9361 =
&lt;&lt; std::endl;</div><div>
----------------------------------------------------------------------- <br=
></div><div>If your USRP object is multi_usrp it is easier. There is a meth=
od called get_mboard_sensor() or something like that makes the code more pr=
etty. The sensor name is as above.</div><div><br></div><div>How did you ins=
tall lm_sensors?<br></div><div><br></div><div>Regards,<br></div><div>Ofer S=
aferman<br></div><div><br></div><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Wed, Aug 25, 2021 at 2:02 AM &lt;<a href=3D"mailto=
:usrp-users-request@lists.ettus.com">usrp-users-request@lists.ettus.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Send=
 USRP-users mailing list submissions to<br>
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
than &quot;Re: Contents of USRP-users digest...&quot;Today&#39;s Topics:<br>
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
peratures<br><div><div style=3D"font-family:Helvetica Neue,Helvetica,Arial,=
sans-serif;font-size:13px"><div></div>
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
=20=20=20=20=20=20=20=20
        </div><div id=3D"gmail-m_8067711862300968410ydpca33aaa6yahoo_quoted=
_0518387881">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20
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
blank">usrp-users-leave@lists.ettus.com</a><div id=3D"gmail-m_8067711862300=
968410ydpca33aaa6yqtfd42373"><br clear=3D"none">___________________________=
____________________<br clear=3D"none">USRP-users mailing list -- <a shape=
=3D"rect" href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollow" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a><br clear=3D"none">To unsubscrib=
e send an email to <a shape=3D"rect" href=3D"mailto:usrp-users-leave@lists.=
ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users-leave@lists.ettus.=
com</a><br clear=3D"none"></div></div></div>
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
Re: Reading E310 temperatures<br><div><div style=3D"font-family:Helvetica N=
eue,Helvetica,Arial,sans-serif;font-size:13px"><div></div>
        <div dir=3D"ltr">Correction-- missed you said &quot;outside of gnur=
adio.&quot; Basically everything below minus gnuradio. if the sensors_lm pa=
ckage is available (as marcus stated), parse that output or just manually p=
arse the /sys or /proc (forgot which one) file descriptor for the sensor wh=
en you find it.=C2=A0</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Best=
 of luck!</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Aneesh</div><div=
><br></div>
=20=20=20=20=20=20=20=20
        </div><div id=3D"gmail-m_8067711862300968410ydpb3eb0d01yahoo_quoted=
_0229013022">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20
                <div>
                    On Tuesday, August 24, 2021, 06:19:49 PM EDT, aneesh pa=
tel &lt;<a href=3D"mailto:ampselectronics@yahoo.com" target=3D"_blank">amps=
electronics@yahoo.com</a>&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"gmail-m_8067711862300968410ydpb3eb0d01yiv68=
60814934"><div><div style=3D"font-family:Helvetica Neue,Helvetica,Arial,san=
s-serif;font-size:13px"><div></div>
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
=20=20=20=20=20=20=20=20
        </div><div id=3D"gmail-m_8067711862300968410ydpb3eb0d01yiv686081493=
4yqt80428"><div id=3D"gmail-m_8067711862300968410ydpb3eb0d01yiv6860814934yd=
pca33aaa6yahoo_quoted_0518387881">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20
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
blank">usrp-users-leave@lists.ettus.com</a><div id=3D"gmail-m_8067711862300=
968410ydpb3eb0d01yiv6860814934ydpca33aaa6yqtfd42373"><br clear=3D"none">___=
____________________________________________<br clear=3D"none">USRP-users m=
ailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@lists.ettus.com"=
 rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a><br clear=
=3D"none">To unsubscribe send an email to <a shape=3D"rect" href=3D"mailto:=
usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-u=
sers-leave@lists.ettus.com</a><br clear=3D"none"></div></div></div>
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
=20=20=20=20=20=20=20=20
        </div><div id=3D"gmail-m_8067711862300968410gmail-m_139193403740605=
57ydpb3eb0d01yahoo_quoted_0229013022">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20
                <div>
                    On Tuesday, August 24, 2021, 06:19:49 PM EDT, aneesh pa=
tel &lt;<a href=3D"mailto:ampselectronics@yahoo.com" target=3D"_blank">amps=
electronics@yahoo.com</a>&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"gmail-m_8067711862300968410gmail-m_13919340=
374060557ydpb3eb0d01yiv6860814934"><div><div style=3D"font-family:&quot;Hel=
vetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:13px"><div></div>
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
=20=20=20=20=20=20=20=20
        </div><div id=3D"gmail-m_8067711862300968410gmail-m_139193403740605=
57ydpb3eb0d01yiv6860814934yqt80428"><div id=3D"gmail-m_8067711862300968410g=
mail-m_13919340374060557ydpb3eb0d01yiv6860814934ydpca33aaa6yahoo_quoted_051=
8387881">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20
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
blank">usrp-users-leave@lists.ettus.com</a><div id=3D"gmail-m_8067711862300=
968410gmail-m_13919340374060557ydpb3eb0d01yiv6860814934ydpca33aaa6yqtfd4237=
3"><br clear=3D"none">_______________________________________________<br cl=
ear=3D"none">USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:us=
rp-users@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lis=
ts.ettus.com</a><br clear=3D"none">To unsubscribe send an email to <a shape=
=3D"rect" href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow"=
 target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br clear=3D"none"><=
/div></div></div>
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
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--000000000000fdef6d05ca67964b--

--===============4012193508138247852==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4012193508138247852==--
