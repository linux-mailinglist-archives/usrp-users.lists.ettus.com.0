Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E28944A72E7
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 15:22:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D83F038525C
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 09:22:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="OkF8My/T";
	dkim-atps=neutral
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 342823850AD
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 09:21:41 -0500 (EST)
Received: by mail-yb1-f172.google.com with SMTP id p5so61383570ybd.13
        for <usrp-users@lists.ettus.com>; Wed, 02 Feb 2022 06:21:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=L6okwrCKJuiCJXNblv0Cihl34TG8Dq6TqaqRW9+BvAU=;
        b=OkF8My/ThyU2y5rh9YMH8sfI+hI+X0EJv/H6OGc6Y8DjpPoUJJk6+E7iZkVF6Cc6YS
         G5Z5N3MH7lB5gpaGxnY/S753clid3psA21UsIaD9izz2uHOl+Ia3feB9tC4UcUgU3GwM
         II/5cEOe1ta307MIyvADr5PRwaZojscNqjweos4Ch6ryDbsGyHUMrUWDMWKOS5F+mMDT
         tt6cPc/YkZqKezue8HBYZ2qRatIMO/JW8K5zSxD8EJrusCgFuX8KX2hvdwmfx2ExOtMx
         I8Ip7sSUh0TtYP8OxNNP68lDhIDOFsWMxXX/7dbnZ7rkdM/Ma8Eb21I24D3EFHzw8QV1
         GyRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=L6okwrCKJuiCJXNblv0Cihl34TG8Dq6TqaqRW9+BvAU=;
        b=tdvAvBZFVD3AZ9kM9aSR0sqKQnVwarxHLOV+IhnaB0OqDdQUFsRutQFPrxUdw1JYgw
         k2SPKGuNSNaqWYv2e8AlFfNE44TTcvKSlJtk952U+1GWvvmltyU5SkiCduFVqG1NgQxP
         QWbn0xwifvs9KtyhPqO2vc3JROCFhUZYQVPr7DWR3dmzmFUJkgcboEuNUqKqbiST6eXj
         rOssPZH6MSq/ZBO828PYQZmHAhDgqbdPrp+0sfDpCpijthxoqWVF9WjTy2qNSLLM2/1N
         jVaRUfNx75ITmyWwbR4mzofG5Z0JvLUWUCVVyaI7kPqz+UBZqdNuBioiWjVnNEwcUIos
         ZtFQ==
X-Gm-Message-State: AOAM531VTbmHCB70+xS85EbP40d42Dz6K2Xp05dV816xCyUxJH2o5uP4
	BWUNg90V4Of4ekklD/GJ3r0zeHygN0xOiT9VwPZHV2xL304=
X-Google-Smtp-Source: ABdhPJwbF/rxrQEOFUcqWNx8vH32UcS1B+a6O98HXkoavgmMFRgi/mXuAYUxbenndEk+HTQyA2EW0bhfd0K63W6mCy4=
X-Received: by 2002:a5b:88a:: with SMTP id e10mr20526645ybq.750.1643811700091;
 Wed, 02 Feb 2022 06:21:40 -0800 (PST)
MIME-Version: 1.0
References: <164366958084.11274.12985129402155989646@mm2.emwd.com>
 <CACDReSwaUtZmNFzRrZnOb0dz3E0_RA=OD0L2dBejHXcMxd-w=w@mail.gmail.com>
 <CAB__hTT5bqDK-MPbS_1wZHFpqjP5XNp25eQdamZHhx+=QPpkuQ@mail.gmail.com>
 <CAB__hTTGRP0uBZpcs9jWT84N=7CHYtQfx1+WjcupqsdPz9FB7A@mail.gmail.com>
 <CACDReSyjBnXe5uYYAyGoAnh1+jhZSAKtz6BTfix6haDGn==rEQ@mail.gmail.com>
 <CAB__hTQxHsDTCXkLWOn9eyiFSyiMcP2DdoMFReycC2K8jNMhjw@mail.gmail.com>
 <CAB__hTTLwMA9Pz7_COWoff_5qCscHssxk66k5G2zL=OZFxHN0w@mail.gmail.com> <CACDReSzP726PKt+Ja9pY+eNr=jOUx5Ei2=xN3teH2hL8t_O+Ew@mail.gmail.com>
In-Reply-To: <CACDReSzP726PKt+Ja9pY+eNr=jOUx5Ei2=xN3teH2hL8t_O+Ew@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 2 Feb 2022 09:21:27 -0500
Message-ID: <CAB__hTSs4v0uSvCC+ESniGc4uLH2WHhfJP9_7uAtEhR_bi9e+g@mail.gmail.com>
To: Ofer Saferman <ofer@navigicom.com>
Message-ID-Hash: QLI3AP3RHAOFTCLDZZWNVW475NNWOVZB
X-Message-ID-Hash: QLI3AP3RHAOFTCLDZZWNVW475NNWOVZB
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Questions about replay block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QLI3AP3RHAOFTCLDZZWNVW475NNWOVZB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Feb 2, 2022 at 4:02 AM Ofer Saferman <ofer@navigicom.com> wrote:

> Just to tie all the loose ends:
> Graph for recording will be: Radio_rx(0)-->Replay(0)-->rx_streamer, Radio_rx(1)-->Replay(1)-->rx_streamer
> Code snippet:
> graph->connect( radio_ctrl->get_block_id(),radio_chan0 ,replay_ctrl->get_block_id(),replay_chan0)
> graph->connect( radio_ctrl->get_block_id(),radio_chan1 ,replay_ctrl->get_block_id(),replay_chan1)
> uhd::rx_streamer::sptr rx_stream0 = graph->create_rx_streamer(1, stream_args); // Is this correct? Or should I create a single 2-port streamer and connect each port to a replay channel?
> uhd::rx_streamer::sptr rx_stream1 = graph->create_rx_streamer(1, stream_args);
> graph->connect( replay_ctrl->get_block_id(),replay_chan0 ,rx_stream0, 0);
> graph->connect( replay_ctrl->get_block_id(),replay_chan1 ,rx_stream1, 0);

I don't think it matters if you create a single 2-port streamer or two
1-ports streamers, but I haven't tried what you're doing so not sure.

>
> // Stream command
> uhd::stream_cmd_t stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);
> stream_cmd.num_samps  = total_num_samps;
> stream_cmd.stream_now = false;
> stream_cmd.time_spec  = uhd::time_spec_t(seconds_in_future);
> radio_ctrl->issue_stream_cmd(stream_cmd);
>
> I am trying to understand what will happen following the issue of the stream command. Since the stream command is for the radio block and not for a specific channel it should trigger sample streaming per graph connectivity so both channels should start sending samples to replay at the same time. Does the record action happen automatically due to graph connectivity? These are exactly the missing pieces of my puzzle.

There is an optional 2nd argument to radio_ctrl->issue_stream_cmd(cmd,
port). Use the port parameter. Thus, you will need to call this
function for both ports.  Regarding the replay "record action", I
think that you need to send configuration commands to the replay block
in the exact same fashion as if you were populating the Replay block
using a tx_streamer.  I don't think this will happen automatically.

>
> Then at some arbitrary time in the future I would like to do:
> replay_ctrl-->play(offset1,size,replay_chan0,uhd::time_spec_t(0.0),false);
> replay_ctrl-->play(offset2,size,replay_chan1,uhd::time_spec_t(0.0),false);
> to dump the recorded samples to files.
>
> The issue stream command above won't trigger the rx_stream?
> The write to file operation is an offline operation for me and I don't want it to be a real-time operation that has to keep up with the recording speed.

I don't know the answer. I think that issue_stream_cmd() would work.
It is also likely that play() would work. I would use the same method
for playout streaming that is in the Ettus example for when streaming
to the radio. The replay block will not know whether it is streaming
to a radio or to your rx_streamer.  You shouldn't have to worry about
real-time operation, I think. Your slow file writing process should
back pressure the streaming. But, if I am wrong on that, you can
probably just play out a block at a time (while consuming with recv()
a block at a time).

You could create an even simpler proof-of-concept with a graph such as
tx_streamer->Replay->rx_streamer.  See if you can record samples to
Replay RAM and then play them out back to the host and make sure they
are the same. This would illustrate most of the concepts you need for
your application which adds the Radio.

>
> Thanks for all the help.
>
> Regards,
> Ofer Saferman
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> On Tue, Feb 1, 2022 at 10:19 PM Rob Kossler <rkossler@nd.edu> wrote:
>>
>> I just reviewed the Replay block "issue_stream_cmd" and I think I was wrong in the previous post. This appears to operate with the playback buffer rather than the record buffer. So, I think you will need to use plan B and call "issue_stream_cmd" directly on the radio controller.
>>
>> On Tue, Feb 1, 2022 at 3:11 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>
>>> Hi Ofer,
>>> The Replay block has an "issue_stream_cmd" that should work identically to the same command in the rx_streamer. You should be able to use a timed command with it.  Even if this doesn't work for some reason, you could instead use the "issue_stream_cmd" directly on the Radio (using a timed command). Note that the reason for issuing it at the rx_streamer or at the replay block is so that ALL blocks in the graph will get notified of the impending stream (in case any given block needs to prepare in some way for the impending stream). Thus, in a typical graph, when you call issue_stream_cmd on the rx_streamer, this command then propagates to the DDC and ultimately to the Radio which guarantees the start sample.
>>> Rob
>>>
>>> On Tue, Feb 1, 2022 at 2:34 PM Ofer Saferman <ofer@navigicom.com> wrote:
>>>>
>>>> Hello Rob,
>>>>
>>>> Thank you for your assistance.
>>>> I will take your advice and keep it simple and use a separate port for each operation/channel.
>>>> I want to do it not only to keep things simple but also because my Tx playback should never stop while my recording is timed and rare.
>>>>
>>>> Can you or Wade comment on item (4) in my latest query? - How to issue recording simultaneously on two replay ports? As I mentioned, I know how to do timed commands on streams but not on the replay block.
>>>>
>>>> Regards,
>>>> Ofer Saferman
>>>>
>>>> On Tue, Feb 1, 2022 at 7:02 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>>
>>>>> Oops. In step 3, I meant graph Replay->rx_streamer.  Also, in step 2, since this is a circular graph, you need to disconnect property propagation on one leg of the graph (or something like that).
>>>>>
>>>>> On Tue, Feb 1, 2022 at 11:58 AM Rob Kossler <rkossler@nd.edu> wrote:
>>>>>>
>>>>>> Hi Ofer,
>>>>>> Considering just a single port replay block, it seems that you want to do the following:
>>>>>> Step 1: Populate Tx samples: Configure tx_streamer->Replay graph and populate Mem block A with Tx waveform
>>>>>> Step 2: Transmit/Receive samples: Change graph to Radio->Replay->Radio  and "play" from Mem block A while recording to Mem block B
>>>>>> Step 3: Download Rx samples: Change graph to Radio->rx_streamer and play samples from Mem block B
>>>>>>
>>>>>> This seems doable to me, but you may want to start with a simpler approach (such as separate ports that don't require reconfiguring graphs). Also, regarding your question about a fixed number of samples, I think that the limit is 2^28 samples in the NUM_SAMPS_AND_DONE option. If you need more than that, I think you are out of luck (I don't think there is a timed radio command to tell it to stop streaming on a given sample).
>>>>>> Rob
>>>>>>
>>>>>> On Tue, Feb 1, 2022 at 12:18 AM Ofer Saferman <ofer@navigicom.com> wrote:
>>>>>>>
>>>>>>> Hello Wade,
>>>>>>>
>>>>>>> Thank you for your prompt response.
>>>>>>> A few more questions please:
>>>>>>> 1. I am not sure that when we say bi-directional we mean the same thing. The record and playback functions derive their function to some extent from the graph connectivity. I would like, for the same port of Replay, to make 2 graphs: tx_stream --> Replay --> Radio, Radio --> Replay --> rx_stream. When I do record or playback, which of the graphs is active? Both of them? In both directions? Can I control it to activate only one direction? For Tx I want to use the record function only once to get the samples into the buffer and playback them periodically (same as in the rfnoc_replay_samples_from_file example) but for the other direction of Rx I want to use the record function all the time. When I issue the record command, which graph is active? The Tx graph? The Rx graph? Will it allow me to make the 2 graphs at all using the same port? It is my understanding that for the 2 graphs I mentioned I need two ports of replay, one for each graph. Please correct me if I am wrong.
>>>>>>> 4. I would like to use two ports of Replay to record 2 Rx channels. One replay port for each Rx channel. How do I issue a record command that will cause both channels (ports) to record at the same time instant? I know we can do timed commands for streams but how to do it for replay ? My use of the rx streams is done later in an offline fashion and can be done in series for each of the Rx channels but the recording of samples itself to DRAM has to be simultaneous.
>>>>>>>
>>>>>>> Thanks,
>>>>>>> Ofer Saferman
>>>>>>>
>>>>>>>> ---------- Forwarded message ----------
>>>>>>>> From: Wade Fife <wade.fife@ettus.com>
>>>>>>>> To: Ofer Saferman <ofer@navigicom.com>
>>>>>>>> Cc: usrp-users <usrp-users@lists.ettus.com>
>>>>>>>> Bcc:
>>>>>>>> Date: Mon, 31 Jan 2022 16:52:41 -0600
>>>>>>>> Subject: [USRP-users] Re: Questions about replay block
>>>>>>>> Hi Ofer,
>>>>>>>>
>>>>>>>> 1. It is bidirectional. You can think of the "record" and the "play" components as independent, but connected to the same memory. So be careful not to read/write to the same memory space and be aware that reading and writing simultaneously slows down the DRAM making under/overflow more likely. But I think the E320 DRAM should be fast enough for your use case.
>>>>>>>>
>>>>>>>> 2. The number of ports on the Replay block doesn't have any restrictions that I know of. Any positive integer should be fine. You could also leave ports unused/unconnected if it was somehow a problem.
>>>>>>>>
>>>>>>>> 3. To record at a predetermined time for a fixed amount of data, you should be able to issue a stream command with the time and the number of samples you want.
>>>>>>>> a. Yes.
>>>>>>>> b. Yes. The first time you want to record data, you call record(). To record to the same buffer again, call record_restart(). Make sure num_samps for your stream command does not exceed the size of your record buffer, or else the radio will overflow.
>>>>>>>> c. Yes, you need to play back the buffer. Since the output is connected to the rx streamer, it'll stream to the host. So you can call recv() on your rx streamer to capture the data. Something like this (in Python):
>>>>>>>> replay.play(0, num_bytes, port, uhd.libpyuhd.types.time_spec(0.0), False)
>>>>>>>> rx_md = uhd.types.RXMetadata()
>>>>>>>> num_rx = rx_streamer.recv(output_data, rx_md, timeout)
>>>>>>>>
>>>>>>>> Happy coding!
>>>>>>>>
>>>>>>>> Wade
>>>>>>>>
>>>>>>>>
>>>>>>>> On Mon, Jan 31, 2022 at 9:45 AM Ofer Saferman <ofer@navigicom.com> wrote:
>>>>>>>>>
>>>>>>>>> Hello,
>>>>>>>>>
>>>>>>>>> I am working on a E320 USRP unit and using UHD-4.1.0.5.
>>>>>>>>> I prepared my own FPGA image that has 1 radio block and 1 replay block with 2 ports (channels)
>>>>>>>>> I would like to be able to simultaneously perform playback of 1 Tx channel and recording of 2 Rx channels (to/from different memory locations)
>>>>>>>>> The example rfnoc_replay_samples_from_file.cpp is only helpful to some extent because it shows only the playback path and I am having some difficulty setting up the recording path.
>>>>>>>>>
>>>>>>>>> I have a few questions about the replay block functionality and connectivity that I hope you may be able to resolve.
>>>>>>>>>
>>>>>>>>> 1. Is the replay block bi-directional? If I have a replay block with 1 channel, can it be used for both playback of samples and recording of samples (from/to different memory locations) simultaneously ? or does each operation require one channel?
>>>>>>>>> 2. If the answer to question (1) is no then I guess I need at least 3 replay channels. Is it possible to define in the FPGA image (in the yml file) a replay block with 3 channels (ports) or does it have to be a power of 2? a multiple of 2? I didn't want to try and see what happens because it takes a while to compile the FPGA image and I would rather get it right on the 1st try.
>>>>>>>>> 3. I would like to issue samples recording at a predetermined time for a fixed size data chunk and then at my own leisure dump the memory buffer that was recorded to a file. Since I don't have a working example I am having some difficulty getting it right.
>>>>>>>>> a. The graph should be Radio -->  Replay --> rx_stream. Is this correct?
>>>>>>>>> b. I should start my recording with replay_ctrl->record_restart and check for fullness, right?
>>>>>>>>> c. Then how do I get the rx_stream to dump it to file? Do I need to do playback for this to happen, mirroring what is going on in the rfnoc_replay_samples_from_file example?
>>>>>>>>> If someone has a working code snippet I would appreciate it if they can share it.
>>>>>>>>>
>>>>>>>>> Thanks,
>>>>>>>>> Ofer Saferman
>>>>>>>>>
>>>>>>>>> --
>>>>>>>>> This message has been scanned for viruses and
>>>>>>>>> dangerous content by MailScanner, and is
>>>>>>>>> believed to be clean. _______________________________________________
>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>
>>>>>>>> _______________________________________________
>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>
>>>>>>>
>>>>>>> --
>>>>>>> This message has been scanned for viruses and
>>>>>>> dangerous content by MailScanner, and is
>>>>>>> believed to be clean. _______________________________________________
>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>>
>>>> --
>>>> This message has been scanned for viruses and
>>>> dangerous content by MailScanner, and is
>>>> believed to be clean. _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> --
> This message has been scanned for viruses and
> dangerous content by MailScanner, and is
> believed to be clean. _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
