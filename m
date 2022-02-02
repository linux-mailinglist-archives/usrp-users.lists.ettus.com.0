Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E324A6D6C
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 10:03:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E9FC385384
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 04:03:00 -0500 (EST)
Received: from postman.dtnt.info (postman.dtnt.info [62.219.91.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 27EDA384DA6
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 04:02:04 -0500 (EST)
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
	by postman.dtnt.info (Postfix) with ESMTPS id 2435E41C31
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 11:00:55 +0200 (IST)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
	by o.dtnt.email (Postfix) with ESMTP id 13DCA9FFB2
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 11:00:45 +0200 (IST)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
	by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id KoLRC74uwgw2 for <usrp-users@lists.ettus.com>;
	Wed,  2 Feb 2022 11:00:43 +0200 (IST)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by o.dtnt.email (Postfix) with ESMTPSA id C470B9FF1E
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 11:00:42 +0200 (IST)
Received: by mail-wm1-f53.google.com with SMTP id l12-20020a7bc34c000000b003467c58cbdfso4018424wmj.2
        for <usrp-users@lists.ettus.com>; Wed, 02 Feb 2022 01:00:42 -0800 (PST)
X-Gm-Message-State: AOAM531IBOVHVSORKmQMbEqS6kCm+ya6UyGP9WvtRyRUbr/nvFFfRwKN
	pH+YoKqqTllMB4vpcu7EbRoPPM1Rjwkamn6F9zM=
X-Google-Smtp-Source: ABdhPJz6Pr29X94JbQsjjVsO2nLBiH8g8OL1Jq5lJGDeCJMwFmwnzclVWelC8CloFZTNpuxdSBhb8CYyGcrhaTaSDIg=
X-Received: by 2002:a05:600c:1d85:: with SMTP id p5mr5112194wms.36.1643792441824;
 Wed, 02 Feb 2022 01:00:41 -0800 (PST)
MIME-Version: 1.0
References: <164366958084.11274.12985129402155989646@mm2.emwd.com>
 <CACDReSwaUtZmNFzRrZnOb0dz3E0_RA=OD0L2dBejHXcMxd-w=w@mail.gmail.com>
 <CAB__hTT5bqDK-MPbS_1wZHFpqjP5XNp25eQdamZHhx+=QPpkuQ@mail.gmail.com>
 <CAB__hTTGRP0uBZpcs9jWT84N=7CHYtQfx1+WjcupqsdPz9FB7A@mail.gmail.com>
 <CACDReSyjBnXe5uYYAyGoAnh1+jhZSAKtz6BTfix6haDGn==rEQ@mail.gmail.com>
 <CAB__hTQxHsDTCXkLWOn9eyiFSyiMcP2DdoMFReycC2K8jNMhjw@mail.gmail.com> <CAB__hTTLwMA9Pz7_COWoff_5qCscHssxk66k5G2zL=OZFxHN0w@mail.gmail.com>
In-Reply-To: <CAB__hTTLwMA9Pz7_COWoff_5qCscHssxk66k5G2zL=OZFxHN0w@mail.gmail.com>
From: Ofer Saferman <ofer@navigicom.com>
Date: Wed, 2 Feb 2022 11:00:29 +0200
X-Gmail-Original-Message-ID: <CACDReSzP726PKt+Ja9pY+eNr=jOUx5Ei2=xN3teH2hL8t_O+Ew@mail.gmail.com>
Message-ID: <CACDReSzP726PKt+Ja9pY+eNr=jOUx5Ei2=xN3teH2hL8t_O+Ew@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: 2435E41C31.A4378
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Message-ID-Hash: 54UNSWNHZJP2ZFVSWIVJILIOHJOM6TK3
X-Message-ID-Hash: 54UNSWNHZJP2ZFVSWIVJILIOHJOM6TK3
X-MailFrom: ofer@navigicom.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ofer Saferman <ofer@navigicom.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Questions about replay block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/54UNSWNHZJP2ZFVSWIVJILIOHJOM6TK3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8503592210238276096=="

--===============8503592210238276096==
Content-Type: multipart/alternative; boundary="00000000000094607805d70540da"

--00000000000094607805d70540da
Content-Type: text/plain; charset="UTF-8"

Hello Rob,

Thank you for all the info and the assistance.

Just to tie all the loose ends:
Graph for recording will be: Radio_rx(0)-->Replay(0)-->rx_streamer,
Radio_rx(1)-->Replay(1)-->rx_streamer
Code snippet:
*graph->connect( radio_ctrl->get_block_id(),radio_chan0
,replay_ctrl->get_block_id(),replay_chan0)*
*graph->connect( radio_ctrl->get_block_id(),radio_chan1
,replay_ctrl->get_block_id(),replay_chan1) *

*uhd::rx_streamer::sptr rx_stream0 = graph->create_rx_streamer(1,
stream_args); // Is this correct? Or should I create a single 2-port
streamer and connect each port to a replay channel?*
* uhd::rx_streamer::sptr rx_stream1 = graph->create_rx_streamer(1,
stream_args); *
*graph->connect( replay_ctrl->get_block_id(),replay_chan0 ,rx_stream0, 0);*
* graph->connect( replay_ctrl->get_block_id(),replay_chan1 ,rx_stream1, 0);
*

// Stream command


*uhd::stream_cmd_t
stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);stream_cmd.num_samps
 = total_num_samps;stream_cmd.stream_now = false;*

*stream_cmd.time_spec  =
uhd::time_spec_t(seconds_in_future);radio_ctrl->issue_stream_cmd(stream_cmd);*

I am trying to understand what will happen following the issue of the
stream command. Since the stream command is for the radio block and not for
a specific channel it should trigger sample streaming per graph
connectivity so both channels should start sending samples to replay at the
same time. Does the record action happen automatically due to graph
connectivity? These are exactly the missing pieces of my puzzle.

Then at some arbitrary time in the future I would like to do:

*replay_ctrl-->play(offset1,size,replay_chan0,uhd::time_spec_t(0.0),false);
*
*
replay_ctrl-->play(offset2,size,replay_chan1,uhd::time_spec_t(0.0),false); *
to dump the recorded samples to files.

The issue stream command above won't trigger the rx_stream?
The write to file operation is an offline operation for me and I don't want
it to be a real-time operation that has to keep up with the recording speed.

Thanks for all the help.

Regards,
Ofer Saferman
















On Tue, Feb 1, 2022 at 10:19 PM Rob Kossler <rkossler@nd.edu> wrote:

> I just reviewed the Replay block "issue_stream_cmd" and I think I was
> wrong in the previous post. This appears to operate with the playback
> buffer rather than the record buffer. So, I think you will need to use plan
> B and call "issue_stream_cmd" directly on the radio controller.
>
> On Tue, Feb 1, 2022 at 3:11 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi Ofer,
>> The Replay block has an "issue_stream_cmd" that should work identically
>> to the same command in the rx_streamer. You should be able to use a timed
>> command with it.  Even if this doesn't work for some reason, you could
>> instead use the "issue_stream_cmd" directly on the Radio (using a timed
>> command). Note that the reason for issuing it at the rx_streamer or at the
>> replay block is so that ALL blocks in the graph will get notified of the
>> impending stream (in case any given block needs to prepare in some way for
>> the impending stream). Thus, in a typical graph, when you call
>> issue_stream_cmd on the rx_streamer, this command then propagates to the
>> DDC and ultimately to the Radio which guarantees the start sample.
>> Rob
>>
>> On Tue, Feb 1, 2022 at 2:34 PM Ofer Saferman <ofer@navigicom.com> wrote:
>>
>>> Hello Rob,
>>>
>>> Thank you for your assistance.
>>> I will take your advice and keep it simple and use a separate port for
>>> each operation/channel.
>>> I want to do it not only to keep things simple but also because my Tx
>>> playback should never stop while my recording is timed and rare.
>>>
>>> Can you or Wade comment on item (4) in my latest query? - How to issue
>>> recording simultaneously on two replay ports? As I mentioned, I know how to
>>> do timed commands on streams but not on the replay block.
>>>
>>> Regards,
>>> Ofer Saferman
>>>
>>> On Tue, Feb 1, 2022 at 7:02 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>
>>>> Oops. In step 3, I meant graph Replay->rx_streamer.  Also, in step 2,
>>>> since this is a circular graph, you need to disconnect property propagation
>>>> on one leg of the graph (or something like that).
>>>>
>>>> On Tue, Feb 1, 2022 at 11:58 AM Rob Kossler <rkossler@nd.edu> wrote:
>>>>
>>>>> Hi Ofer,
>>>>> Considering just a single port replay block, it seems that you want to
>>>>> do the following:
>>>>> Step 1: Populate Tx samples: Configure tx_streamer->Replay graph and
>>>>> populate Mem block A with Tx waveform
>>>>> Step 2: Transmit/Receive samples: Change graph to
>>>>> Radio->Replay->Radio  and "play" from Mem block A while recording to Mem
>>>>> block B
>>>>> Step 3: Download Rx samples: Change graph to Radio->rx_streamer and
>>>>> play samples from Mem block B
>>>>>
>>>>> This seems doable to me, but you may want to start with a simpler
>>>>> approach (such as separate ports that don't require reconfiguring graphs).
>>>>> Also, regarding your question about a fixed number of samples, I think that
>>>>> the limit is 2^28 samples in the NUM_SAMPS_AND_DONE option. If you need
>>>>> more than that, I think you are out of luck (I don't think there is a timed
>>>>> radio command to tell it to stop streaming on a given sample).
>>>>> Rob
>>>>>
>>>>> On Tue, Feb 1, 2022 at 12:18 AM Ofer Saferman <ofer@navigicom.com>
>>>>> wrote:
>>>>>
>>>>>> Hello Wade,
>>>>>>
>>>>>> Thank you for your prompt response.
>>>>>> A few more questions please:
>>>>>> 1. I am not sure that when we say bi-directional we mean the same
>>>>>> thing. The record and playback functions derive their function to some
>>>>>> extent from the graph connectivity. I would like, for the *same port*
>>>>>> of Replay, to make 2 graphs: tx_stream --> Replay --> Radio, Radio -->
>>>>>> Replay --> rx_stream. When I do record or playback, which of the graphs is
>>>>>> active? Both of them? In both directions? Can I control it to activate only
>>>>>> one direction? For Tx I want to use the record function only once to get
>>>>>> the samples into the buffer and playback them periodically (same as in the
>>>>>> rfnoc_replay_samples_from_file example) but for the other direction of Rx I
>>>>>> want to use the record function all the time. When I issue the record
>>>>>> command, which graph is active? The Tx graph? The Rx graph? Will it allow
>>>>>> me to make the 2 graphs at all using the same port? It is my understanding
>>>>>> that for the 2 graphs I mentioned I need two ports of replay, one for each
>>>>>> graph. Please correct me if I am wrong.
>>>>>> 4. I would like to use two ports of Replay to record 2 Rx channels.
>>>>>> One replay port for each Rx channel. How do I issue a record command that
>>>>>> will cause both channels (ports) to record at the same time instant? I know
>>>>>> we can do timed commands for streams but how to do it for replay ? My use
>>>>>> of the rx streams is done later in an offline fashion and can be done in
>>>>>> series for each of the Rx channels but the recording of samples itself to
>>>>>> DRAM has to be simultaneous.
>>>>>>
>>>>>> Thanks,
>>>>>> Ofer Saferman
>>>>>>
>>>>>> ---------- Forwarded message ----------
>>>>>>> From: Wade Fife <wade.fife@ettus.com>
>>>>>>> To: Ofer Saferman <ofer@navigicom.com>
>>>>>>> Cc: usrp-users <usrp-users@lists.ettus.com>
>>>>>>> Bcc:
>>>>>>> Date: Mon, 31 Jan 2022 16:52:41 -0600
>>>>>>> Subject: [USRP-users] Re: Questions about replay block
>>>>>>> Hi Ofer,
>>>>>>>
>>>>>>> 1. It is bidirectional. You can think of the "record" and the "play"
>>>>>>> components as independent, but connected to the same memory. So be careful
>>>>>>> not to read/write to the same memory space and be aware that reading and
>>>>>>> writing simultaneously slows down the DRAM making under/overflow more
>>>>>>> likely. But I think the E320 DRAM should be fast enough for your use case.
>>>>>>>
>>>>>>> 2. The number of ports on the Replay block doesn't have any
>>>>>>> restrictions that I know of. Any positive integer should be fine. You could
>>>>>>> also leave ports unused/unconnected if it was somehow a problem.
>>>>>>>
>>>>>>> 3. To record at a predetermined time for a fixed amount of data, you
>>>>>>> should be able to issue a stream command with the time and the number of
>>>>>>> samples you want.
>>>>>>> a. Yes.
>>>>>>> b. Yes. The first time you want to record data, you call record().
>>>>>>> To record to the same buffer again, call record_restart(). Make sure
>>>>>>> num_samps for your stream command does not exceed the size of your record
>>>>>>> buffer, or else the radio will overflow.
>>>>>>> c. Yes, you need to play back the buffer. Since the output is
>>>>>>> connected to the rx streamer, it'll stream to the host. So you can call
>>>>>>> recv() on your rx streamer to capture the data. Something like this (in
>>>>>>> Python):
>>>>>>> replay.play(0, num_bytes, port, uhd.libpyuhd.types.time_spec(0.0),
>>>>>>> False)
>>>>>>> rx_md = uhd.types.RXMetadata()
>>>>>>> num_rx = rx_streamer.recv(output_data, rx_md, timeout)
>>>>>>>
>>>>>>> Happy coding!
>>>>>>>
>>>>>>> Wade
>>>>>>>
>>>>>>>
>>>>>>> On Mon, Jan 31, 2022 at 9:45 AM Ofer Saferman <ofer@navigicom.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> Hello,
>>>>>>>>
>>>>>>>> I am working on a E320 USRP unit and using UHD-4.1.0.5.
>>>>>>>> I prepared my own FPGA image that has 1 radio block and 1 replay
>>>>>>>> block with 2 ports (channels)
>>>>>>>> I would like to be able to simultaneously perform playback of 1 Tx
>>>>>>>> channel and recording of 2 Rx channels (to/from different memory locations)
>>>>>>>> The example rfnoc_replay_samples_from_file.cpp is only helpful to
>>>>>>>> some extent because it shows only the playback path and I am having some
>>>>>>>> difficulty setting up the recording path.
>>>>>>>>
>>>>>>>> I have a few questions about the replay block functionality and
>>>>>>>> connectivity that I hope you may be able to resolve.
>>>>>>>>
>>>>>>>> 1. Is the replay block bi-directional? If I have a replay block
>>>>>>>> with 1 channel, can it be used for both playback of samples and recording
>>>>>>>> of samples (from/to different memory locations) simultaneously ? or does
>>>>>>>> each operation require one channel?
>>>>>>>> 2. If the answer to question (1) is no then I guess I need at least
>>>>>>>> 3 replay channels. Is it possible to define in the FPGA image (in the yml
>>>>>>>> file) a replay block with 3 channels (ports) or does it have to be a power
>>>>>>>> of 2? a multiple of 2? I didn't want to try and see what happens because it
>>>>>>>> takes a while to compile the FPGA image and I would rather get it right on
>>>>>>>> the 1st try.
>>>>>>>> 3. I would like to issue samples recording at a predetermined time
>>>>>>>> for a fixed size data chunk and then at my own leisure dump the memory
>>>>>>>> buffer that was recorded to a file. Since I don't have a working example I
>>>>>>>> am having some difficulty getting it right.
>>>>>>>> a. The graph should be Radio -->  Replay --> rx_stream. Is this
>>>>>>>> correct?
>>>>>>>> b. I should start my recording with replay_ctrl->record_restart and
>>>>>>>> check for fullness, right?
>>>>>>>> c. Then how do I get the rx_stream to dump it to file? Do I need to
>>>>>>>> do playback for this to happen, mirroring what is going on in the
>>>>>>>> rfnoc_replay_samples_from_file example?
>>>>>>>> If someone has a working code snippet I would appreciate it if they
>>>>>>>> can share it.
>>>>>>>>
>>>>>>>> Thanks,
>>>>>>>> Ofer Saferman
>>>>>>>>
>>>>>>>> --
>>>>>>>> This message has been scanned for viruses and
>>>>>>>> dangerous content by *MailScanner* <http://www.mailscanner.info/>,
>>>>>>>> and is
>>>>>>>> believed to be clean.
>>>>>>>> _______________________________________________
>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>
>>>>>>> _______________________________________________
>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>
>>>>>>
>>>>>> --
>>>>>> This message has been scanned for viruses and
>>>>>> dangerous content by *MailScanner* <http://www.mailscanner.info/>,
>>>>>> and is
>>>>>> believed to be clean. _______________________________________________
>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>
>>>>>
>>> --
>>> This message has been scanned for viruses and
>>> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and
>>> is
>>> believed to be clean. _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--00000000000094607805d70540da
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Rob,</div><div><br></div><div>Thank you for all=
 the info and the assistance.</div><div><br></div><div>Just to tie all the =
loose ends:</div><div>Graph for recording will be: Radio_rx(0)--&gt;Replay(=
0)--&gt;rx_streamer, Radio_rx(1)--&gt;Replay(1)--&gt;rx_streamer</div><div>=
Code snippet:<br></div><div><span style=3D"color:rgb(61,133,198)"><span sty=
le=3D"background-color:rgb(255,255,255)"><i>graph-&gt;connect(
radio_ctrl-&gt;get_block_id(),radio_chan0

,replay_ctrl-&gt;get_block_id(),replay_chan0)</i></span></span></div><div><=
span style=3D"color:rgb(61,133,198)"><span style=3D"background-color:rgb(25=
5,255,255)"><i>graph-&gt;connect(
radio_ctrl-&gt;get_block_id(),radio_chan1

,replay_ctrl-&gt;get_block_id(),replay_chan1)

</i></span></span></div><div><span style=3D"color:rgb(61,133,198)"><span st=
yle=3D"background-color:rgb(255,255,255)"><i>uhd::rx_streamer::sptr rx_stre=
am0 =3D graph-&gt;create_rx_streamer(1, stream_args); <span style=3D"color:=
rgb(0,255,0)">// Is this correct? Or should I create a single 2-port stream=
er and connect each port to a replay channel?</span><br></i></span></span><=
/div><div><span style=3D"color:rgb(61,133,198)"><span style=3D"background-c=
olor:rgb(255,255,255)"><i>
uhd::rx_streamer::sptr rx_stream1 =3D graph-&gt;create_rx_streamer(1, strea=
m_args);

</i></span></span></div><div><span style=3D"color:rgb(61,133,198)"><span st=
yle=3D"background-color:rgb(255,255,255)"><i>graph-&gt;connect(
replay_ctrl-&gt;get_block_id(),replay_chan0

,rx_stream0, 0);</i></span></span></div><div><span style=3D"color:rgb(61,13=
3,198)"><span style=3D"background-color:rgb(255,255,255)"><i>
graph-&gt;connect(
replay_ctrl-&gt;get_block_id(),replay_chan1

,rx_stream1, 0);

</i></span></span></div><div><br></div><div></div><div>// Stream command <b=
r></div><div><span style=3D"color:rgb(61,133,198)"><i>uhd::stream_cmd_t str=
eam_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);<br>stream_cmd.n=
um_samps =C2=A0=3D total_num_samps;<br>stream_cmd.stream_now =3D false;</i>=
</span><br><i><span style=3D"color:rgb(61,133,198)">stream_cmd.time_spec =
=C2=A0=3D uhd::time_spec_t(seconds_in_future);<br>radio_ctrl-&gt;issue_stre=
am_cmd(stream_cmd);</span></i></div><div><br></div><div>I am trying to unde=
rstand what will happen following the issue of the stream command. Since th=
e stream command is for the radio block and not for a specific channel it s=
hould trigger sample streaming per graph connectivity so both channels shou=
ld start sending samples to replay at the same time. Does the record action=
 happen automatically due to graph connectivity? These are exactly the miss=
ing pieces of my puzzle.<br></div><div><br></div><div>Then at some arbitrar=
y time in the future I would like to do: <br></div><div><span style=3D"colo=
r:rgb(61,133,198)"><i>replay_ctrl--&gt;play(offset1,size,replay_chan0,uhd::=
time_spec_t(0.0),false); <br></i></span></div><div><span style=3D"color:rgb=
(61,133,198)"><i>
replay_ctrl--&gt;play(offset2,size,replay_chan1,uhd::time_spec_t(0.0),false=
); </i></span><br></div><div>to dump the recorded samples to files.</div><d=
iv><br></div><div>The issue stream command above won&#39;t trigger the rx_s=
tream? <br></div><div>The write to file operation is an offline operation f=
or me and I don&#39;t want it to be a real-time operation that has to keep =
up with the recording speed.<br></div><div><table class=3D"gmail-memname"><=
tbody><tr><td class=3D"gmail-paramtype"><br>Thanks for all the help.<br><br=
>Regards,<br>Ofer Saferman</td><td class=3D"gmail-paramname"></td></tr><tr>=
<td class=3D"gmail-paramkey"></td><td><br></td><td class=3D"gmail-paramtype=
"><br></td><td class=3D"gmail-paramname"><br></td></tr><tr><td class=3D"gma=
il-paramkey"><br></td>
          <td><br></td>
          <td class=3D"gmail-paramtype"><br></td>
          <td class=3D"gmail-paramname"><br></td>
        </tr>
        <tr>
          <td class=3D"gmail-paramkey"><br></td>
          <td><br></td>
          <td class=3D"gmail-paramtype"><br></td>
          <td class=3D"gmail-paramname"><br></td>
        </tr>
        <tr>
          <td class=3D"gmail-paramkey"><br></td>
          <td><br></td>
          <td class=3D"gmail-paramtype"><br></td>
          <td class=3D"gmail-paramname"><br></td></tr></tbody></table>

</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Tue, Feb 1, 2022 at 10:19 PM Rob Kossler &lt;<a href=3D"mailto:rko=
ssler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr">I just reviewed the Replay bl=
ock &quot;issue_stream_cmd&quot; and I think I was wrong in the previous po=
st. This appears to operate with the playback buffer rather than the record=
 buffer. So, I think you will need to use plan B and call &quot;issue_strea=
m_cmd&quot; directly on the radio controller.</div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 1, 2022 at 3:11 PM=
 Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkoss=
ler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hi Ofer,<div>The Replay block has an &quot;issu=
e_stream_cmd&quot; that should work identically to the same command in the =
rx_streamer. You should be able to use a timed command with it.=C2=A0 Even =
if this doesn&#39;t work for some reason, you could instead use the &quot;i=
ssue_stream_cmd&quot; directly on the Radio (using a timed command). Note t=
hat the reason for issuing it at the rx_streamer or at the replay block is =
so that ALL blocks in the graph will get notified of the impending stream (=
in case any given block needs to prepare in some way for the impending stre=
am). Thus, in a typical graph, when you call issue_stream_cmd on the rx_str=
eamer, this command then propagates to the DDC and ultimately to the Radio =
which guarantees the start sample.</div><div>Rob</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 1, 2022 =
at 2:34 PM Ofer Saferman &lt;<a href=3D"mailto:ofer@navigicom.com" target=
=3D"_blank">ofer@navigicom.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello Rob,</div><div><b=
r></div><div>Thank you for your assistance.</div><div>I will take your advi=
ce and keep it simple and use a separate port for each operation/channel. <=
br></div><div>I want to do it not only to keep things simple but also becau=
se my Tx playback should never stop while my recording is timed and rare.<b=
r></div><div><br></div><div>Can you or Wade comment on item (4) in my lates=
t query? - How to issue recording simultaneously on two replay ports? As I =
mentioned, I know how to do timed commands on streams but not on the replay=
 block.<br></div><div><br></div><div>Regards,</div><div>Ofer Saferman<br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Tue, Feb 1, 2022 at 7:02 PM Rob Kossler &lt;<a href=3D"mailto:rkossl=
er@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Oops. In =
step 3, I meant graph Replay-&gt;rx_streamer.=C2=A0 Also, in step 2, since =
this is a circular graph, you need to disconnect property propagation on on=
e leg of the graph (or something like that).</div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 1, 2022 at 11:58 AM=
 Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkoss=
ler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Ofer,<div>Considering just =
a single port replay block, it seems that you want to do the following:</di=
v><div>Step 1: Populate Tx samples: Configure tx_streamer-&gt;Replay graph =
and populate Mem block A with Tx waveform</div><div>Step 2: Transmit/Receiv=
e samples: Change graph to Radio-&gt;Replay-&gt;Radio=C2=A0 and &quot;play&=
quot; from Mem block A while recording to Mem block B</div><div>Step 3: Dow=
nload Rx samples: Change graph to Radio-&gt;rx_streamer and play samples fr=
om Mem block B</div><div><br></div><div>This seems doable to me, but you ma=
y want to start with a simpler approach (such as separate ports that don&#3=
9;t require reconfiguring graphs). Also, regarding=C2=A0your question about=
 a fixed number of samples, I think that the limit is 2^28 samples in the N=
UM_SAMPS_AND_DONE option. If you need more than that, I think you are out o=
f luck (I don&#39;t think there is a timed radio command to tell it to stop=
 streaming on a given sample).</div><div>Rob</div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 1, 2022 at 12=
:18 AM Ofer Saferman &lt;<a href=3D"mailto:ofer@navigicom.com" target=3D"_b=
lank">ofer@navigicom.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello Wade,</div><div><br></d=
iv><div>Thank you for your prompt response.</div><div>A few more questions =
please:</div><div>1. I am not sure that when we say bi-directional we mean =
the same thing. The record and playback functions derive their function to =
some extent from the graph connectivity. I would like, for the <u><b>same p=
ort</b></u> of Replay, to make 2 graphs: tx_stream --&gt; Replay --&gt; Rad=
io, Radio --&gt; Replay --&gt; rx_stream. When I do record or playback, whi=
ch of the graphs is active? Both of them? In both directions? Can I control=
 it to activate only one direction? For Tx I want to use the record functio=
n only once to get the samples into the buffer and playback them periodical=
ly (same as in the
rfnoc_replay_samples_from_file example) but for the other direction of Rx I=
 want to use the record function all the time. When I issue the record comm=
and, which graph is active? The Tx graph? The Rx graph? Will it allow me to=
 make the 2 graphs at all using the same port? It is my understanding that =
for the 2 graphs I mentioned I need two ports of replay, one for each graph=
. Please correct me if I am wrong.<br></div><div>4. I would like to use two=
 ports of Replay to record 2 Rx channels. One replay port for each Rx chann=
el. How do I issue a record command that will cause both channels (ports) t=
o record at the same time instant? I know we can do timed commands for stre=
ams but how to do it for replay ? My use of the rx streams is done later in=
 an offline fashion and can be done in series for each of the Rx channels b=
ut the recording of samples itself to DRAM has to be simultaneous.</div><di=
v><br></div><div>Thanks,</div><div>Ofer Saferman<br></div><br><div class=3D=
"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">---------- =
Forwarded message ----------<br>From:=C2=A0Wade Fife &lt;<a href=3D"mailto:=
wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt;<br>To:=
=C2=A0Ofer Saferman &lt;<a href=3D"mailto:ofer@navigicom.com" target=3D"_bl=
ank">ofer@navigicom.com</a>&gt;<br>Cc:=C2=A0usrp-users &lt;<a href=3D"mailt=
o:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com<=
/a>&gt;<br>Bcc:=C2=A0<br>Date:=C2=A0Mon, 31 Jan 2022 16:52:41 -0600<br>Subj=
ect:=C2=A0[USRP-users] Re: Questions about replay block<br><div dir=3D"ltr"=
><div>Hi Ofer,</div><div><br></div><div>1. It is bidirectional. You can thi=
nk of the &quot;record&quot; and the &quot;play&quot; components as indepen=
dent, but connected to the same memory. So be careful not to read/write to =
the same memory space and be aware that reading and writing simultaneously =
slows down the DRAM making under/overflow more likely. But I think the E320=
 DRAM should be fast enough for your use case.</div><div><br></div><div>2. =
The number of ports on the Replay block doesn&#39;t have any restrictions t=
hat I know of. Any positive integer should be fine. You could also leave po=
rts unused/unconnected if it was somehow a problem.<br></div><div><br></div=
><div>3. To record at a predetermined time for a fixed amount of data, you =
should be able to issue a stream command with the time and the number of sa=
mples you want.<br></div><div>a. Yes.</div><div>b. Yes. The first time you =
want to record data, you call record(). To record to the same buffer again,=
 call record_restart(). Make sure num_samps for your stream command does no=
t exceed the size of your record buffer, or else the radio will overflow. <=
br></div><div>c. Yes, you need to play back the buffer. Since the output is=
 connected to the rx streamer, it&#39;ll stream to the host. So you can cal=
l recv() on your rx streamer to capture the data. Something like this (in P=
ython):<br>replay.play(0, num_bytes, port, uhd.libpyuhd.types.time_spec(0.0=
), False)<br>rx_md =3D uhd.types.RXMetadata()<br>num_rx =3D rx_streamer.rec=
v(output_data, rx_md, timeout)</div><div><br></div><div>Happy coding!<br></=
div><div><br></div><div>Wade<br></div><div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 31, 2022=
 at 9:45 AM Ofer Saferman &lt;<a href=3D"mailto:ofer@navigicom.com" target=
=3D"_blank">ofer@navigicom.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div><br></=
div><div>I am working on a E320 USRP unit and using UHD-4.1.0.5.<br></div><=
div>I prepared my own FPGA image that has 1 radio block and 1 replay block =
with 2 ports (channels)</div><div>I would like to be able to simultaneously=
 perform playback of 1 Tx channel and recording of 2 Rx channels (to/from d=
ifferent memory locations)</div><div>The example rfnoc_replay_samples_from_=
file.cpp is only helpful to some extent because it shows only the playback =
path and I am having some difficulty setting up the recording path.<br></di=
v><div></div><div><br></div><div>I have a few questions about the replay bl=
ock functionality and connectivity that I hope you may be able to resolve.<=
/div><div><br></div><div>1. Is the replay block bi-directional? If I have a=
 replay block with 1 channel, can it be used for both playback of samples a=
nd recording of samples (from/to different memory locations) simultaneously=
 ? or does each operation require one channel?</div><div>2. If the answer t=
o question (1) is no then I guess I need at least 3 replay channels. Is it =
possible to define in the FPGA image (in the yml file) a replay block with =
3 channels (ports) or does it have to be a power of 2? a multiple of 2? I d=
idn&#39;t want to try and see what happens because it takes a while to comp=
ile the FPGA image and I would rather get it right on the 1st try.</div><di=
v>3. I would like to issue samples recording at a predetermined time for a =
fixed size data chunk and then at my own leisure dump the memory buffer tha=
t was recorded to a file. Since I don&#39;t have a working example I am hav=
ing some difficulty getting it right. <br></div><div>a. The graph should be=
 Radio --&gt;=C2=A0 Replay --&gt; rx_stream. Is this correct? <br></div><di=
v>b. I should start my recording with replay_ctrl-&gt;record_restart and ch=
eck for fullness, right?</div><div>c. Then how do I get the rx_stream to du=
mp it to file? Do I need to do playback for this to happen, mirroring what =
is going on in the=20
rfnoc_replay_samples_from_file example? <br></div><div>If someone has a wor=
king code snippet I would appreciate it if they can share it.</div><div><br=
></div><div>Thanks,</div><div>Ofer Saferman<br></div></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailScanner</=
b></a>, and is
<br>believed to be clean.

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailScanner</=
b></a>, and is
<br>believed to be clean.

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div></div>
</blockquote></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailScanner</=
b></a>, and is
<br>believed to be clean.

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--00000000000094607805d70540da--

--===============8503592210238276096==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8503592210238276096==--
