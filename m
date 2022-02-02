Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 176F54A7693
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 18:12:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CB94F385398
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 12:12:20 -0500 (EST)
Received: from postman.dtnt.info (postman.dtnt.info [62.219.91.51])
	by mm2.emwd.com (Postfix) with ESMTPS id A90813850FD
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 12:11:22 -0500 (EST)
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
	by postman.dtnt.info (Postfix) with ESMTPS id D9D9B41C11
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 19:10:20 +0200 (IST)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
	by o.dtnt.email (Postfix) with ESMTP id B3C039FF1E
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 19:10:10 +0200 (IST)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
	by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 7XXsqgwrl8b1 for <usrp-users@lists.ettus.com>;
	Wed,  2 Feb 2022 19:10:08 +0200 (IST)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by o.dtnt.email (Postfix) with ESMTPSA id 38AC29FAEC
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 19:10:07 +0200 (IST)
Received: by mail-wr1-f43.google.com with SMTP id l25so39487166wrb.13
        for <usrp-users@lists.ettus.com>; Wed, 02 Feb 2022 09:10:07 -0800 (PST)
X-Gm-Message-State: AOAM532RZarBH53WbAhWcREeumMG2g7yZ1s9y62k8Z0F6iaGxC17Hf0y
	4JLIgf/H0lRnTWMYJMcx0f2bMJtjtKag7N7/WfQ=
X-Google-Smtp-Source: ABdhPJxz8yDKw7Fjp7Ytx+Cth9O1xoNqwaQsQk6ECrA9f/o3P4tOVysbuZIwc6bigNUf/xVhtkA5LVD3N9BAUYDeryk=
X-Received: by 2002:adf:f045:: with SMTP id t5mr26154728wro.385.1643821802178;
 Wed, 02 Feb 2022 09:10:02 -0800 (PST)
MIME-Version: 1.0
References: <164366958084.11274.12985129402155989646@mm2.emwd.com>
 <CACDReSwaUtZmNFzRrZnOb0dz3E0_RA=OD0L2dBejHXcMxd-w=w@mail.gmail.com>
 <CAB__hTT5bqDK-MPbS_1wZHFpqjP5XNp25eQdamZHhx+=QPpkuQ@mail.gmail.com>
 <CAB__hTTGRP0uBZpcs9jWT84N=7CHYtQfx1+WjcupqsdPz9FB7A@mail.gmail.com>
 <CACDReSyjBnXe5uYYAyGoAnh1+jhZSAKtz6BTfix6haDGn==rEQ@mail.gmail.com>
 <CAB__hTQxHsDTCXkLWOn9eyiFSyiMcP2DdoMFReycC2K8jNMhjw@mail.gmail.com>
 <CAB__hTTLwMA9Pz7_COWoff_5qCscHssxk66k5G2zL=OZFxHN0w@mail.gmail.com>
 <CACDReSzP726PKt+Ja9pY+eNr=jOUx5Ei2=xN3teH2hL8t_O+Ew@mail.gmail.com>
 <CAB__hTSs4v0uSvCC+ESniGc4uLH2WHhfJP9_7uAtEhR_bi9e+g@mail.gmail.com>
 <CACDReSwqf0-O_3o-G6cJxFSmoQi3CXgfWASLutEPbutarRoWnw@mail.gmail.com> <CAB__hTResfj4Q_5rWTyfBAgDOfDowj_JSLwzrjLGgukCn5Puvw@mail.gmail.com>
In-Reply-To: <CAB__hTResfj4Q_5rWTyfBAgDOfDowj_JSLwzrjLGgukCn5Puvw@mail.gmail.com>
From: Ofer Saferman <ofer@navigicom.com>
Date: Wed, 2 Feb 2022 19:09:50 +0200
X-Gmail-Original-Message-ID: <CACDReSzXRBPudtRWBuDj_j0zkYZNNRp10sjsG=dLjz6ksvbdSg@mail.gmail.com>
Message-ID: <CACDReSzXRBPudtRWBuDj_j0zkYZNNRp10sjsG=dLjz6ksvbdSg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: D9D9B41C11.A5FF8
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Message-ID-Hash: ODIT4TLAOTFTXOIK27T4MYHFWSTR3TIJ
X-Message-ID-Hash: ODIT4TLAOTFTXOIK27T4MYHFWSTR3TIJ
X-MailFrom: ofer@navigicom.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ofer Saferman <ofer@navigicom.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Questions about replay block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ODIT4TLAOTFTXOIK27T4MYHFWSTR3TIJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7785649441038020538=="

--===============7785649441038020538==
Content-Type: multipart/alternative; boundary="00000000000097ce4a05d70c160d"

--00000000000097ce4a05d70c160d
Content-Type: text/plain; charset="UTF-8"

Hello Rob,

Thank you for your quick response.
One last question in order to complete my understanding.
From what you are saying then the sequence of events should be:
radio_ctrl->issue_stream_cmd(cmd,port0)
replay_ctrl->record(....,port0)
radio_ctrl->issue_stream_cmd(cmd,port1)
replay_ctrl->record(....,port1)

If I understand you correctly then if I issue the stream command late
enough in the future and issue the recording commands, the recording itself
will not start until the time stamp configured in the stream command?

Regards,
Ofer

On Wed, Feb 2, 2022 at 6:16 PM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Ofer,
> Configuring the replay block to "receive" samples into a recording memory
> just primes it to receive whatever samples arrive.  When you run
> radio_ctrl->issue_stream_cmd(cmd,port), it tells the radio to start
> streaming on the sample corresponding to the supplied time stamp in 'cmd'.
> When you subsequently use the same command for the other radio port, then
> this radio will also start streaming on the sample corresponding to the
> supplied time stamp.  So, the data in the replay block memory should be
> aligned.  Does this address your question?
> Rob
>
> On Wed, Feb 2, 2022 at 11:07 AM Ofer Saferman <ofer@navigicom.com> wrote:
>
>> Hello Rob,
>>
>> If the issue_stream_command for the radio does not trigger the recording
>> for the replay block and I have to do it manually I lose the timed command
>> to start recording of both channels at the same time.
>> That was the primary purpose of the exercise - To cause 2 replay block
>> channels to record 2 radio rx channels simultaneously.
>>
>> Regards,
>> Ofer
>>
>> On Wed, Feb 2, 2022 at 4:21 PM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> On Wed, Feb 2, 2022 at 4:02 AM Ofer Saferman <ofer@navigicom.com> wrote:
>>>
>>> > Just to tie all the loose ends:
>>> > Graph for recording will be: Radio_rx(0)-->Replay(0)-->rx_streamer,
>>> Radio_rx(1)-->Replay(1)-->rx_streamer
>>> > Code snippet:
>>> > graph->connect( radio_ctrl->get_block_id(),radio_chan0
>>> ,replay_ctrl->get_block_id(),replay_chan0)
>>> > graph->connect( radio_ctrl->get_block_id(),radio_chan1
>>> ,replay_ctrl->get_block_id(),replay_chan1)
>>> > uhd::rx_streamer::sptr rx_stream0 = graph->create_rx_streamer(1,
>>> stream_args); // Is this correct? Or should I create a single 2-port
>>> streamer and connect each port to a replay channel?
>>> > uhd::rx_streamer::sptr rx_stream1 = graph->create_rx_streamer(1,
>>> stream_args);
>>> > graph->connect( replay_ctrl->get_block_id(),replay_chan0 ,rx_stream0,
>>> 0);
>>> > graph->connect( replay_ctrl->get_block_id(),replay_chan1 ,rx_stream1,
>>> 0);
>>>
>>> I don't think it matters if you create a single 2-port streamer or two
>>> 1-ports streamers, but I haven't tried what you're doing so not sure.
>>>
>>> >
>>> > // Stream command
>>> > uhd::stream_cmd_t
>>> stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);
>>> > stream_cmd.num_samps  = total_num_samps;
>>> > stream_cmd.stream_now = false;
>>> > stream_cmd.time_spec  = uhd::time_spec_t(seconds_in_future);
>>> > radio_ctrl->issue_stream_cmd(stream_cmd);
>>> >
>>> > I am trying to understand what will happen following the issue of the
>>> stream command. Since the stream command is for the radio block and not for
>>> a specific channel it should trigger sample streaming per graph
>>> connectivity so both channels should start sending samples to replay at the
>>> same time. Does the record action happen automatically due to graph
>>> connectivity? These are exactly the missing pieces of my puzzle.
>>>
>>> There is an optional 2nd argument to radio_ctrl->issue_stream_cmd(cmd,
>>> port). Use the port parameter. Thus, you will need to call this
>>> function for both ports.  Regarding the replay "record action", I
>>> think that you need to send configuration commands to the replay block
>>> in the exact same fashion as if you were populating the Replay block
>>> using a tx_streamer.  I don't think this will happen automatically.
>>>
>>> >
>>> > Then at some arbitrary time in the future I would like to do:
>>> >
>>> replay_ctrl-->play(offset1,size,replay_chan0,uhd::time_spec_t(0.0),false);
>>> >
>>> replay_ctrl-->play(offset2,size,replay_chan1,uhd::time_spec_t(0.0),false);
>>> > to dump the recorded samples to files.
>>> >
>>> > The issue stream command above won't trigger the rx_stream?
>>> > The write to file operation is an offline operation for me and I don't
>>> want it to be a real-time operation that has to keep up with the recording
>>> speed.
>>>
>>> I don't know the answer. I think that issue_stream_cmd() would work.
>>> It is also likely that play() would work. I would use the same method
>>> for playout streaming that is in the Ettus example for when streaming
>>> to the radio. The replay block will not know whether it is streaming
>>> to a radio or to your rx_streamer.  You shouldn't have to worry about
>>> real-time operation, I think. Your slow file writing process should
>>> back pressure the streaming. But, if I am wrong on that, you can
>>> probably just play out a block at a time (while consuming with recv()
>>> a block at a time).
>>>
>>> You could create an even simpler proof-of-concept with a graph such as
>>> tx_streamer->Replay->rx_streamer.  See if you can record samples to
>>> Replay RAM and then play them out back to the host and make sure they
>>> are the same. This would illustrate most of the concepts you need for
>>> your application which adds the Radio.
>>>
>>> >
>>> > Thanks for all the help.
>>> >
>>> > Regards,
>>> > Ofer Saferman
>>> >
>>> >
>>> >
>>> >
>>> >
>>> >
>>> >
>>> >
>>> >
>>> >
>>> >
>>> >
>>> >
>>> >
>>> >
>>> >
>>> > On Tue, Feb 1, 2022 at 10:19 PM Rob Kossler <rkossler@nd.edu> wrote:
>>> >>
>>> >> I just reviewed the Replay block "issue_stream_cmd" and I think I was
>>> wrong in the previous post. This appears to operate with the playback
>>> buffer rather than the record buffer. So, I think you will need to use plan
>>> B and call "issue_stream_cmd" directly on the radio controller.
>>> >>
>>> >> On Tue, Feb 1, 2022 at 3:11 PM Rob Kossler <rkossler@nd.edu> wrote:
>>> >>>
>>> >>> Hi Ofer,
>>> >>> The Replay block has an "issue_stream_cmd" that should work
>>> identically to the same command in the rx_streamer. You should be able to
>>> use a timed command with it.  Even if this doesn't work for some reason,
>>> you could instead use the "issue_stream_cmd" directly on the Radio (using a
>>> timed command). Note that the reason for issuing it at the rx_streamer or
>>> at the replay block is so that ALL blocks in the graph will get notified of
>>> the impending stream (in case any given block needs to prepare in some way
>>> for the impending stream). Thus, in a typical graph, when you call
>>> issue_stream_cmd on the rx_streamer, this command then propagates to the
>>> DDC and ultimately to the Radio which guarantees the start sample.
>>> >>> Rob
>>> >>>
>>> >>> On Tue, Feb 1, 2022 at 2:34 PM Ofer Saferman <ofer@navigicom.com>
>>> wrote:
>>> >>>>
>>> >>>> Hello Rob,
>>> >>>>
>>> >>>> Thank you for your assistance.
>>> >>>> I will take your advice and keep it simple and use a separate port
>>> for each operation/channel.
>>> >>>> I want to do it not only to keep things simple but also because my
>>> Tx playback should never stop while my recording is timed and rare.
>>> >>>>
>>> >>>> Can you or Wade comment on item (4) in my latest query? - How to
>>> issue recording simultaneously on two replay ports? As I mentioned, I know
>>> how to do timed commands on streams but not on the replay block.
>>> >>>>
>>> >>>> Regards,
>>> >>>> Ofer Saferman
>>> >>>>
>>> >>>> On Tue, Feb 1, 2022 at 7:02 PM Rob Kossler <rkossler@nd.edu> wrote:
>>> >>>>>
>>> >>>>> Oops. In step 3, I meant graph Replay->rx_streamer.  Also, in step
>>> 2, since this is a circular graph, you need to disconnect property
>>> propagation on one leg of the graph (or something like that).
>>> >>>>>
>>> >>>>> On Tue, Feb 1, 2022 at 11:58 AM Rob Kossler <rkossler@nd.edu>
>>> wrote:
>>> >>>>>>
>>> >>>>>> Hi Ofer,
>>> >>>>>> Considering just a single port replay block, it seems that you
>>> want to do the following:
>>> >>>>>> Step 1: Populate Tx samples: Configure tx_streamer->Replay graph
>>> and populate Mem block A with Tx waveform
>>> >>>>>> Step 2: Transmit/Receive samples: Change graph to
>>> Radio->Replay->Radio  and "play" from Mem block A while recording to Mem
>>> block B
>>> >>>>>> Step 3: Download Rx samples: Change graph to Radio->rx_streamer
>>> and play samples from Mem block B
>>> >>>>>>
>>> >>>>>> This seems doable to me, but you may want to start with a simpler
>>> approach (such as separate ports that don't require reconfiguring graphs).
>>> Also, regarding your question about a fixed number of samples, I think that
>>> the limit is 2^28 samples in the NUM_SAMPS_AND_DONE option. If you need
>>> more than that, I think you are out of luck (I don't think there is a timed
>>> radio command to tell it to stop streaming on a given sample).
>>> >>>>>> Rob
>>> >>>>>>
>>> >>>>>> On Tue, Feb 1, 2022 at 12:18 AM Ofer Saferman <ofer@navigicom.com>
>>> wrote:
>>> >>>>>>>
>>> >>>>>>> Hello Wade,
>>> >>>>>>>
>>> >>>>>>> Thank you for your prompt response.
>>> >>>>>>> A few more questions please:
>>> >>>>>>> 1. I am not sure that when we say bi-directional we mean the
>>> same thing. The record and playback functions derive their function to some
>>> extent from the graph connectivity. I would like, for the same port of
>>> Replay, to make 2 graphs: tx_stream --> Replay --> Radio, Radio --> Replay
>>> --> rx_stream. When I do record or playback, which of the graphs is active?
>>> Both of them? In both directions? Can I control it to activate only one
>>> direction? For Tx I want to use the record function only once to get the
>>> samples into the buffer and playback them periodically (same as in the
>>> rfnoc_replay_samples_from_file example) but for the other direction of Rx I
>>> want to use the record function all the time. When I issue the record
>>> command, which graph is active? The Tx graph? The Rx graph? Will it allow
>>> me to make the 2 graphs at all using the same port? It is my understanding
>>> that for the 2 graphs I mentioned I need two ports of replay, one for each
>>> graph. Please correct me if I am wrong.
>>> >>>>>>> 4. I would like to use two ports of Replay to record 2 Rx
>>> channels. One replay port for each Rx channel. How do I issue a record
>>> command that will cause both channels (ports) to record at the same time
>>> instant? I know we can do timed commands for streams but how to do it for
>>> replay ? My use of the rx streams is done later in an offline fashion and
>>> can be done in series for each of the Rx channels but the recording of
>>> samples itself to DRAM has to be simultaneous.
>>> >>>>>>>
>>> >>>>>>> Thanks,
>>> >>>>>>> Ofer Saferman
>>> >>>>>>>
>>> >>>>>>>> ---------- Forwarded message ----------
>>> >>>>>>>> From: Wade Fife <wade.fife@ettus.com>
>>> >>>>>>>> To: Ofer Saferman <ofer@navigicom.com>
>>> >>>>>>>> Cc: usrp-users <usrp-users@lists.ettus.com>
>>> >>>>>>>> Bcc:
>>> >>>>>>>> Date: Mon, 31 Jan 2022 16:52:41 -0600
>>> >>>>>>>> Subject: [USRP-users] Re: Questions about replay block
>>> >>>>>>>> Hi Ofer,
>>> >>>>>>>>
>>> >>>>>>>> 1. It is bidirectional. You can think of the "record" and the
>>> "play" components as independent, but connected to the same memory. So be
>>> careful not to read/write to the same memory space and be aware that
>>> reading and writing simultaneously slows down the DRAM making
>>> under/overflow more likely. But I think the E320 DRAM should be fast enough
>>> for your use case.
>>> >>>>>>>>
>>> >>>>>>>> 2. The number of ports on the Replay block doesn't have any
>>> restrictions that I know of. Any positive integer should be fine. You could
>>> also leave ports unused/unconnected if it was somehow a problem.
>>> >>>>>>>>
>>> >>>>>>>> 3. To record at a predetermined time for a fixed amount of
>>> data, you should be able to issue a stream command with the time and the
>>> number of samples you want.
>>> >>>>>>>> a. Yes.
>>> >>>>>>>> b. Yes. The first time you want to record data, you call
>>> record(). To record to the same buffer again, call record_restart(). Make
>>> sure num_samps for your stream command does not exceed the size of your
>>> record buffer, or else the radio will overflow.
>>> >>>>>>>> c. Yes, you need to play back the buffer. Since the output is
>>> connected to the rx streamer, it'll stream to the host. So you can call
>>> recv() on your rx streamer to capture the data. Something like this (in
>>> Python):
>>> >>>>>>>> replay.play(0, num_bytes, port,
>>> uhd.libpyuhd.types.time_spec(0.0), False)
>>> >>>>>>>> rx_md = uhd.types.RXMetadata()
>>> >>>>>>>> num_rx = rx_streamer.recv(output_data, rx_md, timeout)
>>> >>>>>>>>
>>> >>>>>>>> Happy coding!
>>> >>>>>>>>
>>> >>>>>>>> Wade
>>> >>>>>>>>
>>> >>>>>>>>
>>> >>>>>>>> On Mon, Jan 31, 2022 at 9:45 AM Ofer Saferman <
>>> ofer@navigicom.com> wrote:
>>> >>>>>>>>>
>>> >>>>>>>>> Hello,
>>> >>>>>>>>>
>>> >>>>>>>>> I am working on a E320 USRP unit and using UHD-4.1.0.5.
>>> >>>>>>>>> I prepared my own FPGA image that has 1 radio block and 1
>>> replay block with 2 ports (channels)
>>> >>>>>>>>> I would like to be able to simultaneously perform playback of
>>> 1 Tx channel and recording of 2 Rx channels (to/from different memory
>>> locations)
>>> >>>>>>>>> The example rfnoc_replay_samples_from_file.cpp is only helpful
>>> to some extent because it shows only the playback path and I am having some
>>> difficulty setting up the recording path.
>>> >>>>>>>>>
>>> >>>>>>>>> I have a few questions about the replay block functionality
>>> and connectivity that I hope you may be able to resolve.
>>> >>>>>>>>>
>>> >>>>>>>>> 1. Is the replay block bi-directional? If I have a replay
>>> block with 1 channel, can it be used for both playback of samples and
>>> recording of samples (from/to different memory locations) simultaneously ?
>>> or does each operation require one channel?
>>> >>>>>>>>> 2. If the answer to question (1) is no then I guess I need at
>>> least 3 replay channels. Is it possible to define in the FPGA image (in the
>>> yml file) a replay block with 3 channels (ports) or does it have to be a
>>> power of 2? a multiple of 2? I didn't want to try and see what happens
>>> because it takes a while to compile the FPGA image and I would rather get
>>> it right on the 1st try.
>>> >>>>>>>>> 3. I would like to issue samples recording at a predetermined
>>> time for a fixed size data chunk and then at my own leisure dump the memory
>>> buffer that was recorded to a file. Since I don't have a working example I
>>> am having some difficulty getting it right.
>>> >>>>>>>>> a. The graph should be Radio -->  Replay --> rx_stream. Is
>>> this correct?
>>> >>>>>>>>> b. I should start my recording with
>>> replay_ctrl->record_restart and check for fullness, right?
>>> >>>>>>>>> c. Then how do I get the rx_stream to dump it to file? Do I
>>> need to do playback for this to happen, mirroring what is going on in the
>>> rfnoc_replay_samples_from_file example?
>>> >>>>>>>>> If someone has a working code snippet I would appreciate it if
>>> they can share it.
>>> >>>>>>>>>
>>> >>>>>>>>> Thanks,
>>> >>>>>>>>> Ofer Saferman
>>> >>>>>>>>>
>>> >>>>>>>>> --
>>> >>>>>>>>> This message has been scanned for viruses and
>>> >>>>>>>>> dangerous content by MailScanner, and is
>>> >>>>>>>>> believed to be clean.
>>> _______________________________________________
>>> >>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> >>>>>>>>> To unsubscribe send an email to
>>> usrp-users-leave@lists.ettus.com
>>> >>>>>>>>
>>> >>>>>>>> _______________________________________________
>>> >>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> >>>>>>>> To unsubscribe send an email to
>>> usrp-users-leave@lists.ettus.com
>>> >>>>>>>
>>> >>>>>>>
>>> >>>>>>> --
>>> >>>>>>> This message has been scanned for viruses and
>>> >>>>>>> dangerous content by MailScanner, and is
>>> >>>>>>> believed to be clean.
>>> _______________________________________________
>>> >>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> >>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>> >>>>
>>> >>>>
>>> >>>> --
>>> >>>> This message has been scanned for viruses and
>>> >>>> dangerous content by MailScanner, and is
>>> >>>> believed to be clean.
>>> _______________________________________________
>>> >>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> >>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>> >
>>> >
>>> > --
>>> > This message has been scanned for viruses and
>>> > dangerous content by MailScanner, and is
>>> > believed to be clean. _______________________________________________
>>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>
>> --
>> This message has been scanned for viruses and
>> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and
>> is
>> believed to be clean.
>
>

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--00000000000097ce4a05d70c160d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Rob,</div><div><br></div><div>Thank you for you=
r quick response.</div><div>One last question in order to complete my under=
standing.</div><div>From what you are saying then the sequence of events sh=
ould be:</div><div><span style=3D"color:rgb(61,133,198)">radio_ctrl-&gt;iss=
ue_stream_cmd(cmd,port0)<br></span></div><div>
<span style=3D"color:rgb(61,133,198)">replay_ctrl-&gt;record(....,port0)</s=
pan>

<span style=3D"color:rgb(61,133,198)">
</span></div><div><span style=3D"color:rgb(61,133,198)">radio_ctrl-&gt;issu=
e_stream_cmd(cmd,port1)

</span></div><div><span style=3D"color:rgb(61,133,198)"></span></div><div><=
span style=3D"color:rgb(61,133,198)">replay_ctrl-&gt;record(....,port1)</sp=
an></div><div><br></div><div>If I understand you correctly then if I issue =
the stream command late enough in the future and issue the recording comman=
ds, the recording itself will not start until the time stamp configured in =
the stream command?<br></div><div><br></div><div>Regards,</div><div>Ofer<br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, Feb 2, 2022 at 6:16 PM Rob Kossler &lt;<a href=3D"mailto:rko=
ssler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr">Hi=C2=A0Ofer,<div>Configuring=
 the replay block to &quot;receive&quot; samples into a recording memory ju=
st primes it to receive whatever samples arrive.=C2=A0 When you run radio_c=
trl-&gt;issue_stream_cmd(cmd,port), it tells the radio to start streaming o=
n the sample corresponding to the supplied time stamp in &#39;cmd&#39;. Whe=
n you subsequently use the same command for the other radio port, then this=
 radio will also start streaming=C2=A0on the sample corresponding to the su=
pplied time stamp.=C2=A0 So, the data in the replay block memory should be =
aligned.=C2=A0 Does this address your question?</div><div>Rob</div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, =
Feb 2, 2022 at 11:07 AM Ofer Saferman &lt;<a href=3D"mailto:ofer@navigicom.=
com" target=3D"_blank">ofer@navigicom.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello Rob,</=
div><div><br></div><div>If the issue_stream_command for the radio does not =
trigger the recording for the replay block and I have to do it manually I l=
ose the timed command to start recording of both channels at the same time.=
</div><div>That was the primary purpose of the exercise - To cause 2 replay=
 block channels to record 2 radio rx channels simultaneously.<br></div><div=
><br></div><div>Regards,</div><div>Ofer=C2=A0 <br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 2, 2022=
 at 4:21 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_b=
lank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">On Wed, Feb 2, 2022 at 4:02 AM Ofer Saferman &lt;<a hr=
ef=3D"mailto:ofer@navigicom.com" target=3D"_blank">ofer@navigicom.com</a>&g=
t; wrote:<br>
<br>
&gt; Just to tie all the loose ends:<br>
&gt; Graph for recording will be: Radio_rx(0)--&gt;Replay(0)--&gt;rx_stream=
er, Radio_rx(1)--&gt;Replay(1)--&gt;rx_streamer<br>
&gt; Code snippet:<br>
&gt; graph-&gt;connect( radio_ctrl-&gt;get_block_id(),radio_chan0 ,replay_c=
trl-&gt;get_block_id(),replay_chan0)<br>
&gt; graph-&gt;connect( radio_ctrl-&gt;get_block_id(),radio_chan1 ,replay_c=
trl-&gt;get_block_id(),replay_chan1)<br>
&gt; uhd::rx_streamer::sptr rx_stream0 =3D graph-&gt;create_rx_streamer(1, =
stream_args); // Is this correct? Or should I create a single 2-port stream=
er and connect each port to a replay channel?<br>
&gt; uhd::rx_streamer::sptr rx_stream1 =3D graph-&gt;create_rx_streamer(1, =
stream_args);<br>
&gt; graph-&gt;connect( replay_ctrl-&gt;get_block_id(),replay_chan0 ,rx_str=
eam0, 0);<br>
&gt; graph-&gt;connect( replay_ctrl-&gt;get_block_id(),replay_chan1 ,rx_str=
eam1, 0);<br>
<br>
I don&#39;t think it matters if you create a single 2-port streamer or two<=
br>
1-ports streamers, but I haven&#39;t tried what you&#39;re doing so not sur=
e.<br>
<br>
&gt;<br>
&gt; // Stream command<br>
&gt; uhd::stream_cmd_t stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_=
AND_DONE);<br>
&gt; stream_cmd.num_samps=C2=A0 =3D total_num_samps;<br>
&gt; stream_cmd.stream_now =3D false;<br>
&gt; stream_cmd.time_spec=C2=A0 =3D uhd::time_spec_t(seconds_in_future);<br>
&gt; radio_ctrl-&gt;issue_stream_cmd(stream_cmd);<br>
&gt;<br>
&gt; I am trying to understand what will happen following the issue of the =
stream command. Since the stream command is for the radio block and not for=
 a specific channel it should trigger sample streaming per graph connectivi=
ty so both channels should start sending samples to replay at the same time=
. Does the record action happen automatically due to graph connectivity? Th=
ese are exactly the missing pieces of my puzzle.<br>
<br>
There is an optional 2nd argument to radio_ctrl-&gt;issue_stream_cmd(cmd,<b=
r>
port). Use the port parameter. Thus, you will need to call this<br>
function for both ports.=C2=A0 Regarding the replay &quot;record action&quo=
t;, I<br>
think that you need to send configuration commands to the replay block<br>
in the exact same fashion as if you were populating the Replay block<br>
using a tx_streamer.=C2=A0 I don&#39;t think this will happen automatically=
.<br>
<br>
&gt;<br>
&gt; Then at some arbitrary time in the future I would like to do:<br>
&gt; replay_ctrl--&gt;play(offset1,size,replay_chan0,uhd::time_spec_t(0.0),=
false);<br>
&gt; replay_ctrl--&gt;play(offset2,size,replay_chan1,uhd::time_spec_t(0.0),=
false);<br>
&gt; to dump the recorded samples to files.<br>
&gt;<br>
&gt; The issue stream command above won&#39;t trigger the rx_stream?<br>
&gt; The write to file operation is an offline operation for me and I don&#=
39;t want it to be a real-time operation that has to keep up with the recor=
ding speed.<br>
<br>
I don&#39;t know the answer. I think that issue_stream_cmd() would work.<br>
It is also likely that play() would work. I would use the same method<br>
for playout streaming that is in the Ettus example for when streaming<br>
to the radio. The replay block will not know whether it is streaming<br>
to a radio or to your rx_streamer.=C2=A0 You shouldn&#39;t have to worry ab=
out<br>
real-time operation, I think. Your slow file writing process should<br>
back pressure the streaming. But, if I am wrong on that, you can<br>
probably just play out a block at a time (while consuming with recv()<br>
a block at a time).<br>
<br>
You could create an even simpler proof-of-concept with a graph such as<br>
tx_streamer-&gt;Replay-&gt;rx_streamer.=C2=A0 See if you can record samples=
 to<br>
Replay RAM and then play them out back to the host and make sure they<br>
are the same. This would illustrate most of the concepts you need for<br>
your application which adds the Radio.<br>
<br>
&gt;<br>
&gt; Thanks for all the help.<br>
&gt;<br>
&gt; Regards,<br>
&gt; Ofer Saferman<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Tue, Feb 1, 2022 at 10:19 PM Rob Kossler &lt;<a href=3D"mailto:rkos=
sler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; I just reviewed the Replay block &quot;issue_stream_cmd&quot; and =
I think I was wrong in the previous post. This appears to operate with the =
playback buffer rather than the record buffer. So, I think you will need to=
 use plan B and call &quot;issue_stream_cmd&quot; directly on the radio con=
troller.<br>
&gt;&gt;<br>
&gt;&gt; On Tue, Feb 1, 2022 at 3:11 PM Rob Kossler &lt;<a href=3D"mailto:r=
kossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Hi Ofer,<br>
&gt;&gt;&gt; The Replay block has an &quot;issue_stream_cmd&quot; that shou=
ld work identically to the same command in the rx_streamer. You should be a=
ble to use a timed command with it.=C2=A0 Even if this doesn&#39;t work for=
 some reason, you could instead use the &quot;issue_stream_cmd&quot; direct=
ly on the Radio (using a timed command). Note that the reason for issuing i=
t at the rx_streamer or at the replay block is so that ALL blocks in the gr=
aph will get notified of the impending stream (in case any given block need=
s to prepare in some way for the impending stream). Thus, in a typical grap=
h, when you call issue_stream_cmd on the rx_streamer, this command then pro=
pagates to the DDC and ultimately to the Radio which guarantees the start s=
ample.<br>
&gt;&gt;&gt; Rob<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Tue, Feb 1, 2022 at 2:34 PM Ofer Saferman &lt;<a href=3D"ma=
ilto:ofer@navigicom.com" target=3D"_blank">ofer@navigicom.com</a>&gt; wrote=
:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Hello Rob,<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Thank you for your assistance.<br>
&gt;&gt;&gt;&gt; I will take your advice and keep it simple and use a separ=
ate port for each operation/channel.<br>
&gt;&gt;&gt;&gt; I want to do it not only to keep things simple but also be=
cause my Tx playback should never stop while my recording is timed and rare=
.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Can you or Wade comment on item (4) in my latest query? - =
How to issue recording simultaneously on two replay ports? As I mentioned, =
I know how to do timed commands on streams but not on the replay block.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Regards,<br>
&gt;&gt;&gt;&gt; Ofer Saferman<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On Tue, Feb 1, 2022 at 7:02 PM Rob Kossler &lt;<a href=3D"=
mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Oops. In step 3, I meant graph Replay-&gt;rx_streamer.=
=C2=A0 Also, in step 2, since this is a circular graph, you need to disconn=
ect property propagation on one leg of the graph (or something like that).<=
br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; On Tue, Feb 1, 2022 at 11:58 AM Rob Kossler &lt;<a hre=
f=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrot=
e:<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Hi Ofer,<br>
&gt;&gt;&gt;&gt;&gt;&gt; Considering just a single port replay block, it se=
ems that you want to do the following:<br>
&gt;&gt;&gt;&gt;&gt;&gt; Step 1: Populate Tx samples: Configure tx_streamer=
-&gt;Replay graph and populate Mem block A with Tx waveform<br>
&gt;&gt;&gt;&gt;&gt;&gt; Step 2: Transmit/Receive samples: Change graph to =
Radio-&gt;Replay-&gt;Radio=C2=A0 and &quot;play&quot; from Mem block A whil=
e recording to Mem block B<br>
&gt;&gt;&gt;&gt;&gt;&gt; Step 3: Download Rx samples: Change graph to Radio=
-&gt;rx_streamer and play samples from Mem block B<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; This seems doable to me, but you may want to start=
 with a simpler approach (such as separate ports that don&#39;t require rec=
onfiguring graphs). Also, regarding your question about a fixed number of s=
amples, I think that the limit is 2^28 samples in the NUM_SAMPS_AND_DONE op=
tion. If you need more than that, I think you are out of luck (I don&#39;t =
think there is a timed radio command to tell it to stop streaming on a give=
n sample).<br>
&gt;&gt;&gt;&gt;&gt;&gt; Rob<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; On Tue, Feb 1, 2022 at 12:18 AM Ofer Saferman &lt;=
<a href=3D"mailto:ofer@navigicom.com" target=3D"_blank">ofer@navigicom.com<=
/a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Hello Wade,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Thank you for your prompt response.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; A few more questions please:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1. I am not sure that when we say bi-direction=
al we mean the same thing. The record and playback functions derive their f=
unction to some extent from the graph connectivity. I would like, for the s=
ame port of Replay, to make 2 graphs: tx_stream --&gt; Replay --&gt; Radio,=
 Radio --&gt; Replay --&gt; rx_stream. When I do record or playback, which =
of the graphs is active? Both of them? In both directions? Can I control it=
 to activate only one direction? For Tx I want to use the record function o=
nly once to get the samples into the buffer and playback them periodically =
(same as in the rfnoc_replay_samples_from_file example) but for the other d=
irection of Rx I want to use the record function all the time. When I issue=
 the record command, which graph is active? The Tx graph? The Rx graph? Wil=
l it allow me to make the 2 graphs at all using the same port? It is my und=
erstanding that for the 2 graphs I mentioned I need two ports of replay, on=
e for each graph. Please correct me if I am wrong.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; 4. I would like to use two ports of Replay to =
record 2 Rx channels. One replay port for each Rx channel. How do I issue a=
 record command that will cause both channels (ports) to record at the same=
 time instant? I know we can do timed commands for streams but how to do it=
 for replay ? My use of the rx streams is done later in an offline fashion =
and can be done in series for each of the Rx channels but the recording of =
samples itself to DRAM has to be simultaneous.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Thanks,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Ofer Saferman<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; ---------- Forwarded message ----------<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; From: Wade Fife &lt;<a href=3D"mailto:wade=
.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; To: Ofer Saferman &lt;<a href=3D"mailto:of=
er@navigicom.com" target=3D"_blank">ofer@navigicom.com</a>&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Cc: usrp-users &lt;<a href=3D"mailto:usrp-=
users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;=
<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Bcc:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Date: Mon, 31 Jan 2022 16:52:41 -0600<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Subject: [USRP-users] Re: Questions about =
replay block<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Hi Ofer,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1. It is bidirectional. You can think of t=
he &quot;record&quot; and the &quot;play&quot; components as independent, b=
ut connected to the same memory. So be careful not to read/write to the sam=
e memory space and be aware that reading and writing simultaneously slows d=
own the DRAM making under/overflow more likely. But I think the E320 DRAM s=
hould be fast enough for your use case.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 2. The number of ports on the Replay block=
 doesn&#39;t have any restrictions that I know of. Any positive integer sho=
uld be fine. You could also leave ports unused/unconnected if it was someho=
w a problem.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 3. To record at a predetermined time for a=
 fixed amount of data, you should be able to issue a stream command with th=
e time and the number of samples you want.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; a. Yes.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; b. Yes. The first time you want to record =
data, you call record(). To record to the same buffer again, call record_re=
start(). Make sure num_samps for your stream command does not exceed the si=
ze of your record buffer, or else the radio will overflow.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; c. Yes, you need to play back the buffer. =
Since the output is connected to the rx streamer, it&#39;ll stream to the h=
ost. So you can call recv() on your rx streamer to capture the data. Someth=
ing like this (in Python):<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; replay.play(0, num_bytes, port, uhd.libpyu=
hd.types.time_spec(0.0), False)<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; rx_md =3D uhd.types.RXMetadata()<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; num_rx =3D rx_streamer.recv(output_data, r=
x_md, timeout)<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Happy coding!<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Wade<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On Mon, Jan 31, 2022 at 9:45 AM Ofer Safer=
man &lt;<a href=3D"mailto:ofer@navigicom.com" target=3D"_blank">ofer@navigi=
com.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Hello,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I am working on a E320 USRP unit and u=
sing UHD-4.1.0.5.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I prepared my own FPGA image that has =
1 radio block and 1 replay block with 2 ports (channels)<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I would like to be able to simultaneou=
sly perform playback of 1 Tx channel and recording of 2 Rx channels (to/fro=
m different memory locations)<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; The example rfnoc_replay_samples_from_=
file.cpp is only helpful to some extent because it shows only the playback =
path and I am having some difficulty setting up the recording path.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I have a few questions about the repla=
y block functionality and connectivity that I hope you may be able to resol=
ve.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1. Is the replay block bi-directional?=
 If I have a replay block with 1 channel, can it be used for both playback =
of samples and recording of samples (from/to different memory locations) si=
multaneously ? or does each operation require one channel?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 2. If the answer to question (1) is no=
 then I guess I need at least 3 replay channels. Is it possible to define i=
n the FPGA image (in the yml file) a replay block with 3 channels (ports) o=
r does it have to be a power of 2? a multiple of 2? I didn&#39;t want to tr=
y and see what happens because it takes a while to compile the FPGA image a=
nd I would rather get it right on the 1st try.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 3. I would like to issue samples recor=
ding at a predetermined time for a fixed size data chunk and then at my own=
 leisure dump the memory buffer that was recorded to a file. Since I don&#3=
9;t have a working example I am having some difficulty getting it right.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; a. The graph should be Radio --&gt;=C2=
=A0 Replay --&gt; rx_stream. Is this correct?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; b. I should start my recording with re=
play_ctrl-&gt;record_restart and check for fullness, right?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; c. Then how do I get the rx_stream to =
dump it to file? Do I need to do playback for this to happen, mirroring wha=
t is going on in the rfnoc_replay_samples_from_file example?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; If someone has a working code snippet =
I would appreciate it if they can share it.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Thanks,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Ofer Saferman<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; This message has been scanned for viru=
ses and<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; dangerous content by MailScanner, and =
is<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; believed to be clean. ________________=
_______________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; USRP-users mailing list -- <a href=3D"=
mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus=
.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; To unsubscribe send an email to <a hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-=
leave@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; __________________________________________=
_____<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; USRP-users mailing list -- <a href=3D"mail=
to:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com=
</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; To unsubscribe send an email to <a href=3D=
"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leav=
e@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; This message has been scanned for viruses and<=
br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; dangerous content by MailScanner, and is<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; believed to be clean. ________________________=
_______________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:u=
srp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>=
<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; To unsubscribe send an email to <a href=3D"mai=
lto:usrp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@li=
sts.ettus.com</a><br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt; This message has been scanned for viruses and<br>
&gt;&gt;&gt;&gt; dangerous content by MailScanner, and is<br>
&gt;&gt;&gt;&gt; believed to be clean. ____________________________________=
___________<br>
&gt;&gt;&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@li=
sts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-use=
rs-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.co=
m</a><br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; This message has been scanned for viruses and<br>
&gt; dangerous content by MailScanner, and is<br>
&gt; believed to be clean. _______________________________________________<=
br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailScanner</=
b></a>, and is
<br>believed to be clean.

</blockquote></div>
</blockquote></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--00000000000097ce4a05d70c160d--

--===============7785649441038020538==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7785649441038020538==--
