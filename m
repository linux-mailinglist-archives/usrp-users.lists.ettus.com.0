Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7CE33348E
	for <lists+usrp-users@lfdr.de>; Wed, 10 Mar 2021 05:52:29 +0100 (CET)
Received: from [::1] (port=37810 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lJqpe-0001GH-BQ; Tue, 09 Mar 2021 23:52:26 -0500
Received: from mail-ot1-f50.google.com ([209.85.210.50]:33946)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1lJqpb-0001DA-L7
 for usrp-users@lists.ettus.com; Tue, 09 Mar 2021 23:52:23 -0500
Received: by mail-ot1-f50.google.com with SMTP id n23so9559603otq.1
 for <usrp-users@lists.ettus.com>; Tue, 09 Mar 2021 20:52:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Qy413z36WUJNeB2GTPbX9Ozh4bUEjVN7dvxjW/8O2ag=;
 b=VxJSWZHWE51aGe0+UiJBuDQmPZnKKcEkmAGwNln6LBCIZMjzIarL9dU8MLxJ/+xtPA
 8bCXgoWREkhV9jA8/iWFolWLoGV9PNBqcBd4omOVZc4tm2lnoCHIYLfnlpZ9u+ZcD3sc
 YOJSW1/iwGY7CqnO7Y3+QG9IEvOfcavTXRMaC+S8F/xxCag3uvGG+qf6W3FcK7nnZnw7
 rb1M/KyXb88+pRmeOza6xVvVtfOT9Y9FdPMbCEp32EHPvDr66jWZV5o9PIsp5u1lmpAR
 nKDrrWWV+RjQ004xJvZDMAa+zObUGBmHQmvIQGwnTLJc88cc8ZzYvwBdUEGX+LDCro/f
 W9dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Qy413z36WUJNeB2GTPbX9Ozh4bUEjVN7dvxjW/8O2ag=;
 b=Wv39RbwRAmC2vVdPl1AbvwYlW+mpFFsJL0YtZhbQGC24eDcThTZLryHxkHPWYfcm/t
 W14cknZVrRTU1XQGbFnufY1KyDrVMLxP5z0vv/xeF+sRG9yAzjazhh0n4f1DqobwlcAe
 aAfCmEpmfdsO8ChXfaemOY4Z7fuMT7zS16X32sUFydhywjRZvbYGhmgQx/TEehrqKf2r
 /qUUXlrsKvD5VlLjCjWE5uRQgzt/Ck6REm/Roi1MxkjShryENCqACvsNhXcnVD72q6Y5
 iQB8+Qp4+eeq0yGGMk36B5HarRkz5OQLaN5LTX7KC1BVTlH9s/3ZHE0vdjfTe3Qb/Bie
 Jfzg==
X-Gm-Message-State: AOAM530L6zpWA/LMFJwWPq5jD+fDJf4htQBYrUWa4XSQFGtZEX5uQxqi
 fHoH74L3mSQXcUwhc+0BCCjPmzGvzelprWo/cko=
X-Google-Smtp-Source: ABdhPJy48Ji3+2/eko7uShFXegPfc9A5qysVfrdIVwuZexVHhhTpomBw8QsKjaddlli+bGrJ13l1dg9ad2wmE/qjtmc=
X-Received: by 2002:a05:6830:238c:: with SMTP id
 l12mr1275132ots.276.1615351902836; 
 Tue, 09 Mar 2021 20:51:42 -0800 (PST)
MIME-Version: 1.0
References: <CAKwz1Gf2Qw+Yc9E3e7CK0GLVaL14A6=fcvFQ_efpdyZX4p+Grw@mail.gmail.com>
In-Reply-To: <CAKwz1Gf2Qw+Yc9E3e7CK0GLVaL14A6=fcvFQ_efpdyZX4p+Grw@mail.gmail.com>
Date: Tue, 9 Mar 2021 23:51:31 -0500
Message-ID: <CAEXYVK5S+2i01HbaBpi08iot7NDno1RhJ+6tfdeXHLS2QPovNA@mail.gmail.com>
To: Doug Blackburn <dougb95@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Content-Type: multipart/mixed; boundary="===============3290200432009945506=="
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

--===============3290200432009945506==
Content-Type: multipart/alternative; boundary="0000000000005b197505bd276c62"

--0000000000005b197505bd276c62
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 9, 2021 at 10:03 PM Doug Blackburn via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello --
>
> I've got some questions re: latency with the x300 over the 10GigE
> interface.
>
> If I use the latency_test example operating at a rate of 50 MSPS, I have
> no issues with a latency of 1ms.  The latency test receives data, examines
> the time stamp, and transmits a single packet.
>
> I have an application where I'd like to run the transmitter continuously,
> and I got curious about the latency involved in that operation.  My
> application is similar to the benchmark_rate example.  I added the
> following lines to the benchmark_rate example at line 256 after the line.
>
> md.has_time_spec = false;
>
> ====
> if ( (num_tx_samps % 50000000) < 4*max_samps_per_packet )
> {
>     uhd::time_spec_t expectedTime = startTime + (double) ( num_tx_samps  )
>                       / (double)usrp->get_tx_rate();
>     uhd::time_spec_t timeAtLog = usrp->get_time_now();
>     timeAtLog = usrp->get_time_now();
>     std::cerr << "==== Actual time ====" << std::endl;
>     std::cerr << "     " << timeAtLog.get_full_secs() << " / "
>                           << timeAtLog.get_frac_secs() << std::endl;
>     std::cerr << "==== Expected time ====" << std::endl;
>     std::cerr << "     " << expectedTime.get_full_secs() << " / "
>                           << expectedTime.get_frac_secs() << std::endl;
> }
> ====
>
> The intent of this insertion is to log the time at which we return from
> tx_stream->send() and the time at which the first sample of that sent data
> should be transmitted -- at approximately once per second when running at
> 50 MSPS.
>
> After the first second, I consistently saw the following results:
>
> ==== Actual time ====
>      1 / 0.10517
> ==== Expected time ====
>      1 / 0.27253
>
> ==== Actual time ====
>      1 / 0.105419
> ==== Expected time ====
>      1 / 0.27255
>
> Which indicates to me that there is a latency of approximately 167ms when
> transmitting data.  That is, the send() function is returning 167ms earlier
> than I expect the data to actually be transmitted.   If I halve the sample
> rate to 25 MSPS, the latency doubles.
>
> What is the source of the latency when running in a continuous mode?
> Initially, I had thought that this might be related to the
> send_buffer_size, but making changes to send_buffer_size seem to not have
> an effect.   FWIW, 167ms at 50 MSPS is suspiciously close to the value for
> wmem_max (33554432) suggested in the x300 system configuration ... but
> neither changing that value or send_buffer_size seems to make a difference.
>
> Is this latency tunable?
>

I suspect it's the DMA FIFO which uses the DRAM in the X310 as a buffer.
The default buffer size is 32MB.

Which version of UHD are you using?

Brian

--0000000000005b197505bd276c62
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Mar 9, 2021 at 10:03 PM Doug Blac=
kburn via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp=
-users@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=
=3D"ltr">Hello --<div><br></div><div>I&#39;ve got some questions re: latenc=
y with=C2=A0the x300 over the 10GigE interface.=C2=A0=C2=A0</div><div><br><=
/div><div>If I use the latency_test example operating at a rate of 50 MSPS,=
 I have no issues with a latency of 1ms.=C2=A0 The latency test receives da=
ta, examines the time stamp, and transmits a single packet.=C2=A0</div><div=
><br></div><div>I have an application where I&#39;d like to run the transmi=
tter continuously, and I got curious about the latency involved in that ope=
ration.=C2=A0 My application is similar=C2=A0to the benchmark_rate example.=
=C2=A0 I added the following lines to the benchmark_rate example at line 25=
6 after the line.</div><div><br></div><div><font face=3D"monospace">md.has_=
time_spec =3D false;=C2=A0</font></div><div><br></div><div>=3D=3D=3D=3D</di=
v><div><span style=3D"font-family:monospace">if ( (num_tx_samps % 50000000)=
 &lt; 4*max_samps_per_packet )</span></div><div><font face=3D"monospace">{<=
br>=C2=A0 =C2=A0 uhd::time_spec_t expectedTime =3D startTime + (double) ( n=
um_tx_samps =C2=A0)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 / (double)usrp-&gt;get_tx_rate();<br>=C2=A0 =C2=A0=
 uhd::time_spec_t timeAtLog =3D usrp-&gt;get_time_now();<br>=C2=A0 =C2=A0 t=
imeAtLog =3D usrp-&gt;get_time_now();<br>=C2=A0 =C2=A0 std::cerr &lt;&lt; &=
quot;=3D=3D=3D=3D Actual time =3D=3D=3D=3D&quot; &lt;&lt; std::endl;<br>=C2=
=A0 =C2=A0 std::cerr &lt;&lt; &quot; =C2=A0 =C2=A0 &quot; &lt;&lt; timeAtLo=
g.get_full_secs() &lt;&lt; &quot; / &quot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;&lt; tim=
eAtLog.get_frac_secs() &lt;&lt; std::endl;<br>=C2=A0 =C2=A0 std::cerr &lt;&=
lt; &quot;=3D=3D=3D=3D Expected time =3D=3D=3D=3D&quot; &lt;&lt; std::endl;=
<br>=C2=A0 =C2=A0 std::cerr &lt;&lt; &quot; =C2=A0 =C2=A0 &quot; &lt;&lt; e=
xpectedTime.get_full_secs() &lt;&lt; &quot; / &quot;<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &=
lt;&lt; expectedTime.get_frac_secs() &lt;&lt; std::endl;<br>}<br></font></d=
iv><div>=3D=3D=3D=3D</div><div><br></div><div>The intent of this insertion =
is to log the time at which we return from tx_stream-&gt;send() and the tim=
e at which the first sample of that sent data should be transmitted -- at a=
pproximately once per second when running at 50 MSPS.</div><div><br></div><=
div>After the first second, I consistently saw the following results:</div>=
<div><br></div><div><div><font face=3D"monospace">=3D=3D=3D=3D Actual time =
=3D=3D=3D=3D<br></font></div><div><div><font face=3D"monospace">=C2=A0 =C2=
=A0 =C2=A01 / 0.10517</font></div><div><font face=3D"monospace">=3D=3D=3D=
=3D Expected time =3D=3D=3D=3D</font></div><div><font face=3D"monospace">=
=C2=A0 =C2=A0 =C2=A01 / 0.27253</font></div><div><font face=3D"monospace"><=
br></font></div><div><font face=3D"monospace">=3D=3D=3D=3D Actual time =3D=
=3D=3D=3D</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 =C2=A01 /=
 0.105419</font></div><div><font face=3D"monospace">=3D=3D=3D=3D Expected t=
ime =3D=3D=3D=3D</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 =
=C2=A01 / 0.27255</font></div></div></div><div><br></div><div>Which indicat=
es to me that there is a latency of approximately 167ms when transmitting d=
ata.=C2=A0 That is, the send() function is returning 167ms earlier than I e=
xpect=C2=A0the data to actually be transmitted.=C2=A0 =C2=A0If I halve the =
sample rate to 25 MSPS, the latency doubles.</div><div><br></div><div>What =
is the source of the latency when running in a continuous mode?=C2=A0 Initi=
ally, I had thought that this might be related to the send_buffer_size, but=
 making changes to send_buffer_size seem to not have an effect.=C2=A0 =C2=
=A0FWIW, 167ms at 50 MSPS is suspiciously close to the value for wmem_max (=
33554432) suggested in the x300 system configuration ... but neither changi=
ng that value or send_buffer_size seems to make a difference.</div><div><br=
></div><div>Is this latency tunable?=C2=A0=C2=A0</div></div></div></blockqu=
ote><div><br></div><div>I suspect it&#39;s the DMA FIFO which uses the DRAM=
 in the X310 as a buffer.=C2=A0 The default buffer size is 32MB.</div><div>=
<br></div><div>Which version of UHD are you using?</div><div><br></div><div=
>Brian</div></div></div>

--0000000000005b197505bd276c62--


--===============3290200432009945506==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3290200432009945506==--

