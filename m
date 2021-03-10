Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1BA334843
	for <lists+usrp-users@lfdr.de>; Wed, 10 Mar 2021 20:47:02 +0100 (CET)
Received: from [::1] (port=44600 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lK4nJ-00039E-FQ; Wed, 10 Mar 2021 14:46:57 -0500
Received: from mail-lf1-f45.google.com ([209.85.167.45]:46309)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dougb95@gmail.com>) id 1lK4nF-000321-Bu
 for usrp-users@lists.ettus.com; Wed, 10 Mar 2021 14:46:53 -0500
Received: by mail-lf1-f45.google.com with SMTP id r3so27367991lfc.13
 for <usrp-users@lists.ettus.com>; Wed, 10 Mar 2021 11:46:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BA9MGseCgePPwFDjN+ptIx5mgE5n2zVdIgb3VyUp++Q=;
 b=oHkdmajaFYIN7rEZx6eRxv8BXAk+Flq79WAT72Rag/lpxzuga29x0CyiDfQV+tbRcd
 7Ue976BsRg9rztxjIrNnh/+oiaQU3+P85wQfaZTPdrMxLVVSQFIM40bS0icWxDJT1yJ+
 tO/5Aqk9HmwBsP+anBMc/eEo++Hfegx0YyBWEhfmcgg92bkdSJgh0WFnK8A/COhRIS7Z
 qgbNRN4ORd0ML+cyFBMF7o7vWl+Yboarx0DAkOMrmJSNg5QL2jqsTD5QNHZC/LhXVr91
 XECMMP2orHQA+RfGKCv/WJ1enETpUiX8J1R3cYa7jRNGJeGLEr+YPoMLDpR8Pje7xZtB
 aP9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BA9MGseCgePPwFDjN+ptIx5mgE5n2zVdIgb3VyUp++Q=;
 b=iQa4mrCN6G+RzpEE8dSOELEExq9j6xWoxjtze5O2y/GZHVePBVyxkTkJdSlWVpVfJ+
 8ywI7smVf9dMny49R+oNafftFBKTNAkmtrZy0yKhr1ND3N5fvVBcEW0PgcKJs52ImQS0
 YIIRA3hnH/63xwAoNCc27twJXNW+ilG0LJVoaAAXtmDNimi5rvQlww9hea2powYP7fRg
 1bM4/uXiQina5+nlJg22b3/vkxuJCkYoOlbWNEIiMpjsIGVGV2/OzT8Yo/UNTgyGBEke
 KKnxpY9rIlv3/TBgxYdd7HzEjbEvBOnr77fLxO7AxNNalvEtjAvuB8HC9p6ceitXutSL
 FoEg==
X-Gm-Message-State: AOAM533vzqO/JgPZSnuSVNPZ2hK1nK2l1NpZi5COlqNxnozToDvZmt+Q
 iJPLWwOiB0Gy/mUBc+RjvNvS+5O0l86R4Xn93GE=
X-Google-Smtp-Source: ABdhPJz2pnIeBab8se5/iVcIdJK4GTsvqXShO4XggEJ01b/hU+W9qwr8cXeSOnEc+YFpwNagN8Y2uuAQu1uN28UE11E=
X-Received: by 2002:a19:e85:: with SMTP id 127mr48419lfo.77.1615405571867;
 Wed, 10 Mar 2021 11:46:11 -0800 (PST)
MIME-Version: 1.0
References: <CAKwz1Gf2Qw+Yc9E3e7CK0GLVaL14A6=fcvFQ_efpdyZX4p+Grw@mail.gmail.com>
 <CAEXYVK5S+2i01HbaBpi08iot7NDno1RhJ+6tfdeXHLS2QPovNA@mail.gmail.com>
 <CAKwz1Gfgbox4P5UDooz1eJaTy6iPC2fUBqi12J70L_LxKz7mng@mail.gmail.com>
 <CAEXYVK6-p9TJ6hu34NzKiFuF-AFsiwOF_yLYm5SrbRz6Ky3Z9w@mail.gmail.com>
In-Reply-To: <CAEXYVK6-p9TJ6hu34NzKiFuF-AFsiwOF_yLYm5SrbRz6Ky3Z9w@mail.gmail.com>
Date: Wed, 10 Mar 2021 14:46:01 -0500
Message-ID: <CAKwz1GcDUU+vQ7sUHLVryH-zbhZRs-63gx1SPbQQEF4=CDcfKg@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============0985194759486820996=="
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

--===============0985194759486820996==
Content-Type: multipart/alternative; boundary="0000000000004785a805bd33ebe0"

--0000000000004785a805bd33ebe0
Content-Type: text/plain; charset="UTF-8"

Brian --

Thanks so much!   I sprinkled my comments in below :

On Wed, Mar 10, 2021 at 1:42 PM Brian Padalino <bpadalino@gmail.com> wrote:

> On Wed, Mar 10, 2021 at 12:39 PM Doug Blackburn <dougb95@gmail.com> wrote:
>
>> Brian,
>>
>> I've seen this using UHD-3.14 and UHD-3.15.LTS.
>>
>
> The DMA FIFO block default size is set here in the source code for
> UHD-3.15.LTS:
>
>
> https://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/lib/rfnoc/dma_fifo_block_ctrl_impl.cpp#L25
>
> And the interface in the header file provides a way to resize it:
>
>
> https://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/include/uhd/rfnoc/dma_fifo_block_ctrl.hpp#L33
>
> I'd probably resize it before sending any data to it.
>
> That should help with your latency question I think.
>

This is super helpful.  I'll give it a shot and see what happens!


>
>
>>
>> I have performed some follow-on testing that raises more questions,
>> particularly about the usage of end_of_burst and start_of_burst.  I talk
>> through my tests and observations below; the questions that these generated
>> are at the end ...
>>
>> I thought it would be interesting to modify benchmark_rate.cpp to attempt
>> to place a timestamp on each buffer that was sent out to see if I could
>> observe the same behavior.  I haven't seen thorough explanations of what
>> exactly the start_of_burst and end_of_burst metadata fields do at a low
>> level beyond this posting --
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2016-November/050555.html
>> and a note about start_of_burst resetting the CORDICs (I'd appreciate being
>> pointed in the right direction if I've missed it, thank you!) --  so I
>> wanted to test the effect on timing when has_time_spec is true and the SOB
>> and EOB fields are either false or true.  I initially set my test up in the
>> following way (I hope the pseudocode makes sense) to make observations
>> easy.  I watched for the LO on a spectrum analyzer.  Per the code below, I
>> would expect a burst every 2 seconds if the time_spec was followed ...
>>
>> ======
>> max_samps_per_packet = 50e5; // 100ms at 50 MSPS
>> start_of_burst = <true,false>
>> end_of_burst = <true,false>
>> has_time_spec = true;
>> while( not burst_timer_elapsed)
>> {
>>     tx_stream->send();
>>     start_of_burst = <true,false>
>>     end_of_burst = <true, false>
>>     time_spec = time_spec + 2.0;
>>  }
>>
>
> A few things.  I'd expect a burst every 2 seconds if you set sob = true,
> eob = true outside the loop, and never change it and only change the
> time_spec for every send.  Does that not work for you?
>
>
Yes -- that does work, too.  I tried all the different combinations ... So
for example, if sob/eob were true/true outside the loop and false/false
inside the loop, I'd see a two second pause after the first burst and then
we'd roll through the rest of them contiguously.


> Next, The sizing of packets can be really important here.  The way the DUC
> works is a little unintuitive.  The DUC works by creating N packets from 1
> input packet.  To this end, if you have an extra 1 sample, it will repeat
> that small 1 sample packet N times - very processing inefficient.
>
> Furthermore, when I tried doing this I would run into weird edge cases
> with the DMA FIFO where the send() call would block indefinitely.  My
> workaround was to manually zero stuff and keep the transmit FIFO constantly
> going - not using any eob flags at all.  My system would actually use a
> software FIFO for bursts that wanted to go out, and I had a software thread
> in a tight loop that would check if the FIFO had anything in it.  If it
> didn't, it would zero stuff some small amount of transmit samples (1 packet
> I believe).  If it did, it would send the burst.  You may want to do
> something similar even with a synchronized system and counting outgoing
> samples.
>

:) This is what led me here; the application I was working on essentially
did that.  I'd have some data I'd want to send at a specific time.  I'd
translate that time to a number of buffers past the start of my transmit
(with some extra bookkeeping and buffer magic to align samples, etc), and
found that I could only get this to work if my requested transmit time was
at least 167 ms in the future.   This didn't quite reconcile with the 1ms
of latency I could demonstrate with 'latency_test'  -- which uses a single
packet -- hence my trip down the rabbit hole.  If I can lower that number a
little by modifying the FIFO block, I think I'll be happy, but ...


>
>
>>
>> My observations were as follows: if end_of_burst for the prior burst was
>> set to true, my code adhered to the time_spec.  The value of start_of_burst
>> had no effect on whether or not the expected timing was followed.  If
>> end_of_burst was set to false, the time_spec for the following burst is
>> ignored and the packet is transmitted as soon as possible.
>>
>> I then followed this up with another test -- I replaced
>>       time_spec = time_spec + 2.0;
>> with the equivalent of
>>       time_spec = time_spec + 0.100;
>>
>> And set end_of_burst and start_of_burst to true.
>>
>> I figured if I can run this continuously by setting has_time_spec to
>> 'false' after the first burst and easily push data into the FIFO buffer,
>> that doing this should not be a problem ... but I'm presented with a stream
>> of lates and no actual transmission.
>>
>> I understand that 100ms is not an integer multiple of packet size
>> returned by get_max_num_samps() -- so I tried an integer multiple of the
>> packet size, too, with an appropriately updated time_spec. This also
>> resulted with a lates through the entire transmit.
>>
>> So .... here are my additional questions:
>>
>> Is the only effect of "start_of_burst = true" to cause the CORDICs to
>> reset?
>> What is end_of_burst doing to enable a following time_spec to be used?
>> What additional work is being performed when I set end_of_burst and
>> has_time_spec to 'true' such that I get latest throughout the entire
>> attempted transmission?
>>
>
> I don't know the answer to these questions.  Try the suggestions above and
> see if they help you out or not.
>
> Good luck!
>
>
...I would love to know the answer to these questions if anyone knew them.
Or could point me towards where they are documented.

Thanks again!


> Brian
>

Best, Doug

--0000000000004785a805bd33ebe0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Brian --=C2=A0</div><div><br></div><div>Thanks so muc=
h!=C2=A0 =C2=A0I sprinkled my comments in below=C2=A0:=C2=A0</div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 10,=
 2021 at 1:42 PM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com">=
bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Wed, Mar 10, 2021 a=
t 12:39 PM Doug Blackburn &lt;<a href=3D"mailto:dougb95@gmail.com" target=
=3D"_blank">dougb95@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_q=
uote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Br=
ian,<div><br></div><div>I&#39;ve seen this using UHD-3.14 and UHD-3.15.LTS.=
</div></div></blockquote><div><br></div><div>The DMA FIFO block default siz=
e is set here in the source code for UHD-3.15.LTS:</div><div><br></div><div=
>=C2=A0=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/UHD-3.15.=
LTS/host/lib/rfnoc/dma_fifo_block_ctrl_impl.cpp#L25" target=3D"_blank">http=
s://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/lib/rfnoc/dma_fifo_=
block_ctrl_impl.cpp#L25</a></div><div><br></div><div>And the interface in t=
he header file provides a way to resize it:</div><div><br></div><div>=C2=A0=
=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/hos=
t/include/uhd/rfnoc/dma_fifo_block_ctrl.hpp#L33" target=3D"_blank">https://=
github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/include/uhd/rfnoc/dma_f=
ifo_block_ctrl.hpp#L33</a></div><div><br></div><div>I&#39;d probably=C2=A0r=
esize it before sending any data to it.</div><div><br></div><div>That shoul=
d help with your latency question I think.</div></div></div></blockquote><d=
iv><br></div><div>This is super helpful.=C2=A0 I&#39;ll give it a shot and =
see what happens!</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div>=C2=A0</div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><b=
r></div><div>I have performed some follow-on testing that raises more quest=
ions, particularly about the usage of end_of_burst and start_of_burst.=C2=
=A0 I talk through my tests and observations below; the questions that thes=
e generated are at the end ...</div><div><br></div><div>I thought it would =
be interesting to modify benchmark_rate.cpp to attempt to place a timestamp=
 on each buffer that was sent out to see if I could observe the same behavi=
or.=C2=A0 I haven&#39;t seen thorough explanations of what exactly the star=
t_of_burst and end_of_burst metadata fields do at a low level beyond this p=
osting -- <a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettu=
s.com/2016-November/050555.html" target=3D"_blank">http://lists.ettus.com/p=
ipermail/usrp-users_lists.ettus.com/2016-November/050555.html</a> and a not=
e about start_of_burst resetting the CORDICs (I&#39;d appreciate being poin=
ted in the right direction if I&#39;ve missed it, thank you!) --=C2=A0 so I=
 wanted to test the effect on timing when has_time_spec is true and the SOB=
 and EOB fields are either false or true.=C2=A0 I initially set my test up =
in the following way (I hope the pseudocode makes sense) to make observatio=
ns easy.=C2=A0 I watched=C2=A0for the LO on a spectrum analyzer.=C2=A0 Per =
the code below, I would expect a burst every 2 seconds if the time_spec was=
 followed ...=C2=A0<br><br>=3D=3D=3D=3D=3D=3D</div><div>max_samps_per_packe=
t =3D 50e5; // 100ms at 50 MSPS<br>start_of_burst =3D &lt;true,false&gt;</d=
iv><div>end_of_burst =3D &lt;true,false&gt;</div><div>has_time_spec =3D tru=
e;</div><div></div><div>while( not burst_timer_elapsed)=C2=A0</div><div>{=
=C2=A0</div><div>=C2=A0 =C2=A0 tx_stream-&gt;send();</div><div>=C2=A0 =C2=
=A0 start_of_burst =3D &lt;true,false&gt;</div><div>=C2=A0 =C2=A0 end_of_bu=
rst =3D &lt;true, false&gt;</div><div>=C2=A0 =C2=A0 time_spec =3D time_spec=
=C2=A0+ 2.0;=C2=A0</div><div>=C2=A0}</div></div></blockquote><div><br></div=
><div>A few things.=C2=A0 I&#39;d expect a burst every 2 seconds if you set=
 sob =3D true, eob =3D true outside the loop, and never change it and only =
change the time_spec for every send.=C2=A0 Does that not work for you?</div=
><div><br></div></div></div></blockquote><div><br></div><div>Yes -- that do=
es work, too.=C2=A0 I tried all the different combinations ... So for examp=
le, if sob/eob were true/true outside the loop and false/false inside the l=
oop, I&#39;d see a two second pause after the first burst and then we&#39;d=
 roll through the rest of them contiguously.=C2=A0=C2=A0</div><div>=C2=A0</=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
 class=3D"gmail_quote"><div></div><div>Next, The sizing of packets can be r=
eally important here.=C2=A0 The way the DUC works is a little unintuitive.=
=C2=A0 The DUC works by creating N packets from 1 input packet.=C2=A0 To th=
is end, if you have an extra 1 sample, it will repeat that small 1 sample p=
acket N times=C2=A0- very processing inefficient.</div><div><br></div><div>=
Furthermore, when I tried doing this I would run into weird edge cases with=
 the DMA FIFO where the send() call would block indefinitely.=C2=A0 My work=
around was to manually zero stuff and keep the transmit FIFO constantly goi=
ng - not using any eob flags at all.=C2=A0 My system would actually use a s=
oftware FIFO for bursts that wanted to go out, and I had a software thread =
in a tight loop that would check if the FIFO had anything in it.=C2=A0 If i=
t didn&#39;t, it would zero stuff some small amount of transmit samples (1 =
packet I believe).=C2=A0 If it did, it would send the burst.=C2=A0 You may =
want to do something similar even with a synchronized system and counting o=
utgoing samples.</div></div></div></blockquote><div><br></div><div>:) This =
is what led me here; the application I was working on essentially did that.=
=C2=A0 I&#39;d have some data I&#39;d want to send at a specific time.=C2=
=A0 I&#39;d translate that time to a number of buffers past the start of my=
 transmit (with some extra bookkeeping and buffer magic to align samples, e=
tc), and found that I could only get this to work if my requested transmit =
time was at least 167 ms in the future.=C2=A0 =C2=A0This didn&#39;t quite r=
econcile with the 1ms of latency I could demonstrate with &#39;latency_test=
&#39;=C2=A0 -- which uses a single packet -- hence my trip down the rabbit =
hole.=C2=A0 If I can lower that number a little by modifying the FIFO block=
, I think I&#39;ll be happy, but ...</div><div>=C2=A0</div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quot=
e"><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div><br></div><div>My observations were as follows: if end_of_=
burst for the prior burst was set to true, my code adhered to the time_spec=
.=C2=A0 The value of start_of_burst had no effect on whether or not the exp=
ected timing was followed.=C2=A0 If end_of_burst was set to false, the time=
_spec for the following burst is ignored and the packet is transmitted as s=
oon as possible.</div><div><br></div><div>I then followed this up with anot=
her test -- I replaced=C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0 time_spec =3D t=
ime_spec=C2=A0+ 2.0;</div><div>with the equivalent of=C2=A0</div><div>=C2=
=A0 =C2=A0 =C2=A0 time_spec =3D time_spec=C2=A0+ 0.100;</div><div><br></div=
><div>And set end_of_burst and start_of_burst to true.</div><div><br></div>=
<div>I figured if I can run this continuously by setting has_time_spec to &=
#39;false&#39; after the first burst and easily push data into the FIFO buf=
fer, that doing this should not be a problem ... but I&#39;m presented with=
 a stream of lates and no actual transmission.</div><div><br></div><div>I u=
nderstand that 100ms is not an integer multiple of packet size returned by =
get_max_num_samps() -- so I tried an integer multiple of the packet size, t=
oo, with an appropriately updated time_spec. This also resulted with a late=
s through the entire transmit.</div><div><br></div><div>So .... here are my=
 additional questions:</div><div><br></div><div><div>Is the only effect of =
&quot;start_of_burst =3D true&quot; to cause the CORDICs to reset?=C2=A0=C2=
=A0</div><div>What is end_of_burst doing to enable a following time_spec to=
 be used?</div><div>What additional work is being performed when I set end_=
of_burst and has_time_spec to &#39;true&#39; such that I get latest through=
out the entire attempted transmission?</div></div></div></blockquote><div><=
br></div><div>I don&#39;t know the answer to these questions.=C2=A0 Try the=
 suggestions above and see if they help you out or not.</div><div><br></div=
><div>Good luck!</div><div><br></div></div></div></blockquote><div><br></di=
v><div>...I would love to know the answer to these questions if anyone knew=
 them.=C2=A0 Or could point me towards where they are documented.=C2=A0=C2=
=A0</div><div><br></div><div>Thanks again!</div><div>=C2=A0</div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmai=
l_quote"><div></div><div>Brian</div></div></div></blockquote><div><br></div=
><div>Best, Doug</div><div>=C2=A0</div></div></div>

--0000000000004785a805bd33ebe0--


--===============0985194759486820996==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0985194759486820996==--

