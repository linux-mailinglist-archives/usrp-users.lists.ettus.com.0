Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3D5333384
	for <lists+usrp-users@lfdr.de>; Wed, 10 Mar 2021 04:04:04 +0100 (CET)
Received: from [::1] (port=37200 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lJp8h-0005JD-AT; Tue, 09 Mar 2021 22:03:59 -0500
Received: from mail-lj1-f177.google.com ([209.85.208.177]:35502)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dougb95@gmail.com>) id 1lJp8d-0005Fy-RH
 for usrp-users@lists.ettus.com; Tue, 09 Mar 2021 22:03:55 -0500
Received: by mail-lj1-f177.google.com with SMTP id a17so23627218ljq.2
 for <usrp-users@lists.ettus.com>; Tue, 09 Mar 2021 19:03:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=9rDpqugsJHc1yZPgZLSiadanDKU4KTg8fr0Xtmne16Q=;
 b=XL86VMX0jX+cVFzUU97QlJU6hEIyNLk3f2jHWeFBB6RaFatmUzX7AlrA+cVrhjjgLv
 QyjX5UAPUg87WZLkI1Xxh3UYQAiHuz2GBmrvoHVgbRRYxdczuoU8pf3/zdbApyoVBLXJ
 tphvITIvdH3TliY+B1CSLLrGh3q8+wX3nn20pQoeNFuClRJd0dVcE/TR52KlWSnOVWzQ
 +oeyoUX1athXcKILRoOiYpSzyEy7CRMyfS7YIUAmqauOrXrT+zKDGVK+wLZrXD6uVPwH
 FnnYvpHBUA1E3PLEGTtA/Duo8CDXikCw636JAZZNCsLDVACiYCG04a82lFg9LeMLYYK/
 Es/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=9rDpqugsJHc1yZPgZLSiadanDKU4KTg8fr0Xtmne16Q=;
 b=LpaUAj5pVxl9vbchHyZ6X48AVkKLgGvtGCZVEDmluQqOgBlH4hjVIP0TEmKRcYAv8C
 dQDhLMqOyo3d+/LChC34XScjsnCSnEmYirxsGszBxu49l/coua98BZVdFdo7Nm7G4RO+
 yqEAnmb7CSmUX4qLMvgP9YAK42mvXzi2HgWh7f8f7AbCR21UlGWjw7aUUVRXJsX4h306
 WMFnucDsDCCX0a/9ZPvvHoZ6bGw99ZpkXsulSLmyzdPGFWAakoPCZ+7gMOK27PRus9Tx
 +41Vna5YSOY3L7FwUBwkxcuIBOcVxG/vHJ18rCSMD2A72KW40tVDaV5cw/ODEZlWUl/S
 8FyQ==
X-Gm-Message-State: AOAM532WjUZJG8nVLGT7eYcc/1F8EsdDTfhNhOZDsMaUPFyuspd0shEh
 hybPixg7m9wXZfhxwsAKiRn7JONU88xzBahAI/Nl93ahR+206A==
X-Google-Smtp-Source: ABdhPJw0HgZBVtz3CuNXMJpzuc0Q5t9C8xYYjrVvxkljlX4QoNSF6isMl0IAR6FJKuf5mVjh3W5OEPl8Zp3Qo64W/Sc=
X-Received: by 2002:a05:651c:1206:: with SMTP id
 i6mr478041lja.426.1615345394014; 
 Tue, 09 Mar 2021 19:03:14 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 9 Mar 2021 22:03:03 -0500
Message-ID: <CAKwz1Gf2Qw+Yc9E3e7CK0GLVaL14A6=fcvFQ_efpdyZX4p+Grw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] x300 latency over 10GigE
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
From: Doug Blackburn via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Doug Blackburn <dougb95@gmail.com>
Content-Type: multipart/mixed; boundary="===============6121493090277778520=="
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

--===============6121493090277778520==
Content-Type: multipart/alternative; boundary="000000000000665b7805bd25e803"

--000000000000665b7805bd25e803
Content-Type: text/plain; charset="UTF-8"

Hello --

I've got some questions re: latency with the x300 over the 10GigE
interface.

If I use the latency_test example operating at a rate of 50 MSPS, I have no
issues with a latency of 1ms.  The latency test receives data, examines the
time stamp, and transmits a single packet.

I have an application where I'd like to run the transmitter continuously,
and I got curious about the latency involved in that operation.  My
application is similar to the benchmark_rate example.  I added the
following lines to the benchmark_rate example at line 256 after the line.

md.has_time_spec = false;

====
if ( (num_tx_samps % 50000000) < 4*max_samps_per_packet )
{
    uhd::time_spec_t expectedTime = startTime + (double) ( num_tx_samps  )
                      / (double)usrp->get_tx_rate();
    uhd::time_spec_t timeAtLog = usrp->get_time_now();
    timeAtLog = usrp->get_time_now();
    std::cerr << "==== Actual time ====" << std::endl;
    std::cerr << "     " << timeAtLog.get_full_secs() << " / "
                          << timeAtLog.get_frac_secs() << std::endl;
    std::cerr << "==== Expected time ====" << std::endl;
    std::cerr << "     " << expectedTime.get_full_secs() << " / "
                          << expectedTime.get_frac_secs() << std::endl;
}
====

The intent of this insertion is to log the time at which we return from
tx_stream->send() and the time at which the first sample of that sent data
should be transmitted -- at approximately once per second when running at
50 MSPS.

After the first second, I consistently saw the following results:

==== Actual time ====
     1 / 0.10517
==== Expected time ====
     1 / 0.27253

==== Actual time ====
     1 / 0.105419
==== Expected time ====
     1 / 0.27255

Which indicates to me that there is a latency of approximately 167ms when
transmitting data.  That is, the send() function is returning 167ms earlier
than I expect the data to actually be transmitted.   If I halve the sample
rate to 25 MSPS, the latency doubles.

What is the source of the latency when running in a continuous mode?
Initially, I had thought that this might be related to the
send_buffer_size, but making changes to send_buffer_size seem to not have
an effect.   FWIW, 167ms at 50 MSPS is suspiciously close to the value for
wmem_max (33554432) suggested in the x300 system configuration ... but
neither changing that value or send_buffer_size seems to make a difference.

Is this latency tunable?

Thank you for your help!

Best Regards,
Doug Blackburn

--000000000000665b7805bd25e803
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello --<div><br></div><div>I&#39;ve got =
some questions re: latency with=C2=A0the x300 over the 10GigE interface.=C2=
=A0=C2=A0</div><div><br></div><div>If I use the latency_test example operat=
ing at a rate of 50 MSPS, I have no issues with a latency of 1ms.=C2=A0 The=
 latency test receives data, examines the time stamp, and transmits a singl=
e packet.=C2=A0</div><div><br></div><div>I have an application where I&#39;=
d like to run the transmitter continuously, and I got curious about the lat=
ency involved in that operation.=C2=A0 My application is similar=C2=A0to th=
e benchmark_rate example.=C2=A0 I added the following lines to the benchmar=
k_rate example at line 256 after the line.</div><div><br></div><div><font f=
ace=3D"monospace">md.has_time_spec =3D false;=C2=A0</font></div><div><br></=
div><div>=3D=3D=3D=3D</div><div><span style=3D"font-family:monospace">if ( =
(num_tx_samps % 50000000) &lt; 4*max_samps_per_packet )</span></div><div><f=
ont face=3D"monospace">{<br>=C2=A0 =C2=A0 uhd::time_spec_t expectedTime =3D=
 startTime + (double) ( num_tx_samps =C2=A0)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 / (double)usrp-&gt;get_tx=
_rate();<br>=C2=A0 =C2=A0 uhd::time_spec_t timeAtLog =3D usrp-&gt;get_time_=
now();<br>=C2=A0 =C2=A0 timeAtLog =3D usrp-&gt;get_time_now();<br>=C2=A0 =
=C2=A0 std::cerr &lt;&lt; &quot;=3D=3D=3D=3D Actual time =3D=3D=3D=3D&quot;=
 &lt;&lt; std::endl;<br>=C2=A0 =C2=A0 std::cerr &lt;&lt; &quot; =C2=A0 =C2=
=A0 &quot; &lt;&lt; timeAtLog.get_full_secs() &lt;&lt; &quot; / &quot;<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &lt;&lt; timeAtLog.get_frac_secs() &lt;&lt; std::endl;<br=
>=C2=A0 =C2=A0 std::cerr &lt;&lt; &quot;=3D=3D=3D=3D Expected time =3D=3D=
=3D=3D&quot; &lt;&lt; std::endl;<br>=C2=A0 =C2=A0 std::cerr &lt;&lt; &quot;=
 =C2=A0 =C2=A0 &quot; &lt;&lt; expectedTime.get_full_secs() &lt;&lt; &quot;=
 / &quot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;&lt; expectedTime.get_frac_secs() &lt;&lt;=
 std::endl;<br>}<br></font></div><div>=3D=3D=3D=3D</div><div><br></div><div=
>The intent of this insertion is to log the time at which we return from tx=
_stream-&gt;send() and the time at which the first sample of that sent data=
 should be transmitted -- at approximately once per second when running at =
50 MSPS.</div><div><br></div><div>After the first second, I consistently sa=
w the following results:</div><div><br></div><div><div><font face=3D"monosp=
ace">=3D=3D=3D=3D Actual time =3D=3D=3D=3D<br></font></div><div><div><font =
face=3D"monospace">=C2=A0 =C2=A0 =C2=A01 / 0.10517</font></div><div><font f=
ace=3D"monospace">=3D=3D=3D=3D Expected time =3D=3D=3D=3D</font></div><div>=
<font face=3D"monospace">=C2=A0 =C2=A0 =C2=A01 / 0.27253</font></div><div><=
font face=3D"monospace"><br></font></div><div><font face=3D"monospace">=3D=
=3D=3D=3D Actual time =3D=3D=3D=3D</font></div><div><font face=3D"monospace=
">=C2=A0 =C2=A0 =C2=A01 / 0.105419</font></div><div><font face=3D"monospace=
">=3D=3D=3D=3D Expected time =3D=3D=3D=3D</font></div><div><font face=3D"mo=
nospace">=C2=A0 =C2=A0 =C2=A01 / 0.27255</font></div></div></div><div><br><=
/div><div>Which indicates to me that there is a latency of approximately 16=
7ms when transmitting data.=C2=A0 That is, the send() function is returning=
 167ms earlier than I expect=C2=A0the data to actually be transmitted.=C2=
=A0 =C2=A0If I halve the sample rate to 25 MSPS, the latency doubles.</div>=
<div><br></div><div>What is the source of the latency when running in a con=
tinuous mode?=C2=A0 Initially, I had thought that this might be related to =
the send_buffer_size, but making changes to send_buffer_size seem to not ha=
ve an effect.=C2=A0 =C2=A0FWIW, 167ms at 50 MSPS is suspiciously close to t=
he value for wmem_max (33554432) suggested in the x300 system configuration=
 ... but neither changing that value or send_buffer_size seems to make a di=
fference.</div><div><br></div><div>Is this latency tunable?=C2=A0=C2=A0</di=
v><div><br></div><div>Thank you for your help!</div><div><br></div><div>Bes=
t Regards,</div><div>Doug Blackburn</div><div><br></div></div></div>

--000000000000665b7805bd25e803--


--===============6121493090277778520==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6121493090277778520==--

