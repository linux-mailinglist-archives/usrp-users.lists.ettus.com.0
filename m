Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D0411AEC8
	for <lists+usrp-users@lfdr.de>; Wed, 11 Dec 2019 16:08:13 +0100 (CET)
Received: from [::1] (port=43602 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1if3b2-0002na-1V; Wed, 11 Dec 2019 10:08:12 -0500
Received: from mail-ot1-f43.google.com ([209.85.210.43]:35674)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1if3ay-0002C8-1K
 for usrp-users@lists.ettus.com; Wed, 11 Dec 2019 10:08:08 -0500
Received: by mail-ot1-f43.google.com with SMTP id o9so136935ote.2
 for <usrp-users@lists.ettus.com>; Wed, 11 Dec 2019 07:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=H92jevpHvEWgDHpa9hMxV7l3csqL0HsfRLRfw2hPyvk=;
 b=uFIkIVVUfPA3Qg8GhuvYkB0rycEPfIKpKU/z/iC7EiQZgyXcG0Y/G/kjPwhS+cMUx1
 GQNd1v/tpMkdAATqUdy2qk2mpLFLkRcHo+HekGo4MPtPBFlgKc6LDE62xNtdwskzmIPg
 RJH0lx7T/4I2R6ZAtgfzgkBIUlkMctuJmpJtuKgDKzI/kEMeDhCpDcPUwmH3jISERs2n
 Sa5kNbnQiPrQgPvmIXWcy1dwf0u/vUPoQa5E6hTByu6mOBC7zoxOZqvf4h9ccTBMqazk
 SxNygykh6Mq+C1PyoiefjgCWDrfN3zQJGMK1yV2Jn8pd9FPXvLxuR7F8l91UpT7hT10r
 i+3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=H92jevpHvEWgDHpa9hMxV7l3csqL0HsfRLRfw2hPyvk=;
 b=G+imkH0RpJEYaaQOAdOTE2m48hR50t5KZszymTQ9Td0tD7VpJlcMY7l2bDga+kTr3t
 4Pelkutigt0vIbncYBN+S/PawppmkxPRXfVhWN/JdjxyS5FJiWtSSqUfgA6DhFdmDbzw
 FJxxjKvAvgawpuhoeSUJM37320j6krIDLj3REfhdkVjpxlc0WLyoF0Ygjxtx+zorEtXe
 K9IEZyB7HlyyxFXcNF592zDoviT/wdHwoVR+7f6ps2s/kBBMVZ4mzI+jLt0WdQEj+WoU
 9Z+qUBpAACV7+erYeOPJTveeiz/qUo2eK1zgFxGm4vWAr5nGon2Qs6XK66WO2CcLR3/y
 0rlg==
X-Gm-Message-State: APjAAAW+KWIxRQWhnrFMmczXlm7+arn+WGotbi7NZVP9V1xX/dd65rfA
 V+SFquO9ElBH8u3MI2/GYEOF2zmbBS6B13G34kPiUKB/gt6CZw==
X-Google-Smtp-Source: APXvYqwNa56bz+1oNfEsCynunuoji2KSg02XZzj86CU4MEwlA/gSWM6MDDgsf6tWmJoPPCm5J10F5NYlxJDXPkq0Fw0=
X-Received: by 2002:a9d:366:: with SMTP id 93mr2662724otv.183.1576076847099;
 Wed, 11 Dec 2019 07:07:27 -0800 (PST)
MIME-Version: 1.0
References: <20191204094750.31BCC1400BB@zmtaauth01.partage.renater.fr>
 <CANf970bHPRczWQDS=OVMWmJwhJVzycCCw4Ey5JeoVqtg9WVVfQ@mail.gmail.com>
 <CANf970a_3AMjAi=FCxVZyha=u-f9At9nQANB_RZJvSw5oL_5tg@mail.gmail.com>
 <20191209093339.20778A00E4@zmtaauth02.partage.renater.fr>
 <CAB__hTTijCzqgJL9ab+Dh+8g8ZLRh2o2A3yuRS8fG23AhF7tvA@mail.gmail.com>
 <20191211100521.A8A031400BB@zmtaauth01.partage.renater.fr>
 <CAB__hTRbL+ngUxNJSSdk6MVFUFeNd-DZkP1uMFTnEtUagRTGjg@mail.gmail.com>
In-Reply-To: <CAB__hTRbL+ngUxNJSSdk6MVFUFeNd-DZkP1uMFTnEtUagRTGjg@mail.gmail.com>
Date: Wed, 11 Dec 2019 07:08:20 -0800
Message-ID: <CAL263ixtV7hgkCJHFwWUre0SkUvetKedEYXJkgFjCA_bh8BxiA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7540458868576458559=="
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

--===============7540458868576458559==
Content-Type: multipart/alternative; boundary="0000000000009c482f05996efc44"

--0000000000009c482f05996efc44
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Thomas,

One option instead of using the Replay block could be to stream 2x 200e6
from your host.

On the X310, this requires using a SRAM image and DPDK. DPDK support was
added with UHD 3.14.1.0 for the X310, I'd suggest to use 3.14.1.1 at this
time though.

Some links on DPDK:

https://www.dpdk.org/
http://files.ettus.com/manual/page_dpdk.html

I've been able to run 2x2 @ 200e6 with the X310 with DPDK using a 4 GHz CPU=
.

./benchmark_rate --rx_rate 200e6 --rx_channels 0,1 --tx_rate 200e6
--tx_channels 0,1 --args
"addr=3D192.168.10.2,second_addr=3D192.168.20.2,use_dpdk=3D1,num_recv_frame=
s=3D512,enable_tx_dual_eth=3D1,skip_ddc=3D1,skip_duc=3D1"

num_recv_frames=3D512 can help if you're seeing overflows.

enable_tx_dual_eth=3D1 is required for 2x TX @ 200e6

skip_ddc=3D1,skip_duc=3D1 can help as well since you'd be sending at full r=
ate.



Regards,
Nate Temple

On Wed, Dec 11, 2019 at 7:03 AM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I do not think it is possible using the stock FPGA image.  However, I can
> think of a couple of possibilities:
>
>    - On the N310, Ettus includes 4 FIFO blocks (rather than the DmaFIFO
>    which used the off-FPGA RAM for memory), to provide capability for 4x1=
25
>    MS/s streaming. Perhaps if you built an X310 FPGA image with 2 such FI=
FO
>    blocks, you could use these rather than the DmaFIFO and achieve the de=
sired
>    streaming.  Note that this requires a Vivado license to build your own=
 FPGA
>    image, but does not require FPGA experience because you would be build=
ing
>    an image with "stock" blocks.  One caution though is that streaming at=
 this
>    very high rate still requires a high performance host and so it is sti=
ll
>    possible that you would have underruns if your host could not keep up.=
  If
>    you go this route, I believe you will likely need to use the "DPDK"
>    capability which is a bit of a pain to configure and get it working
>    properly.
>    - Another possibility is to create a custom RFNoC block that is
>    similar to the replay block but that uses FPGA memory to store a fixed
>    duration waveform and then plays it out cyclically like the replay blo=
ck.
>    The Ettus 'window' RFNoC block provides a good example of how to store
>    coefficients and play them out repeatedly.  But, making the needed
>    modifications is not a trivial task except for someone who is pretty g=
ood
>    at FPGA programming.
>
> Given that you were trying the replay block, I'm guessing that your Tx
> waveforms are of fixed duration.  What is the duration (in number of
> samples) that you require?
> Rob
>
> On Wed, Dec 11, 2019 at 5:05 AM Thomas Harder <Thomas.Harder@oca.eu>
> wrote:
>
>> Thank you Rob for this comment.
>>
>> But I am not sure if I understand you correctly. Do you want to say, tha=
t
>> it is *IMPOSSIBLE* to stream TX two different waveforms synchronized  on
>> the 2 channels of the x310 with the full bandwidth of 200MS/s on each
>> channel?
>>
>> That is what I am trying the last 6 months full time, starting with
>> Labview under windows and then UHD under Linux with a Dell Precision 582=
0
>> desktop (16GB RAM, Intel Xeon W-2125 CPU@ 4.GHz x8) with MXI connection,
>> dual 10Gbit connection(Intel X520-DA2), the replay block recently: alway=
s
>> the same result: continuous underruns.
>>
>> If you can confirm that this is not possible without an important FPGA
>> change (because I have no experience in this field and I have not the ti=
me
>> to invest into it), I must search for another solution to create two
>> different synchronized RF waveforms with 160MHz bandwidth (optical,
>> electronical,=E2=80=A6) because this will be just a part of my experimen=
tal setup
>> but it is crucial to go on .
>>
>> I am thankful for any advise,
>>
>> Thomas
>>
>>
>>
>>
>>
>> *From: *Rob Kossler <rkossler@nd.edu>
>> *Sent: *Tuesday, December 10, 2019 5:01 AM
>> *To: *Thomas Harder <Thomas.Harder@oca.eu>
>> *Cc: *Sam Reiter <sam.reiter@ettus.com>; usrp-users@lists.ettus.com
>> *Subject: *Re: [USRP-users] transmitting on two channels with replay
>> block
>>
>>
>>
>> Apart from solving the underrun issue, there is also an issue with
>> synchronization.  The replay block doesn't presently support timed comma=
nds.
>>
>>
>>
>> And, as a side note, the issue with streaming from the host is not just
>> the host.  The DMA FIFO has a maximum bandwidth of something like 600 MS=
/s
>> (combination of all inputs and outputs) that precludes streaming 400 MS/=
s
>> in and out of the block simultaneously.  So, even if the host could keep
>> up, the FIFO could not.
>>
>> Rob
>>
>>
>>
>> On Mon, Dec 9, 2019 at 4:34 AM Thomas Harder via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>> Hi Sam,
>>
>> Thank you for your reply.
>>
>> This morning I set the MCR to 184.32 and I am still having continuous
>> underruns using also
>>
>> replay_ctrl->get_record_fullness
>>
>> for both channels.
>>
>>
>>
>> But since I need the full bandwidth of 160MHz I would like implement a
>> second replay block in my fpga image.
>>
>>
>>
>> Could anyone help me with this?
>>
>> I am really new in fpga programming and for the image with one replay
>> block I was just following the instructions in
>> https://kb.ettus.com/Using_the_RFNoC_Replay_Block.
>>
>> Thank you,
>>
>> Thomas
>>
>>
>>
>>
>>
>> *From: *Sam Reiter <sam.reiter@ettus.com>
>> *Sent: *Friday, December 6, 2019 10:23 PM
>> *To: *Thomas Harder <Thomas.Harder@oca.eu>
>> *Cc: *usrp-users@lists.ettus.com
>> *Subject: *Re: [USRP-users] transmitting on two channels with replay
>> block
>>
>>
>>
>> Thomas,
>>
>>
>>
>> Upon further investigation, we may be running up to a practical limit of
>> a single CHDR interface rather than an issue with your code. A single
>> replay block servicing two radios will have a max (theoretical) rate of
>> 187.5 MSPS on either channel. This means that you might be able to squee=
ze
>> full rate out on 2 channels with an MCR of 184.32, but that's cutting it
>> pretty close. Sounds like 2 channels at 200 MSPS with a replay setup wil=
l
>> require 2 replay blocks serving each channel independently. If you end u=
p
>> trying either of the above out, I'd be curious to know what results you
>> observe.
>>
>>
>>
>> Sam Reiter
>>
>> Ettus Research
>>
>>
>>
>>
>>
>> On Fri, Dec 6, 2019 at 2:38 PM Sam Reiter <sam.reiter@ettus.com> wrote:
>>
>> Thomas,
>>
>>
>>
>> I'd need to set it up on my end, but I believe you can TX two distinct
>> waveforms from a single replay block instance. You'd need to make sure t=
hat
>> your adding your data to the buffer in separate locations and at an addr=
ess
>> that is a multiple of 8 bytes (which it looks like you're doing from the
>> above snippets). Are you seeing continuous underruns, or just a handful =
at
>> the beginning on the run? Does your duplicated code also use:
>>
>>
>>
>> replay_ctrl->get_record_fullness
>>
>>
>>
>> on both channels before kicking off the stream start?
>>
>>
>>
>> Sam Reiter
>>
>> Ettus Research
>>
>>
>>
>> On Wed, Dec 4, 2019 at 3:48 AM Thomas Harder via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>> Hello everyone,
>>
>> Is it possible to transmit two different waveforms on the two channels o=
f
>> the USRP X310 with the two UBX-160 daughterboards?
>>
>> I want to transmit two different waveforms simultaneous (synchronized )
>> on the two channels of the USRP with the full sample rate of 200 MS/s. I
>> tried already to do it with a dual 10Gbit-ethernet connection and I seem=
ed
>> to be limited by my computer. Now I am trying to do it with the replay
>> block.
>>
>>
>>
>> I built the FPGA image with one Replay block as described in
>> https://kb.ettus.com/Using_the_RFNoC_Replay_Block to run the example
>> =E2=80=9Creplay_samples_from_file=E2=80=9D and it is working fine if I t=
ransmit just on one
>> channel. Now I was modifying the code by connecting the replay block to
>> both channels:
>>
>>
>> replay_graph->connect(replay_ctrl->get_block_id(),replay_chan,tx_blockid=
,tx_chan,replay_spp);
>>
>>
>> replay_graph->connect(replay_ctrl->get_block_id(),replay_chan1,tx_blocki=
d1,tx_chan,replay_spp);
>>
>>
>>
>> and writing the same waveform into another region of the DRAM-buffer:
>>
>> replay_ctrl->config_record(0,words_to_replay*replay_word_size,
>> replay_chan);
>>
>> replay_ctrl->config_record(20000,words_to_replay*replay_word_size,
>> replay_chan1);
>>
>> and
>>
>> replay_ctrl->config_play(0,words_to_replay*replay_word_size, replay_chan=
);
>>
>> replay_ctrl->config_play(20000,words_to_replay*replay_word_size,
>> replay_chan1);
>>
>>
>>
>> where
>>
>> words_to_replay*replay_word_size=3D16000
>>
>> replay_chan=3D0
>>
>> replay_chan1=3D1
>>
>> tx_blockid=3D0/Radio_0
>>
>> tx_blockid=3D0/Radio_1
>>
>>
>>
>> then I stream my waveforms to the replay block as defined in the example
>> and I start to replay the data:
>>
>> replay_ctrl->issue_stream_cmd(stream_cmd, replay_chan);
>>
>> replay_ctrl->issue_stream_cmd(stream_cmd, replay_chan1);
>>
>>
>>
>> It works but with plenty of Underflows!!
>>
>>
>>
>> So what does it mean when it says in the manual:
>>
>> =E2=80=9CNote that the record and playback buffers do not need to the sa=
me,
>> allowing a single Replay block to both record and playback to different
>> regions of memory* simultaneously*.=E2=80=9D
>>
>> (https://kb.ettus.com/Using_the_RFNoC_Replay_Block)?
>>
>>
>>
>> Because in the manual it says also:
>>
>> =E2=80=9CThe replay block has the following features: One input and *one=
* output=E2=80=9D
>>
>> (
>> https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1replay__block__ctrl.=
html
>> )
>>
>>
>>
>> So if the replay block has just one output why does it have two channels
>> connected to it (replay_chan=3D 0 and 1)?
>>
>>
>>
>> If one replay block can just stream to one channel at the same time, can
>> I implement easily a second replay block in the FPGA to stream on the tw=
o
>> channels of my USRP two different waveforms simultaneously?
>>
>>
>>
>> Thank you,
>>
>> Thomas
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000009c482f05996efc44
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Thomas,<br><br>One option instead of using the Repla=
y block could be to stream 2x 200e6 from your host. <br><br>On the X310, th=
is requires using a SRAM image and DPDK. DPDK support was added with UHD 3.=
14.1.0 for the X310, I&#39;d suggest to use 3.14.1.1 at this time though.<b=
r><br>Some links on DPDK:<br><br><a href=3D"https://www.dpdk.org/">https://=
www.dpdk.org/</a><br><a href=3D"http://files.ettus.com/manual/page_dpdk.htm=
l">http://files.ettus.com/manual/page_dpdk.html</a><br><br>I&#39;ve been ab=
le to run 2x2 @ 200e6 with the X310 with DPDK using a 4 GHz CPU.<br><br>./b=
enchmark_rate --rx_rate 200e6 --rx_channels 0,1 --tx_rate 200e6 --tx_channe=
ls 0,1 --args &quot;addr=3D192.168.10.2,second_addr=3D192.168.20.2,use_dpdk=
=3D1,num_recv_frames=3D512,enable_tx_dual_eth=3D1,skip_ddc=3D1,skip_duc=3D1=
&quot;<br><br>num_recv_frames=3D512 can help if you&#39;re seeing overflows=
.<br><br>enable_tx_dual_eth=3D1 is required for 2x TX @ 200e6<br><br>skip_d=
dc=3D1,skip_duc=3D1 can help as well since you&#39;d be sending at full rat=
e.<br><br><br><br>Regards,<br>Nate Temple</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 11, 2019 at 7:03=
 AM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>I do not think it is=
 possible using the stock FPGA image.=C2=A0 However, I can think of a coupl=
e of possibilities:</div><div><ul><li>On the N310, Ettus includes 4 FIFO bl=
ocks (rather than the DmaFIFO which used the off-FPGA RAM for memory), to p=
rovide capability for 4x125 MS/s streaming. Perhaps if you built an X310 FP=
GA image with 2 such FIFO blocks, you could use these rather than the DmaFI=
FO and achieve the desired streaming.=C2=A0 Note that this requires a Vivad=
o license to build your own FPGA image, but does not require FPGA experienc=
e because you would be building an image with &quot;stock&quot; blocks.=C2=
=A0 One caution though is that streaming at this very high rate still requi=
res a high performance host and so it is still possible that you would have=
 underruns if your host could not keep up.=C2=A0 If you go this route, I be=
lieve you will likely need to use the &quot;DPDK&quot; capability which is =
a bit of a pain to configure and get it working properly.</li><li>Another p=
ossibility is to create a custom RFNoC block that is similar to the replay =
block but that uses FPGA memory to store a fixed duration waveform and then=
 plays it out cyclically like the replay block. The Ettus &#39;window&#39; =
RFNoC block provides a good example of how to store coefficients and play t=
hem out repeatedly.=C2=A0 But, making the needed modifications is not a tri=
vial task except for someone who is pretty good at FPGA programming.</li></=
ul><div>Given that you were trying the replay block, I&#39;m guessing that =
your Tx waveforms are of fixed duration.=C2=A0 What is the duration (in num=
ber of samples) that you require?</div><div>Rob</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 11, 2019=
 at 5:05 AM Thomas Harder &lt;<a href=3D"mailto:Thomas.Harder@oca.eu" targe=
t=3D"_blank">Thomas.Harder@oca.eu</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div lang=3D"EN-US"><div><p class=3D"MsoNo=
rmal">Thank you Rob for this comment.</p><p class=3D"MsoNormal">But I am no=
t sure if I understand you correctly. Do you want to say, that it is <b>IMP=
OSSIBLE</b> to stream TX two different waveforms synchronized =C2=A0on the =
2 channels of the x310 with the full bandwidth of 200MS/s on each channel?<=
/p><p class=3D"MsoNormal">That is what I am trying the last 6 months full t=
ime, starting with Labview under windows and then UHD under Linux with a De=
ll Precision 5820 desktop (16GB RAM, Intel Xeon W-2125 CPU@ 4.GHz x8) with =
MXI connection, dual 10Gbit connection(Intel X520-DA2), the replay block re=
cently: always the same result: continuous underruns.</p><p class=3D"MsoNor=
mal">If you can confirm that this is not possible without an important FPGA=
 change (because I have no experience in this field and I have not the time=
 to invest into it), I must search for another solution to create two diffe=
rent synchronized RF waveforms with 160MHz bandwidth (optical, electronical=
,=E2=80=A6) because this will be just a part of my experimental setup but i=
t is crucial to go on .</p><p class=3D"MsoNormal">I am thankful for any adv=
ise,</p><p class=3D"MsoNormal">Thomas</p><p class=3D"MsoNormal"><u></u>=C2=
=A0<u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><div style=3D"=
border-color:rgb(225,225,225) currentcolor currentcolor;border-style:solid =
none none;border-width:1pt medium medium;padding:3pt 0in 0in"><p class=3D"M=
soNormal" style=3D"border:medium none;padding:0in"><b>From: </b><a href=3D"=
mailto:rkossler@nd.edu" target=3D"_blank">Rob Kossler</a><br><b>Sent: </b>T=
uesday, December 10, 2019 5:01 AM<br><b>To: </b><a href=3D"mailto:Thomas.Ha=
rder@oca.eu" target=3D"_blank">Thomas Harder</a><br><b>Cc: </b><a href=3D"m=
ailto:sam.reiter@ettus.com" target=3D"_blank">Sam Reiter</a>; <a href=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.c=
om</a><br><b>Subject: </b>Re: [USRP-users] transmitting on two channels wit=
h replay block</p></div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><div=
><p class=3D"MsoNormal">Apart from solving the underrun issue, there is als=
o an issue with synchronization.=C2=A0 The replay block doesn&#39;t present=
ly support timed commands.</p><div><p class=3D"MsoNormal"><u></u>=C2=A0<u><=
/u></p></div><div><p class=3D"MsoNormal">And, as a side note, the issue wit=
h streaming from the host is not just the host.=C2=A0 The DMA FIFO has a ma=
ximum bandwidth of something like 600 MS/s (combination of all inputs and o=
utputs) that precludes streaming 400 MS/s in and out of the block simultane=
ously.=C2=A0 So, even if the host could keep up, the FIFO could not.</p></d=
iv><div><p class=3D"MsoNormal">Rob</p></div></div><p class=3D"MsoNormal"><u=
></u>=C2=A0<u></u></p><div><div><p class=3D"MsoNormal">On Mon, Dec 9, 2019 =
at 4:34 AM Thomas Harder via USRP-users &lt;<a href=3D"mailto:usrp-users@li=
sts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<=
/p></div><blockquote style=3D"border-color:currentcolor currentcolor curren=
tcolor rgb(204,204,204);border-style:none none none solid;border-width:medi=
um medium medium 1pt;padding:0in 0in 0in 6pt;margin-left:4.8pt;margin-right=
:0in"><div><div><p class=3D"MsoNormal">Hi Sam,</p><p class=3D"MsoNormal">Th=
ank you for your reply.</p><p class=3D"MsoNormal">This morning I set the MC=
R to 184.32 and I am still having continuous underruns using also </p><p cl=
ass=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:Consolas;color:r=
gb(36,41,46)">replay_ctrl-&gt;</span><span style=3D"font-size:9pt;font-fami=
ly:Consolas;color:rgb(0,92,197)">get_record_fullness</span></p><p class=3D"=
MsoNormal">for both channels.</p><p class=3D"MsoNormal">=C2=A0</p><p class=
=3D"MsoNormal">But since I need the full bandwidth of 160MHz I would like i=
mplement a second replay block in my fpga image.</p><p class=3D"MsoNormal">=
=C2=A0</p><p class=3D"MsoNormal">Could anyone help me with this? </p><p cla=
ss=3D"MsoNormal">I am really new in fpga programming and for the image with=
 one replay block I was just following the instructions in <a href=3D"https=
://kb.ettus.com/Using_the_RFNoC_Replay_Block" target=3D"_blank">https://kb.=
ettus.com/Using_the_RFNoC_Replay_Block</a>.</p><p class=3D"MsoNormal">Thank=
 you,</p><p class=3D"MsoNormal">Thomas</p><p class=3D"MsoNormal">=C2=A0</p>=
<p class=3D"MsoNormal">=C2=A0</p><div style=3D"border-color:rgb(225,225,225=
) currentcolor currentcolor;border-style:solid none none;border-width:1pt m=
edium medium;padding:3pt 0in 0in"><p class=3D"MsoNormal"><b>From: </b><a hr=
ef=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">Sam Reiter</a><br><b>S=
ent: </b>Friday, December 6, 2019 10:23 PM<br><b>To: </b><a href=3D"mailto:=
Thomas.Harder@oca.eu" target=3D"_blank">Thomas Harder</a><br><b>Cc: </b><a =
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lis=
ts.ettus.com</a><br><b>Subject: </b>Re: [USRP-users] transmitting on two ch=
annels with replay block</p></div><p class=3D"MsoNormal">=C2=A0</p><div><di=
v><p class=3D"MsoNormal">Thomas,</p></div><div><p class=3D"MsoNormal">=C2=
=A0</p></div><div><p class=3D"MsoNormal">Upon further investigation, we may=
 be running up to a practical limit of a single CHDR interface rather than =
an issue with your code. A single replay block servicing two radios will ha=
ve a max (theoretical) rate of 187.5 MSPS on either channel. This means tha=
t you might be able to squeeze full rate out on 2 channels with an MCR of <=
span>184.32, but that&#39;s cutting it pretty close. Sounds like 2 channels=
 at 200 MSPS with a replay setup will require 2 replay blocks serving each =
channel independently. If you end up trying either of the above out, I&#39;=
d be curious to know what results you observe.</span></p></div><div><p clas=
s=3D"MsoNormal">=C2=A0</p></div><div><div><div><div><div><div><p class=3D"M=
soNormal">Sam Reiter </p><div><p class=3D"MsoNormal">Ettus Research</p></di=
v></div></div></div></div></div><p class=3D"MsoNormal">=C2=A0</p></div></di=
v><p class=3D"MsoNormal">=C2=A0</p><div><div><p class=3D"MsoNormal">On Fri,=
 Dec 6, 2019 at 2:38 PM Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.c=
om" target=3D"_blank">sam.reiter@ettus.com</a>&gt; wrote:</p></div><blockqu=
ote style=3D"border-color:currentcolor currentcolor currentcolor rgb(204,20=
4,204);border-style:none none none solid;border-width:medium medium medium =
1pt;padding:0in 0in 0in 6pt;margin:5pt 0in 5pt 4.8pt"><div><p class=3D"MsoN=
ormal">Thomas,</p><div><p class=3D"MsoNormal">=C2=A0</p></div><div><p class=
=3D"MsoNormal">I&#39;d need to set it up on my end, but I believe you can T=
X two distinct waveforms from a single replay block instance. You&#39;d nee=
d to make sure that your adding your data to the buffer in separate locatio=
ns and at an address that is a multiple of 8 bytes (which it looks like you=
&#39;re doing from the above snippets). Are you seeing continuous underruns=
, or just a handful at the beginning on the run? Does your duplicated code =
also use:</p></div><div><p class=3D"MsoNormal">=C2=A0</p></div><div><p clas=
s=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:Consolas;color:rgb=
(36,41,46)">replay_ctrl-&gt;</span><span style=3D"font-size:9pt;font-family=
:Consolas;color:rgb(0,92,197)">get_record_fullness</span></p></div><div><p =
class=3D"MsoNormal">=C2=A0</p></div><div><p class=3D"MsoNormal">on both cha=
nnels before kicking off the stream start?</p></div><div><p class=3D"MsoNor=
mal">=C2=A0</p></div><div><div><div><div><div><div><p class=3D"MsoNormal">S=
am Reiter=C2=A0</p><div><p class=3D"MsoNormal">Ettus Research</p></div></di=
v></div></div></div></div></div></div><p class=3D"MsoNormal">=C2=A0</p><div=
><div><p class=3D"MsoNormal">On Wed, Dec 4, 2019 at 3:48 AM Thomas Harder v=
ia USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_=
blank">usrp-users@lists.ettus.com</a>&gt; wrote:</p></div><blockquote style=
=3D"border-color:currentcolor currentcolor currentcolor rgb(204,204,204);bo=
rder-style:none none none solid;border-width:medium medium medium 1pt;paddi=
ng:0in 0in 0in 6pt;margin:5pt 0in 5pt 4.8pt"><div><div><p class=3D"MsoNorma=
l">Hello everyone,</p><p class=3D"MsoNormal">Is it possible to transmit two=
 different waveforms on the two channels of the USRP X310 with the two UBX-=
160 daughterboards?</p><p class=3D"MsoNormal">I want to transmit two differ=
ent waveforms simultaneous (synchronized ) on the two channels of the USRP =
with the full sample rate of 200 MS/s. I tried already to do it with a dual=
 10Gbit-ethernet connection and I seemed to be limited by my computer. Now =
I am trying to do it with the replay block.</p><p class=3D"MsoNormal">=C2=
=A0</p><p class=3D"MsoNormal">I built the FPGA image with one Replay block =
as described in <a href=3D"https://kb.ettus.com/Using_the_RFNoC_Replay_Bloc=
k" target=3D"_blank">https://kb.ettus.com/Using_the_RFNoC_Replay_Block</a> =
to run the example =E2=80=9Creplay_samples_from_file=E2=80=9D and it is wor=
king fine if I transmit just on one channel. Now I was modifying the code b=
y connecting the replay block to both channels:</p><p class=3D"MsoNormal">r=
eplay_graph-&gt;connect(replay_ctrl-&gt;get_block_id(),replay_chan,tx_block=
id,tx_chan,replay_spp);</p><p class=3D"MsoNormal">replay_graph-&gt;connect(=
replay_ctrl-&gt;get_block_id(),replay_chan1,tx_blockid1,tx_chan,replay_spp)=
;</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">and writing th=
e same waveform into another region of the DRAM-buffer:</p><p class=3D"MsoN=
ormal">replay_ctrl-&gt;config_record(0,words_to_replay*replay_word_size, re=
play_chan);</p><p class=3D"MsoNormal">replay_ctrl-&gt;config_record(20000,w=
ords_to_replay*replay_word_size, replay_chan1);</p><p class=3D"MsoNormal">a=
nd</p><p class=3D"MsoNormal">replay_ctrl-&gt;config_play(0,words_to_replay*=
replay_word_size, replay_chan);</p><p class=3D"MsoNormal">replay_ctrl-&gt;c=
onfig_play(20000,words_to_replay*replay_word_size, replay_chan1);</p><p cla=
ss=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">where </p><p class=3D"Mso=
Normal">words_to_replay*replay_word_size=3D16000</p><p class=3D"MsoNormal">=
replay_chan=3D0</p><p class=3D"MsoNormal">replay_chan1=3D1</p><p class=3D"M=
soNormal">tx_blockid=3D0/Radio_0</p><p class=3D"MsoNormal">tx_blockid=3D0/R=
adio_1</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">then I st=
ream my waveforms to the replay block as defined in the example and I start=
 to replay the data:</p><p class=3D"MsoNormal">replay_ctrl-&gt;issue_stream=
_cmd(stream_cmd, replay_chan);</p><p class=3D"MsoNormal">replay_ctrl-&gt;is=
sue_stream_cmd(stream_cmd, replay_chan1);</p><p class=3D"MsoNormal">=C2=A0<=
/p><p class=3D"MsoNormal">It works but with plenty of Underflows!!</p><p cl=
ass=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">So what does it mean whe=
n it says in the manual:</p><p class=3D"MsoNormal">=E2=80=9CNote that the r=
ecord and playback buffers do not need to the same, allowing a single Repla=
y block to both record and playback to different regions of memory<b> simul=
taneously</b>.=E2=80=9D</p><p class=3D"MsoNormal">(<a href=3D"https://kb.et=
tus.com/Using_the_RFNoC_Replay_Block" target=3D"_blank">https://kb.ettus.co=
m/Using_the_RFNoC_Replay_Block</a>)?</p><p class=3D"MsoNormal">=C2=A0</p><p=
 class=3D"MsoNormal">Because in the manual it says also:</p><p class=3D"Mso=
Normal">=E2=80=9CThe replay block has the following features: One input and=
 <b>one</b> output=E2=80=9D</p><p class=3D"MsoNormal">(<a href=3D"https://f=
iles.ettus.com/manual/classuhd_1_1rfnoc_1_1replay__block__ctrl.html" target=
=3D"_blank">https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1replay__blo=
ck__ctrl.html</a>)</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNorma=
l">So if the replay block has just one output why does it have two channels=
 connected to it (replay_chan=3D 0 and 1)?</p><p class=3D"MsoNormal">=C2=A0=
</p><p class=3D"MsoNormal">If one replay block can just stream to one chann=
el at the same time, can I implement easily a second replay block in the FP=
GA to stream on the two channels of my USRP two different waveforms simulta=
neously?</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">Thank y=
ou,</p><p class=3D"MsoNormal">Thomas</p><p class=3D"MsoNormal">=C2=A0</p><p=
 class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D=
"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">=C2=A0</p></div></div></blockq=
uote></div></blockquote></div><p class=3D"MsoNormal" style=3D"margin-left:9=
.6pt">_______________________________________________<br>USRP-users mailing=
 list<br><a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">US=
RP-users@lists.ettus.com</a><br><a href=3D"http://lists.ettus.com/mailman/l=
istinfo/usrp-users_lists.ettus.com" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a></p><p class=3D"MsoNormal"=
>=C2=A0</p></div></div></blockquote></div><p class=3D"MsoNormal" style=3D"m=
argin-left:4.8pt">_______________________________________________<br>USRP-u=
sers mailing list<br><a href=3D"mailto:USRP-users@lists.ettus.com" target=
=3D"_blank">USRP-users@lists.ettus.com</a><br><a href=3D"http://lists.ettus=
.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_blank">http://=
lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></p><p class=
=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div></div></blockquote></div></div=
>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000009c482f05996efc44--


--===============7540458868576458559==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7540458868576458559==--

