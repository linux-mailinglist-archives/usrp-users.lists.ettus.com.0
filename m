Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC2335D253
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 23:03:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DF14A3846D6
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 17:03:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RS7dlX4y";
	dkim-atps=neutral
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 71B003845CF
	for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 17:02:38 -0400 (EDT)
Received: by mail-ed1-f43.google.com with SMTP id z1so16738347edb.8
        for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 14:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PPxHHd/vcCB+IqkZ4xDwGyfRquQUnKmY6dOJKX8H+vo=;
        b=RS7dlX4yv2t/UFTjELRGClbjz6Mfxk822dSGyW2SOrhEd7rhHZ5uNd+lQGDxUI3nIz
         wPcyLVv3vWTgwP3Mrk1MoYqZmvYgZbcjyr39k+9NOFRfnUoV/kyICSVcJ9Ee6REpeela
         fAd6UhQgVUJrzzhjWXKG5OnWvBOLLlplrJa+OPOKThZumi8zACKjB0qMHLL6OKlB0VtB
         sW9PiA2K4yX+ILi0q49+MWumxxxG/5toi99PTEhREZuZEDaavBj7AKFqOTSo6Uw0okQs
         IHORdclPQpKJnbSvT8X3V9MS0PVCEa8bZzsfRbV8kb9I7itB/bAP8RFfdLkIp6j18hfr
         /zUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PPxHHd/vcCB+IqkZ4xDwGyfRquQUnKmY6dOJKX8H+vo=;
        b=Cvnnj0w7LZ8UPZMP0DJ1dQ6RNyjrnsOfHcdfs8sZGVwRE0arQ8SpEIoTgmYnZIGGWt
         qhOgshaDaljvgpFbE0jf/2FMKnCf0RCoq9MMgsaxTAz1eUYgsEyMi4vY1UKG1DZyLc3O
         zJolTKQNuDT1B+sbjvZreG2QqP4mSLLJtNeD+WzdFsLQzcM7O3w6Tm3/yxwbzsmrJlfi
         v+n30OEvHeldgNBxXEFsy2SPPLSEjKkdbZ+dtl7eHV56CJggEJ/+bV3XoDIwW3UrYghd
         zgd0gEektYY16V6KupgWhgBl7H9GQFB3UxIbPph1MTQaRHY4btGTPE1R1mdS2h4ck/Ap
         8Sfg==
X-Gm-Message-State: AOAM531Rtt8vokUnig/GlfeBLnXuV5Oo7jgWGSvGjavyVP2VkYN498M5
	/0VbYhbnJRtxgnboPnVptwW9hpNYPmgah2yiP5NOkrdrQeU=
X-Google-Smtp-Source: ABdhPJz6lKztX4q0l41gb2uupxr0GUaJD8dXgoaLCye61sXZhTRYweFgYOkCOSf7jYe9J+X7mcG6Dft5HabuBQxcLcA=
X-Received: by 2002:aa7:c1cc:: with SMTP id d12mr31638404edp.136.1618261357486;
 Mon, 12 Apr 2021 14:02:37 -0700 (PDT)
MIME-Version: 1.0
References: <1e8db183-4501-3f1d-57e4-2a13de806012@intecs.it>
 <CAB__hTQCKvaawxqqYGuxhrbR11tbLObDQpRCAix4LsGEC2GvjQ@mail.gmail.com>
 <247eab0c-c124-c044-cc22-3c9d40c5fbe3@intecs.it> <CAB__hTTG+WRe-Z=mxafyvasnOo0rV+xMoSTd3PgagPdKo55Oig@mail.gmail.com>
 <83036548-e95a-6ffa-3c1e-d8159f545fc1@intecs.it> <CAB__hTSfhOTUfFF4dXpZ_Ss_hySf+FTYQqGO9QrdFWr=v2Wn+A@mail.gmail.com>
 <8726abaa-6398-7785-e219-5c2fc89227f3@intecs.it> <CAB__hTS-nO3NnQ1szL6HG76tHFO2uhCoQp5Y4Y5b4DjzBWrvtg@mail.gmail.com>
 <CAB__hTQ4f01iHVq+O8h6tXKOsXOfmcgQSRZMSq2BmrVaw=vt9w@mail.gmail.com>
In-Reply-To: <CAB__hTQ4f01iHVq+O8h6tXKOsXOfmcgQSRZMSq2BmrVaw=vt9w@mail.gmail.com>
From: EJ Kreinar <ejkreinar@gmail.com>
Date: Mon, 12 Apr 2021 17:02:24 -0400
Message-ID: <CADRnH22REn1mytBk0imCN99WPT0xzNRoe4_2c2HVRb_ff8MN0w@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: ANFV62GHU5S5GNT3LZAG2L7Z25UQJMWS
X-Message-ID-Hash: ANFV62GHU5S5GNT3LZAG2L7Z25UQJMWS
X-MailFrom: ejkreinar@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Luca Oliva <luca.oliva@intecs.it>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RfNoc SplitStream and FFT
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ANFV62GHU5S5GNT3LZAG2L7Z25UQJMWS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1914073580405317444=="

--===============1914073580405317444==
Content-Type: multipart/related; boundary="0000000000005e238305bfccd547"

--0000000000005e238305bfccd547
Content-Type: multipart/alternative; boundary="0000000000005e238205bfccd546"

--0000000000005e238205bfccd546
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I've fought similar problems before. Rfnoc < UHD 4.0 has trouble
arbitrarily propagating downstream connections ports back to the radio in
some edge cases.

I think the use case I had was trying to attach either channel (0 or 1) to
a single channel ddc... A few years back I put out a "hack" PR that swaps
the radio channel behind the scenes, while keeping the output port the
same: https://github.com/EttusResearch/uhd/pull/164

You may be able to work around it with a custom router block as Rob
suggested... Attach both ports back to the radio, then provide a hook
inside the user code to mux in the channel you want to use? That might
actually avoid the edge case I hacked around, because you would have both
radio channels attached at the time you issue the stream command, so both
channels would start streaming then. Sounds possible but may need to test
it and inspect the UHD source to see for sure.

EJ


On Mon, Apr 12, 2021, 11:50 AM Rob Kossler <rkossler@nd.edu> wrote:

> Or, another option could be to add a null sink block to your build and
> connect one of the two radio ports to it. The problem with this is that y=
ou
> would need to dynamically re-link your graph each time you wanted to swit=
ch
> radio ports (connecting the unwanted port to the null sink and the desire=
d
> port to the SplitStream).  This may not be practical if you need to switc=
h
> ports frequently / quickly.
> Rob
>
> On Mon, Apr 12, 2021 at 11:44 AM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi Luca,
>> I don't think that there is a way to change the RF front end associated
>> with a given Radio block port - I think this is fixed (maybe someone can
>> correct me if I'm wrong on this). So, I think your graph will need to
>> include two Radio ports and that you will need an RF multiplexer capabil=
ity
>> between the Radio and the SplitStream.  In UHD 4.0 (RFNoC 4.0), there is
>> such a block (SwitchBoard) but I don't think that there is a correspondi=
ng
>> block for UHD 3.13.  You could develop such a stand-alone RFNoC block
>> (perhaps using the SwitchBoard block as an example) or perhaps you could
>> modify the SplitStream block to have 2 inputs and a multiplexer capabili=
ty.
>> Rob
>>
>> On Mon, Apr 12, 2021 at 10:47 AM Luca Oliva <luca.oliva@intecs.it> wrote=
:
>>
>>> Hi Rob,
>>>
>>> the question is exactly that! Is there a way to change the radio channe=
l
>>> between two receive?
>>> Il 12/04/21 16:00, Rob Kossler ha scritto:
>>>
>>> Hi Luca,
>>> You mentioned that you need to capture alternately from the two radio
>>> channels.  Can you share the graph you are implementing (the graph belo=
w
>>> shows only 1 radio channel)?
>>> Rob
>>>
>>> On Mon, Apr 12, 2021 at 4:23 AM Luca Oliva <luca.oliva@intecs.it> wrote=
:
>>>
>>>> Unfortunately I haven't enough FPGA resources to insert a DDC block.
>>>>
>>>> I've tried to issue the STREAM_MODE_NUM_SAMPS_AND_DONE command directl=
y
>>>> to the Radio block and It seems to work, after a hundred of command th=
e FFT
>>>> is still aligned to time domain capture.
>>>>
>>>> The problem now is that I need to capture alternately from the two
>>>> radio channels.
>>>>
>>>> As first test I've tried to connect statically the second output of th=
e
>>>> Radio block to the SplitStream but It doesn't work. Receive fails with
>>>> timeout error.
>>>>
>>>> Luca
>>>> Il 08/04/21 03:25, Rob Kossler ha scritto:
>>>>
>>>> Is it possible (enough FPGA resources) for you to insert the DDC block
>>>> after the Radio in your graph and before the SplitStream? And, is your=
 FFT
>>>> size small enough that you can set the Radio SPP equal to the FFT leng=
th?
>>>> If both of these are true, I think this will solve your issue. The DDC
>>>> block will then provide output packets that are exactly the length of =
the
>>>> FFT and there will be no residual samples at the end.
>>>>
>>>> I think it "should" be possible to get the "reset" to work, but I am
>>>> not certain.  My plan of attack would be to wait until after flush and=
 then
>>>> set fft_reset=3D1 and then fft_reset=3D0 and then reconfigure the fft =
with all
>>>> needed settings.  But, if this doesn't work, I suppose that it is poss=
ible
>>>> that there is a FIFO (at the input of the FFT block or at the output o=
f the
>>>> Radio or SplitStream block where the residual samples are "stuck".
>>>>
>>>> Finally, regarding the "Late" command, perhaps you could try to
>>>> "issue_stream_cmd" directly to the radio rather than to the rx_streame=
r.
>>>> When you call this function from the rx_streamer, the command propagat=
es
>>>> upstream on the graph until it gets to the radio. But since you have a
>>>> SplitStream in your graph, maybe there is some bug in the propagation.=
 I
>>>> think you could call this same function directly on the Radio controll=
er
>>>> and it may solve the Late issue.
>>>>
>>>> Rob
>>>>
>>>> On Wed, Apr 7, 2021 at 12:39 PM Luca Oliva <luca.oliva@intecs.it>
>>>> wrote:
>>>>
>>>>> Hi Rob,
>>>>>
>>>>> Some update:
>>>>>
>>>>> 1) The ERROR_CODE_LATE_COMMAND error using
>>>>> STREAM_MODE_NUM_SAMPS_AND_DONE happens only if I put stream_now=3Dfal=
se (I
>>>>> set time_spec with a future value obviously).
>>>>>
>>>>> 2) I've tried to set fft_reset=3D1 before STREAM_MODE_STOP_CONTINUOUS
>>>>> command, after it or after buffer flush but the problem is still pres=
ent.
>>>>>
>>>>> Luca
>>>>> Il 06/04/21 14:58, Rob Kossler ha scritto:
>>>>>
>>>>> Hi Luca,
>>>>> I don't know the overall solution, but I have some comments about
>>>>> using the FFT block.  I have never had success with this block unless=
 I
>>>>> ensure that the block never receives a "partial FFT" block of samples=
.
>>>>>
>>>>> One way to ensure this is to use the DDC block (Radio->DDC->FFT) and
>>>>> you set the radio SPP equal to the FFT length.  The only purpose of t=
he DDC
>>>>> in this case is that it only processes "full packets" and discards th=
e
>>>>> final "partial packet". Thus, it will ensure that the FFT also receiv=
es
>>>>> only full packets.
>>>>>
>>>>> Another way to ensure this is to use the NUM_SAMPS_AND_DONE you
>>>>> mentioned.  As long as this number is a multiple of the FFT size, it =
should
>>>>> be fine for the FFT block.  I'm not sure why you were getting the Lat=
e
>>>>> error.
>>>>>
>>>>> When you use CONTINUOUS mode, you are basically ensuring that the FFT
>>>>> will work fine the first time but then partially fill with the traili=
ng
>>>>> samples.  The next time you start, the FFT block will complete the fi=
lling
>>>>> process, but your data will be misaligned.  Perhaps you could use the
>>>>> "fft_reset" functionality to reset the block every time but this will
>>>>> likely mean that you need to re-configure the FFT length, scale, dire=
ction,
>>>>> etc.
>>>>> Rob
>>>>>
>>>>> On Tue, Apr 6, 2021 at 6:31 AM Luca Oliva <luca.oliva@intecs.it>
>>>>> wrote:
>>>>>
>>>>>> Hi,
>>>>>>
>>>>>> I've an Ettus E310 with UHD 3.13.1.0
>>>>>>
>>>>>>
>>>>>> I need to receive some samples both in time domain than frequency
>>>>>> domain. I=E2=80=99m trying to do that using this rfnoc graph:
>>>>>>
>>>>>> +---------+        +--------------+
>>>>>> |         |        |              |---------------------> RxStreamer
>>>>>> Ch 0
>>>>>> | Radio   |------->| SplitStream  |       +-------+
>>>>>> |         |        |              |------>| FFT   |-----> RxStreamer
>>>>>> Ch 1
>>>>>> +---------+        +--------------+       +-------+
>>>>>>
>>>>>>
>>>>>> uhd::rfnoc::block_id_t radio_ctrl_id(0, "Radio", 0);
>>>>>> uhd::rfnoc::block_id_t split_ctrl_id(0, "SplitStream", 0);
>>>>>> uhd::rfnoc::block_id_t fft_ctrl_id(0, "FFT", 0);
>>>>>>
>>>>>> uhd::rfnoc::source_block_ctrl_base::sptr fft_blk_ctrl =3D
>>>>>>
>>>>>> m_Usrp->get_block_ctrl<uhd::rfnoc::source_block_ctrl_base>(fft_ctrl_=
id);
>>>>>>
>>>>>> m_RadioCtrl =3D m_Usrp->get_block_ctrl< uhd::rfnoc::radio_ctrl
>>>>>>  >(radio_ctrl_id);
>>>>>> m_RadioCtrl->set_rate(16e6);
>>>>>> m_RadioCtrl->set_arg<int>("spp", 2048);
>>>>>> fft_blk_ctrl->set_arg<int>("spp", 2048);
>>>>>>
>>>>>> m_Usrp->clear();
>>>>>>
>>>>>> m_Graph =3D m_Usrp->create_graph("rfnoc_rx");
>>>>>> m_Graph->connect(radio_ctrl_id, 0, split_ctrl_id, 0);
>>>>>> m_Graph->connect(split_ctrl_id, 1, fft_ctrl_id, 0);
>>>>>>
>>>>>> uhd::device_addr_t streamer_args("");
>>>>>> streamer_args["block_id0"] =3D split_ctrl_id.to_string();
>>>>>> streamer_args["block_port0"] =3D str(boost::format("%d") % 0);
>>>>>> streamer_args["block_id1"] =3D fft_ctrl_id.to_string();
>>>>>> streamer_args["block_port1"] =3D str(boost::format("%d") % 0);
>>>>>>
>>>>>> uhd::stream_args_t stream_args_fc32("sc16", "sc16");
>>>>>> stream_args_fc32.channels =3D { 0, 1 };
>>>>>> stream_args_fc32.args =3D streamer_args;
>>>>>> stream_args_fc32.args["spp"] =3D boost::lexical_cast<std::string>(20=
48);
>>>>>> m_RxStreamerFc32 =3D m_Usrp->get_rx_stream(stream_args_fc32);
>>>>>>
>>>>>> I need to receive a burst in a precise moment, elaborate it and
>>>>>> restart
>>>>>> on a different frequency (I need also to change radio channel becaus=
e
>>>>>> I've two different antennas).
>>>>>>
>>>>>> I've tried
>>>>>>
>>>>>> uhd::stream_cmd_t
>>>>>> stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);
>>>>>> stream_cmd.num_samps =3D
>>>>>> size_t(nBurstLen*MAX_DIM_SAMPLES_FRAME_FOR_RSA);
>>>>>> stream_cmd.stream_now =3D false;
>>>>>> stream_cmd.time_spec =3D m_RadioCtrl->get_time_now()+1.0;
>>>>>> m_RxStreamerFc32->issue_stream_cmd(stream_cmd);
>>>>>>
>>>>>> but the receive fails with ERROR_CODE_LATE_COMMAND.
>>>>>>
>>>>>> I've tried issuing the STREAM_MODE_START_CONTINUOUS command and it
>>>>>> seems
>>>>>> to work correctly until I don't send a STREAM_MODE_STOP_CONTINUOUS
>>>>>> command.
>>>>>>
>>>>>> After a STREAM_MODE_STOP_CONTINUOUS command I flush the buffer with =
a
>>>>>> receive loop:
>>>>>>
>>>>>> while(m_RxStreamerFc32->recv(buff, 2048, uselessMd, 0.010, false));
>>>>>>
>>>>>> The problem I'm observing is that since second start the FFT samples
>>>>>> lost alignment with the time samples and after some stop and start
>>>>>> the
>>>>>> receive fails often with Overflow errors and than stops definitely t=
o
>>>>>> work with Timeout errors
>>>>>>
>>>>>> Someone else have this problem?
>>>>>>
>>>>>>
>>>>>> Regards,
>>>>>>
>>>>>> Luca
>>>>>>
>>>>>>
>>>>>> LEGAL DISCLAIMER:
>>>>>> The contents of this email and any transmitted files are confidentia=
l
>>>>>> and intended solely for the use of the individual or entity to whom =
they
>>>>>> are addressed. We hereby exclude any warranty and any liability as t=
o the
>>>>>> quality or accuracy of the contents of this email and any attached
>>>>>> transmitted files. If you are not the intended recipient, be advised=
 that
>>>>>> you have received this email in error and that any use, disseminatio=
n,
>>>>>> forwarding, printing or copying of this email is strictly prohibited=
. If
>>>>>> you have received this email in error please contact the sender and =
delete
>>>>>> the material from any computer.
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>
>>>>> --
>>>>> *ing. Luca Oliva*
>>>>> Senior Developer Engineer
>>>>>
>>>>> [image: Intecs Solutions S.p.A.]
>>>>>
>>>>> *Intecs Solutions S.p.A.*
>>>>> Via Ferrante Imparato 198
>>>>> Isola F - 80146 Napoli - Italy
>>>>> Phone: +39 081 19718400
>>>>> email: luca.oliva@intecs.it
>>>>>
>>>>> LEGAL DISCLAIMER: The contents of this email and any transmitted file=
s
>>>>> are confidential and intended solely for the use of the individual or
>>>>> entity to whom they are addressed. We hereby exclude any warranty and=
 any
>>>>> liability as to the quality or accuracy of the contents of this email=
 and
>>>>> any attached transmitted files. If you are not the intended recipient=
, be
>>>>> advised that you have received this email in error and that any use,
>>>>> dissemination, forwarding, printing or copying of this email is stric=
tly
>>>>> prohibited. If you have received this email in error please contact t=
he
>>>>> sender and delete the material from any computer.  =C2=AD=C2=AD
>>>>>
>>>> --
>>>> *ing. Luca Oliva*
>>>> Senior Developer Engineer
>>>>
>>>> [image: Intecs Solutions S.p.A.]
>>>>
>>>> *Intecs Solutions S.p.A.*
>>>> Via Ferrante Imparato 198
>>>> Isola F - 80146 Napoli - Italy
>>>> Phone: +39 081 19718400
>>>> email: luca.oliva@intecs.it
>>>>
>>>> LEGAL DISCLAIMER: The contents of this email and any transmitted files
>>>> are confidential and intended solely for the use of the individual or
>>>> entity to whom they are addressed. We hereby exclude any warranty and =
any
>>>> liability as to the quality or accuracy of the contents of this email =
and
>>>> any attached transmitted files. If you are not the intended recipient,=
 be
>>>> advised that you have received this email in error and that any use,
>>>> dissemination, forwarding, printing or copying of this email is strict=
ly
>>>> prohibited. If you have received this email in error please contact th=
e
>>>> sender and delete the material from any computer.  =C2=AD=C2=AD
>>>>
>>> --
>>> *ing. Luca Oliva*
>>> Senior Developer Engineer
>>>
>>> [image: Intecs Solutions S.p.A.]
>>>
>>> *Intecs Solutions S.p.A.*
>>> Via Ferrante Imparato 198
>>> Isola F - 80146 Napoli - Italy
>>> Phone: +39 081 19718400
>>> email: luca.oliva@intecs.it
>>>
>>> LEGAL DISCLAIMER: The contents of this email and any transmitted files
>>> are confidential and intended solely for the use of the individual or
>>> entity to whom they are addressed. We hereby exclude any warranty and a=
ny
>>> liability as to the quality or accuracy of the contents of this email a=
nd
>>> any attached transmitted files. If you are not the intended recipient, =
be
>>> advised that you have received this email in error and that any use,
>>> dissemination, forwarding, printing or copying of this email is strictl=
y
>>> prohibited. If you have received this email in error please contact the
>>> sender and delete the material from any computer.  =C2=AD=C2=AD
>>>
>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005e238205bfccd546
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>I&#39;ve fought similar problems before. Rfnoc &lt; =
UHD 4.0 has trouble arbitrarily propagating downstream connections ports ba=
ck to the radio in some edge cases.=C2=A0<div dir=3D"auto"><br></div><div d=
ir=3D"auto">I think the use case I had was trying to attach either channel =
(0 or 1) to a single channel ddc... A few years back I put out a &quot;hack=
&quot; PR that swaps the radio channel behind the scenes, while keeping the=
 output port the same:=C2=A0<a href=3D"https://github.com/EttusResearch/uhd=
/pull/164">https://github.com/EttusResearch/uhd/pull/164</a></div><div dir=
=3D"auto"><br></div><div dir=3D"auto"><span style=3D"font-family:sans-serif=
">You may be able to work around it with a custom router block as Rob sugge=
sted... Attach both ports back to the radio, then provide a hook inside the=
 user code to mux in the channel you want to use? That might actually avoid=
 the edge case I hacked around, because you would have both radio channels =
attached at the time you issue the stream command, so both channels would s=
tart streaming then. Sounds possible but may need to test it and inspect th=
e UHD source to see for sure.=C2=A0</span><br></div><div dir=3D"auto"><span=
 style=3D"font-family:sans-serif"><br></span></div><div dir=3D"auto"><span =
style=3D"font-family:sans-serif">EJ</span></div><br><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 12, 2021, 11:50 A=
M Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Or, anoth=
er option could be to add a null sink block to your build and connect one o=
f the two radio ports to it. The problem with this is that you would need t=
o dynamically re-link your graph each time you wanted to switch radio ports=
 (connecting the unwanted port to the null sink and the desired port to the=
 SplitStream).=C2=A0 This may not be practical if you need to switch ports =
frequently / quickly.<div>Rob</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 12, 2021 at 11:44 AM Rob Kos=
sler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank" rel=3D"norefe=
rrer">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div>Hi Luca,</div><div>I don&#39;t t=
hink that there is a way to change the RF front end associated with a given=
 Radio block port - I think this is fixed (maybe someone can correct me if =
I&#39;m wrong on this). So, I think your graph will need to include two Rad=
io ports and that you will need an RF multiplexer capability between the Ra=
dio and the SplitStream.=C2=A0 In UHD 4.0 (RFNoC 4.0), there is such a bloc=
k (SwitchBoard) but I don&#39;t=C2=A0think that there is a corresponding bl=
ock for UHD 3.13.=C2=A0 You could develop such a stand-alone RFNoC block (p=
erhaps using the SwitchBoard block as an example) or perhaps you could modi=
fy the SplitStream block to have 2 inputs and a multiplexer capability.</di=
v><div>Rob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Mon, Apr 12, 2021 at 10:47 AM Luca Oliva &lt;<a href=3D"mailto=
:luca.oliva@intecs.it" target=3D"_blank" rel=3D"noreferrer">luca.oliva@inte=
cs.it</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
 =20
   =20
 =20
  <div>
    <p>Hi Rob,</p>
    <p>the question is exactly that! Is there a way to change the radio
      channel between two receive?<br>
    </p>
    <div>Il 12/04/21 16:00, Rob Kossler ha
      scritto:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr">Hi Luca,
          <div>You mentioned that you need to capture alternately from
            the two radio channels.=C2=A0 Can you share the graph you are
            implementing (the graph below shows only 1 radio channel)?</div=
>
        </div>
        Rob
        <div><br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 12, 2021 at
              4:23 AM Luca Oliva &lt;<a href=3D"mailto:luca.oliva@intecs.it=
" target=3D"_blank" rel=3D"noreferrer">luca.oliva@intecs.it</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
              <div>
                <p>Unfortunately I haven&#39;t enough FPGA resources to
                  insert a DDC block.</p>
                <p>I&#39;ve tried to issue the
                  STREAM_MODE_NUM_SAMPS_AND_DONE command directly to the
                  Radio block and It seems to work, after a hundred of
                  command the FFT is still aligned to time domain
                  capture.</p>
                <p>The problem now is that I need to capture alternately
                  from the two radio channels.</p>
                <p>As first test I&#39;ve tried to connect statically the
                  second output of the Radio block to the SplitStream
                  but It doesn&#39;t work. Receive fails with timeout error=
.</p>
                <p>Luca<br>
                </p>
                <div>Il 08/04/21 03:25, Rob Kossler ha scritto:<br>
                </div>
                <blockquote type=3D"cite">
                  <div dir=3D"ltr">Is it possible (enough FPGA resources)
                    for you to insert the DDC block after the Radio in
                    your graph and before the SplitStream? And, is your
                    FFT size small enough that you can set the Radio SPP
                    equal to the FFT length? If both of these are true,
                    I think this will solve your issue. The DDC block
                    will then provide output packets that are exactly
                    the length of the FFT and there will be no residual
                    samples at the end.
                    <div><br>
                    </div>
                    <div>
                      <div>I think it &quot;should&quot; be possible to get=
 the
                        &quot;reset&quot; to work, but I am not certain.=C2=
=A0 My plan
                        of attack would be to wait until after flush and
                        then set fft_reset=3D1 and then fft_reset=3D0 and
                        then reconfigure the fft with all needed
                        settings.=C2=A0 But, if this doesn&#39;t work, I su=
ppose
                        that it is possible that there is a FIFO (at the
                        input of the FFT block or at the output of the
                        Radio or SplitStream block where the residual
                        samples are &quot;stuck&quot;.</div>
                    </div>
                    <div><br>
                    </div>
                    <div>Finally, regarding the &quot;Late&quot; command, p=
erhaps
                      you could try to &quot;issue_stream_cmd&quot; directl=
y to
                      the radio rather than to the rx_streamer.=C2=A0 When
                      you call this function from the rx_streamer, the
                      command propagates upstream on the graph until it
                      gets to the radio. But since you have a
                      SplitStream in your graph, maybe there is some bug
                      in the propagation. I think you could call this
                      same function directly on the Radio controller and
                      it may solve the Late issue.</div>
                    <div><br>
                    </div>
                    <div>Rob</div>
                  </div>
                  <br>
                  <div class=3D"gmail_quote">
                    <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 7,
                      2021 at 12:39 PM Luca Oliva &lt;<a href=3D"mailto:luc=
a.oliva@intecs.it" target=3D"_blank" rel=3D"noreferrer">luca.oliva@intecs.i=
t</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                      <div>
                        <p>Hi Rob,</p>
                        <p>Some update:</p>
                        <p>1) The ERROR_CODE_LATE_COMMAND error using
                          STREAM_MODE_NUM_SAMPS_AND_DONE happens only if
                          I put stream_now=3Dfalse (I set time_spec with a
                          future value obviously).</p>
                        <p>2) I&#39;ve tried to set fft_reset=3D1 before
                          STREAM_MODE_STOP_CONTINUOUS command, after it
                          or after buffer flush but the problem is still
                          present.<br>
                        </p>
                        <p>Luca<br>
                        </p>
                        <div>Il 06/04/21 14:58, Rob Kossler ha scritto:<br>
                        </div>
                        <blockquote type=3D"cite">
                          <div dir=3D"ltr">
                            <div dir=3D"ltr">Hi Luca,
                              <div>I don&#39;t know the overall solution,
                                but I have some comments about using the
                                FFT block.=C2=A0 I have never had success
                                with this block unless I ensure that the
                                block never receives a &quot;partial FFT&qu=
ot;
                                block of samples.=C2=A0=C2=A0</div>
                              <div><br>
                              </div>
                              <div>One way to ensure this is to use the
                                DDC block (Radio-&gt;DDC-&gt;FFT) and
                                you set the radio SPP equal to the FFT
                                length.=C2=A0 The only purpose of the DDC i=
n
                                this case is that it only processes
                                &quot;full packets&quot; and discards the f=
inal
                                &quot;partial packet&quot;. Thus, it will e=
nsure
                                that the FFT also receives only full
                                packets.</div>
                              <div><br>
                              </div>
                              <div>Another way to ensure this is to use
                                the NUM_SAMPS_AND_DONE you mentioned.=C2=A0
                                As long as this number is a multiple of
                                the FFT size, it should be fine for the
                                FFT block.=C2=A0 I&#39;m not sure why you w=
ere
                                getting the Late error.</div>
                              <div><br>
                              </div>
                              <div>When you use CONTINUOUS mode, you are
                                basically ensuring that the FFT will
                                work fine the first time but then
                                partially fill with the trailing
                                samples.=C2=A0 The next time you start, the
                                FFT block will complete the filling
                                process, but your data will be
                                misaligned.=C2=A0 Perhaps you could use the
                                &quot;fft_reset&quot; functionality to rese=
t the
                                block every time but this will likely
                                mean that you need to re-configure the
                                FFT length, scale, direction, etc.</div>
                              <div>Rob</div>
                            </div>
                            <br>
                            <div class=3D"gmail_quote">
                              <div dir=3D"ltr" class=3D"gmail_attr">On Tue,
                                Apr 6, 2021 at 6:31 AM Luca Oliva &lt;<a hr=
ef=3D"mailto:luca.oliva@intecs.it" target=3D"_blank" rel=3D"noreferrer">luc=
a.oliva@intecs.it</a>&gt;
                                wrote:<br>
                              </div>
                              <blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">Hi,<br>
                                <br>
                                I&#39;ve an Ettus E310 with UHD 3.13.1.0<br=
>
                                <br>
                                <br>
                                I need to receive some samples both in
                                time domain than frequency <br>
                                domain. I=E2=80=99m trying to do that using=
 this
                                rfnoc graph:<br>
                                <br>
                                +---------+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 +--------------+<br>
                                |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                |---------------------&gt; RxStreamer Ch
                                0<br>
                                | Radio=C2=A0=C2=A0 |-------&gt;| SplitStre=
am=C2=A0
                                |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +----=
---+<br>
                                |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                |------&gt;| FFT=C2=A0=C2=A0 |-----&gt; RxS=
treamer
                                Ch 1<br>
                                +---------+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0
                                +--------------+=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 +-------+<br>
                                <br>
                                <br>
                                uhd::rfnoc::block_id_t radio_ctrl_id(0,
                                &quot;Radio&quot;, 0);<br>
                                uhd::rfnoc::block_id_t split_ctrl_id(0,
                                &quot;SplitStream&quot;, 0);<br>
                                uhd::rfnoc::block_id_t fft_ctrl_id(0,
                                &quot;FFT&quot;, 0);<br>
                                <br>
                                uhd::rfnoc::source_block_ctrl_base::sptr
                                fft_blk_ctrl =3D <br>
m_Usrp-&gt;get_block_ctrl&lt;uhd::rfnoc::source_block_ctrl_base&gt;(fft_ctr=
l_id);<br>
                                <br>
                                m_RadioCtrl =3D
                                m_Usrp-&gt;get_block_ctrl&lt;
                                uhd::rfnoc::radio_ctrl <br>
                                =C2=A0&gt;(radio_ctrl_id);<br>
                                m_RadioCtrl-&gt;set_rate(16e6);<br>
m_RadioCtrl-&gt;set_arg&lt;int&gt;(&quot;spp&quot;, 2048);<br>
fft_blk_ctrl-&gt;set_arg&lt;int&gt;(&quot;spp&quot;, 2048);<br>
                                <br>
                                m_Usrp-&gt;clear();<br>
                                <br>
                                m_Graph =3D
                                m_Usrp-&gt;create_graph(&quot;rfnoc_rx&quot=
;);<br>
                                m_Graph-&gt;connect(radio_ctrl_id, 0,
                                split_ctrl_id, 0);<br>
                                m_Graph-&gt;connect(split_ctrl_id, 1,
                                fft_ctrl_id, 0);<br>
                                <br>
                                uhd::device_addr_t streamer_args(&quot;&quo=
t;);<br>
                                streamer_args[&quot;block_id0&quot;] =3D
                                split_ctrl_id.to_string();<br>
                                streamer_args[&quot;block_port0&quot;] =3D
                                str(boost::format(&quot;%d&quot;) % 0);<br>
                                streamer_args[&quot;block_id1&quot;] =3D
                                fft_ctrl_id.to_string();<br>
                                streamer_args[&quot;block_port1&quot;] =3D
                                str(boost::format(&quot;%d&quot;) % 0);<br>
                                <br>
                                uhd::stream_args_t
                                stream_args_fc32(&quot;sc16&quot;, &quot;sc=
16&quot;);<br>
                                stream_args_fc32.channels =3D { 0, 1 };<br>
                                stream_args_fc32.args =3D streamer_args;<br=
>
                                stream_args_fc32.args[&quot;spp&quot;] =3D
                                boost::lexical_cast&lt;std::string&gt;(2048=
);<br>
                                m_RxStreamerFc32 =3D
                                m_Usrp-&gt;get_rx_stream(stream_args_fc32);=
<br>
                                <br>
                                I need to receive a burst in a precise
                                moment, elaborate it and restart <br>
                                on a different frequency (I need also to
                                change radio channel because <br>
                                I&#39;ve two different antennas).<br>
                                <br>
                                I&#39;ve tried<br>
                                <br>
                                uhd::stream_cmd_t <br>
stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);<br>
                                stream_cmd.num_samps =3D
                                size_t(nBurstLen*MAX_DIM_SAMPLES_FRAME_FOR_=
RSA);<br>
                                stream_cmd.stream_now =3D false;<br>
                                stream_cmd.time_spec =3D
                                m_RadioCtrl-&gt;get_time_now()+1.0;<br>
m_RxStreamerFc32-&gt;issue_stream_cmd(stream_cmd);<br>
                                <br>
                                but the receive fails with
                                ERROR_CODE_LATE_COMMAND.<br>
                                <br>
                                I&#39;ve tried issuing the
                                STREAM_MODE_START_CONTINUOUS command and
                                it seems <br>
                                to work correctly until I don&#39;t send a
                                STREAM_MODE_STOP_CONTINUOUS command.<br>
                                <br>
                                After a STREAM_MODE_STOP_CONTINUOUS
                                command I flush the buffer with a <br>
                                receive loop:<br>
                                <br>
                                while(m_RxStreamerFc32-&gt;recv(buff,
                                2048, uselessMd, 0.010, false));<br>
                                <br>
                                The problem I&#39;m observing is that since
                                second start the FFT samples <br>
                                lost alignment with the time samples and
                                after some stop and start the <br>
                                receive fails often with Overflow errors
                                and than stops definitely to <br>
                                work with Timeout errors<br>
                                <br>
                                Someone else have this problem?<br>
                                <br>
                                <br>
                                Regards,<br>
                                <br>
                                Luca<br>
                                <br>
                                <br>
                                LEGAL DISCLAIMER:<br>
                                The contents of this email and any
                                transmitted files are confidential and
                                intended solely for the use of the
                                individual or entity to whom they are
                                addressed. We hereby exclude any
                                warranty and any liability as to the
                                quality or accuracy of the contents of
                                this email and any attached transmitted
                                files. If you are not the intended
                                recipient, be advised that you have
                                received this email in error and that
                                any use, dissemination, forwarding,
                                printing or copying of this email is
                                strictly prohibited. If you have
                                received this email in error please
                                contact the sender and delete the
                                material from any computer.<br>
_______________________________________________<br>
                                USRP-users mailing list -- <a href=3D"mailt=
o:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-use=
rs@lists.ettus.com</a><br>
                                To unsubscribe send an email to <a href=3D"=
mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank" rel=3D"noreferre=
r">usrp-users-leave@lists.ettus.com</a><br>
                              </blockquote>
                            </div>
                          </div>
                        </blockquote>
                        <div>-- <br>
                          <span style=3D"font-size:10pt;color:navy"> <b>ing=
.
                              Luca Oliva</b><br>
                            Senior Developer Engineer<br>
                            <br>
                            <img src=3D"cid:178c6ae9d87ff41823f1" alt=3D"In=
tecs Solutions S.p.A."><br>
                            <br>
                            <b>Intecs Solutions S.p.A.</b><br>
                            Via Ferrante Imparato 198<br>
                            Isola F - 80146 Napoli - Italy<br>
                            Phone: +39 081 19718400<br>
                            email: <a href=3D"mailto:luca.oliva@intecs.it" =
target=3D"_blank" rel=3D"noreferrer">luca.oliva@intecs.it</a>
                          </span></div>
                        <br>
                        LEGAL DISCLAIMER: The contents of this email and
                        any transmitted files are confidential and
                        intended solely for the use of the individual or
                        entity to whom they are addressed. We hereby
                        exclude any warranty and any liability as to the
                        quality or accuracy of the contents of this
                        email and any attached transmitted files. If you
                        are not the intended recipient, be advised that
                        you have received this email in error and that
                        any use, dissemination, forwarding, printing or
                        copying of this email is strictly prohibited. If
                        you have received this email in error please
                        contact the sender and delete the material from
                        any computer.=C2=A0=C2=A0=C2=AD=C2=AD=C2=A0=C2=A0</=
div>
                    </blockquote>
                  </div>
                </blockquote>
                <div>-- <br>
                  <span style=3D"font-size:10pt;color:navy"> <b>ing. Luca
                      Oliva</b><br>
                    Senior Developer Engineer<br>
                    <br>
                    <img src=3D"cid:178c6ae9d87ff41823f1" alt=3D"Intecs Sol=
utions S.p.A."><br>
                    <br>
                    <b>Intecs Solutions S.p.A.</b><br>
                    Via Ferrante Imparato 198<br>
                    Isola F - 80146 Napoli - Italy<br>
                    Phone: +39 081 19718400<br>
                    email: <a href=3D"mailto:luca.oliva@intecs.it" target=
=3D"_blank" rel=3D"noreferrer">luca.oliva@intecs.it</a>
                  </span></div>
                <br>
                LEGAL DISCLAIMER:
                The contents of this email and any transmitted files are
                confidential and intended solely for the use of the
                individual or entity to whom they are addressed. We
                hereby exclude any warranty and any liability as to the
                quality or accuracy of the contents of this email and
                any attached transmitted files. If you are not the
                intended recipient, be advised that you have received
                this email in error and that any use, dissemination,
                forwarding, printing or copying of this email is
                strictly prohibited. If you have received this email in
                error please contact the sender and delete the material
                from any computer.=C2=A0=C2=A0=C2=AD=C2=AD=C2=A0=C2=A0</div=
>
            </blockquote>
          </div>
        </div>
      </div>
    </blockquote>
    <div>-- <br>
      <span style=3D"font-size:10pt;color:navy">
        <b>ing. Luca Oliva</b><br>
        Senior Developer Engineer<br>
        <br>
        <img src=3D"cid:178c6ae9d87ff41823f1" alt=3D"Intecs
          Solutions S.p.A."><br>
        <br>
        <b>Intecs Solutions S.p.A.</b><br>
        Via Ferrante Imparato 198<br>
        Isola F - 80146 Napoli - Italy<br>
        Phone: +39 081 19718400<br>
        email: <a href=3D"mailto:luca.oliva@intecs.it" target=3D"_blank" re=
l=3D"noreferrer">luca.oliva@intecs.it</a>
      </span></div>
  <br>LEGAL DISCLAIMER:

The contents of this email and any transmitted files are confidential and i=
ntended solely for the use of the individual or entity to whom they are add=
ressed. We hereby exclude any warranty and any liability as to the quality =
or accuracy of the contents of this email and any attached transmitted file=
s. If you are not the intended recipient, be advised that you have received=
 this email in error and that any use, dissemination, forwarding, printing =
or copying of this email is strictly prohibited. If you have received this =
email in error please contact the sender and delete the material from any c=
omputer.=C2=A0=C2=A0=C2=AD=C2=AD=C2=A0=C2=A0</div>

</blockquote></div></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div></div></div>

--0000000000005e238205bfccd546--

--0000000000005e238305bfccd547
Content-Type: image/png; name="akmenibhhffmmnkf.png"
Content-Disposition: inline; filename="akmenibhhffmmnkf.png"
Content-Transfer-Encoding: base64
Content-ID: <178c6ae9d87ff41823f1>
X-Attachment-Id: 178c6ae9d87ff41823f1

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
JAAAAABJRU5ErkJgggA=
--0000000000005e238305bfccd547--

--===============1914073580405317444==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1914073580405317444==--
