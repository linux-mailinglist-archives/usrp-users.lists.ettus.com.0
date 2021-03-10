Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F28743333C3
	for <lists+usrp-users@lfdr.de>; Wed, 10 Mar 2021 04:21:07 +0100 (CET)
Received: from [::1] (port=37300 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lJpPF-0006OE-MD; Tue, 09 Mar 2021 22:21:05 -0500
Received: from mail-qv1-f54.google.com ([209.85.219.54]:40568)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lJpPB-0006Hw-R6
 for USRP-users@lists.ettus.com; Tue, 09 Mar 2021 22:21:01 -0500
Received: by mail-qv1-f54.google.com with SMTP id a14so106184qvj.7
 for <USRP-users@lists.ettus.com>; Tue, 09 Mar 2021 19:20:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=4Ck9Ttbhao/2M8zXyZEz+ycHCOz3i1DH63noavQ4mo8=;
 b=iM/JuA+FMYM8IZe91iY+KlkM1g/5KvsTBbH3IQCyyGdgwMjQQc7Z+WMuwsnbBwOY13
 AzwTftUm0Gs7m1C5ZJNI7fExeMRpiGjXksZzTtGAZ0amVjT3rQvyzPOeDfgIqPpxaCVm
 CZ8ySVVAu3rIwjhrZDH6aO58niArGEiZVOemgYDeJJYeIsdO4b3ZAudY7sM6oVh5BI5f
 533PF6W2BDyDGDYonH3KbSSXfEQir/K0zRvhd5yjWc1lTC3oUm4OqpLq1UQEuW/foeg0
 wwORB2pVh2mL5G219G5cKwA4HwsosRL5zPh4+dPPcinMVX6p9KpJXa19/blkrg1o9Cx2
 3eLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=4Ck9Ttbhao/2M8zXyZEz+ycHCOz3i1DH63noavQ4mo8=;
 b=T1yROOPJa4bKa8z5K+/oS9kuK7cYwWgoFEqwHlaPjKQJmriqavP1DkjNSQhmaZTxi7
 hyePx0bzd59kB22oUebN7ir1YHMSdyY/UWdZINlkCQwzxk+Ebtvz5E3AIAAhMf81mKjr
 O2LLHASGNStXVHUKtXAUSbFrj5wMw7nQUD6YtFceWk4i7G3qANiXIFjCJphm3V852u0S
 UX5Cn3Mh8EUCsB72hX4hQ0g4KN2/lE4j5IVgNAOhLRi0ruV1++YY8dDOfSy0H0mB3ru3
 Va3NK3QHfrINxewgs6q9lCAYRW7z80ubI4Z0bAkhAS+JzJ04I/eTxA+gSR0ywxPEq1/o
 VJqg==
X-Gm-Message-State: AOAM533zPkxqNaiE5rlyR8ZV1ZWUTjOOKboH0Ty50Qaye+RiIjQ3DLkR
 U7FJ3L3bitbltj993IQ3ShkbNb0BwBg=
X-Google-Smtp-Source: ABdhPJzAL6KEe+GmIU4/IfEn+M8XCw9PDV/wofoo3uhKAU/56tbtp12osGq/A4oXmhsJqAJSGMzQXA==
X-Received: by 2002:ad4:5614:: with SMTP id ca20mr1152487qvb.37.1615346421075; 
 Tue, 09 Mar 2021 19:20:21 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
 by smtp.gmail.com with ESMTPSA id y19sm11748090qky.111.2021.03.09.19.20.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Mar 2021 19:20:20 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Tue, 9 Mar 2021 22:20:19 -0500
Message-Id: <3F3CE1FA-FF5B-462C-8193-C98EB328396A@gmail.com>
References: <CAKwz1Gf2Qw+Yc9E3e7CK0GLVaL14A6=fcvFQ_efpdyZX4p+Grw@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CAKwz1Gf2Qw+Yc9E3e7CK0GLVaL14A6=fcvFQ_efpdyZX4p+Grw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============4470722173055925537=="
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


--===============4470722173055925537==
Content-Type: multipart/alternative; boundary=Apple-Mail-891DE631-3CA9-4522-A023-6EFEB96215EB
Content-Transfer-Encoding: 7bit


--Apple-Mail-891DE631-3CA9-4522-A023-6EFEB96215EB
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Shouldn=E2=80=99t you be scaling your num_tx_samples by the time per sample w=
hen calculating the expectedTime?

Sent from my iPhone

> On Mar 9, 2021, at 10:03 PM, Doug Blackburn via USRP-users <usrp-users@lis=
ts.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hello --
>=20
> I've got some questions re: latency with the x300 over the 10GigE interfac=
e. =20
>=20
> If I use the latency_test example operating at a rate of 50 MSPS, I have n=
o issues with a latency of 1ms.  The latency test receives data, examines th=
e time stamp, and transmits a single packet.=20
>=20
> I have an application where I'd like to run the transmitter continuously, a=
nd I got curious about the latency involved in that operation.  My applicati=
on is similar to the benchmark_rate example.  I added the following lines to=
 the benchmark_rate example at line 256 after the line.
>=20
> md.has_time_spec =3D false;=20
>=20
> =3D=3D=3D=3D
> if ( (num_tx_samps % 50000000) < 4*max_samps_per_packet )
> {
>     uhd::time_spec_t expectedTime =3D startTime + (double) ( num_tx_samps =
 )
>                       / (double)usrp->get_tx_rate();
>     uhd::time_spec_t timeAtLog =3D usrp->get_time_now();
>     timeAtLog =3D usrp->get_time_now();
>     std::cerr << "=3D=3D=3D=3D Actual time =3D=3D=3D=3D" << std::endl;
>     std::cerr << "     " << timeAtLog.get_full_secs() << " / "
>                           << timeAtLog.get_frac_secs() << std::endl;
>     std::cerr << "=3D=3D=3D=3D Expected time =3D=3D=3D=3D" << std::endl;
>     std::cerr << "     " << expectedTime.get_full_secs() << " / "
>                           << expectedTime.get_frac_secs() << std::endl;
> }
> =3D=3D=3D=3D
>=20
> The intent of this insertion is to log the time at which we return from tx=
_stream->send() and the time at which the first sample of that sent data sho=
uld be transmitted -- at approximately once per second when running at 50 MS=
PS.
>=20
> After the first second, I consistently saw the following results:
>=20
> =3D=3D=3D=3D Actual time =3D=3D=3D=3D
>      1 / 0.10517
> =3D=3D=3D=3D Expected time =3D=3D=3D=3D
>      1 / 0.27253
>=20
> =3D=3D=3D=3D Actual time =3D=3D=3D=3D
>      1 / 0.105419
> =3D=3D=3D=3D Expected time =3D=3D=3D=3D
>      1 / 0.27255
>=20
> Which indicates to me that there is a latency of approximately 167ms when t=
ransmitting data.  That is, the send() function is returning 167ms earlier t=
han I expect the data to actually be transmitted.   If I halve the sample ra=
te to 25 MSPS, the latency doubles.
>=20
> What is the source of the latency when running in a continuous mode?  Init=
ially, I had thought that this might be related to the send_buffer_size, but=
 making changes to send_buffer_size seem to not have an effect.   FWIW, 167m=
s at 50 MSPS is suspiciously close to the value for wmem_max (33554432) sugg=
ested in the x300 system configuration ... but neither changing that value o=
r send_buffer_size seems to make a difference.
>=20
> Is this latency tunable? =20
>=20
> Thank you for your help!
>=20
> Best Regards,
> Doug Blackburn
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-891DE631-3CA9-4522-A023-6EFEB96215EB
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Shouldn=E2=80=99t you be scaling your num_t=
x_samples by the time per sample when calculating the expectedTime?<br><br><=
div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote ty=
pe=3D"cite">On Mar 9, 2021, at 10:03 PM, Doug Blackburn via USRP-users &lt;u=
srp-users@lists.ettus.com&gt; wrote:<br><br></blockquote></div><blockquote t=
ype=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div dir=3D"ltr">Hel=
lo --<div><br></div><div>I've got some questions re: latency with&nbsp;the x=
300 over the 10GigE interface.&nbsp;&nbsp;</div><div><br></div><div>If I use=
 the latency_test example operating at a rate of 50 MSPS, I have no issues w=
ith a latency of 1ms.&nbsp; The latency test receives data, examines the tim=
e stamp, and transmits a single packet.&nbsp;</div><div><br></div><div>I hav=
e an application where I'd like to run the transmitter continuously, and I g=
ot curious about the latency involved in that operation.&nbsp; My applicatio=
n is similar&nbsp;to the benchmark_rate example.&nbsp; I added the following=
 lines to the benchmark_rate example at line 256 after the line.</div><div><=
br></div><div><font face=3D"monospace">md.has_time_spec =3D false;&nbsp;</fo=
nt></div><div><br></div><div>=3D=3D=3D=3D</div><div><span style=3D"font-fami=
ly:monospace">if ( (num_tx_samps % 50000000) &lt; 4*max_samps_per_packet )</=
span></div><div><font face=3D"monospace">{<br>&nbsp; &nbsp; uhd::time_spec_t=
 expectedTime =3D startTime + (double) ( num_tx_samps &nbsp;)<br>&nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; / (double)=
usrp-&gt;get_tx_rate();<br>&nbsp; &nbsp; uhd::time_spec_t timeAtLog =3D usrp=
-&gt;get_time_now();<br>&nbsp; &nbsp; timeAtLog =3D usrp-&gt;get_time_now();=
<br>&nbsp; &nbsp; std::cerr &lt;&lt; "=3D=3D=3D=3D Actual time =3D=3D=3D=3D"=
 &lt;&lt; std::endl;<br>&nbsp; &nbsp; std::cerr &lt;&lt; " &nbsp; &nbsp; " &=
lt;&lt; timeAtLog.get_full_secs() &lt;&lt; " / "<br>&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;&lt; t=
imeAtLog.get_frac_secs() &lt;&lt; std::endl;<br>&nbsp; &nbsp; std::cerr &lt;=
&lt; "=3D=3D=3D=3D Expected time =3D=3D=3D=3D" &lt;&lt; std::endl;<br>&nbsp;=
 &nbsp; std::cerr &lt;&lt; " &nbsp; &nbsp; " &lt;&lt; expectedTime.get_full_=
secs() &lt;&lt; " / "<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;&lt; expectedTime.get_frac_secs(=
) &lt;&lt; std::endl;<br>}<br></font></div><div>=3D=3D=3D=3D</div><div><br><=
/div><div>The intent of this insertion is to log the time at which we return=
 from tx_stream-&gt;send() and the time at which the first sample of that se=
nt data should be transmitted -- at approximately once per second when runni=
ng at 50 MSPS.</div><div><br></div><div>After the first second, I consistent=
ly saw the following results:</div><div><br></div><div><div><font face=3D"mo=
nospace">=3D=3D=3D=3D Actual time =3D=3D=3D=3D<br></font></div><div><div><fo=
nt face=3D"monospace">&nbsp; &nbsp; &nbsp;1 / 0.10517</font></div><div><font=
 face=3D"monospace">=3D=3D=3D=3D Expected time =3D=3D=3D=3D</font></div><div=
><font face=3D"monospace">&nbsp; &nbsp; &nbsp;1 / 0.27253</font></div><div><=
font face=3D"monospace"><br></font></div><div><font face=3D"monospace">=3D=3D=
=3D=3D Actual time =3D=3D=3D=3D</font></div><div><font face=3D"monospace">&n=
bsp; &nbsp; &nbsp;1 / 0.105419</font></div><div><font face=3D"monospace">=3D=
=3D=3D=3D Expected time =3D=3D=3D=3D</font></div><div><font face=3D"monospac=
e">&nbsp; &nbsp; &nbsp;1 / 0.27255</font></div></div></div><div><br></div><d=
iv>Which indicates to me that there is a latency of approximately 167ms when=
 transmitting data.&nbsp; That is, the send() function is returning 167ms ea=
rlier than I expect&nbsp;the data to actually be transmitted.&nbsp; &nbsp;If=
 I halve the sample rate to 25 MSPS, the latency doubles.</div><div><br></di=
v><div>What is the source of the latency when running in a continuous mode?&=
nbsp; Initially, I had thought that this might be related to the send_buffer=
_size, but making changes to send_buffer_size seem to not have an effect.&nb=
sp; &nbsp;FWIW, 167ms at 50 MSPS is suspiciously close to the value for wmem=
_max (33554432) suggested in the x300 system configuration ... but neither c=
hanging that value or send_buffer_size seems to make a difference.</div><div=
><br></div><div>Is this latency tunable?&nbsp;&nbsp;</div><div><br></div><di=
v>Thank you for your help!</div><div><br></div><div>Best Regards,</div><div>=
Doug Blackburn</div><div><br></div></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></body></html>=

--Apple-Mail-891DE631-3CA9-4522-A023-6EFEB96215EB--


--===============4470722173055925537==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4470722173055925537==--

