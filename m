Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A1B11B9CD
	for <lists+usrp-users@lfdr.de>; Wed, 11 Dec 2019 18:13:41 +0100 (CET)
Received: from [::1] (port=37504 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1if5YP-0007DW-O7; Wed, 11 Dec 2019 12:13:37 -0500
Received: from mail-vk1-f176.google.com ([209.85.221.176]:36615)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ejkreinar@gmail.com>) id 1if5YL-00077B-IK
 for usrp-users@lists.ettus.com; Wed, 11 Dec 2019 12:13:33 -0500
Received: by mail-vk1-f176.google.com with SMTP id i4so7065174vkc.3
 for <usrp-users@lists.ettus.com>; Wed, 11 Dec 2019 09:13:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=769wYhIUv6dSeSkukIhjYbnqsGAqEVx5hinPDniJaIc=;
 b=Y4X6U/vZZ8Tl4oj5d18irtc+AVxjCXNOLkYELU+e3cYpWUq8xXskA6BH77nAQqPH/z
 crQLhQQxNaLMu/8nXHnyHA0EavSlWcBSzGIo817orKbSxWkfbP95GTV/sXMCsWHQaWiu
 VOkqHLrnI+MII7QlAF9TUOsgj1huwjpu6RBMZABN5bgJiWee9CkamclRJW+gJHLM7LSn
 ELdB0yKBkCa8tQYN+aVDiwd8EVLT/qGh0bSOMtvH/Ft0bhrOD8F9tl23iY/szHLdmBOS
 gkmjydddDxE4R/kvSxpvAvdoN3eUXM/2kLneTQGWcR9haW3Mh3GjN56fjzm6AhnU0qh+
 IrNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=769wYhIUv6dSeSkukIhjYbnqsGAqEVx5hinPDniJaIc=;
 b=RtCf/rvuO0C1a5ASPd633+c4PNRrQPeK7WYGXpnkOVWgSl4TjFwj2qNAOOJfWioErq
 7HhpfzGwXuV8C+dqitmH6ZIZzuMYybAB1OUoXGhaANlGzz/z6uWNrL6sf7IGciZAKCFP
 Fh9JX2AKfeigvPp9IW9+hoB5/uVyhBIVJ0jTvxnGXa9z9CCe2pDcaUh3J2AwpjWRrkqa
 2aJlomK8iP9NcFyBVNJc+mZPmZXGEJHgnlnmp5WP8sI61ZpAzn+ebdwgtmti4XrocABv
 0fJ6XT6VFcZFcA80yarnEDYL3DWg27vqv548/6S4zcSwV/2jL+XDqhQq+C5ShVi1HKYM
 AFDw==
X-Gm-Message-State: APjAAAVxiN5mZEZtHUigbImL3Co2AFevnSKe6qLqcxHzFOrX5QdD/xrn
 mRTugk9mQXX7T/6IXHQjNIkZy5wfP1Fa6UtDms8=
X-Google-Smtp-Source: APXvYqyJ8EyvVCUNJMzxL0C+LvDG8DEtwxW4CfT+8eaw96gQLnIsHAq3iNc5cCPn7+WeDtfULfExqAKxrsYSmV/zb1Q=
X-Received: by 2002:a1f:2753:: with SMTP id n80mr4676085vkn.24.1576084372733; 
 Wed, 11 Dec 2019 09:12:52 -0800 (PST)
MIME-Version: 1.0
References: <20191204094750.31BCC1400BB@zmtaauth01.partage.renater.fr>
 <CANf970bHPRczWQDS=OVMWmJwhJVzycCCw4Ey5JeoVqtg9WVVfQ@mail.gmail.com>
 <CANf970a_3AMjAi=FCxVZyha=u-f9At9nQANB_RZJvSw5oL_5tg@mail.gmail.com>
 <20191209093339.20778A00E4@zmtaauth02.partage.renater.fr>
 <CAB__hTTijCzqgJL9ab+Dh+8g8ZLRh2o2A3yuRS8fG23AhF7tvA@mail.gmail.com>
 <20191211100521.A8A031400BB@zmtaauth01.partage.renater.fr>
 <CAB__hTRbL+ngUxNJSSdk6MVFUFeNd-DZkP1uMFTnEtUagRTGjg@mail.gmail.com>
 <CAL263ixtV7hgkCJHFwWUre0SkUvetKedEYXJkgFjCA_bh8BxiA@mail.gmail.com>
In-Reply-To: <CAL263ixtV7hgkCJHFwWUre0SkUvetKedEYXJkgFjCA_bh8BxiA@mail.gmail.com>
Date: Wed, 11 Dec 2019 12:12:38 -0500
Message-ID: <CADRnH201L+boPdx9RJmWbOg7Qcpe4sv6ABo9Bp-622=o_dHcgw@mail.gmail.com>
To: Nate Temple <nate.temple@ettus.com>
Subject: Re: [USRP-users] transmitting on two channels with replay block
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6373771405434803955=="
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

--===============6373771405434803955==
Content-Type: multipart/alternative; boundary="0000000000002c411b059970bd1a"

--0000000000002c411b059970bd1a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Just to pile on yet another fpga option: Nick Foster and others here have
experimented with custom rfnoc blocks that have two connections to the
rfnoc crossbar rather than just one... Hypothetically, a custom replay
block with a split stream and two crossbar connections (one for each
output) could support the full rate to two different transmitters, rather
than needing to split the crossbar bandwidth across all output ports.

Of course, it does require some serious fpga and software surgery to
support this custom mode, so I'd definitely recommend going with Nate
Temple's userspace DPDK suggestion.

However, I'll also mention something fun... The new iteration of rfnoc,
available on the "master-next" branch of uhd and uhd-fpga (essentially UHD
4.0), has an FPGA architecture that can provide the full crossbar bandwidth
*per port* which means this "hacked" paradigm is supported in the next
version of rfnoc without too much heartburn (theoretically, at least)

EJ

On Wed, Dec 11, 2019, 10:08 AM Nate Temple via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Thomas,
>
> One option instead of using the Replay block could be to stream 2x 200e6
> from your host.
>
> On the X310, this requires using a SRAM image and DPDK. DPDK support was
> added with UHD 3.14.1.0 for the X310, I'd suggest to use 3.14.1.1 at this
> time though.
>
> Some links on DPDK:
>
> https://www.dpdk.org/
> http://files.ettus.com/manual/page_dpdk.html
>
> I've been able to run 2x2 @ 200e6 with the X310 with DPDK using a 4 GHz
> CPU.
>
> ./benchmark_rate --rx_rate 200e6 --rx_channels 0,1 --tx_rate 200e6
> --tx_channels 0,1 --args
> "addr=3D192.168.10.2,second_addr=3D192.168.20.2,use_dpdk=3D1,num_recv_fra=
mes=3D512,enable_tx_dual_eth=3D1,skip_ddc=3D1,skip_duc=3D1"
>
> num_recv_frames=3D512 can help if you're seeing overflows.
>
> enable_tx_dual_eth=3D1 is required for 2x TX @ 200e6
>
> skip_ddc=3D1,skip_duc=3D1 can help as well since you'd be sending at full=
 rate.
>
>
>
> Regards,
> Nate Temple
>
> On Wed, Dec 11, 2019 at 7:03 AM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> I do not think it is possible using the stock FPGA image.  However, I ca=
n
>> think of a couple of possibilities:
>>
>>    - On the N310, Ettus includes 4 FIFO blocks (rather than the DmaFIFO
>>    which used the off-FPGA RAM for memory), to provide capability for 4x=
125
>>    MS/s streaming. Perhaps if you built an X310 FPGA image with 2 such F=
IFO
>>    blocks, you could use these rather than the DmaFIFO and achieve the d=
esired
>>    streaming.  Note that this requires a Vivado license to build your ow=
n FPGA
>>    image, but does not require FPGA experience because you would be buil=
ding
>>    an image with "stock" blocks.  One caution though is that streaming a=
t this
>>    very high rate still requires a high performance host and so it is st=
ill
>>    possible that you would have underruns if your host could not keep up=
.  If
>>    you go this route, I believe you will likely need to use the "DPDK"
>>    capability which is a bit of a pain to configure and get it working
>>    properly.
>>    - Another possibility is to create a custom RFNoC block that is
>>    similar to the replay block but that uses FPGA memory to store a fixe=
d
>>    duration waveform and then plays it out cyclically like the replay bl=
ock.
>>    The Ettus 'window' RFNoC block provides a good example of how to stor=
e
>>    coefficients and play them out repeatedly.  But, making the needed
>>    modifications is not a trivial task except for someone who is pretty =
good
>>    at FPGA programming.
>>
>> Given that you were trying the replay block, I'm guessing that your Tx
>> waveforms are of fixed duration.  What is the duration (in number of
>> samples) that you require?
>> Rob
>>
>> On Wed, Dec 11, 2019 at 5:05 AM Thomas Harder <Thomas.Harder@oca.eu>
>> wrote:
>>
>>> Thank you Rob for this comment.
>>>
>>> But I am not sure if I understand you correctly. Do you want to say,
>>> that it is *IMPOSSIBLE* to stream TX two different waveforms
>>> synchronized  on the 2 channels of the x310 with the full bandwidth of
>>> 200MS/s on each channel?
>>>
>>> That is what I am trying the last 6 months full time, starting with
>>> Labview under windows and then UHD under Linux with a Dell Precision 58=
20
>>> desktop (16GB RAM, Intel Xeon W-2125 CPU@ 4.GHz x8) with MXI
>>> connection, dual 10Gbit connection(Intel X520-DA2), the replay block
>>> recently: always the same result: continuous underruns.
>>>
>>> If you can confirm that this is not possible without an important FPGA
>>> change (because I have no experience in this field and I have not the t=
ime
>>> to invest into it), I must search for another solution to create two
>>> different synchronized RF waveforms with 160MHz bandwidth (optical,
>>> electronical,=E2=80=A6) because this will be just a part of my experime=
ntal setup
>>> but it is crucial to go on .
>>>
>>> I am thankful for any advise,
>>>
>>> Thomas
>>>
>>>
>>>
>>>
>>>
>>> *From: *Rob Kossler <rkossler@nd.edu>
>>> *Sent: *Tuesday, December 10, 2019 5:01 AM
>>> *To: *Thomas Harder <Thomas.Harder@oca.eu>
>>> *Cc: *Sam Reiter <sam.reiter@ettus.com>; usrp-users@lists.ettus.com
>>> *Subject: *Re: [USRP-users] transmitting on two channels with replay
>>> block
>>>
>>>
>>>
>>> Apart from solving the underrun issue, there is also an issue with
>>> synchronization.  The replay block doesn't presently support timed comm=
ands.
>>>
>>>
>>>
>>> And, as a side note, the issue with streaming from the host is not just
>>> the host.  The DMA FIFO has a maximum bandwidth of something like 600 M=
S/s
>>> (combination of all inputs and outputs) that precludes streaming 400 MS=
/s
>>> in and out of the block simultaneously.  So, even if the host could kee=
p
>>> up, the FIFO could not.
>>>
>>> Rob
>>>
>>>
>>>
>>> On Mon, Dec 9, 2019 at 4:34 AM Thomas Harder via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>> Hi Sam,
>>>
>>> Thank you for your reply.
>>>
>>> This morning I set the MCR to 184.32 and I am still having continuous
>>> underruns using also
>>>
>>> replay_ctrl->get_record_fullness
>>>
>>> for both channels.
>>>
>>>
>>>
>>> But since I need the full bandwidth of 160MHz I would like implement a
>>> second replay block in my fpga image.
>>>
>>>
>>>
>>> Could anyone help me with this?
>>>
>>> I am really new in fpga programming and for the image with one replay
>>> block I was just following the instructions in
>>> https://kb.ettus.com/Using_the_RFNoC_Replay_Block.
>>>
>>> Thank you,
>>>
>>> Thomas
>>>
>>>
>>>
>>>
>>>
>>> *From: *Sam Reiter <sam.reiter@ettus.com>
>>> *Sent: *Friday, December 6, 2019 10:23 PM
>>> *To: *Thomas Harder <Thomas.Harder@oca.eu>
>>> *Cc: *usrp-users@lists.ettus.com
>>> *Subject: *Re: [USRP-users] transmitting on two channels with replay
>>> block
>>>
>>>
>>>
>>> Thomas,
>>>
>>>
>>>
>>> Upon further investigation, we may be running up to a practical limit o=
f
>>> a single CHDR interface rather than an issue with your code. A single
>>> replay block servicing two radios will have a max (theoretical) rate of
>>> 187.5 MSPS on either channel. This means that you might be able to sque=
eze
>>> full rate out on 2 channels with an MCR of 184.32, but that's cutting
>>> it pretty close. Sounds like 2 channels at 200 MSPS with a replay setup
>>> will require 2 replay blocks serving each channel independently. If you=
 end
>>> up trying either of the above out, I'd be curious to know what results =
you
>>> observe.
>>>
>>>
>>>
>>> Sam Reiter
>>>
>>> Ettus Research
>>>
>>>
>>>
>>>
>>>
>>> On Fri, Dec 6, 2019 at 2:38 PM Sam Reiter <sam.reiter@ettus.com> wrote:
>>>
>>> Thomas,
>>>
>>>
>>>
>>> I'd need to set it up on my end, but I believe you can TX two distinct
>>> waveforms from a single replay block instance. You'd need to make sure =
that
>>> your adding your data to the buffer in separate locations and at an add=
ress
>>> that is a multiple of 8 bytes (which it looks like you're doing from th=
e
>>> above snippets). Are you seeing continuous underruns, or just a handful=
 at
>>> the beginning on the run? Does your duplicated code also use:
>>>
>>>
>>>
>>> replay_ctrl->get_record_fullness
>>>
>>>
>>>
>>> on both channels before kicking off the stream start?
>>>
>>>
>>>
>>> Sam Reiter
>>>
>>> Ettus Research
>>>
>>>
>>>
>>> On Wed, Dec 4, 2019 at 3:48 AM Thomas Harder via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>> Hello everyone,
>>>
>>> Is it possible to transmit two different waveforms on the two channels
>>> of the USRP X310 with the two UBX-160 daughterboards?
>>>
>>> I want to transmit two different waveforms simultaneous (synchronized )
>>> on the two channels of the USRP with the full sample rate of 200 MS/s. =
I
>>> tried already to do it with a dual 10Gbit-ethernet connection and I see=
med
>>> to be limited by my computer. Now I am trying to do it with the replay
>>> block.
>>>
>>>
>>>
>>> I built the FPGA image with one Replay block as described in
>>> https://kb.ettus.com/Using_the_RFNoC_Replay_Block to run the example
>>> =E2=80=9Creplay_samples_from_file=E2=80=9D and it is working fine if I =
transmit just on one
>>> channel. Now I was modifying the code by connecting the replay block to
>>> both channels:
>>>
>>>
>>> replay_graph->connect(replay_ctrl->get_block_id(),replay_chan,tx_blocki=
d,tx_chan,replay_spp);
>>>
>>>
>>> replay_graph->connect(replay_ctrl->get_block_id(),replay_chan1,tx_block=
id1,tx_chan,replay_spp);
>>>
>>>
>>>
>>> and writing the same waveform into another region of the DRAM-buffer:
>>>
>>> replay_ctrl->config_record(0,words_to_replay*replay_word_size,
>>> replay_chan);
>>>
>>> replay_ctrl->config_record(20000,words_to_replay*replay_word_size,
>>> replay_chan1);
>>>
>>> and
>>>
>>> replay_ctrl->config_play(0,words_to_replay*replay_word_size,
>>> replay_chan);
>>>
>>> replay_ctrl->config_play(20000,words_to_replay*replay_word_size,
>>> replay_chan1);
>>>
>>>
>>>
>>> where
>>>
>>> words_to_replay*replay_word_size=3D16000
>>>
>>> replay_chan=3D0
>>>
>>> replay_chan1=3D1
>>>
>>> tx_blockid=3D0/Radio_0
>>>
>>> tx_blockid=3D0/Radio_1
>>>
>>>
>>>
>>> then I stream my waveforms to the replay block as defined in the exampl=
e
>>> and I start to replay the data:
>>>
>>> replay_ctrl->issue_stream_cmd(stream_cmd, replay_chan);
>>>
>>> replay_ctrl->issue_stream_cmd(stream_cmd, replay_chan1);
>>>
>>>
>>>
>>> It works but with plenty of Underflows!!
>>>
>>>
>>>
>>> So what does it mean when it says in the manual:
>>>
>>> =E2=80=9CNote that the record and playback buffers do not need to the s=
ame,
>>> allowing a single Replay block to both record and playback to different
>>> regions of memory* simultaneously*.=E2=80=9D
>>>
>>> (https://kb.ettus.com/Using_the_RFNoC_Replay_Block)?
>>>
>>>
>>>
>>> Because in the manual it says also:
>>>
>>> =E2=80=9CThe replay block has the following features: One input and *on=
e*
>>> output=E2=80=9D
>>>
>>> (
>>> https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1replay__block__ctrl=
.html
>>> )
>>>
>>>
>>>
>>> So if the replay block has just one output why does it have two channel=
s
>>> connected to it (replay_chan=3D 0 and 1)?
>>>
>>>
>>>
>>> If one replay block can just stream to one channel at the same time, ca=
n
>>> I implement easily a second replay block in the FPGA to stream on the t=
wo
>>> channels of my USRP two different waveforms simultaneously?
>>>
>>>
>>>
>>> Thank you,
>>>
>>> Thomas
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>>
>>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000002c411b059970bd1a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Just to pile on yet another fpga option: Nick Foster and =
others here have experimented with custom rfnoc blocks that have two connec=
tions to the rfnoc crossbar rather than just one... Hypothetically, a custo=
m replay block with a split stream and two crossbar connections (one for ea=
ch output) could support the full rate to two different transmitters, rathe=
r than needing to split the crossbar bandwidth across all output ports.<div=
 dir=3D"auto"><br></div><div dir=3D"auto">Of course, it does require some s=
erious fpga and software surgery to support this custom mode, so I&#39;d de=
finitely recommend going with Nate Temple&#39;s userspace DPDK suggestion.<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto">However, I&#39;ll also m=
ention something fun... The new iteration of rfnoc, available on the &quot;=
master-next&quot; branch of uhd and uhd-fpga (essentially UHD 4.0), has an =
FPGA architecture that can provide the full crossbar bandwidth *per port* w=
hich means this &quot;hacked&quot; paradigm is supported in the next versio=
n of rfnoc without too much heartburn (theoretically, at least)</div><div d=
ir=3D"auto"><br></div><div dir=3D"auto">EJ</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 11, 2019, 10:08=
 AM Nate Temple via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-f=
amily:arial,helvetica,sans-serif">Hi Thomas,<br><br>One option instead of u=
sing the Replay block could be to stream 2x 200e6 from your host. <br><br>O=
n the X310, this requires using a SRAM image and DPDK. DPDK support was add=
ed with UHD 3.14.1.0 for the X310, I&#39;d suggest to use 3.14.1.1 at this =
time though.<br><br>Some links on DPDK:<br><br><a href=3D"https://www.dpdk.=
org/" target=3D"_blank" rel=3D"noreferrer">https://www.dpdk.org/</a><br><a =
href=3D"http://files.ettus.com/manual/page_dpdk.html" target=3D"_blank" rel=
=3D"noreferrer">http://files.ettus.com/manual/page_dpdk.html</a><br><br>I&#=
39;ve been able to run 2x2 @ 200e6 with the X310 with DPDK using a 4 GHz CP=
U.<br><br>./benchmark_rate --rx_rate 200e6 --rx_channels 0,1 --tx_rate 200e=
6 --tx_channels 0,1 --args &quot;addr=3D192.168.10.2,second_addr=3D192.168.=
20.2,use_dpdk=3D1,num_recv_frames=3D512,enable_tx_dual_eth=3D1,skip_ddc=3D1=
,skip_duc=3D1&quot;<br><br>num_recv_frames=3D512 can help if you&#39;re see=
ing overflows.<br><br>enable_tx_dual_eth=3D1 is required for 2x TX @ 200e6<=
br><br>skip_ddc=3D1,skip_duc=3D1 can help as well since you&#39;d be sendin=
g at full rate.<br><br><br><br>Regards,<br>Nate Temple</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 11,=
 2019 at 7:03 AM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.et=
tus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div>I do not think it is possible using the stock =
FPGA image.=C2=A0 However, I can think of a couple of possibilities:</div><=
div><ul><li>On the N310, Ettus includes 4 FIFO blocks (rather than the DmaF=
IFO which used the off-FPGA RAM for memory), to provide capability for 4x12=
5 MS/s streaming. Perhaps if you built an X310 FPGA image with 2 such FIFO =
blocks, you could use these rather than the DmaFIFO and achieve the desired=
 streaming.=C2=A0 Note that this requires a Vivado license to build your ow=
n FPGA image, but does not require FPGA experience because you would be bui=
lding an image with &quot;stock&quot; blocks.=C2=A0 One caution though is t=
hat streaming at this very high rate still requires a high performance host=
 and so it is still possible that you would have underruns if your host cou=
ld not keep up.=C2=A0 If you go this route, I believe you will likely need =
to use the &quot;DPDK&quot; capability which is a bit of a pain to configur=
e and get it working properly.</li><li>Another possibility is to create a c=
ustom RFNoC block that is similar to the replay block but that uses FPGA me=
mory to store a fixed duration waveform and then plays it out cyclically li=
ke the replay block. The Ettus &#39;window&#39; RFNoC block provides a good=
 example of how to store coefficients and play them out repeatedly.=C2=A0 B=
ut, making the needed modifications is not a trivial task except for someon=
e who is pretty good at FPGA programming.</li></ul><div>Given that you were=
 trying the replay block, I&#39;m guessing that your Tx waveforms are of fi=
xed duration.=C2=A0 What is the duration (in number of samples) that you re=
quire?</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Wed, Dec 11, 2019 at 5:05 AM Thomas Harder &lt=
;<a href=3D"mailto:Thomas.Harder@oca.eu" target=3D"_blank" rel=3D"noreferre=
r">Thomas.Harder@oca.eu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div lang=3D"EN-US"><div><p class=3D"MsoNormal">Than=
k you Rob for this comment.</p><p class=3D"MsoNormal">But I am not sure if =
I understand you correctly. Do you want to say, that it is <b>IMPOSSIBLE</b=
> to stream TX two different waveforms synchronized =C2=A0on the 2 channels=
 of the x310 with the full bandwidth of 200MS/s on each channel?</p><p clas=
s=3D"MsoNormal">That is what I am trying the last 6 months full time, start=
ing with Labview under windows and then UHD under Linux with a Dell Precisi=
on 5820 desktop (16GB RAM, Intel Xeon W-2125 CPU@ 4.GHz x8) with MXI connec=
tion, dual 10Gbit connection(Intel X520-DA2), the replay block recently: al=
ways the same result: continuous underruns.</p><p class=3D"MsoNormal">If yo=
u can confirm that this is not possible without an important FPGA change (b=
ecause I have no experience in this field and I have not the time to invest=
 into it), I must search for another solution to create two different synch=
ronized RF waveforms with 160MHz bandwidth (optical, electronical,=E2=80=A6=
) because this will be just a part of my experimental setup but it is cruci=
al to go on .</p><p class=3D"MsoNormal">I am thankful for any advise,</p><p=
 class=3D"MsoNormal">Thomas</p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u><=
/p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><div style=3D"border-colo=
r:rgb(225,225,225) currentcolor currentcolor;border-style:solid none none;b=
order-width:1pt medium medium;padding:3pt 0in 0in"><p class=3D"MsoNormal" s=
tyle=3D"border:medium none;padding:0in"><b>From: </b><a href=3D"mailto:rkos=
sler@nd.edu" target=3D"_blank" rel=3D"noreferrer">Rob Kossler</a><br><b>Sen=
t: </b>Tuesday, December 10, 2019 5:01 AM<br><b>To: </b><a href=3D"mailto:T=
homas.Harder@oca.eu" target=3D"_blank" rel=3D"noreferrer">Thomas Harder</a>=
<br><b>Cc: </b><a href=3D"mailto:sam.reiter@ettus.com" target=3D"_blank" re=
l=3D"noreferrer">Sam Reiter</a>; <a href=3D"mailto:usrp-users@lists.ettus.c=
om" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>=
<b>Subject: </b>Re: [USRP-users] transmitting on two channels with replay b=
lock</p></div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><div><p class=
=3D"MsoNormal">Apart from solving the underrun issue, there is also an issu=
e with synchronization.=C2=A0 The replay block doesn&#39;t presently suppor=
t timed commands.</p><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></=
div><div><p class=3D"MsoNormal">And, as a side note, the issue with streami=
ng from the host is not just the host.=C2=A0 The DMA FIFO has a maximum ban=
dwidth of something like 600 MS/s (combination of all inputs and outputs) t=
hat precludes streaming 400 MS/s in and out of the block simultaneously.=C2=
=A0 So, even if the host could keep up, the FIFO could not.</p></div><div><=
p class=3D"MsoNormal">Rob</p></div></div><p class=3D"MsoNormal"><u></u>=C2=
=A0<u></u></p><div><div><p class=3D"MsoNormal">On Mon, Dec 9, 2019 at 4:34 =
AM Thomas Harder via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettu=
s.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&=
gt; wrote:</p></div><blockquote style=3D"border-color:currentcolor currentc=
olor currentcolor rgb(204,204,204);border-style:none none none solid;border=
-width:medium medium medium 1pt;padding:0in 0in 0in 6pt;margin-left:4.8pt;m=
argin-right:0in"><div><div><p class=3D"MsoNormal">Hi Sam,</p><p class=3D"Ms=
oNormal">Thank you for your reply.</p><p class=3D"MsoNormal">This morning I=
 set the MCR to 184.32 and I am still having continuous underruns using als=
o </p><p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:Conso=
las;color:rgb(36,41,46)">replay_ctrl-&gt;</span><span style=3D"font-size:9p=
t;font-family:Consolas;color:rgb(0,92,197)">get_record_fullness</span></p><=
p class=3D"MsoNormal">for both channels.</p><p class=3D"MsoNormal">=C2=A0</=
p><p class=3D"MsoNormal">But since I need the full bandwidth of 160MHz I wo=
uld like implement a second replay block in my fpga image.</p><p class=3D"M=
soNormal">=C2=A0</p><p class=3D"MsoNormal">Could anyone help me with this? =
</p><p class=3D"MsoNormal">I am really new in fpga programming and for the =
image with one replay block I was just following the instructions in <a hre=
f=3D"https://kb.ettus.com/Using_the_RFNoC_Replay_Block" target=3D"_blank" r=
el=3D"noreferrer">https://kb.ettus.com/Using_the_RFNoC_Replay_Block</a>.</p=
><p class=3D"MsoNormal">Thank you,</p><p class=3D"MsoNormal">Thomas</p><p c=
lass=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">=C2=A0</p><div style=3D=
"border-color:rgb(225,225,225) currentcolor currentcolor;border-style:solid=
 none none;border-width:1pt medium medium;padding:3pt 0in 0in"><p class=3D"=
MsoNormal"><b>From: </b><a href=3D"mailto:sam.reiter@ettus.com" target=3D"_=
blank" rel=3D"noreferrer">Sam Reiter</a><br><b>Sent: </b>Friday, December 6=
, 2019 10:23 PM<br><b>To: </b><a href=3D"mailto:Thomas.Harder@oca.eu" targe=
t=3D"_blank" rel=3D"noreferrer">Thomas Harder</a><br><b>Cc: </b><a href=3D"=
mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usr=
p-users@lists.ettus.com</a><br><b>Subject: </b>Re: [USRP-users] transmittin=
g on two channels with replay block</p></div><p class=3D"MsoNormal">=C2=A0<=
/p><div><div><p class=3D"MsoNormal">Thomas,</p></div><div><p class=3D"MsoNo=
rmal">=C2=A0</p></div><div><p class=3D"MsoNormal">Upon further investigatio=
n, we may be running up to a practical limit of a single CHDR interface rat=
her than an issue with your code. A single replay block servicing two radio=
s will have a max (theoretical) rate of 187.5 MSPS on either channel. This =
means that you might be able to squeeze full rate out on 2 channels with an=
 MCR of <span>184.32, but that&#39;s cutting it pretty close. Sounds like 2=
 channels at 200 MSPS with a replay setup will require 2 replay blocks serv=
ing each channel independently. If you end up trying either of the above ou=
t, I&#39;d be curious to know what results you observe.</span></p></div><di=
v><p class=3D"MsoNormal">=C2=A0</p></div><div><div><div><div><div><div><p c=
lass=3D"MsoNormal">Sam Reiter </p><div><p class=3D"MsoNormal">Ettus Researc=
h</p></div></div></div></div></div></div><p class=3D"MsoNormal">=C2=A0</p><=
/div></div><p class=3D"MsoNormal">=C2=A0</p><div><div><p class=3D"MsoNormal=
">On Fri, Dec 6, 2019 at 2:38 PM Sam Reiter &lt;<a href=3D"mailto:sam.reite=
r@ettus.com" target=3D"_blank" rel=3D"noreferrer">sam.reiter@ettus.com</a>&=
gt; wrote:</p></div><blockquote style=3D"border-color:currentcolor currentc=
olor currentcolor rgb(204,204,204);border-style:none none none solid;border=
-width:medium medium medium 1pt;padding:0in 0in 0in 6pt;margin:5pt 0in 5pt =
4.8pt"><div><p class=3D"MsoNormal">Thomas,</p><div><p class=3D"MsoNormal">=
=C2=A0</p></div><div><p class=3D"MsoNormal">I&#39;d need to set it up on my=
 end, but I believe you can TX two distinct waveforms from a single replay =
block instance. You&#39;d need to make sure that your adding your data to t=
he buffer in separate locations and at an address that is a multiple of 8 b=
ytes (which it looks like you&#39;re doing from the above snippets). Are yo=
u seeing continuous underruns, or just a handful at the beginning on the ru=
n? Does your duplicated code also use:</p></div><div><p class=3D"MsoNormal"=
>=C2=A0</p></div><div><p class=3D"MsoNormal"><span style=3D"font-size:9pt;f=
ont-family:Consolas;color:rgb(36,41,46)">replay_ctrl-&gt;</span><span style=
=3D"font-size:9pt;font-family:Consolas;color:rgb(0,92,197)">get_record_full=
ness</span></p></div><div><p class=3D"MsoNormal">=C2=A0</p></div><div><p cl=
ass=3D"MsoNormal">on both channels before kicking off the stream start?</p>=
</div><div><p class=3D"MsoNormal">=C2=A0</p></div><div><div><div><div><div>=
<div><p class=3D"MsoNormal">Sam Reiter=C2=A0</p><div><p class=3D"MsoNormal"=
>Ettus Research</p></div></div></div></div></div></div></div></div><p class=
=3D"MsoNormal">=C2=A0</p><div><div><p class=3D"MsoNormal">On Wed, Dec 4, 20=
19 at 3:48 AM Thomas Harder via USRP-users &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ett=
us.com</a>&gt; wrote:</p></div><blockquote style=3D"border-color:currentcol=
or currentcolor currentcolor rgb(204,204,204);border-style:none none none s=
olid;border-width:medium medium medium 1pt;padding:0in 0in 0in 6pt;margin:5=
pt 0in 5pt 4.8pt"><div><div><p class=3D"MsoNormal">Hello everyone,</p><p cl=
ass=3D"MsoNormal">Is it possible to transmit two different waveforms on the=
 two channels of the USRP X310 with the two UBX-160 daughterboards?</p><p c=
lass=3D"MsoNormal">I want to transmit two different waveforms simultaneous =
(synchronized ) on the two channels of the USRP with the full sample rate o=
f 200 MS/s. I tried already to do it with a dual 10Gbit-ethernet connection=
 and I seemed to be limited by my computer. Now I am trying to do it with t=
he replay block.</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal"=
>I built the FPGA image with one Replay block as described in <a href=3D"ht=
tps://kb.ettus.com/Using_the_RFNoC_Replay_Block" target=3D"_blank" rel=3D"n=
oreferrer">https://kb.ettus.com/Using_the_RFNoC_Replay_Block</a> to run the=
 example =E2=80=9Creplay_samples_from_file=E2=80=9D and it is working fine =
if I transmit just on one channel. Now I was modifying the code by connecti=
ng the replay block to both channels:</p><p class=3D"MsoNormal">replay_grap=
h-&gt;connect(replay_ctrl-&gt;get_block_id(),replay_chan,tx_blockid,tx_chan=
,replay_spp);</p><p class=3D"MsoNormal">replay_graph-&gt;connect(replay_ctr=
l-&gt;get_block_id(),replay_chan1,tx_blockid1,tx_chan,replay_spp);</p><p cl=
ass=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">and writing the same wav=
eform into another region of the DRAM-buffer:</p><p class=3D"MsoNormal">rep=
lay_ctrl-&gt;config_record(0,words_to_replay*replay_word_size, replay_chan)=
;</p><p class=3D"MsoNormal">replay_ctrl-&gt;config_record(20000,words_to_re=
play*replay_word_size, replay_chan1);</p><p class=3D"MsoNormal">and</p><p c=
lass=3D"MsoNormal">replay_ctrl-&gt;config_play(0,words_to_replay*replay_wor=
d_size, replay_chan);</p><p class=3D"MsoNormal">replay_ctrl-&gt;config_play=
(20000,words_to_replay*replay_word_size, replay_chan1);</p><p class=3D"MsoN=
ormal">=C2=A0</p><p class=3D"MsoNormal">where </p><p class=3D"MsoNormal">wo=
rds_to_replay*replay_word_size=3D16000</p><p class=3D"MsoNormal">replay_cha=
n=3D0</p><p class=3D"MsoNormal">replay_chan1=3D1</p><p class=3D"MsoNormal">=
tx_blockid=3D0/Radio_0</p><p class=3D"MsoNormal">tx_blockid=3D0/Radio_1</p>=
<p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">then I stream my wa=
veforms to the replay block as defined in the example and I start to replay=
 the data:</p><p class=3D"MsoNormal">replay_ctrl-&gt;issue_stream_cmd(strea=
m_cmd, replay_chan);</p><p class=3D"MsoNormal">replay_ctrl-&gt;issue_stream=
_cmd(stream_cmd, replay_chan1);</p><p class=3D"MsoNormal">=C2=A0</p><p clas=
s=3D"MsoNormal">It works but with plenty of Underflows!!</p><p class=3D"Mso=
Normal">=C2=A0</p><p class=3D"MsoNormal">So what does it mean when it says =
in the manual:</p><p class=3D"MsoNormal">=E2=80=9CNote that the record and =
playback buffers do not need to the same, allowing a single Replay block to=
 both record and playback to different regions of memory<b> simultaneously<=
/b>.=E2=80=9D</p><p class=3D"MsoNormal">(<a href=3D"https://kb.ettus.com/Us=
ing_the_RFNoC_Replay_Block" target=3D"_blank" rel=3D"noreferrer">https://kb=
.ettus.com/Using_the_RFNoC_Replay_Block</a>)?</p><p class=3D"MsoNormal">=C2=
=A0</p><p class=3D"MsoNormal">Because in the manual it says also:</p><p cla=
ss=3D"MsoNormal">=E2=80=9CThe replay block has the following features: One =
input and <b>one</b> output=E2=80=9D</p><p class=3D"MsoNormal">(<a href=3D"=
https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1replay__block__ctrl.htm=
l" target=3D"_blank" rel=3D"noreferrer">https://files.ettus.com/manual/clas=
suhd_1_1rfnoc_1_1replay__block__ctrl.html</a>)</p><p class=3D"MsoNormal">=
=C2=A0</p><p class=3D"MsoNormal">So if the replay block has just one output=
 why does it have two channels connected to it (replay_chan=3D 0 and 1)?</p=
><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">If one replay bloc=
k can just stream to one channel at the same time, can I implement easily a=
 second replay block in the FPGA to stream on the two channels of my USRP t=
wo different waveforms simultaneously?</p><p class=3D"MsoNormal">=C2=A0</p>=
<p class=3D"MsoNormal">Thank you,</p><p class=3D"MsoNormal">Thomas</p><p cl=
ass=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"Ms=
oNormal">=C2=A0</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">=
=C2=A0</p></div></div></blockquote></div></blockquote></div><p class=3D"Mso=
Normal" style=3D"margin-left:9.6pt">_______________________________________=
________<br>USRP-users mailing list<br><a href=3D"mailto:USRP-users@lists.e=
ttus.com" target=3D"_blank" rel=3D"noreferrer">USRP-users@lists.ettus.com</=
a><br><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.e=
ttus.com" target=3D"_blank" rel=3D"noreferrer">http://lists.ettus.com/mailm=
an/listinfo/usrp-users_lists.ettus.com</a></p><p class=3D"MsoNormal">=C2=A0=
</p></div></div></blockquote></div><p class=3D"MsoNormal" style=3D"margin-l=
eft:4.8pt">_______________________________________________<br>USRP-users ma=
iling list<br><a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blan=
k" rel=3D"noreferrer">USRP-users@lists.ettus.com</a><br><a href=3D"http://l=
ists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_blan=
k" rel=3D"noreferrer">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><=
/div></blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000002c411b059970bd1a--


--===============6373771405434803955==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6373771405434803955==--

