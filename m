Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1C6A05E79
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2025 15:21:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BEDAE385E13
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2025 09:21:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736346087; bh=xDIfZcbFXhTo8r/MOZbxGaSCwEeKdkauxzsvcEvrAQY=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=qD32RFpW66LN3XgIbvagmx9YRPeET4rTNvoWpKk6eUl2xvsh0MmkKmJSWkq78EbJf
	 VLLHnWqUh7WdU6pJZJjRBhjwNxzCpvTP+7Y9MeKpKqyeC+Xsw2DtRxV6EKiS959uQj
	 BoJcyp0ZjU3Kk2URMP80oclRXckT2WPYdORgnUvlsMdkgGrIbowKi1HGI6X65bF2xB
	 0aWZzQ2+JSviq/Ootevo+bePTgEqChgyexm9pmtpOuMz/SdsFuoh3p+d+kyoPchiM3
	 BluJhkbEOen67rV2u0r4SjevrLPudoat9I5+ZmIcdNWQivC6eP6Mf0lNZoXohjoa0z
	 YxFSU+Dh4iULA==
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 378BF3811FB
	for <usrp-users@lists.ettus.com>; Wed,  8 Jan 2025 09:20:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="MHA17o0a";
	dkim-atps=neutral
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5d0d32cd31aso25040556a12.0
        for <usrp-users@lists.ettus.com>; Wed, 08 Jan 2025 06:20:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1736346042; x=1736950842; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2npnsaFhmDqCwp0JEk6m0p1lWftjYNkXMJA4AaeGIHg=;
        b=MHA17o0awLEmKTZ0qQYbhMbvjl1agFi85lgzYW/5QcQFN1KL7i2VMBZlGF39M/MEMi
         gw1xPvAgWEXIEY2vVJmqwlrUsVUY24IdUAaBm9iKW/U37sVcV0IMMc+b7EjBoAl6Kaq0
         M0coPCnEAqfVJEtU9CsrKArp1g/CfYftgEon2rX5buBQV9R7Lz2TTXoEybtVnb2gYdsp
         eyHckVgOQU0QW9FRRSL3bJokLhcfb4stUBRSAOJcgYDqSB1f9kqckV/lw/F/sxorHTo1
         2LQSKpDifXEZ39cjmV3g3SCe+Mhjo8eMPL0eNBXXanJ/TFGXEfog3i2B8uDdbXUhhcaD
         LVyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736346042; x=1736950842;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2npnsaFhmDqCwp0JEk6m0p1lWftjYNkXMJA4AaeGIHg=;
        b=RG7LtPfaO9kYnngkHTm23o7FJZAbmyqLExv6zApqvcqvKJefXdIlb/L/W3LWlujnko
         Wgr0tgxK/PQl+drwTvnWWpIiO/21YW6w4fN/H0rj75ZS+3DMnronL5s3buFzB1NAi+8k
         cEKPxQsOiVLozRX7JW09ABJHPw/yx+yz+DuFEv3/CVD7sNP5bNxp280GMpf4MOjvs80+
         ceQbuNC8YdTF+T/7qtal6e3y7GlDN3Q5m1f8D0W0iXg/zcjbrBvyINHw3RHK51T120ar
         /N+LTTelzZXq8LqAXGnYfumFHopusykxuJm62VTvul7ri40hqi8de9a1jjQCRGryXraa
         h52w==
X-Gm-Message-State: AOJu0YwRYKNt1s5GiKkTrrbY4c+nd1Ao+SF3TuU67molY70oSajysM7M
	McY6RZIofW7vwsUPN6RVVmizaaFsUbIYI/aEf3+9Qf3+yYH6XCCpOcvfiWS/RUCSrVx96D5V6j+
	3ZmTORgA/ugu1VdUQOVLXuldadyPH2AkHNmrxPHdIn3IMnPcO+XvSBQ==
X-Gm-Gg: ASbGnctv40eugq9Qv43q17GbkYl7hTyRou8YLLjWAGtDmJ/fIf4Psq7+hjlUJz8dSNt
	gFaiuPiZu9SjtkQWm5p0Df73EpITiCjhrAC6KuMFZ2RCB9BfbC6CALCIa2nZfYEOjsxbdxQ==
X-Google-Smtp-Source: AGHT+IEBbcwzN/CvnQugLPlrOyd94KW7NN2Ycd5pk+m9uTcKBiX9NtcKgvY30HMFEpd9C4kdc4Q6GNHGPA2PbkiJ5Nw=
X-Received: by 2002:a05:6402:2105:b0:5d0:81f5:a398 with SMTP id
 4fb4d7f45d1cf-5d972e00056mr5857306a12.1.1736346042148; Wed, 08 Jan 2025
 06:20:42 -0800 (PST)
MIME-Version: 1.0
References: <LHTKNBtLuZTcr70F1GzIWrGa2h8OayrBclRwTJ6To4@lists.ettus.com> <CAB__hTT7Th2+ECUES7O3uWctqL67LxvqjPX1Ssqq+i5VhT2isA@mail.gmail.com>
In-Reply-To: <CAB__hTT7Th2+ECUES7O3uWctqL67LxvqjPX1Ssqq+i5VhT2isA@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 8 Jan 2025 15:20:31 +0100
X-Gm-Features: AbW1kvbya3xxgxEkplXgAYo3uu03xyCC3q4fv8VN8V04B5dT9ayYxV_9fAjgmDA
Message-ID: <CAFOi1A5=XHGkKvVEQ7HMzX4KibuXqmPLSwew8DppjUdDyHsCjQ@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: 2GG2SRVYR3O4IUJPZCTXXP5GWLVZYAD4
X-Message-ID-Hash: 2GG2SRVYR3O4IUJPZCTXXP5GWLVZYAD4
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Bursts/Buffering with Timestamp data
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2GG2SRVYR3O4IUJPZCTXXP5GWLVZYAD4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5568294438390994158=="

--===============5568294438390994158==
Content-Type: multipart/alternative; boundary="0000000000000cc950062b32919f"

--0000000000000cc950062b32919f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Some more comments:

- S means "sequence error", which means packets were lost somewhere between
your host and the USRP. "L" means late, which just means that your packet
didn't reach the radio in time.
- If you are using a default X310 image, then the corresponding YAML is
this:
https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x300/x310_X=
G_rfnoc_image_core.yml#L20
  I've highlighted the line. The stream endpoint has a default buffer size
of almost 500 kB.
- Start-of-burst doesn't do anything on the X310 (but setting it doesn't
hurt, either).
- Buffering aside, you need to maintain an average software-send-rate that
is on par with your sample rate. If you use timestamps to delay, then that
will help you by filling up the buffer first, and that gives you a bit of
elasticity (you can take a bit longer on occasion as long as on average,
your SW processing rate is not below the hardware rate).
  - Maybe try a multi-threaded approach with a consumer-producer model to
avoid IO waits to block your processing thread.
- what is your rate? If it's small, maybe smaller packet sizes would be
better (because you can produce packets faster).
- If you have only a single channel, you can increase the buffer size (if
you don't want to use the DRAM FIFO) by moving buffer from ep2 to ep0.

--M

On Mon, Jan 6, 2025 at 4:12=E2=80=AFPM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> The X310 buffering depends on whether or not you are using the DRAMFIFO a=
s
> part of the RFNoC flow.  If so, then this buffer alone is 1GB, I think (2=
50
> MSamps).  But, you can't use this if you are running two channels at 200
> MS/s, because the DRAM bandwidth is not sufficient.  If you are running t=
he
> samples at 100 MS/s or less (into the DUC) or if you are only using one
> channel, it should be fine to use this.  If you are not using the DRAMFIF=
O,
> then the amount of buffering is dependent on the FIFOs that are built int=
o
> the Streaming Endpoints.  You could check the yaml file that is used for
> the X310 FPGA build.
>
> Perhaps you could explain a bit more about your intended application. It'=
s
> not clear to me if you are having issues with transmit streaming or if yo=
u
> are also having issues with receive streaming.  Are you planning to use
> gnuradio?  rfnoc (custom graph vs default multi_usrp)?  C++ application?
> Rob
>
> On Tue, Dec 24, 2024 at 3:07=E2=80=AFPM <cjohnson@serranosystems.com> wro=
te:
>
>> *Hi,*
>>
>> *Hopefully you can help me out with some clarification and help on a few
>> questions.*
>>
>> *We are using the X310 all with timestamps as we try to get an
>> understanding of the behavior.  We have created several scenarios to try
>> out start of burst and end of burst and have noticed different behavior.=
  *
>>
>> *Scenario 1 is a =E2=80=9Csingle burst=E2=80=9D for a bunch of samples s=
ent (for example
>> 1996 samples of std::vector<std::complex<int16_t>>) where
>> start_of_burst=3Dend_of_burst=3Dtrue via send(includes timeout).  *
>>
>> *Scenario 2 is a =E2=80=9Ccontinuous burst=E2=80=9D where we start_of_bu=
rst=3Dtrue for the
>> first 1996 packet only with end_of_burst=3Dfalse.  All other packets hav=
e
>> end_of_burst=3Dfalse*
>>
>>
>> *1) What is the difference between the "S" and "L"?  When we see "S" wit=
h
>> the single-burst case, is that really the same as an "L"?*
>>
>> *We have overhead to do between sending samples, so we are trying to
>> figure out the best way to do the overhead work and still send() on time=
 at
>> our desired rate (still using timestamps).*
>>
>> *We noticed through experimentation that the =E2=80=9Csystem=E2=80=9D (P=
C TCP/IP Stack
>> <-> USRP buffering) could buffer a very large packet of 1996*65=3D129,74=
0
>> samples before we received flow-control, which means that we could send =
a
>> bunch of samples with future timestamps to give us some time to do the
>> =E2=80=9Coverhead=E2=80=9D.   Of course 1996 is used because it is the l=
argest UDP packet
>> before fragmentation occurs with UDP on USRP.*
>>
>> *2) Is our observation about the 129K samples of buffering correct?  Is
>> there something we can do to increase this?  For example, maybe some twe=
aks
>> to the receive buffer sizes in the TCP/IP stack to make receive work
>> reliably.*
>>
>> *3) What is the recommendation in terms of burst size (to allow us to do
>> our =E2=80=9Coverhead=E2=80=9D)*
>>
>> *Thanks*
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000cc950062b32919f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Some more comments: <br></div><div><br></div><div>- S=
 means &quot;sequence error&quot;, which means packets were lost somewhere =
between your host and the USRP. &quot;L&quot; means late, which just means =
that your packet didn&#39;t reach the radio in time.</div><div>- If you are=
 using a default X310 image, then the corresponding YAML is this: <a href=
=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x300/x3=
10_XG_rfnoc_image_core.yml#L20">https://github.com/EttusResearch/uhd/blob/m=
aster/fpga/usrp3/top/x300/x310_XG_rfnoc_image_core.yml#L20</a></div><div>=
=C2=A0 I&#39;ve highlighted the line. The stream endpoint has a default buf=
fer size of almost 500 kB.</div><div>- Start-of-burst doesn&#39;t do anythi=
ng on the X310 (but setting it doesn&#39;t hurt, either).</div><div>- Buffe=
ring aside, you need to maintain an average software-send-rate that is on p=
ar with your sample rate. If you use timestamps to delay, then that will he=
lp you by filling up the buffer first, and that gives you a bit of elastici=
ty (you can take a bit longer on occasion as long as on average, your SW pr=
ocessing rate is not below the hardware rate).</div><div>=C2=A0 - Maybe try=
 a multi-threaded approach with a consumer-producer model to avoid IO waits=
 to block your processing thread.</div><div>- what is your rate? If it&#39;=
s small, maybe smaller packet sizes would be better (because you can produc=
e packets faster).</div><div>- If you have only a single channel, you can i=
ncrease the buffer size (if you don&#39;t want to use the DRAM FIFO) by mov=
ing buffer from ep2 to ep0.</div><div><br></div><div>--M<br></div></div><br=
><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D=
"gmail_attr">On Mon, Jan 6, 2025 at 4:12=E2=80=AFPM Rob Kossler via USRP-us=
ers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettu=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div>The X310 buffering depends on whether or not you=
 are using the DRAMFIFO as part of the RFNoC flow.=C2=A0 If so, then this b=
uffer alone is 1GB, I think (250 MSamps).=C2=A0 But, you can&#39;t use this=
 if you are running two channels at 200 MS/s, because the DRAM bandwidth=C2=
=A0is not sufficient.=C2=A0 If you are running the samples at 100 MS/s or l=
ess (into the DUC) or if you are only using=C2=A0one channel, it should be =
fine to use this.=C2=A0 If you are not using the DRAMFIFO, then the amount =
of buffering is dependent on the FIFOs that are built into the Streaming En=
dpoints.=C2=A0 You could check the yaml file that is used for the X310 FPGA=
 build.</div><div><br></div><div>Perhaps you could explain a bit more about=
 your intended application. It&#39;s not clear to me if you are having issu=
es with transmit streaming or if you are also having issues with receive st=
reaming.=C2=A0 Are you planning to use gnuradio?=C2=A0 rfnoc (custom graph =
vs default multi_usrp)?=C2=A0 C++ application?</div><div>Rob</div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 24,=
 2024 at 3:07=E2=80=AFPM &lt;<a href=3D"mailto:cjohnson@serranosystems.com"=
 target=3D"_blank">cjohnson@serranosystems.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><p><strong>Hi,</strong></p><p=
><strong>Hopefully you can help me out with some clarification and help on =
a few questions.</strong></p><p><strong>We are using the X310 all with time=
stamps as we try to get an understanding of the behavior.=C2=A0 We have cre=
ated several scenarios to try out start of burst and end of burst and have =
noticed different behavior.=C2=A0=C2=A0</strong></p><p><strong>Scenario 1 i=
s a =E2=80=9Csingle burst=E2=80=9D for a bunch of samples sent (for example=
 1996 samples of std::vector&lt;std::complex&lt;int16_t&gt;&gt;) where star=
t_of_burst=3Dend_of_burst=3Dtrue via send(includes timeout).=C2=A0=C2=A0</s=
trong></p><p><strong>Scenario 2 is a =E2=80=9Ccontinuous burst=E2=80=9D whe=
re we start_of_burst=3Dtrue for the first 1996 packet only with end_of_burs=
t=3Dfalse.=C2=A0 All other packets have end_of_burst=3Dfalse</strong></p><p=
><strong><br>1) What is the difference between the &quot;S&quot; and &quot;=
L&quot;?=C2=A0 When we see &quot;S&quot; with the single-burst case, is tha=
t really the same as an &quot;L&quot;?</strong></p><p><strong>We have overh=
ead to do between sending samples, so we are trying to figure out the best =
way to do the overhead work and still send() on time at our desired rate (s=
till using timestamps).</strong></p><p><strong>We noticed through experimen=
tation that the =E2=80=9Csystem=E2=80=9D (PC TCP/IP Stack &lt;-&gt; USRP bu=
ffering) could buffer a very large packet of 1996*65=3D129,740 samples befo=
re we received flow-control, which means that we could send a bunch of samp=
les with future timestamps to give us some time to do the =E2=80=9Coverhead=
=E2=80=9D. =C2=A0 Of course 1996 is used because it is the largest UDP pack=
et before fragmentation occurs with UDP on USRP.</strong></p><p><strong>2) =
Is our observation about the 129K samples of buffering correct?=C2=A0 Is th=
ere something we can do to increase this?=C2=A0 For example, maybe some twe=
aks to the receive buffer sizes in the TCP/IP stack to make receive work re=
liably.</strong></p><p><strong>3) What is the recommendation in terms of bu=
rst size (to allow us to do our =E2=80=9Coverhead=E2=80=9D)</strong></p><p>=
<strong>Thanks</strong></p><p><br><br></p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000000cc950062b32919f--

--===============5568294438390994158==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5568294438390994158==--
