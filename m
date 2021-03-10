Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D96D73349E1
	for <lists+usrp-users@lfdr.de>; Wed, 10 Mar 2021 22:39:32 +0100 (CET)
Received: from [::1] (port=45296 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lK6YD-0001D5-JE; Wed, 10 Mar 2021 16:39:29 -0500
Received: from mail-lj1-f174.google.com ([209.85.208.174]:37665)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dougb95@gmail.com>) id 1lK6Y9-000173-B5
 for usrp-users@lists.ettus.com; Wed, 10 Mar 2021 16:39:25 -0500
Received: by mail-lj1-f174.google.com with SMTP id q14so27591971ljp.4
 for <usrp-users@lists.ettus.com>; Wed, 10 Mar 2021 13:39:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HCd2M8F0xyLxxJXxbDz/O1hYjgTvq5NO2rIRfOnntd8=;
 b=cJJWRJEGe8Xz/xYFITnD5BKN6Xw2GdRUQpv915K5lnW1yUrAc7Mf1oDUNQq1uK08/1
 Qj1XgLrMcaZL5WUkt0nXHJD02/ShwfN9+19QT25YWDP2iQx49ycHfdUqO7x+vA6ZTcA7
 desul/0cS3ecKDpvrSajyY/ocq33MPrQ9jMKfmdjTeQGYfl3ImgSN8cCSy6UEmX/5yy3
 98j6Ut9FicHIITJSUOlcvktmskXeGntw9Oov4xr1INkDWmX4T2BmEKkEV4YkPO3XwYjO
 WGaBh/ziIgU3Qj9mzo/qbkymFYDJxl+tQKo+w2w8tAp7qzREir6KvueieGc136h/j3I+
 ljhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HCd2M8F0xyLxxJXxbDz/O1hYjgTvq5NO2rIRfOnntd8=;
 b=NeWT0GILXK6FHOLQ/VcLzUZRbIsGE7L7mN6qGFBYL6rNGYE0tQSasSYRgv4APP4VUP
 2/ofMnwOij2z/D1OXNkn4/0gLA3I16GOR1ItwUD4kKb669UCMqFFXYnOBlIcU3NnN1vk
 gigHAf0C6wzY6QT4elLvhlp04H6gGzxrBa6c/2W31SVToEaGuh5LGNMd3TksbKouY7u+
 yGzLBjVp0BR1UYhSkgYXgL9aSMCQhF/4ZSV1vSmPc1vmnba7YfBrptNrtBir9QiGoVxU
 fVPVhZj+3nLYiBJh6Kmte1tOP5pgdNrGHVTqpWku3ee+5FKhM7Mixm3WPTLgrgpGlFN6
 VS8Q==
X-Gm-Message-State: AOAM5320cPlbjGuYwbNMUT30WwMTcEKvCUjTbKQU8LBsjYv5M0XX2Lu3
 DhG9bwp7R+Xnp1hJockGa4nQOXmxX1S5MxH4pdE=
X-Google-Smtp-Source: ABdhPJw8+yZop7bejTws7dyMv+W9UGxbQDEp1oou1HJgL+i9F3K7JjbbGRgEDgUtax66yec1Hyu+om8XlcO/UUOrvm4=
X-Received: by 2002:a2e:7a08:: with SMTP id v8mr2964542ljc.344.1615412323834; 
 Wed, 10 Mar 2021 13:38:43 -0800 (PST)
MIME-Version: 1.0
References: <CAKwz1Gf2Qw+Yc9E3e7CK0GLVaL14A6=fcvFQ_efpdyZX4p+Grw@mail.gmail.com>
 <CAEXYVK5S+2i01HbaBpi08iot7NDno1RhJ+6tfdeXHLS2QPovNA@mail.gmail.com>
 <CAKwz1Gfgbox4P5UDooz1eJaTy6iPC2fUBqi12J70L_LxKz7mng@mail.gmail.com>
 <CAEXYVK6-p9TJ6hu34NzKiFuF-AFsiwOF_yLYm5SrbRz6Ky3Z9w@mail.gmail.com>
 <CAKwz1GcDUU+vQ7sUHLVryH-zbhZRs-63gx1SPbQQEF4=CDcfKg@mail.gmail.com>
In-Reply-To: <CAKwz1GcDUU+vQ7sUHLVryH-zbhZRs-63gx1SPbQQEF4=CDcfKg@mail.gmail.com>
Date: Wed, 10 Mar 2021 16:38:33 -0500
Message-ID: <CAKwz1GcX_jvx9djbeBw-6uKHiYL+DyY=eOFTB2RoR26JnARAUA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============1043237328882519107=="
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

--===============1043237328882519107==
Content-Type: multipart/alternative; boundary="000000000000ba608305bd357d03"

--000000000000ba608305bd357d03
Content-Type: text/plain; charset="UTF-8"

A quick update ...

I added
#include <uhd/device3.hpp>

to my includes and the following code to UHD_SAFE_MAIN:

=================
    uhd::device3::sptr usrp3 = usrp->get_device3();
    uhd::rfnoc::dma_fifo_block_ctrl::sptr dmafifo_block_ctrl =
        usrp3->get_block_ctrl<uhd::rfnoc::dma_fifo_block_ctrl>(
            uhd::rfnoc::block_id_t(0,"DmaFIFO"));

    int fifoSize = 4*1024*1024;
    int numChannels = usrp->get_tx_num_channels();
    for (int chanIdx = 0; chanIdx<numChannels; ++chanIdx)
    {
        // uint32_t currDepth = dmafifo_block_ctrl->get_depth(0);
        // uint32_t currBaseAddr = dmafifo_block_ctrl->get_base_addr(0);
        // std::cerr << "DMA chan " << chanIdx << ": base / depth : " <<
        //     currBaseAddr << " / " << currDepth << std::endl;
        std::cerr << "Attempting to resize channel " << chanIdx <<
std::endl;
        dmafifo_block_ctrl->resize( chanIdx*fifoSize, /* base address */
                                    fifoSize, /* depth */
                                    chanIdx );
    }
=================

I started with 16MB, then 8MB, etc ...

At 4MB, latency is 1/8 of what I see at 32MB as expected ... about 21.33
ms.  I'm sure I'll need to tune this a little more once I apply it to my
application, but I can now control it.

I greatly appreciate the help, Brian!

Best,
Doug


On Wed, Mar 10, 2021 at 2:46 PM Doug Blackburn <dougb95@gmail.com> wrote:

> Brian --
>
> Thanks so much!   I sprinkled my comments in below :
>
> On Wed, Mar 10, 2021 at 1:42 PM Brian Padalino <bpadalino@gmail.com>
> wrote:
>
>> On Wed, Mar 10, 2021 at 12:39 PM Doug Blackburn <dougb95@gmail.com>
>> wrote:
>>
>>> Brian,
>>>
>>> I've seen this using UHD-3.14 and UHD-3.15.LTS.
>>>
>>
>> The DMA FIFO block default size is set here in the source code for
>> UHD-3.15.LTS:
>>
>>
>> https://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/lib/rfnoc/dma_fifo_block_ctrl_impl.cpp#L25
>>
>> And the interface in the header file provides a way to resize it:
>>
>>
>> https://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/include/uhd/rfnoc/dma_fifo_block_ctrl.hpp#L33
>>
>> I'd probably resize it before sending any data to it.
>>
>> That should help with your latency question I think.
>>
>
> This is super helpful.  I'll give it a shot and see what happens!
>
>
>>
>>
>>>
>>> I have performed some follow-on testing that raises more questions,
>>> particularly about the usage of end_of_burst and start_of_burst.  I talk
>>> through my tests and observations below; the questions that these generated
>>> are at the end ...
>>>
>>> I thought it would be interesting to modify benchmark_rate.cpp to
>>> attempt to place a timestamp on each buffer that was sent out to see if I
>>> could observe the same behavior.  I haven't seen thorough explanations of
>>> what exactly the start_of_burst and end_of_burst metadata fields do at a
>>> low level beyond this posting --
>>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2016-November/050555.html
>>> and a note about start_of_burst resetting the CORDICs (I'd appreciate being
>>> pointed in the right direction if I've missed it, thank you!) --  so I
>>> wanted to test the effect on timing when has_time_spec is true and the SOB
>>> and EOB fields are either false or true.  I initially set my test up in the
>>> following way (I hope the pseudocode makes sense) to make observations
>>> easy.  I watched for the LO on a spectrum analyzer.  Per the code below, I
>>> would expect a burst every 2 seconds if the time_spec was followed ...
>>>
>>> ======
>>> max_samps_per_packet = 50e5; // 100ms at 50 MSPS
>>> start_of_burst = <true,false>
>>> end_of_burst = <true,false>
>>> has_time_spec = true;
>>> while( not burst_timer_elapsed)
>>> {
>>>     tx_stream->send();
>>>     start_of_burst = <true,false>
>>>     end_of_burst = <true, false>
>>>     time_spec = time_spec + 2.0;
>>>  }
>>>
>>
>> A few things.  I'd expect a burst every 2 seconds if you set sob = true,
>> eob = true outside the loop, and never change it and only change the
>> time_spec for every send.  Does that not work for you?
>>
>>
> Yes -- that does work, too.  I tried all the different combinations ... So
> for example, if sob/eob were true/true outside the loop and false/false
> inside the loop, I'd see a two second pause after the first burst and then
> we'd roll through the rest of them contiguously.
>
>
>> Next, The sizing of packets can be really important here.  The way the
>> DUC works is a little unintuitive.  The DUC works by creating N packets
>> from 1 input packet.  To this end, if you have an extra 1 sample, it will
>> repeat that small 1 sample packet N times - very processing inefficient.
>>
>> Furthermore, when I tried doing this I would run into weird edge cases
>> with the DMA FIFO where the send() call would block indefinitely.  My
>> workaround was to manually zero stuff and keep the transmit FIFO constantly
>> going - not using any eob flags at all.  My system would actually use a
>> software FIFO for bursts that wanted to go out, and I had a software thread
>> in a tight loop that would check if the FIFO had anything in it.  If it
>> didn't, it would zero stuff some small amount of transmit samples (1 packet
>> I believe).  If it did, it would send the burst.  You may want to do
>> something similar even with a synchronized system and counting outgoing
>> samples.
>>
>
> :) This is what led me here; the application I was working on essentially
> did that.  I'd have some data I'd want to send at a specific time.  I'd
> translate that time to a number of buffers past the start of my transmit
> (with some extra bookkeeping and buffer magic to align samples, etc), and
> found that I could only get this to work if my requested transmit time was
> at least 167 ms in the future.   This didn't quite reconcile with the 1ms
> of latency I could demonstrate with 'latency_test'  -- which uses a single
> packet -- hence my trip down the rabbit hole.  If I can lower that number a
> little by modifying the FIFO block, I think I'll be happy, but ...
>
>
>>
>>
>>>
>>> My observations were as follows: if end_of_burst for the prior burst was
>>> set to true, my code adhered to the time_spec.  The value of start_of_burst
>>> had no effect on whether or not the expected timing was followed.  If
>>> end_of_burst was set to false, the time_spec for the following burst is
>>> ignored and the packet is transmitted as soon as possible.
>>>
>>> I then followed this up with another test -- I replaced
>>>       time_spec = time_spec + 2.0;
>>> with the equivalent of
>>>       time_spec = time_spec + 0.100;
>>>
>>> And set end_of_burst and start_of_burst to true.
>>>
>>> I figured if I can run this continuously by setting has_time_spec to
>>> 'false' after the first burst and easily push data into the FIFO buffer,
>>> that doing this should not be a problem ... but I'm presented with a stream
>>> of lates and no actual transmission.
>>>
>>> I understand that 100ms is not an integer multiple of packet size
>>> returned by get_max_num_samps() -- so I tried an integer multiple of the
>>> packet size, too, with an appropriately updated time_spec. This also
>>> resulted with a lates through the entire transmit.
>>>
>>> So .... here are my additional questions:
>>>
>>> Is the only effect of "start_of_burst = true" to cause the CORDICs to
>>> reset?
>>> What is end_of_burst doing to enable a following time_spec to be used?
>>> What additional work is being performed when I set end_of_burst and
>>> has_time_spec to 'true' such that I get latest throughout the entire
>>> attempted transmission?
>>>
>>
>> I don't know the answer to these questions.  Try the suggestions above
>> and see if they help you out or not.
>>
>> Good luck!
>>
>>
> ...I would love to know the answer to these questions if anyone knew
> them.  Or could point me towards where they are documented.
>
> Thanks again!
>
>
>> Brian
>>
>
> Best, Doug
>
>

--000000000000ba608305bd357d03
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">A quick update ...<div><=
br></div><div>I added=C2=A0<br>#include &lt;uhd/device3.hpp&gt;</div><div><=
br></div><div>to my includes and the following code to UHD_SAFE_MAIN:</div>=
<div><br></div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</di=
v><div><div>=C2=A0 =C2=A0 uhd::device3::sptr usrp3 =3D usrp-&gt;get_device3=
();</div><div>=C2=A0 =C2=A0 uhd::rfnoc::dma_fifo_block_ctrl::sptr dmafifo_b=
lock_ctrl =3D</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp3-&gt;get_block_ctr=
l&lt;uhd::rfnoc::dma_fifo_block_ctrl&gt;(</div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 uhd::rfnoc::block_id_t(0,&quot;DmaFIFO&quot;));</div><=
div><br></div><div>=C2=A0 =C2=A0 int fifoSize =3D 4*1024*1024;</div><div>=
=C2=A0 =C2=A0 int numChannels =3D usrp-&gt;get_tx_num_channels();</div><div=
>=C2=A0 =C2=A0 for (int chanIdx =3D 0; chanIdx&lt;numChannels; ++chanIdx)</=
div><div>=C2=A0 =C2=A0 {</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 // uint32_t =
currDepth =3D dmafifo_block_ctrl-&gt;get_depth(0);</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 // uint32_t currBaseAddr =3D dmafifo_block_ctrl-&gt;get_base_=
addr(0);</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 // std::cerr &lt;&lt; &quot;=
DMA chan &quot; &lt;&lt; chanIdx &lt;&lt; &quot;: base / depth : &quot; &lt=
;&lt;</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 //=C2=A0 =C2=A0 =C2=A0currBaseA=
ddr &lt;&lt; &quot; / &quot; &lt;&lt; currDepth &lt;&lt; std::endl;</div><d=
iv>=C2=A0 =C2=A0 =C2=A0 =C2=A0 std::cerr &lt;&lt; &quot;Attempting to resiz=
e channel &quot; &lt;&lt; chanIdx &lt;&lt; std::endl;</div><div>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 dmafifo_block_ctrl-&gt;resize( chanIdx*fifoSize, /* base =
address */</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 f=
ifoSize, /* depth */</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 chanIdx );</div><div>=C2=A0 =C2=A0 }</div></div><div>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div><br></div><div>I start=
ed with 16MB, then 8MB, etc ...</div><div><br></div><div>At 4MB, latency is=
 1/8 of what I see at 32MB as expected ... about 21.33 ms.=C2=A0 I&#39;m su=
re I&#39;ll need to tune this a little more once I apply it to my applicati=
on, but I can now control it.=C2=A0=C2=A0</div><div><br></div><div>I greatl=
y appreciate the help, Brian!</div><div><br></div><div>Best,</div><div>Doug=
</div><div><br></div></div></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 10, 2021 at 2:46 PM Doug Black=
burn &lt;<a href=3D"mailto:dougb95@gmail.com">dougb95@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div>Brian --=C2=A0</div><div><br></div><div>Thanks so much!=C2=A0 =C2=
=A0I sprinkled my comments in below=C2=A0:=C2=A0</div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 10, 2021 at 1:4=
2 PM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" target=3D"_b=
lank">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Wed, Mar 10, =
2021 at 12:39 PM Doug Blackburn &lt;<a href=3D"mailto:dougb95@gmail.com" ta=
rget=3D"_blank">dougb95@gmail.com</a>&gt; wrote:<br></div><div class=3D"gma=
il_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
">Brian,<div><br></div><div>I&#39;ve seen this using UHD-3.14 and UHD-3.15.=
LTS.</div></div></blockquote><div><br></div><div>The DMA FIFO block default=
 size is set here in the source code for UHD-3.15.LTS:</div><div><br></div>=
<div>=C2=A0=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/UHD-3=
.15.LTS/host/lib/rfnoc/dma_fifo_block_ctrl_impl.cpp#L25" target=3D"_blank">=
https://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/lib/rfnoc/dma_f=
ifo_block_ctrl_impl.cpp#L25</a></div><div><br></div><div>And the interface =
in the header file provides a way to resize it:</div><div><br></div><div>=
=C2=A0=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/UHD-3.15.L=
TS/host/include/uhd/rfnoc/dma_fifo_block_ctrl.hpp#L33" target=3D"_blank">ht=
tps://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/include/uhd/rfnoc=
/dma_fifo_block_ctrl.hpp#L33</a></div><div><br></div><div>I&#39;d probably=
=C2=A0resize it before sending any data to it.</div><div><br></div><div>Tha=
t should help with your latency question I think.</div></div></div></blockq=
uote><div><br></div><div>This is super helpful.=C2=A0 I&#39;ll give it a sh=
ot and see what happens!</div><div>=C2=A0</div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div><br></div><div>I have performed some follow-on testing that raises mo=
re questions, particularly about the usage of end_of_burst and start_of_bur=
st.=C2=A0 I talk through my tests and observations below; the questions tha=
t these generated are at the end ...</div><div><br></div><div>I thought it =
would be interesting to modify benchmark_rate.cpp to attempt to place a tim=
estamp on each buffer that was sent out to see if I could observe the same =
behavior.=C2=A0 I haven&#39;t seen thorough explanations of what exactly th=
e start_of_burst and end_of_burst metadata fields do at a low level beyond =
this posting -- <a href=3D"http://lists.ettus.com/pipermail/usrp-users_list=
s.ettus.com/2016-November/050555.html" target=3D"_blank">http://lists.ettus=
.com/pipermail/usrp-users_lists.ettus.com/2016-November/050555.html</a> and=
 a note about start_of_burst resetting the CORDICs (I&#39;d appreciate bein=
g pointed in the right direction if I&#39;ve missed it, thank you!) --=C2=
=A0 so I wanted to test the effect on timing when has_time_spec is true and=
 the SOB and EOB fields are either false or true.=C2=A0 I initially set my =
test up in the following way (I hope the pseudocode makes sense) to make ob=
servations easy.=C2=A0 I watched=C2=A0for the LO on a spectrum analyzer.=C2=
=A0 Per the code below, I would expect a burst every 2 seconds if the time_=
spec was followed ...=C2=A0<br><br>=3D=3D=3D=3D=3D=3D</div><div>max_samps_p=
er_packet =3D 50e5; // 100ms at 50 MSPS<br>start_of_burst =3D &lt;true,fals=
e&gt;</div><div>end_of_burst =3D &lt;true,false&gt;</div><div>has_time_spec=
 =3D true;</div><div></div><div>while( not burst_timer_elapsed)=C2=A0</div>=
<div>{=C2=A0</div><div>=C2=A0 =C2=A0 tx_stream-&gt;send();</div><div>=C2=A0=
 =C2=A0 start_of_burst =3D &lt;true,false&gt;</div><div>=C2=A0 =C2=A0 end_o=
f_burst =3D &lt;true, false&gt;</div><div>=C2=A0 =C2=A0 time_spec =3D time_=
spec=C2=A0+ 2.0;=C2=A0</div><div>=C2=A0}</div></div></blockquote><div><br><=
/div><div>A few things.=C2=A0 I&#39;d expect a burst every 2 seconds if you=
 set sob =3D true, eob =3D true outside the loop, and never change it and o=
nly change the time_spec for every send.=C2=A0 Does that not work for you?<=
/div><div><br></div></div></div></blockquote><div><br></div><div>Yes -- tha=
t does work, too.=C2=A0 I tried all the different combinations ... So for e=
xample, if sob/eob were true/true outside the loop and false/false inside t=
he loop, I&#39;d see a two second pause after the first burst and then we&#=
39;d roll through the rest of them contiguously.=C2=A0=C2=A0</div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div class=3D"gmail_quote"><div></div><div>Next, The sizing of packets can=
 be really important here.=C2=A0 The way the DUC works is a little unintuit=
ive.=C2=A0 The DUC works by creating N packets from 1 input packet.=C2=A0 T=
o this end, if you have an extra 1 sample, it will repeat that small 1 samp=
le packet N times=C2=A0- very processing inefficient.</div><div><br></div><=
div>Furthermore, when I tried doing this I would run into weird edge cases =
with the DMA FIFO where the send() call would block indefinitely.=C2=A0 My =
workaround was to manually zero stuff and keep the transmit FIFO constantly=
 going - not using any eob flags at all.=C2=A0 My system would actually use=
 a software FIFO for bursts that wanted to go out, and I had a software thr=
ead in a tight loop that would check if the FIFO had anything in it.=C2=A0 =
If it didn&#39;t, it would zero stuff some small amount of transmit samples=
 (1 packet I believe).=C2=A0 If it did, it would send the burst.=C2=A0 You =
may want to do something similar even with a synchronized system and counti=
ng outgoing samples.</div></div></div></blockquote><div><br></div><div>:) T=
his is what led me here; the application I was working on essentially did t=
hat.=C2=A0 I&#39;d have some data I&#39;d want to send at a specific time.=
=C2=A0 I&#39;d translate that time to a number of buffers past the start of=
 my transmit (with some extra bookkeeping and buffer magic to align samples=
, etc), and found that I could only get this to work if my requested transm=
it time was at least 167 ms in the future.=C2=A0 =C2=A0This didn&#39;t quit=
e reconcile with the 1ms of latency I could demonstrate with &#39;latency_t=
est&#39;=C2=A0 -- which uses a single packet -- hence my trip down the rabb=
it hole.=C2=A0 If I can lower that number a little by modifying the FIFO bl=
ock, I think I&#39;ll be happy, but ...</div><div>=C2=A0</div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_q=
uote"><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div><br></div><div>My observations were as follows: if end_=
of_burst for the prior burst was set to true, my code adhered to the time_s=
pec.=C2=A0 The value of start_of_burst had no effect on whether or not the =
expected timing was followed.=C2=A0 If end_of_burst was set to false, the t=
ime_spec for the following burst is ignored and the packet is transmitted a=
s soon as possible.</div><div><br></div><div>I then followed this up with a=
nother test -- I replaced=C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0 time_spec =
=3D time_spec=C2=A0+ 2.0;</div><div>with the equivalent of=C2=A0</div><div>=
=C2=A0 =C2=A0 =C2=A0 time_spec =3D time_spec=C2=A0+ 0.100;</div><div><br></=
div><div>And set end_of_burst and start_of_burst to true.</div><div><br></d=
iv><div>I figured if I can run this continuously by setting has_time_spec t=
o &#39;false&#39; after the first burst and easily push data into the FIFO =
buffer, that doing this should not be a problem ... but I&#39;m presented w=
ith a stream of lates and no actual transmission.</div><div><br></div><div>=
I understand that 100ms is not an integer multiple of packet size returned =
by get_max_num_samps() -- so I tried an integer multiple of the packet size=
, too, with an appropriately updated time_spec. This also resulted with a l=
ates through the entire transmit.</div><div><br></div><div>So .... here are=
 my additional questions:</div><div><br></div><div><div>Is the only effect =
of &quot;start_of_burst =3D true&quot; to cause the CORDICs to reset?=C2=A0=
=C2=A0</div><div>What is end_of_burst doing to enable a following time_spec=
 to be used?</div><div>What additional work is being performed when I set e=
nd_of_burst and has_time_spec to &#39;true&#39; such that I get latest thro=
ughout the entire attempted transmission?</div></div></div></blockquote><di=
v><br></div><div>I don&#39;t know the answer to these questions.=C2=A0 Try =
the suggestions above and see if they help you out or not.</div><div><br></=
div><div>Good luck!</div><div><br></div></div></div></blockquote><div><br><=
/div><div>...I would love to know the answer to these questions if anyone k=
new them.=C2=A0 Or could point me towards where they are documented.=C2=A0=
=C2=A0</div><div><br></div><div>Thanks again!</div><div>=C2=A0</div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"g=
mail_quote"><div></div><div>Brian</div></div></div></blockquote><div><br></=
div><div>Best, Doug</div><div>=C2=A0</div></div></div>
</blockquote></div>

--000000000000ba608305bd357d03--


--===============1043237328882519107==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1043237328882519107==--

