Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 092F53333E8
	for <lists+usrp-users@lfdr.de>; Wed, 10 Mar 2021 04:42:10 +0100 (CET)
Received: from [::1] (port=37432 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lJpjc-0007PP-Rk; Tue, 09 Mar 2021 22:42:08 -0500
Received: from mail-qk1-f172.google.com ([209.85.222.172]:42862)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lJpjY-0007Hy-NM
 for USRP-users@lists.ettus.com; Tue, 09 Mar 2021 22:42:04 -0500
Received: by mail-qk1-f172.google.com with SMTP id z190so15498951qka.9
 for <USRP-users@lists.ettus.com>; Tue, 09 Mar 2021 19:41:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=8O7O0SGDo0cFt4+zh8LYSK+pb+lWbIvpMRccgAL0dfA=;
 b=SZNmPPr7hV3dec7CxsgUzCiqtX7cyoSfNmzeBiMrTSJiJC91KtsxwxYirjTZjhSveU
 WeMcyf9zaZYwWA0meEKtovntaQV0rSrVoljCIb0Qt10qP1E5/IyLhufh2PvFKp0Zt8d5
 h9KkNL857QqlMOChDCuy1UN8uwv0OKKbTOT6DVNUruAfGQyz0971FmXuQ9QX5f98KHbU
 TsPVA1iL7ZUhFijlFIN24KjEqnogXU3o9gNdFSHghcPBXiX8BBc6db0bD4EQtO60iitm
 aRhMFsBmWbt5COYQBWUMhmKkUXiSH9rhp9NR9tofBsR49ar7rxF529OtP0VVtUCmd0Tm
 jn1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=8O7O0SGDo0cFt4+zh8LYSK+pb+lWbIvpMRccgAL0dfA=;
 b=gDvBm3fdB/495uw/wyndqM0+chAWV5P9Ss8IZquRaVnCAPyFJw+xGj82ZbSGFQeAQk
 Vq2JteSSpm9hMiz1MyiTcn6POe8BSRFrk5z65iHjleTJAozR3WCoVpWQW8otHlp5IS8M
 rDwjVbfNZ68dVbGHVZ9zNLPfX8CVJJ2arYbyUztUCV0KFmZnD37/D/4GsKTONUeKpzMh
 i04pqIMy2m3PZq8OHJTjf5coVTqHzyjMUnI+KUVhpqK4b+4wYyolUP0MVEyQgZ+huHE+
 zfcLmVragYuXda4z8BNRP5EVzVMYffGNx7K/LJKve/MivY40iOS1DuVUmm9jAOk5tjwj
 uPRA==
X-Gm-Message-State: AOAM530+9KHp/tNqzdJbXL4efxwF0n0dQ5N3pzgKF8w6D2w8Dsoswdx2
 +02m0RDVMgrQ+QMGvaNV3YmTvqcsgiI=
X-Google-Smtp-Source: ABdhPJx/Tk1GuNYp56bCPL6VuMfh4xoCIVwZMo69dsrWeSKWwnQ2gBB+LgXx60d/u3Vp2a6nfwb4WQ==
X-Received: by 2002:a37:56c5:: with SMTP id k188mr897277qkb.18.1615347683901; 
 Tue, 09 Mar 2021 19:41:23 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
 by smtp.gmail.com with ESMTPSA id c5sm11864771qkl.21.2021.03.09.19.41.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Mar 2021 19:41:23 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Tue, 9 Mar 2021 22:41:22 -0500
Message-Id: <4AEFBE96-9D88-450F-8975-09BBC523CEAC@gmail.com>
References: <CAKwz1GfT6OCC+5AW=oB2xa1f_MCYYbtRykB6rUeZuob1xGq7Lw@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CAKwz1GfT6OCC+5AW=oB2xa1f_MCYYbtRykB6rUeZuob1xGq7Lw@mail.gmail.com>
To: Doug Blackburn <dougb95@gmail.com>
X-Mailer: iPhone Mail (18D52)
Subject: Re: [USRP-users] x300 latency over 10GigE
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============8914805170848847162=="
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


--===============8914805170848847162==
Content-Type: multipart/alternative; boundary=Apple-Mail-D8058FEF-416A-441A-9DD0-8D036C6DB86E
Content-Transfer-Encoding: 7bit


--Apple-Mail-D8058FEF-416A-441A-9DD0-8D036C6DB86E
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hah. Yes. Sorry for the confusion.=20



Sent from my iPhone

> On Mar 9, 2021, at 10:36 PM, Doug Blackburn <dougb95@gmail.com> wrote:
>=20
> =EF=BB=BF
> Marcus,
>=20
> Thanks for your response; I believe I am.  The math is spread over two lin=
es:
>=20
>     uhd::time_spec_t expectedTime =3D startTime + (double) ( num_tx_samps =
 )
>                       / (double)usrp->get_tx_rate();
>=20
> Best,
> Doug
>=20
>=20
>> On Tue, Mar 9, 2021 at 10:20 PM Marcus D Leech <patchvonbraun@gmail.com> w=
rote:
>> Shouldn=E2=80=99t you be scaling your num_tx_samples by the time per samp=
le when calculating the expectedTime?
>>=20
>> Sent from my iPhone
>>=20
>>>> On Mar 9, 2021, at 10:03 PM, Doug Blackburn via USRP-users <usrp-users@=
lists.ettus.com> wrote:
>>>>=20
>>> =EF=BB=BF
>>> Hello --
>>>=20
>>> I've got some questions re: latency with the x300 over the 10GigE interf=
ace. =20
>>>=20
>>> If I use the latency_test example operating at a rate of 50 MSPS, I have=
 no issues with a latency of 1ms.  The latency test receives data, examines t=
he time stamp, and transmits a single packet.=20
>>>=20
>>> I have an application where I'd like to run the transmitter continuously=
, and I got curious about the latency involved in that operation.  My applic=
ation is similar to the benchmark_rate example.  I added the following lines=
 to the benchmark_rate example at line 256 after the line.
>>>=20
>>> md.has_time_spec =3D false;=20
>>>=20
>>> =3D=3D=3D=3D
>>> if ( (num_tx_samps % 50000000) < 4*max_samps_per_packet )
>>> {
>>>     uhd::time_spec_t expectedTime =3D startTime + (double) ( num_tx_samp=
s  )
>>>                       / (double)usrp->get_tx_rate();
>>>     uhd::time_spec_t timeAtLog =3D usrp->get_time_now();
>>>     timeAtLog =3D usrp->get_time_now();
>>>     std::cerr << "=3D=3D=3D=3D Actual time =3D=3D=3D=3D" << std::endl;
>>>     std::cerr << "     " << timeAtLog.get_full_secs() << " / "
>>>                           << timeAtLog.get_frac_secs() << std::endl;
>>>     std::cerr << "=3D=3D=3D=3D Expected time =3D=3D=3D=3D" << std::endl;=

>>>     std::cerr << "     " << expectedTime.get_full_secs() << " / "
>>>                           << expectedTime.get_frac_secs() << std::endl;
>>> }
>>> =3D=3D=3D=3D
>>>=20
>>> The intent of this insertion is to log the time at which we return from t=
x_stream->send() and the time at which the first sample of that sent data sh=
ould be transmitted -- at approximately once per second when running at 50 M=
SPS.
>>>=20
>>> After the first second, I consistently saw the following results:
>>>=20
>>> =3D=3D=3D=3D Actual time =3D=3D=3D=3D
>>>      1 / 0.10517
>>> =3D=3D=3D=3D Expected time =3D=3D=3D=3D
>>>      1 / 0.27253
>>>=20
>>> =3D=3D=3D=3D Actual time =3D=3D=3D=3D
>>>      1 / 0.105419
>>> =3D=3D=3D=3D Expected time =3D=3D=3D=3D
>>>      1 / 0.27255
>>>=20
>>> Which indicates to me that there is a latency of approximately 167ms whe=
n transmitting data.  That is, the send() function is returning 167ms earlie=
r than I expect the data to actually be transmitted.   If I halve the sample=
 rate to 25 MSPS, the latency doubles.
>>>=20
>>> What is the source of the latency when running in a continuous mode?  In=
itially, I had thought that this might be related to the send_buffer_size, b=
ut making changes to send_buffer_size seem to not have an effect.   FWIW, 16=
7ms at 50 MSPS is suspiciously close to the value for wmem_max (33554432) su=
ggested in the x300 system configuration ... but neither changing that value=
 or send_buffer_size seems to make a difference.
>>>=20
>>> Is this latency tunable? =20
>>>=20
>>> Thank you for your help!
>>>=20
>>> Best Regards,
>>> Doug Blackburn
>>>=20
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-D8058FEF-416A-441A-9DD0-8D036C6DB86E
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Hah. Yes. Sorry for the confusion.&nbsp;<di=
v><br></div><div><br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D=
"ltr"><br><blockquote type=3D"cite">On Mar 9, 2021, at 10:36 PM, Doug Blackb=
urn &lt;dougb95@gmail.com&gt; wrote:<br><br></blockquote></div><blockquote t=
ype=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Marcus,<div><br></di=
v><div>Thanks for your response; I believe I am.&nbsp; The math is spread ov=
er two lines:</div><div><br></div><div><span style=3D"font-family:monospace"=
>&nbsp; &nbsp; uhd::time_spec_t expectedTime =3D startTime + (double) ( num_=
tx_samps &nbsp;)</span><br style=3D"font-family:monospace"><span style=3D"fo=
nt-family:monospace">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; / (double)</span><span class=3D"gmail-il" style=3D"fon=
t-family:monospace">usrp</span><span style=3D"font-family:monospace">-&gt;ge=
t_tx_rate();</span><br></div><div><span style=3D"font-family:monospace"><br>=
</span></div><div><font face=3D"arial, sans-serif">Best,</font></div><div><f=
ont face=3D"arial, sans-serif">Doug</font></div><div><font face=3D"arial, sa=
ns-serif"><br></font></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Tue, Mar 9, 2021 at 10:20 PM Marcus D Leech &lt=
;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
auto">Shouldn=E2=80=99t you be scaling your num_tx_samples by the time per s=
ample when calculating the expectedTime?<br><br><div dir=3D"ltr">Sent from m=
y iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Mar 9, 2021,=
 at 10:03 PM, Doug Blackburn via USRP-users &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote=
:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF<div dir=3D"ltr"><div dir=3D"ltr">Hello --<div><br></div><div>I've got so=
me questions re: latency with&nbsp;the x300 over the 10GigE interface.&nbsp;=
&nbsp;</div><div><br></div><div>If I use the latency_test example operating a=
t a rate of 50 MSPS, I have no issues with a latency of 1ms.&nbsp; The laten=
cy test receives data, examines the time stamp, and transmits a single packe=
t.&nbsp;</div><div><br></div><div>I have an application where I'd like to ru=
n the transmitter continuously, and I got curious about the latency involved=
 in that operation.&nbsp; My application is similar&nbsp;to the benchmark_ra=
te example.&nbsp; I added the following lines to the benchmark_rate example a=
t line 256 after the line.</div><div><br></div><div><font face=3D"monospace"=
>md.has_time_spec =3D false;&nbsp;</font></div><div><br></div><div>=3D=3D=3D=
=3D</div><div><span style=3D"font-family:monospace">if ( (num_tx_samps % 500=
00000) &lt; 4*max_samps_per_packet )</span></div><div><font face=3D"monospac=
e">{<br>&nbsp; &nbsp; uhd::time_spec_t expectedTime =3D startTime + (double)=
 ( num_tx_samps &nbsp;)<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; / (double)usrp-&gt;get_tx_rate();<br>&nbsp; &nbsp=
; uhd::time_spec_t timeAtLog =3D usrp-&gt;get_time_now();<br>&nbsp; &nbsp; t=
imeAtLog =3D usrp-&gt;get_time_now();<br>&nbsp; &nbsp; std::cerr &lt;&lt; "=3D=
=3D=3D=3D Actual time =3D=3D=3D=3D" &lt;&lt; std::endl;<br>&nbsp; &nbsp; std=
::cerr &lt;&lt; " &nbsp; &nbsp; " &lt;&lt; timeAtLog.get_full_secs() &lt;&lt=
; " / "<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &lt;&lt; timeAtLog.get_frac_secs() &lt;&lt; std::e=
ndl;<br>&nbsp; &nbsp; std::cerr &lt;&lt; "=3D=3D=3D=3D Expected time =3D=3D=3D=
=3D" &lt;&lt; std::endl;<br>&nbsp; &nbsp; std::cerr &lt;&lt; " &nbsp; &nbsp;=
 " &lt;&lt; expectedTime.get_full_secs() &lt;&lt; " / "<br>&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &l=
t;&lt; expectedTime.get_frac_secs() &lt;&lt; std::endl;<br>}<br></font></div=
><div>=3D=3D=3D=3D</div><div><br></div><div>The intent of this insertion is t=
o log the time at which we return from tx_stream-&gt;send() and the time at w=
hich the first sample of that sent data should be transmitted -- at approxim=
ately once per second when running at 50 MSPS.</div><div><br></div><div>Afte=
r the first second, I consistently saw the following results:</div><div><br>=
</div><div><div><font face=3D"monospace">=3D=3D=3D=3D Actual time =3D=3D=3D=3D=
<br></font></div><div><div><font face=3D"monospace">&nbsp; &nbsp; &nbsp;1 / 0=
.10517</font></div><div><font face=3D"monospace">=3D=3D=3D=3D Expected time =3D=
=3D=3D=3D</font></div><div><font face=3D"monospace">&nbsp; &nbsp; &nbsp;1 / 0=
.27253</font></div><div><font face=3D"monospace"><br></font></div><div><font=
 face=3D"monospace">=3D=3D=3D=3D Actual time =3D=3D=3D=3D</font></div><div><=
font face=3D"monospace">&nbsp; &nbsp; &nbsp;1 / 0.105419</font></div><div><f=
ont face=3D"monospace">=3D=3D=3D=3D Expected time =3D=3D=3D=3D</font></div><=
div><font face=3D"monospace">&nbsp; &nbsp; &nbsp;1 / 0.27255</font></div></d=
iv></div><div><br></div><div>Which indicates to me that there is a latency o=
f approximately 167ms when transmitting data.&nbsp; That is, the send() func=
tion is returning 167ms earlier than I expect&nbsp;the data to actually be t=
ransmitted.&nbsp; &nbsp;If I halve the sample rate to 25 MSPS, the latency d=
oubles.</div><div><br></div><div>What is the source of the latency when runn=
ing in a continuous mode?&nbsp; Initially, I had thought that this might be r=
elated to the send_buffer_size, but making changes to send_buffer_size seem t=
o not have an effect.&nbsp; &nbsp;FWIW, 167ms at 50 MSPS is suspiciously clo=
se to the value for wmem_max (33554432) suggested in the x300 system configu=
ration ... but neither changing that value or send_buffer_size seems to make=
 a difference.</div><div><br></div><div>Is this latency tunable?&nbsp;&nbsp;=
</div><div><br></div><div>Thank you for your help!</div><div><br></div><div>=
Best Regards,</div><div>Doug Blackburn</div><div><br></div></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span><a href=3D"mailto:USRP-users@lists.ettus.c=
om" target=3D"_blank">USRP-users@lists.ettus.com</a></span><br><span><a href=
=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" targ=
et=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus=
.com</a></span><br></div></blockquote></div></blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-D8058FEF-416A-441A-9DD0-8D036C6DB86E--


--===============8914805170848847162==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8914805170848847162==--

