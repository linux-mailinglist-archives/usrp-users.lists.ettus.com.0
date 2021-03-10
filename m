Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B8A334547
	for <lists+usrp-users@lfdr.de>; Wed, 10 Mar 2021 18:40:09 +0100 (CET)
Received: from [::1] (port=43594 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lK2oU-000601-0W; Wed, 10 Mar 2021 12:40:02 -0500
Received: from mail-lf1-f48.google.com ([209.85.167.48]:39535)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dougb95@gmail.com>) id 1lK2oP-0005vX-NH
 for usrp-users@lists.ettus.com; Wed, 10 Mar 2021 12:39:57 -0500
Received: by mail-lf1-f48.google.com with SMTP id 18so34872067lff.6
 for <usrp-users@lists.ettus.com>; Wed, 10 Mar 2021 09:39:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=R9DrbfmS1DBV83ABokCcv9cUAhfpsL1rvOQw1uq3Jzs=;
 b=TP98ZO9ETth4Gbvw7nV9FIQmWK17cCoz1Fvafq6Edv8rWcyFtJswOOHG3KF080lwcq
 V39H81eECkg/eHcyqj5jQ9ABQZiIBPGOLy8cgTOmdIYTPdYdxLeJDFL3AEMJQIVmm/3w
 huqGs4lveERksskASGGtdKK4MRu4gpXOt9d59ZOtaz1rwgffQvHbEYqUQcclqMPPNWxl
 jKquMM+AoaNWn52QHys5o06XxR0N+AdXgWcHLUTxIndNwhUcMd9kTTkl4MOLe/wXVKS4
 VtK9Ct3uZNS7hp/489xF5icloeX+jxBO7VWljqn7Wm1rA4ky2fHNA+Bs1T6iiP1wTrAb
 DI1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R9DrbfmS1DBV83ABokCcv9cUAhfpsL1rvOQw1uq3Jzs=;
 b=uTGRTYks/MOjSNhxwki9RLjL8NxK4IheVsZshEGnxDg7/L+usUPrAf/wBM2LmCnkCD
 9E6g/a1JP6aTXUxHV9ESMs3ayK2nWIW8axvK+Ge45+GKZYrkYv4fxp+Eyg5jgv8N3NEK
 KiqD7TvmK9iFZCJluXNqWRs/l9ylmf09WHnIHif3+QFwbkZ/NaAzeUD1x3oqjsT+lW5s
 YguFVT2ETA2ZU3WW8pMBo4+O5owyY+gUOu5/u8ClRVEDHaDthZwO2WFpK+IOMZ86bNy4
 B3quRsBClKRXDRVmTqnJGuffn97DkLtGctki4/KEfmAr6+Gz+lsgAVYoS7bb+NPzhCCX
 Qtww==
X-Gm-Message-State: AOAM533nLzaHD7gGzji0xKQRVgORnBHzEGnIspbxLLGv9z5I7GRaD555
 h/y0WEuKWqNjBsAzWWKwc8d/MKUAfi8Ww/MGRUA=
X-Google-Smtp-Source: ABdhPJxGlSo9uFB6U+xNbN5Qn5a6hK7NCqe1f+/9aFzakQOU3LYSHxEwjPI9T9QeG/CU8zwSjVvEz+C8d2Wxe7lvgVw=
X-Received: by 2002:a19:e85:: with SMTP id 127mr2829896lfo.77.1615397956157;
 Wed, 10 Mar 2021 09:39:16 -0800 (PST)
MIME-Version: 1.0
References: <CAKwz1Gf2Qw+Yc9E3e7CK0GLVaL14A6=fcvFQ_efpdyZX4p+Grw@mail.gmail.com>
 <CAEXYVK5S+2i01HbaBpi08iot7NDno1RhJ+6tfdeXHLS2QPovNA@mail.gmail.com>
In-Reply-To: <CAEXYVK5S+2i01HbaBpi08iot7NDno1RhJ+6tfdeXHLS2QPovNA@mail.gmail.com>
Date: Wed, 10 Mar 2021 12:39:05 -0500
Message-ID: <CAKwz1Gfgbox4P5UDooz1eJaTy6iPC2fUBqi12J70L_LxKz7mng@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
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
From: Doug Blackburn via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Doug Blackburn <dougb95@gmail.com>
Content-Type: multipart/mixed; boundary="===============2423981586147676553=="
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

--===============2423981586147676553==
Content-Type: multipart/alternative; boundary="00000000000059057a05bd3225e0"

--00000000000059057a05bd3225e0
Content-Type: text/plain; charset="UTF-8"

Brian,

I've seen this using UHD-3.14 and UHD-3.15.LTS.

I have performed some follow-on testing that raises more questions,
particularly about the usage of end_of_burst and start_of_burst.  I talk
through my tests and observations below; the questions that these generated
are at the end ...

I thought it would be interesting to modify benchmark_rate.cpp to attempt
to place a timestamp on each buffer that was sent out to see if I could
observe the same behavior.  I haven't seen thorough explanations of what
exactly the start_of_burst and end_of_burst metadata fields do at a low
level beyond this posting --
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2016-November/050555.html
and a note about start_of_burst resetting the CORDICs (I'd appreciate being
pointed in the right direction if I've missed it, thank you!) --  so I
wanted to test the effect on timing when has_time_spec is true and the SOB
and EOB fields are either false or true.  I initially set my test up in the
following way (I hope the pseudocode makes sense) to make observations
easy.  I watched for the LO on a spectrum analyzer.  Per the code below, I
would expect a burst every 2 seconds if the time_spec was followed ...

======
max_samps_per_packet = 50e5; // 100ms at 50 MSPS
start_of_burst = <true,false>
end_of_burst = <true,false>
has_time_spec = true;
while( not burst_timer_elapsed)
{
    tx_stream->send();
    start_of_burst = <true,false>
    end_of_burst = <true, false>
    time_spec = time_spec + 2.0;
 }

My observations were as follows: if end_of_burst for the prior burst was
set to true, my code adhered to the time_spec.  The value of start_of_burst
had no effect on whether or not the expected timing was followed.  If
end_of_burst was set to false, the time_spec for the following burst is
ignored and the packet is transmitted as soon as possible.

I then followed this up with another test -- I replaced
      time_spec = time_spec + 2.0;
with the equivalent of
      time_spec = time_spec + 0.100;

And set end_of_burst and start_of_burst to true.

I figured if I can run this continuously by setting has_time_spec to
'false' after the first burst and easily push data into the FIFO buffer,
that doing this should not be a problem ... but I'm presented with a stream
of lates and no actual transmission.

I understand that 100ms is not an integer multiple of packet size returned
by get_max_num_samps() -- so I tried an integer multiple of the packet
size, too, with an appropriately updated time_spec. This also resulted with
a lates through the entire transmit.

So .... here are my additional questions:

Is the only effect of "start_of_burst = true" to cause the CORDICs to
reset?
What is end_of_burst doing to enable a following time_spec to be used?
What additional work is being performed when I set end_of_burst and
has_time_spec to 'true' such that I get latest throughout the entire
attempted transmission?

Best Regards,
Doug






On Tue, Mar 9, 2021 at 11:51 PM Brian Padalino <bpadalino@gmail.com> wrote:

> On Tue, Mar 9, 2021 at 10:03 PM Doug Blackburn via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello --
>>
>> I've got some questions re: latency with the x300 over the 10GigE
>> interface.
>>
>> If I use the latency_test example operating at a rate of 50 MSPS, I have
>> no issues with a latency of 1ms.  The latency test receives data, examines
>> the time stamp, and transmits a single packet.
>>
>> I have an application where I'd like to run the transmitter continuously,
>> and I got curious about the latency involved in that operation.  My
>> application is similar to the benchmark_rate example.  I added the
>> following lines to the benchmark_rate example at line 256 after the line.
>>
>> md.has_time_spec = false;
>>
>> ====
>> if ( (num_tx_samps % 50000000) < 4*max_samps_per_packet )
>> {
>>     uhd::time_spec_t expectedTime = startTime + (double) ( num_tx_samps  )
>>                       / (double)usrp->get_tx_rate();
>>     uhd::time_spec_t timeAtLog = usrp->get_time_now();
>>     timeAtLog = usrp->get_time_now();
>>     std::cerr << "==== Actual time ====" << std::endl;
>>     std::cerr << "     " << timeAtLog.get_full_secs() << " / "
>>                           << timeAtLog.get_frac_secs() << std::endl;
>>     std::cerr << "==== Expected time ====" << std::endl;
>>     std::cerr << "     " << expectedTime.get_full_secs() << " / "
>>                           << expectedTime.get_frac_secs() << std::endl;
>> }
>> ====
>>
>> The intent of this insertion is to log the time at which we return from
>> tx_stream->send() and the time at which the first sample of that sent data
>> should be transmitted -- at approximately once per second when running at
>> 50 MSPS.
>>
>> After the first second, I consistently saw the following results:
>>
>> ==== Actual time ====
>>      1 / 0.10517
>> ==== Expected time ====
>>      1 / 0.27253
>>
>> ==== Actual time ====
>>      1 / 0.105419
>> ==== Expected time ====
>>      1 / 0.27255
>>
>> Which indicates to me that there is a latency of approximately 167ms when
>> transmitting data.  That is, the send() function is returning 167ms earlier
>> than I expect the data to actually be transmitted.   If I halve the sample
>> rate to 25 MSPS, the latency doubles.
>>
>> What is the source of the latency when running in a continuous mode?
>> Initially, I had thought that this might be related to the
>> send_buffer_size, but making changes to send_buffer_size seem to not have
>> an effect.   FWIW, 167ms at 50 MSPS is suspiciously close to the value for
>> wmem_max (33554432) suggested in the x300 system configuration ... but
>> neither changing that value or send_buffer_size seems to make a difference.
>>
>> Is this latency tunable?
>>
>
> I suspect it's the DMA FIFO which uses the DRAM in the X310 as a buffer.
> The default buffer size is 32MB.
>
> Which version of UHD are you using?
>
> Brian
>

--00000000000059057a05bd3225e0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Brian,<div><br></div><div>I&#39;ve seen this using UHD-3.1=
4 and UHD-3.15.LTS.</div><div><br></div><div>I have performed some follow-o=
n testing that raises more questions, particularly about the usage of end_o=
f_burst and start_of_burst.=C2=A0 I talk through my tests and observations =
below; the questions that these generated are at the end ...</div><div><br>=
</div><div>I thought it would be interesting to modify benchmark_rate.cpp t=
o attempt to place a timestamp on each buffer that was sent out to see if I=
 could observe the same behavior.=C2=A0 I haven&#39;t seen thorough explana=
tions of what exactly the start_of_burst and end_of_burst metadata fields d=
o at a low level beyond this posting -- <a href=3D"http://lists.ettus.com/p=
ipermail/usrp-users_lists.ettus.com/2016-November/050555.html">http://lists=
.ettus.com/pipermail/usrp-users_lists.ettus.com/2016-November/050555.html</=
a> and a note about start_of_burst resetting the CORDICs (I&#39;d appreciat=
e being pointed in the right direction if I&#39;ve missed it, thank you!) -=
-=C2=A0 so I wanted to test the effect on timing when has_time_spec is true=
 and the SOB and EOB fields are either false or true.=C2=A0 I initially set=
 my test up in the following way (I hope the pseudocode makes sense) to mak=
e observations easy.=C2=A0 I watched=C2=A0for the LO on a spectrum analyzer=
.=C2=A0 Per the code below, I would expect a burst every 2 seconds if the t=
ime_spec was followed ...=C2=A0<br><br>=3D=3D=3D=3D=3D=3D</div><div>max_sam=
ps_per_packet =3D 50e5; // 100ms at 50 MSPS<br>start_of_burst =3D &lt;true,=
false&gt;</div><div>end_of_burst =3D &lt;true,false&gt;</div><div>has_time_=
spec =3D true;</div><div></div><div>while( not burst_timer_elapsed)=C2=A0</=
div><div>{=C2=A0</div><div>=C2=A0 =C2=A0 tx_stream-&gt;send();</div><div>=
=C2=A0 =C2=A0 start_of_burst =3D &lt;true,false&gt;</div><div>=C2=A0 =C2=A0=
 end_of_burst =3D &lt;true, false&gt;</div><div>=C2=A0 =C2=A0 time_spec =3D=
 time_spec=C2=A0+ 2.0;=C2=A0</div><div>=C2=A0}</div><div><br></div><div>My =
observations were as follows: if end_of_burst for the prior burst was set t=
o true, my code adhered to the time_spec.=C2=A0 The value of start_of_burst=
 had no effect on whether or not the expected timing was followed.=C2=A0 If=
 end_of_burst was set to false, the time_spec for the following burst is ig=
nored and the packet is transmitted as soon as possible.</div><div><br></di=
v><div>I then followed this up with another test -- I replaced=C2=A0</div><=
div>=C2=A0 =C2=A0 =C2=A0 time_spec =3D time_spec=C2=A0+ 2.0;</div><div>with=
 the equivalent of=C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0 time_spec =3D time_=
spec=C2=A0+ 0.100;</div><div><br></div><div>And set end_of_burst and start_=
of_burst to true.</div><div><br></div><div>I figured if I can run this cont=
inuously by setting has_time_spec to &#39;false&#39; after the first burst =
and easily push data into the FIFO buffer, that doing this should not be a =
problem ... but I&#39;m presented with a stream of lates and no actual tran=
smission.</div><div><br></div><div>I understand that 100ms is not an intege=
r multiple of packet size returned by get_max_num_samps() -- so I tried an =
integer multiple of the packet size, too, with an appropriately updated tim=
e_spec. This also resulted with a lates through the entire transmit.</div><=
div><br></div><div>So .... here are my additional questions:</div><div><br>=
</div><div><div>Is the only effect of &quot;start_of_burst =3D true&quot; t=
o cause the CORDICs to reset?=C2=A0=C2=A0</div><div>What is end_of_burst do=
ing to enable a following time_spec to be used?</div><div>What additional w=
ork is being performed when I set end_of_burst and has_time_spec to &#39;tr=
ue&#39; such that I get latest throughout the entire attempted transmission=
?</div><div><br></div><div>Best Regards,</div><div>Doug</div><div><br></div=
><div></div></div><div><br></div><div><br></div><div><br></div><div><br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Tue, Mar 9, 2021 at 11:51 PM Brian Padalino &lt;<a href=3D"mailto:bpa=
dalino@gmail.com" target=3D"_blank">bpadalino@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v dir=3D"ltr">On Tue, Mar 9, 2021 at 10:03 PM Doug Blackburn via USRP-users=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D=
"ltr">Hello --<div><br></div><div>I&#39;ve got some questions re: latency w=
ith=C2=A0the x300 over the 10GigE interface.=C2=A0=C2=A0</div><div><br></di=
v><div>If I use the latency_test example operating at a rate of 50 MSPS, I =
have no issues with a latency of 1ms.=C2=A0 The latency test receives data,=
 examines the time stamp, and transmits a single packet.=C2=A0</div><div><b=
r></div><div>I have an application where I&#39;d like to run the transmitte=
r continuously, and I got curious about the latency involved in that operat=
ion.=C2=A0 My application is similar=C2=A0to the benchmark_rate example.=C2=
=A0 I added the following lines to the benchmark_rate example at line 256 a=
fter the line.</div><div><br></div><div><font face=3D"monospace">md.has_tim=
e_spec =3D false;=C2=A0</font></div><div><br></div><div>=3D=3D=3D=3D</div><=
div><span style=3D"font-family:monospace">if ( (num_tx_samps % 50000000) &l=
t; 4*max_samps_per_packet )</span></div><div><font face=3D"monospace">{<br>=
=C2=A0 =C2=A0 uhd::time_spec_t expectedTime =3D startTime + (double) ( num_=
tx_samps =C2=A0)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 / (double)usrp-&gt;get_tx_rate();<br>=C2=A0 =C2=A0 uh=
d::time_spec_t timeAtLog =3D usrp-&gt;get_time_now();<br>=C2=A0 =C2=A0 time=
AtLog =3D usrp-&gt;get_time_now();<br>=C2=A0 =C2=A0 std::cerr &lt;&lt; &quo=
t;=3D=3D=3D=3D Actual time =3D=3D=3D=3D&quot; &lt;&lt; std::endl;<br>=C2=A0=
 =C2=A0 std::cerr &lt;&lt; &quot; =C2=A0 =C2=A0 &quot; &lt;&lt; timeAtLog.g=
et_full_secs() &lt;&lt; &quot; / &quot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;&lt; timeAt=
Log.get_frac_secs() &lt;&lt; std::endl;<br>=C2=A0 =C2=A0 std::cerr &lt;&lt;=
 &quot;=3D=3D=3D=3D Expected time =3D=3D=3D=3D&quot; &lt;&lt; std::endl;<br=
>=C2=A0 =C2=A0 std::cerr &lt;&lt; &quot; =C2=A0 =C2=A0 &quot; &lt;&lt; expe=
ctedTime.get_full_secs() &lt;&lt; &quot; / &quot;<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;&=
lt; expectedTime.get_frac_secs() &lt;&lt; std::endl;<br>}<br></font></div><=
div>=3D=3D=3D=3D</div><div><br></div><div>The intent of this insertion is t=
o log the time at which we return from tx_stream-&gt;send() and the time at=
 which the first sample of that sent data should be transmitted -- at appro=
ximately once per second when running at 50 MSPS.</div><div><br></div><div>=
After the first second, I consistently saw the following results:</div><div=
><br></div><div><div><font face=3D"monospace">=3D=3D=3D=3D Actual time =3D=
=3D=3D=3D<br></font></div><div><div><font face=3D"monospace">=C2=A0 =C2=A0 =
=C2=A01 / 0.10517</font></div><div><font face=3D"monospace">=3D=3D=3D=3D Ex=
pected time =3D=3D=3D=3D</font></div><div><font face=3D"monospace">=C2=A0 =
=C2=A0 =C2=A01 / 0.27253</font></div><div><font face=3D"monospace"><br></fo=
nt></div><div><font face=3D"monospace">=3D=3D=3D=3D Actual time =3D=3D=3D=
=3D</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 =C2=A01 / 0.105=
419</font></div><div><font face=3D"monospace">=3D=3D=3D=3D Expected time =
=3D=3D=3D=3D</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 =C2=A0=
1 / 0.27255</font></div></div></div><div><br></div><div>Which indicates to =
me that there is a latency of approximately 167ms when transmitting data.=
=C2=A0 That is, the send() function is returning 167ms earlier than I expec=
t=C2=A0the data to actually be transmitted.=C2=A0 =C2=A0If I halve the samp=
le rate to 25 MSPS, the latency doubles.</div><div><br></div><div>What is t=
he source of the latency when running in a continuous mode?=C2=A0 Initially=
, I had thought that this might be related to the send_buffer_size, but mak=
ing changes to send_buffer_size seem to not have an effect.=C2=A0 =C2=A0FWI=
W, 167ms at 50 MSPS is suspiciously close to the value for wmem_max (335544=
32) suggested in the x300 system configuration ... but neither changing tha=
t value or send_buffer_size seems to make a difference.</div><div><br></div=
><div>Is this latency tunable?=C2=A0=C2=A0</div></div></div></blockquote><d=
iv><br></div><div>I suspect it&#39;s the DMA FIFO which uses the DRAM in th=
e X310 as a buffer.=C2=A0 The default buffer size is 32MB.</div><div><br></=
div><div>Which version of UHD are you using?</div><div><br></div><div>Brian=
</div></div></div>
</blockquote></div>

--00000000000059057a05bd3225e0--


--===============2423981586147676553==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2423981586147676553==--

