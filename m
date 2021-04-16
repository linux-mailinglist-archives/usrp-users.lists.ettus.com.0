Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6621F361FE9
	for <lists+usrp-users@lfdr.de>; Fri, 16 Apr 2021 14:31:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 383E43843C3
	for <lists+usrp-users@lfdr.de>; Fri, 16 Apr 2021 08:31:47 -0400 (EDT)
Received: from barracuda.navarca.com (barracuda.navarca.com [212.239.60.237])
	by mm2.emwd.com (Postfix) with ESMTPS id E805A3840EC
	for <usrp-users@lists.ettus.com>; Fri, 16 Apr 2021 08:30:48 -0400 (EDT)
X-ASG-Debug-ID: 1618576246-053bad198fbed10001-5wTQH4
Received: from dns26.navarca.com (dns26.navarca.com [192.168.0.26]) by barracuda.navarca.com with ESMTP id PHfE6u2ynyOWdWct (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO); Fri, 16 Apr 2021 14:30:46 +0200 (CEST)
X-Barracuda-Envelope-From: luca.oliva@intecs.it
X-Barracuda-RBL-Trusted-Forwarder: 192.168.0.26
X-ASG-Whitelist: Client
Received: from dns26.navarca.com (localhost [127.0.0.1])
	by dns26.navarca.com (Postfix) with ESMTPS id 5E25B1D7E7;
	Fri, 16 Apr 2021 14:30:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by dns26.navarca.com (Postfix) with ESMTP id 4A4031D7DE;
	Fri, 16 Apr 2021 14:30:46 +0200 (CEST)
Received: from dns26.navarca.com ([127.0.0.1])
	by localhost (dns26.navarca.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id oS_HOHLit4uQ; Fri, 16 Apr 2021 14:30:46 +0200 (CEST)
Received: from [192.168.1.122] (unknown [151.53.111.31])
	by dns26.navarca.com (Postfix) with ESMTPSA id 3ACF71355EB;
	Fri, 16 Apr 2021 14:30:45 +0200 (CEST)
From: Luca Oliva <luca.oliva@intecs.it>
X-Barracuda-RBL-Trusted-Forwarder: 192.168.1.122
To: EJ Kreinar <ejkreinar@gmail.com>, Rob Kossler <rkossler@nd.edu>
X-ASG-Orig-Subj: Re: [USRP-users] Re: RfNoc SplitStream and FFT
References: <1e8db183-4501-3f1d-57e4-2a13de806012@intecs.it>
 <CAB__hTQCKvaawxqqYGuxhrbR11tbLObDQpRCAix4LsGEC2GvjQ@mail.gmail.com>
 <247eab0c-c124-c044-cc22-3c9d40c5fbe3@intecs.it>
 <CAB__hTTG+WRe-Z=mxafyvasnOo0rV+xMoSTd3PgagPdKo55Oig@mail.gmail.com>
 <83036548-e95a-6ffa-3c1e-d8159f545fc1@intecs.it>
 <CAB__hTSfhOTUfFF4dXpZ_Ss_hySf+FTYQqGO9QrdFWr=v2Wn+A@mail.gmail.com>
 <8726abaa-6398-7785-e219-5c2fc89227f3@intecs.it>
 <CAB__hTS-nO3NnQ1szL6HG76tHFO2uhCoQp5Y4Y5b4DjzBWrvtg@mail.gmail.com>
 <CAB__hTQ4f01iHVq+O8h6tXKOsXOfmcgQSRZMSq2BmrVaw=vt9w@mail.gmail.com>
 <CADRnH22REn1mytBk0imCN99WPT0xzNRoe4_2c2HVRb_ff8MN0w@mail.gmail.com>
Message-ID: <22a404e8-ea21-d7ea-34ae-d817d69c797b@intecs.it>
Date: Fri, 16 Apr 2021 14:30:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CADRnH22REn1mytBk0imCN99WPT0xzNRoe4_2c2HVRb_ff8MN0w@mail.gmail.com>
Content-Language: it-IT
X-Barracuda-Connect: dns26.navarca.com[192.168.0.26]
X-Barracuda-Start-Time: 1618576246
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://212.239.60.237:443/cgi-mod/mark.cgi
X-Barracuda-BRTS-Status: 1
X-Virus-Scanned: by bsmtpd at navarca.com
X-Barracuda-Scan-Msg-Size: 72501
Message-ID-Hash: L7K5BTJOMBWNFIA4RSZLFODT7AV4IXBH
X-Message-ID-Hash: L7K5BTJOMBWNFIA4RSZLFODT7AV4IXBH
X-MailFrom: btv1==740b5097a63==luca.oliva@intecs.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RfNoc SplitStream and FFT
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L7K5BTJOMBWNFIA4RSZLFODT7AV4IXBH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7480651955263441611=="

This is a multi-part message in MIME format.
--===============7480651955263441611==
Content-Type: multipart/alternative;
 boundary="------------0AA04FDED52719911E0FB39B"
Content-Language: it-IT

This is a multi-part message in MIME format.
--------------0AA04FDED52719911E0FB39B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

I'm trying with a custom Mux block.

+---------+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +-----+ +------------=
--+
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |------->| =C2=A0 =C2=A0 =
|=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |--------------------->=20
RxStreamer Ch 0
| Radio=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | Mux |----=
--->| SplitStream=C2=A0 | +-------+
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |------->| =C2=A0 =C2=A0 =
| =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |------>| FFT=C2=A0=C2=A0 |--=
--->=20
RxStreamer Ch 1
+---------+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +-----+ =C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 +--------------+ +-------+

If I configure the Mux to use the first channel, it works correctly.

If I configure the second channel the issue comand on radio_ctrl fails=20
for "radio_ctrl_impl::issue_stream_cmd() called on inactive". I've fixed=20
this with "RadioCtrl->set_rx_streamer(true, 1);", but after some minutes=20
the receive stops to work with error "EnvironmentError: IOError: Block=20
ctrl (CE_00_Port_10) packet parse error - EnvironmentError: IOError:=20
Expected SID: 02:10>00:00=C2=A0 Received SID: 02:11>ff:ff"

In Mux code I've put a noc_shell with 2 input_ports and an axi_wrapper.

I've muxed the link bteween noc_shell and axi_wrapper in this way:

 =C2=A0 assign sel_str_sink_tdata=C2=A0 =3D channel ? str_sink_tdata[127:64=
] :=20
str_sink_tdata[63:0];
 =C2=A0 assign sel_str_sink_tlast=C2=A0 =3D channel ? str_sink_tlast[1] :=
=20
str_sink_tlast[0];
 =C2=A0 assign sel_str_sink_tvalid =3D channel ? str_sink_tvalid[1] :=20
str_sink_tvalid[0];

 =C2=A0 assign str_sink_tready[0] =3D ( channel =3D=3D 0 ) ? sel_str_sink_t=
ready : 1;
 =C2=A0 assign str_sink_tready[1] =3D ( channel =3D=3D 1 ) ? sel_str_sink_t=
ready : 1;

On the other side of axi_wrapper I've loop backed data in this way:

 =C2=A0 assign m_axis_data_tready =3D s_axis_data_tready;
 =C2=A0 assign s_axis_data_tvalid =3D m_axis_data_tvalid;
 =C2=A0 assign s_axis_data_tlast=C2=A0 =3D m_axis_data_tlast;
 =C2=A0 assign s_axis_data_tdata=C2=A0 =3D m_axis_data_tdata;

Luca

Il 12/04/21 23:02, EJ Kreinar ha scritto:
> I've fought similar problems before. Rfnoc < UHD 4.0 has trouble=20
> arbitrarily propagating downstream connections ports back to the radio=20
> in some edge cases.
>
> I think the use case I had was trying to attach either channel (0 or=20
> 1) to a single channel ddc... A few years back I put out a "hack" PR=20
> that swaps the radio channel behind the scenes, while keeping the=20
> output port the same: https://github.com/EttusResearch/uhd/pull/164=20
> <https://github.com/EttusResearch/uhd/pull/164>
>
> You may be able to work around it with a custom router block as Rob=20
> suggested... Attach both ports back to the radio, then provide a hook=20
> inside the user code to mux in the channel you want to use? That might=20
> actually avoid the edge case I hacked around, because you would have=20
> both radio channels attached at the time you issue the stream command,=20
> so both channels would start streaming then. Sounds possible but may=20
> need to test it and inspect the UHD source to see for sure.
>
> EJ
>
>
> On Mon, Apr 12, 2021, 11:50 AM Rob Kossler <rkossler@nd.edu=20
> <mailto:rkossler@nd.edu>> wrote:
>
>     Or, another option could be to add a null sink block to your build
>     and connect one of the two radio ports to it. The problem with
>     this is that you would need to dynamically re-link your graph each
>     time you wanted to switch radio ports (connecting the unwanted
>     port to the null sink and the desired port to the SplitStream).=C2=A0
>     This may not be practical if you need to switch ports frequently /
>     quickly.
>     Rob
>
>     On Mon, Apr 12, 2021 at 11:44 AM Rob Kossler <rkossler@nd.edu
>     <mailto:rkossler@nd.edu>> wrote:
>
>         Hi Luca,
>         I don't think that there is a way to change the RF front end
>         associated with a given Radio block port - I think this is
>         fixed (maybe someone can correct me if I'm wrong on this). So,
>         I think your graph will need to include two Radio ports and
>         that you will need an RF multiplexer capability between the
>         Radio and the SplitStream.=C2=A0 In UHD 4.0 (RFNoC 4.0), there is
>         such a block (SwitchBoard) but I don't=C2=A0think that there is a
>         corresponding block for UHD 3.13.=C2=A0 You could develop such a
>         stand-alone RFNoC block (perhaps using the SwitchBoard block
>         as an example) or perhaps you could modify the SplitStream
>         block to have 2 inputs and a multiplexer capability.
>         Rob
>
>         On Mon, Apr 12, 2021 at 10:47 AM Luca Oliva
>         <luca.oliva@intecs.it <mailto:luca.oliva@intecs.it>> wrote:
>
>             Hi Rob,
>
>             the question is exactly that! Is there a way to change the
>             radio channel between two receive?
>
>             Il 12/04/21 16:00, Rob Kossler ha scritto:
>>             Hi Luca,
>>             You mentioned that you need to capture alternately from
>>             the two radio channels.=C2=A0 Can you share the graph you are
>>             implementing (the graph below shows only 1 radio channel)?
>>             Rob
>>
>>             On Mon, Apr 12, 2021 at 4:23 AM Luca Oliva
>>             <luca.oliva@intecs.it <mailto:luca.oliva@intecs.it>> wrote:
>>
>>                 Unfortunately I haven't enough FPGA resources to
>>                 insert a DDC block.
>>
>>                 I've tried to issue the
>>                 STREAM_MODE_NUM_SAMPS_AND_DONE command directly to
>>                 the Radio block and It seems to work, after a hundred
>>                 of command the FFT is still aligned to time domain
>>                 capture.
>>
>>                 The problem now is that I need to capture alternately
>>                 from the two radio channels.
>>
>>                 As first test I've tried to connect statically the
>>                 second output of the Radio block to the SplitStream
>>                 but It doesn't work. Receive fails with timeout error.
>>
>>                 Luca
>>
>>                 Il 08/04/21 03:25, Rob Kossler ha scritto:
>>>                 Is it possible (enough FPGA resources) for you to
>>>                 insert the DDC block after the Radio in your graph
>>>                 and before the SplitStream? And, is your FFT size
>>>                 small enough that you can set the Radio SPP equal to
>>>                 the FFT length? If both of these are true, I think
>>>                 this will solve your issue. The DDC block will then
>>>                 provide output packets that are exactly the length
>>>                 of the FFT and there will be no residual samples at
>>>                 the end.
>>>
>>>                 I think it "should" be possible to get the "reset"
>>>                 to work, but I am not certain.=C2=A0 My plan of attack
>>>                 would be to wait until after flush and then set
>>>                 fft_reset=3D1 and then fft_reset=3D0 and then
>>>                 reconfigure the fft with all needed settings.=C2=A0 But,
>>>                 if this doesn't work, I suppose that it is possible
>>>                 that there is a FIFO (at the input of the FFT block
>>>                 or at the output of the Radio or SplitStream block
>>>                 where the residual samples are "stuck".
>>>
>>>                 Finally, regarding the "Late" command, perhaps you
>>>                 could try to "issue_stream_cmd" directly to the
>>>                 radio rather than to the rx_streamer.=C2=A0 When you ca=
ll
>>>                 this function from the rx_streamer, the command
>>>                 propagates upstream on the graph until it gets to
>>>                 the radio. But since you have a SplitStream in your
>>>                 graph, maybe there is some bug in the propagation. I
>>>                 think you could call this same function directly on
>>>                 the Radio controller and it may solve the Late issue.
>>>
>>>                 Rob
>>>
>>>                 On Wed, Apr 7, 2021 at 12:39 PM Luca Oliva
>>>                 <luca.oliva@intecs.it <mailto:luca.oliva@intecs.it>>
>>>                 wrote:
>>>
>>>                     Hi Rob,
>>>
>>>                     Some update:
>>>
>>>                     1) The ERROR_CODE_LATE_COMMAND error using
>>>                     STREAM_MODE_NUM_SAMPS_AND_DONE happens only if I
>>>                     put stream_now=3Dfalse (I set time_spec with a
>>>                     future value obviously).
>>>
>>>                     2) I've tried to set fft_reset=3D1 before
>>>                     STREAM_MODE_STOP_CONTINUOUS command, after it or
>>>                     after buffer flush but the problem is still present.
>>>
>>>                     Luca
>>>
>>>                     Il 06/04/21 14:58, Rob Kossler ha scritto:
>>>>                     Hi Luca,
>>>>                     I don't know the overall solution, but I have
>>>>                     some comments about using the FFT block.=C2=A0 I
>>>>                     have never had success with this block unless I
>>>>                     ensure that the block never receives a "partial
>>>>                     FFT" block of samples.
>>>>
>>>>                     One way to ensure this is to use the DDC block
>>>>                     (Radio->DDC->FFT) and you set the radio SPP
>>>>                     equal to the FFT length.=C2=A0 The only purpose of
>>>>                     the DDC in this case is that it only processes
>>>>                     "full packets" and discards the final "partial
>>>>                     packet". Thus, it will ensure that the FFT also
>>>>                     receives only full packets.
>>>>
>>>>                     Another way to ensure this is to use the
>>>>                     NUM_SAMPS_AND_DONE you mentioned.=C2=A0 As long as
>>>>                     this number is a multiple of the FFT size, it
>>>>                     should be fine for the FFT block. I'm not sure
>>>>                     why you were getting the Late error.
>>>>
>>>>                     When you use CONTINUOUS mode, you are basically
>>>>                     ensuring that the FFT will work fine the first
>>>>                     time but then partially fill with the trailing
>>>>                     samples. The next time you start, the FFT block
>>>>                     will complete the filling process, but your
>>>>                     data will be misaligned. Perhaps you could use
>>>>                     the "fft_reset" functionality to reset the
>>>>                     block every time but this will likely mean that
>>>>                     you need to re-configure the FFT length, scale,
>>>>                     direction, etc.
>>>>                     Rob
>>>>
>>>>                     On Tue, Apr 6, 2021 at 6:31 AM Luca Oliva
>>>>                     <luca.oliva@intecs.it
>>>>                     <mailto:luca.oliva@intecs.it>> wrote:
>>>>
>>>>                         Hi,
>>>>
>>>>                         I've an Ettus E310 with UHD 3.13.1.0
>>>>
>>>>
>>>>                         I need to receive some samples both in time
>>>>                         domain than frequency
>>>>                         domain. I=E2=80=99m trying to do that using th=
is
>>>>                         rfnoc graph:
>>>>
>>>>                         +---------+ +--------------+
>>>>                         |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 | | |--------------------->
>>>>                         RxStreamer Ch 0
>>>>                         | Radio |------->| SplitStream |=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0
>>>>                         +-------+
>>>>                         |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 | | |------>| FFT |----->
>>>>                         RxStreamer Ch 1
>>>>                         +---------+ +--------------+=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 +-------+
>>>>
>>>>
>>>>                         uhd::rfnoc::block_id_t radio_ctrl_id(0,
>>>>                         "Radio", 0);
>>>>                         uhd::rfnoc::block_id_t split_ctrl_id(0,
>>>>                         "SplitStream", 0);
>>>>                         uhd::rfnoc::block_id_t fft_ctrl_id(0,
>>>>                         "FFT", 0);
>>>>
>>>>                         uhd::rfnoc::source_block_ctrl_base::sptr
>>>>                         fft_blk_ctrl =3D
>>>>                         m_Usrp->get_block_ctrl<uhd::rfnoc::source_bloc=
k_ctrl_base>(fft_ctrl_id);
>>>>
>>>>                         m_RadioCtrl =3D m_Usrp->get_block_ctrl<
>>>>                         uhd::rfnoc::radio_ctrl
>>>>                         =C2=A0>(radio_ctrl_id);
>>>>                         m_RadioCtrl->set_rate(16e6);
>>>>                         m_RadioCtrl->set_arg<int>("spp", 2048);
>>>>                         fft_blk_ctrl->set_arg<int>("spp", 2048);
>>>>
>>>>                         m_Usrp->clear();
>>>>
>>>>                         m_Graph =3D m_Usrp->create_graph("rfnoc_rx");
>>>>                         m_Graph->connect(radio_ctrl_id, 0,
>>>>                         split_ctrl_id, 0);
>>>>                         m_Graph->connect(split_ctrl_id, 1,
>>>>                         fft_ctrl_id, 0);
>>>>
>>>>                         uhd::device_addr_t streamer_args("");
>>>>                         streamer_args["block_id0"] =3D
>>>>                         split_ctrl_id.to_string();
>>>>                         streamer_args["block_port0"] =3D
>>>>                         str(boost::format("%d") % 0);
>>>>                         streamer_args["block_id1"] =3D
>>>>                         fft_ctrl_id.to_string();
>>>>                         streamer_args["block_port1"] =3D
>>>>                         str(boost::format("%d") % 0);
>>>>
>>>>                         uhd::stream_args_t stream_args_fc32("sc16",
>>>>                         "sc16");
>>>>                         stream_args_fc32.channels =3D { 0, 1 };
>>>>                         stream_args_fc32.args =3D streamer_args;
>>>>                         stream_args_fc32.args["spp"] =3D
>>>>                         boost::lexical_cast<std::string>(2048);
>>>>                         m_RxStreamerFc32 =3D
>>>>                         m_Usrp->get_rx_stream(stream_args_fc32);
>>>>
>>>>                         I need to receive a burst in a precise
>>>>                         moment, elaborate it and restart
>>>>                         on a different frequency (I need also to
>>>>                         change radio channel because
>>>>                         I've two different antennas).
>>>>
>>>>                         I've tried
>>>>
>>>>                         uhd::stream_cmd_t
>>>>                         stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_=
SAMPS_AND_DONE);
>>>>                         stream_cmd.num_samps =3D
>>>>                         size_t(nBurstLen*MAX_DIM_SAMPLES_FRAME_FOR_RSA=
);
>>>>                         stream_cmd.stream_now =3D false;
>>>>                         stream_cmd.time_spec =3D
>>>>                         m_RadioCtrl->get_time_now()+1.0;
>>>>                         m_RxStreamerFc32->issue_stream_cmd(stream_cmd);
>>>>
>>>>                         but the receive fails with
>>>>                         ERROR_CODE_LATE_COMMAND.
>>>>
>>>>                         I've tried issuing the
>>>>                         STREAM_MODE_START_CONTINUOUS command and it
>>>>                         seems
>>>>                         to work correctly until I don't send a
>>>>                         STREAM_MODE_STOP_CONTINUOUS command.
>>>>
>>>>                         After a STREAM_MODE_STOP_CONTINUOUS command
>>>>                         I flush the buffer with a
>>>>                         receive loop:
>>>>
>>>>                         while(m_RxStreamerFc32->recv(buff, 2048,
>>>>                         uselessMd, 0.010, false));
>>>>
>>>>                         The problem I'm observing is that since
>>>>                         second start the FFT samples
>>>>                         lost alignment with the time samples and
>>>>                         after some stop and start the
>>>>                         receive fails often with Overflow errors
>>>>                         and than stops definitely to
>>>>                         work with Timeout errors
>>>>
>>>>                         Someone else have this problem?
>>>>
>>>>
>>>>                         Regards,
>>>>
>>>>                         Luca
>>>>
>>>>
>>>>                         LEGAL DISCLAIMER:
>>>>                         The contents of this email and any
>>>>                         transmitted files are confidential and
>>>>                         intended solely for the use of the
>>>>                         individual or entity to whom they are
>>>>                         addressed. We hereby exclude any warranty
>>>>                         and any liability as to the quality or
>>>>                         accuracy of the contents of this email and
>>>>                         any attached transmitted files. If you are
>>>>                         not the intended recipient, be advised that
>>>>                         you have received this email in error and
>>>>                         that any use, dissemination, forwarding,
>>>>                         printing or copying of this email is
>>>>                         strictly prohibited. If you have received
>>>>                         this email in error please contact the
>>>>                         sender and delete the material from any
>>>>                         computer.
>>>>                         _______________________________________________
>>>>                         USRP-users mailing list --
>>>>                         usrp-users@lists.ettus.com
>>>>                         <mailto:usrp-users@lists.ettus.com>
>>>>                         To unsubscribe send an email to
>>>>                         usrp-users-leave@lists.ettus.com
>>>>                         <mailto:usrp-users-leave@lists.ettus.com>
>>>>
>>>                     --=20
>>>                     *ing. Luca Oliva*
>>>                     Senior Developer Engineer
>>>
>>>                     Intecs Solutions S.p.A.
>>>
>>>                     *Intecs Solutions S.p.A.*
>>>                     Via Ferrante Imparato 198
>>>                     Isola F - 80146 Napoli - Italy
>>>                     Phone: +39 081 19718400
>>>                     email: luca.oliva@intecs.it
>>>                     <mailto:luca.oliva@intecs.it>
>>>
>>>                     LEGAL DISCLAIMER: The contents of this email and
>>>                     any transmitted files are confidential and
>>>                     intended solely for the use of the individual or
>>>                     entity to whom they are addressed. We hereby
>>>                     exclude any warranty and any liability as to the
>>>                     quality or accuracy of the contents of this
>>>                     email and any attached transmitted files. If you
>>>                     are not the intended recipient, be advised that
>>>                     you have received this email in error and that
>>>                     any use, dissemination, forwarding, printing or
>>>                     copying of this email is strictly prohibited. If
>>>                     you have received this email in error please
>>>                     contact the sender and delete the material from
>>>                     any computer.=C2=A0=C2=A0=C2=AD=C2=AD
>>>
>>                 --=20
>>                 *ing. Luca Oliva*
>>                 Senior Developer Engineer
>>
>>                 Intecs Solutions S.p.A.
>>
>>                 *Intecs Solutions S.p.A.*
>>                 Via Ferrante Imparato 198
>>                 Isola F - 80146 Napoli - Italy
>>                 Phone: +39 081 19718400
>>                 email: luca.oliva@intecs.it
>>                 <mailto:luca.oliva@intecs.it>
>>
>>                 LEGAL DISCLAIMER: The contents of this email and any
>>                 transmitted files are confidential and intended
>>                 solely for the use of the individual or entity to
>>                 whom they are addressed. We hereby exclude any
>>                 warranty and any liability as to the quality or
>>                 accuracy of the contents of this email and any
>>                 attached transmitted files. If you are not the
>>                 intended recipient, be advised that you have received
>>                 this email in error and that any use, dissemination,
>>                 forwarding, printing or copying of this email is
>>                 strictly prohibited. If you have received this email
>>                 in error please contact the sender and delete the
>>                 material from any computer.=C2=A0=C2=A0=C2=AD=C2=AD
>>
>             --=20
>             *ing. Luca Oliva*
>             Senior Developer Engineer
>
>             Intecs Solutions S.p.A.
>
>             *Intecs Solutions S.p.A.*
>             Via Ferrante Imparato 198
>             Isola F - 80146 Napoli - Italy
>             Phone: +39 081 19718400
>             email: luca.oliva@intecs.it <mailto:luca.oliva@intecs.it>
>
>             LEGAL DISCLAIMER: The contents of this email and any
>             transmitted files are confidential and intended solely for
>             the use of the individual or entity to whom they are
>             addressed. We hereby exclude any warranty and any
>             liability as to the quality or accuracy of the contents of
>             this email and any attached transmitted files. If you are
>             not the intended recipient, be advised that you have
>             received this email in error and that any use,
>             dissemination, forwarding, printing or copying of this
>             email is strictly prohibited. If you have received this
>             email in error please contact the sender and delete the
>             material from any computer.=C2=A0=C2=A0=C2=AD=C2=AD
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>
--=20
*ing. Luca Oliva*
Senior Developer Engineer

Intecs Solutions S.p.A.

*Intecs Solutions S.p.A.*
Via Ferrante Imparato 198
Isola F - 80146 Napoli - Italy
Phone: +39 081 19718400
email: luca.oliva@intecs.it <mailto:luca.oliva@intecs.it>

LEGAL DISCLAIMER:=0D
The contents of this email and any transmitted files are confidential and i=
ntended solely for the use of the individual or entity to whom they are add=
ressed. We hereby exclude any warranty and any liability as to the quality =
or accuracy of the contents of this email and any attached transmitted file=
s. If you are not the intended recipient, be advised that you have received=
 this email in error and that any use, dissemination, forwarding, printing =
or copying of this email is strictly prohibited. If you have received this =
email in error please contact the sender and delete the material from any c=
omputer.=

--------------0AA04FDED52719911E0FB39B
Content-Type: multipart/related;
 boundary="------------BCEE844A4422BCBE7F321092"


--------------BCEE844A4422BCBE7F321092
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p><font face=3D"monospace">I'm trying with a custom Mux block. <br>
      </font></p>
    <p><font face=3D"monospace">+---------+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 +-----+ =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        +--------------+<br>
        |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |</font><font fac=
e=3D"monospace"><font face=3D"monospace">-------&gt;</font>|
        =C2=A0 =C2=A0 |=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |-------=
--------------&gt;
        RxStreamer Ch 0<br>
        | Radio=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | M=
ux |-------&gt;| SplitStream=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        +-------+<br>
        |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |</font><font fac=
e=3D"monospace"><font face=3D"monospace">-------&gt;</font>|
        =C2=A0 =C2=A0 | =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |------&=
gt;| FFT=C2=A0=C2=A0 |-----&gt;
        RxStreamer Ch 1<br>
        +---------+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +-----+ =C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +--------------+=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0
        +-------+</font></p>
    <p>If I configure the Mux to use the first channel, it works
      correctly.</p>
    <p>If I configure the second channel the issue comand on radio_ctrl
      fails for "radio_ctrl_impl::issue_stream_cmd() called on
      inactive". I've fixed this with
      "RadioCtrl-&gt;set_rx_streamer(true, 1);", but after some minutes
      the receive stops to work with error "EnvironmentError: IOError:
      Block ctrl (CE_00_Port_10) packet parse error - EnvironmentError:
      IOError: Expected SID: 02:10&gt;00:00=C2=A0 Received SID:
      02:11&gt;ff:ff"<br>
    </p>
    <p>In Mux code I've put a noc_shell with 2 input_ports and an
      axi_wrapper.</p>
    <p>I've muxed the link bteween noc_shell and axi_wrapper in this
      way:</p>
    <p><font face=3D"monospace">=C2=A0 assign sel_str_sink_tdata=C2=A0 =3D =
channel ?
        str_sink_tdata[127:64] : str_sink_tdata[63:0];<br>
        =C2=A0 assign sel_str_sink_tlast=C2=A0 =3D channel ? str_sink_tlast=
[1]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        : str_sink_tlast[0];<br>
        =C2=A0 assign sel_str_sink_tvalid =3D channel ? str_sink_tvalid[1]=
=C2=A0=C2=A0=C2=A0=C2=A0
        : str_sink_tvalid[0];<br>
        <br>
        =C2=A0 assign str_sink_tready[0] =3D ( channel =3D=3D 0 ) ?
        sel_str_sink_tready : 1;<br>
        =C2=A0 assign str_sink_tready[1] =3D ( channel =3D=3D 1 ) ?
        sel_str_sink_tready : 1;</font><br>
      <br>
    </p>
    <p>On the other side of axi_wrapper I've loop backed data in this
      way:</p>
    <p><font face=3D"monospace">=C2=A0 assign m_axis_data_tready =3D
        s_axis_data_tready;<br>
        =C2=A0 assign s_axis_data_tvalid =3D m_axis_data_tvalid;<br>
        =C2=A0 assign s_axis_data_tlast=C2=A0 =3D m_axis_data_tlast;<br>
        =C2=A0 assign s_axis_data_tdata=C2=A0 =3D m_axis_data_tdata;<br>
      </font><br>
    </p>
    <p>Luca<br>
    </p>
    <div class=3D"moz-cite-prefix">Il 12/04/21 23:02, EJ Kreinar ha
      scritto:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CADRnH22REn1mytBk0imCN99WPT0xzNRoe4_2c2HVRb_ff8MN0w@mail.gmail.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
      <div dir=3D"auto">
        <div>I've fought similar problems before. Rfnoc &lt; UHD 4.0 has
          trouble arbitrarily propagating downstream connections ports
          back to the radio in some edge cases.=C2=A0
          <div dir=3D"auto"><br>
          </div>
          <div dir=3D"auto">I think the use case I had was trying to
            attach either channel (0 or 1) to a single channel ddc... A
            few years back I put out a "hack" PR that swaps the radio
            channel behind the scenes, while keeping the output port the
            same:=C2=A0<a
              href=3D"https://github.com/EttusResearch/uhd/pull/164"
              moz-do-not-send=3D"true">https://github.com/EttusResearch/uhd=
/pull/164</a></div>
          <div dir=3D"auto"><br>
          </div>
          <div dir=3D"auto"><span style=3D"font-family:sans-serif">You may
              be able to work around it with a custom router block as
              Rob suggested... Attach both ports back to the radio, then
              provide a hook inside the user code to mux in the channel
              you want to use? That might actually avoid the edge case I
              hacked around, because you would have both radio channels
              attached at the time you issue the stream command, so both
              channels would start streaming then. Sounds possible but
              may need to test it and inspect the UHD source to see for
              sure.=C2=A0</span><br>
          </div>
          <div dir=3D"auto"><span style=3D"font-family:sans-serif"><br>
            </span></div>
          <div dir=3D"auto"><span style=3D"font-family:sans-serif">EJ</span=
></div>
          <br>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 12, 2021,
              11:50 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu"
                moz-do-not-send=3D"true">rkossler@nd.edu</a>&gt; wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div dir=3D"ltr">Or, another option could be to add a null
                sink block to your build and connect one of the two
                radio ports to it. The problem with this is that you
                would need to dynamically re-link your graph each time
                you wanted to switch radio ports (connecting the
                unwanted port to the null sink and the desired port to
                the SplitStream).=C2=A0 This may not be practical if you ne=
ed
                to switch ports frequently / quickly.
                <div>Rob</div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 12, 2021
                  at 11:44 AM Rob Kossler &lt;<a
                    href=3D"mailto:rkossler@nd.edu" target=3D"_blank"
                    rel=3D"noreferrer" moz-do-not-send=3D"true">rkossler@nd=
.edu</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div dir=3D"ltr">
                    <div>Hi Luca,</div>
                    <div>I don't think that there is a way to change the
                      RF front end associated with a given Radio block
                      port - I think this is fixed (maybe someone can
                      correct me if I'm wrong on this). So, I think your
                      graph will need to include two Radio ports and
                      that you will need an RF multiplexer capability
                      between the Radio and the SplitStream.=C2=A0 In UHD 4=
.0
                      (RFNoC 4.0), there is such a block (SwitchBoard)
                      but I don't=C2=A0think that there is a corresponding
                      block for UHD 3.13.=C2=A0 You could develop such a
                      stand-alone RFNoC block (perhaps using the
                      SwitchBoard block as an example) or perhaps you
                      could modify the SplitStream block to have 2
                      inputs and a multiplexer capability.</div>
                    <div>Rob</div>
                    <br>
                    <div class=3D"gmail_quote">
                      <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 12,
                        2021 at 10:47 AM Luca Oliva &lt;<a
                          href=3D"mailto:luca.oliva@intecs.it"
                          target=3D"_blank" rel=3D"noreferrer"
                          moz-do-not-send=3D"true">luca.oliva@intecs.it</a>=
&gt;
                        wrote:<br>
                      </div>
                      <blockquote class=3D"gmail_quote" style=3D"margin:0px
                        0px 0px 0.8ex;border-left:1px solid
                        rgb(204,204,204);padding-left:1ex">
                        <div>
                          <p>Hi Rob,</p>
                          <p>the question is exactly that! Is there a
                            way to change the radio channel between two
                            receive?<br>
                          </p>
                          <div>Il 12/04/21 16:00, Rob Kossler ha
                            scritto:<br>
                          </div>
                          <blockquote type=3D"cite">
                            <div dir=3D"ltr">
                              <div dir=3D"ltr">Hi Luca,
                                <div>You mentioned that you need to
                                  capture alternately from the two radio
                                  channels.=C2=A0 Can you share the graph y=
ou
                                  are implementing (the graph below
                                  shows only 1 radio channel)?</div>
                              </div>
                              Rob
                              <div><br>
                                <div class=3D"gmail_quote">
                                  <div dir=3D"ltr" class=3D"gmail_attr">On
                                    Mon, Apr 12, 2021 at 4:23 AM Luca
                                    Oliva &lt;<a
                                      href=3D"mailto:luca.oliva@intecs.it"
                                      target=3D"_blank" rel=3D"noreferrer"
                                      moz-do-not-send=3D"true">luca.oliva@i=
ntecs.it</a>&gt;
                                    wrote:<br>
                                  </div>
                                  <blockquote class=3D"gmail_quote"
                                    style=3D"margin:0px 0px 0px
                                    0.8ex;border-left:1px solid
                                    rgb(204,204,204);padding-left:1ex">
                                    <div>
                                      <p>Unfortunately I haven't enough
                                        FPGA resources to insert a DDC
                                        block.</p>
                                      <p>I've tried to issue the
                                        STREAM_MODE_NUM_SAMPS_AND_DONE
                                        command directly to the Radio
                                        block and It seems to work,
                                        after a hundred of command the
                                        FFT is still aligned to time
                                        domain capture.</p>
                                      <p>The problem now is that I need
                                        to capture alternately from the
                                        two radio channels.</p>
                                      <p>As first test I've tried to
                                        connect statically the second
                                        output of the Radio block to the
                                        SplitStream but It doesn't work.
                                        Receive fails with timeout
                                        error.</p>
                                      <p>Luca<br>
                                      </p>
                                      <div>Il 08/04/21 03:25, Rob
                                        Kossler ha scritto:<br>
                                      </div>
                                      <blockquote type=3D"cite">
                                        <div dir=3D"ltr">Is it possible
                                          (enough FPGA resources) for
                                          you to insert the DDC block
                                          after the Radio in your graph
                                          and before the SplitStream?
                                          And, is your FFT size small
                                          enough that you can set the
                                          Radio SPP equal to the FFT
                                          length? If both of these are
                                          true, I think this will solve
                                          your issue. The DDC block will
                                          then provide output packets
                                          that are exactly the length of
                                          the FFT and there will be no
                                          residual samples at the end.
                                          <div><br>
                                          </div>
                                          <div>
                                            <div>I think it "should" be
                                              possible to get the
                                              "reset" to work, but I am
                                              not certain.=C2=A0 My plan of
                                              attack would be to wait
                                              until after flush and then
                                              set fft_reset=3D1 and then
                                              fft_reset=3D0 and then
                                              reconfigure the fft with
                                              all needed settings.=C2=A0 Bu=
t,
                                              if this doesn't work, I
                                              suppose that it is
                                              possible that there is a
                                              FIFO (at the input of the
                                              FFT block or at the output
                                              of the Radio or
                                              SplitStream block where
                                              the residual samples are
                                              "stuck".</div>
                                          </div>
                                          <div><br>
                                          </div>
                                          <div>Finally, regarding the
                                            "Late" command, perhaps you
                                            could try to
                                            "issue_stream_cmd" directly
                                            to the radio rather than to
                                            the rx_streamer.=C2=A0 When you
                                            call this function from the
                                            rx_streamer, the command
                                            propagates upstream on the
                                            graph until it gets to the
                                            radio. But since you have a
                                            SplitStream in your graph,
                                            maybe there is some bug in
                                            the propagation. I think you
                                            could call this same
                                            function directly on the
                                            Radio controller and it may
                                            solve the Late issue.</div>
                                          <div><br>
                                          </div>
                                          <div>Rob</div>
                                        </div>
                                        <br>
                                        <div class=3D"gmail_quote">
                                          <div dir=3D"ltr"
                                            class=3D"gmail_attr">On Wed,
                                            Apr 7, 2021 at 12:39 PM Luca
                                            Oliva &lt;<a
                                              href=3D"mailto:luca.oliva@int=
ecs.it"
                                              target=3D"_blank"
                                              rel=3D"noreferrer"
                                              moz-do-not-send=3D"true">luca=
.oliva@intecs.it</a>&gt;
                                            wrote:<br>
                                          </div>
                                          <blockquote
                                            class=3D"gmail_quote"
                                            style=3D"margin:0px 0px 0px
                                            0.8ex;border-left:1px solid
rgb(204,204,204);padding-left:1ex">
                                            <div>
                                              <p>Hi Rob,</p>
                                              <p>Some update:</p>
                                              <p>1) The
                                                ERROR_CODE_LATE_COMMAND
                                                error using
                                                STREAM_MODE_NUM_SAMPS_AND_D=
ONE
                                                happens only if I put
                                                stream_now=3Dfalse (I set
                                                time_spec with a future
                                                value obviously).</p>
                                              <p>2) I've tried to set
                                                fft_reset=3D1 before
                                                STREAM_MODE_STOP_CONTINUOUS
                                                command, after it or
                                                after buffer flush but
                                                the problem is still
                                                present.<br>
                                              </p>
                                              <p>Luca<br>
                                              </p>
                                              <div>Il 06/04/21 14:58,
                                                Rob Kossler ha scritto:<br>
                                              </div>
                                              <blockquote type=3D"cite">
                                                <div dir=3D"ltr">
                                                  <div dir=3D"ltr">Hi
                                                    Luca,
                                                    <div>I don't know
                                                      the overall
                                                      solution, but I
                                                      have some comments
                                                      about using the
                                                      FFT block.=C2=A0 I ha=
ve
                                                      never had success
                                                      with this block
                                                      unless I ensure
                                                      that the block
                                                      never receives a
                                                      "partial FFT"
                                                      block of
                                                      samples.=C2=A0=C2=A0<=
/div>
                                                    <div><br>
                                                    </div>
                                                    <div>One way to
                                                      ensure this is to
                                                      use the DDC block
(Radio-&gt;DDC-&gt;FFT) and you set the radio SPP equal to the FFT
                                                      length.=C2=A0 The only
                                                      purpose of the DDC
                                                      in this case is
                                                      that it only
                                                      processes "full
                                                      packets" and
                                                      discards the final
                                                      "partial packet".
                                                      Thus, it will
                                                      ensure that the
                                                      FFT also receives
                                                      only full packets.</d=
iv>
                                                    <div><br>
                                                    </div>
                                                    <div>Another way to
                                                      ensure this is to
                                                      use the
                                                      NUM_SAMPS_AND_DONE
                                                      you mentioned.=C2=A0 =
As
                                                      long as this
                                                      number is a
                                                      multiple of the
                                                      FFT size, it
                                                      should be fine for
                                                      the FFT block.=C2=A0
                                                      I'm not sure why
                                                      you were getting
                                                      the Late error.</div>
                                                    <div><br>
                                                    </div>
                                                    <div>When you use
                                                      CONTINUOUS mode,
                                                      you are basically
                                                      ensuring that the
                                                      FFT will work fine
                                                      the first time but
                                                      then partially
                                                      fill with the
                                                      trailing samples.=C2=
=A0
                                                      The next time you
                                                      start, the FFT
                                                      block will
                                                      complete the
                                                      filling process,
                                                      but your data will
                                                      be misaligned.=C2=A0
                                                      Perhaps you could
                                                      use the
                                                      "fft_reset"
                                                      functionality to
                                                      reset the block
                                                      every time but
                                                      this will likely
                                                      mean that you need
                                                      to re-configure
                                                      the FFT length,
                                                      scale, direction,
                                                      etc.</div>
                                                    <div>Rob</div>
                                                  </div>
                                                  <br>
                                                  <div
                                                    class=3D"gmail_quote">
                                                    <div dir=3D"ltr"
                                                      class=3D"gmail_attr">=
On
                                                      Tue, Apr 6, 2021
                                                      at 6:31 AM Luca
                                                      Oliva &lt;<a
                                                        href=3D"mailto:luca=
.oliva@intecs.it"
                                                        target=3D"_blank"
                                                        rel=3D"noreferrer"
moz-do-not-send=3D"true">luca.oliva@intecs.it</a>&gt; wrote:<br>
                                                    </div>
                                                    <blockquote
                                                      class=3D"gmail_quote"
                                                      style=3D"margin:0px
                                                      0px 0px
                                                      0.8ex;border-left:1px
                                                      solid
                                                      rgb(204,204,204);padd=
ing-left:1ex">Hi,<br>
                                                      <br>
                                                      I've an Ettus E310
                                                      with UHD 3.13.1.0<br>
                                                      <br>
                                                      <br>
                                                      I need to receive
                                                      some samples both
                                                      in time domain
                                                      than frequency <br>
                                                      domain. I=E2=80=99m t=
rying
                                                      to do that using
                                                      this rfnoc graph:<br>
                                                      <br>
                                                      +---------+=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                      +--------------+<br>
                                                      |=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                      |=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                      |--------------------=
-&gt;
                                                      RxStreamer Ch 0<br>
                                                      | Radio=C2=A0=C2=A0
                                                      |-------&gt;|
                                                      SplitStream=C2=A0
                                                      |=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 +-------+<br>
                                                      |=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                      |=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                      |------&gt;| FFT=C2=
=A0=C2=A0
                                                      |-----&gt;
                                                      RxStreamer Ch 1<br>
                                                      +---------+=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
+--------------+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +-------+<br>
                                                      <br>
                                                      <br>
uhd::rfnoc::block_id_t radio_ctrl_id(0, "Radio", 0);<br>
uhd::rfnoc::block_id_t split_ctrl_id(0, "SplitStream", 0);<br>
uhd::rfnoc::block_id_t fft_ctrl_id(0, "FFT", 0);<br>
                                                      <br>
uhd::rfnoc::source_block_ctrl_base::sptr fft_blk_ctrl =3D <br>
m_Usrp-&gt;get_block_ctrl&lt;uhd::rfnoc::source_block_ctrl_base&gt;(fft_ctr=
l_id);<br>
                                                      <br>
                                                      m_RadioCtrl =3D
                                                      m_Usrp-&gt;get_block_=
ctrl&lt;
uhd::rfnoc::radio_ctrl <br>
=C2=A0&gt;(radio_ctrl_id);<br>
m_RadioCtrl-&gt;set_rate(16e6);<br>
m_RadioCtrl-&gt;set_arg&lt;int&gt;("spp", 2048);<br>
fft_blk_ctrl-&gt;set_arg&lt;int&gt;("spp", 2048);<br>
                                                      <br>
m_Usrp-&gt;clear();<br>
                                                      <br>
                                                      m_Graph =3D
                                                      m_Usrp-&gt;create_gra=
ph("rfnoc_rx");<br>
m_Graph-&gt;connect(radio_ctrl_id, 0, split_ctrl_id, 0);<br>
m_Graph-&gt;connect(split_ctrl_id, 1, fft_ctrl_id, 0);<br>
                                                      <br>
                                                      uhd::device_addr_t
                                                      streamer_args("");<br>
streamer_args["block_id0"] =3D split_ctrl_id.to_string();<br>
streamer_args["block_port0"] =3D str(boost::format("%d") % 0);<br>
streamer_args["block_id1"] =3D fft_ctrl_id.to_string();<br>
streamer_args["block_port1"] =3D str(boost::format("%d") % 0);<br>
                                                      <br>
                                                      uhd::stream_args_t
stream_args_fc32("sc16", "sc16");<br>
stream_args_fc32.channels =3D { 0, 1 };<br>
stream_args_fc32.args =3D streamer_args;<br>
stream_args_fc32.args["spp"] =3D
                                                      boost::lexical_cast&l=
t;std::string&gt;(2048);<br>
                                                      m_RxStreamerFc32 =3D
m_Usrp-&gt;get_rx_stream(stream_args_fc32);<br>
                                                      <br>
                                                      I need to receive
                                                      a burst in a
                                                      precise moment,
                                                      elaborate it and
                                                      restart <br>
                                                      on a different
                                                      frequency (I need
                                                      also to change
                                                      radio channel
                                                      because <br>
                                                      I've two different
                                                      antennas).<br>
                                                      <br>
                                                      I've tried<br>
                                                      <br>
                                                      uhd::stream_cmd_t
                                                      <br>
stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);<br>
stream_cmd.num_samps =3D size_t(nBurstLen*MAX_DIM_SAMPLES_FRAME_FOR_RSA);<b=
r>
stream_cmd.stream_now =3D false;<br>
stream_cmd.time_spec =3D m_RadioCtrl-&gt;get_time_now()+1.0;<br>
m_RxStreamerFc32-&gt;issue_stream_cmd(stream_cmd);<br>
                                                      <br>
                                                      but the receive
                                                      fails with
                                                      ERROR_CODE_LATE_COMMA=
ND.<br>
                                                      <br>
                                                      I've tried issuing
                                                      the
                                                      STREAM_MODE_START_CON=
TINUOUS
                                                      command and it
                                                      seems <br>
                                                      to work correctly
                                                      until I don't send
                                                      a
                                                      STREAM_MODE_STOP_CONT=
INUOUS
                                                      command.<br>
                                                      <br>
                                                      After a
                                                      STREAM_MODE_STOP_CONT=
INUOUS
                                                      command I flush
                                                      the buffer with a
                                                      <br>
                                                      receive loop:<br>
                                                      <br>
while(m_RxStreamerFc32-&gt;recv(buff, 2048, uselessMd, 0.010, false));<br>
                                                      <br>
                                                      The problem I'm
                                                      observing is that
                                                      since second start
                                                      the FFT samples <br>
                                                      lost alignment
                                                      with the time
                                                      samples and after
                                                      some stop and
                                                      start the <br>
                                                      receive fails
                                                      often with
                                                      Overflow errors
                                                      and than stops
                                                      definitely to <br>
                                                      work with Timeout
                                                      errors<br>
                                                      <br>
                                                      Someone else have
                                                      this problem?<br>
                                                      <br>
                                                      <br>
                                                      Regards,<br>
                                                      <br>
                                                      Luca<br>
                                                      <br>
                                                      <br>
                                                      LEGAL DISCLAIMER:<br>
                                                      The contents of
                                                      this email and any
                                                      transmitted files
                                                      are confidential
                                                      and intended
                                                      solely for the use
                                                      of the individual
                                                      or entity to whom
                                                      they are
                                                      addressed. We
                                                      hereby exclude any
                                                      warranty and any
                                                      liability as to
                                                      the quality or
                                                      accuracy of the
                                                      contents of this
                                                      email and any
                                                      attached
                                                      transmitted files.
                                                      If you are not the
                                                      intended
                                                      recipient, be
                                                      advised that you
                                                      have received this
                                                      email in error and
                                                      that any use,
                                                      dissemination,
                                                      forwarding,
                                                      printing or
                                                      copying of this
                                                      email is strictly
                                                      prohibited. If you
                                                      have received this
                                                      email in error
                                                      please contact the
                                                      sender and delete
                                                      the material from
                                                      any computer.<br>
_______________________________________________<br>
                                                      USRP-users mailing
                                                      list -- <a
                                                        href=3D"mailto:usrp=
-users@lists.ettus.com"
                                                        target=3D"_blank"
                                                        rel=3D"noreferrer"
moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a><br>
                                                      To unsubscribe
                                                      send an email to <a
href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank"
                                                        rel=3D"noreferrer"
moz-do-not-send=3D"true">usrp-users-leave@lists.ettus.com</a><br>
                                                    </blockquote>
                                                  </div>
                                                </div>
                                              </blockquote>
                                              <div>-- <br>
                                                <span
                                                  style=3D"font-size:10pt;c=
olor:navy">
                                                  <b>ing. Luca Oliva</b><br>
                                                  Senior Developer
                                                  Engineer<br>
                                                  <br>
                                                  <img
                                                    src=3D"cid:part10.FC36E=
E98.1317A0C8@intecs.it"
                                                    alt=3D"Intecs
                                                    Solutions S.p.A."
                                                    class=3D""><br>
                                                  <br>
                                                  <b>Intecs Solutions
                                                    S.p.A.</b><br>
                                                  Via Ferrante Imparato
                                                  198<br>
                                                  Isola F - 80146 Napoli
                                                  - Italy<br>
                                                  Phone: +39 081
                                                  19718400<br>
                                                  email: <a
                                                    href=3D"mailto:luca.oli=
va@intecs.it"
                                                    target=3D"_blank"
                                                    rel=3D"noreferrer"
                                                    moz-do-not-send=3D"true=
">luca.oliva@intecs.it</a>
                                                </span></div>
                                              <br>
                                              LEGAL DISCLAIMER: The
                                              contents of this email and
                                              any transmitted files are
                                              confidential and intended
                                              solely for the use of the
                                              individual or entity to
                                              whom they are addressed.
                                              We hereby exclude any
                                              warranty and any liability
                                              as to the quality or
                                              accuracy of the contents
                                              of this email and any
                                              attached transmitted
                                              files. If you are not the
                                              intended recipient, be
                                              advised that you have
                                              received this email in
                                              error and that any use,
                                              dissemination, forwarding,
                                              printing or copying of
                                              this email is strictly
                                              prohibited. If you have
                                              received this email in
                                              error please contact the
                                              sender and delete the
                                              material from any
                                              computer.=C2=A0=C2=A0=C2=AD=
=C2=AD=C2=A0=C2=A0</div>
                                          </blockquote>
                                        </div>
                                      </blockquote>
                                      <div>-- <br>
                                        <span
                                          style=3D"font-size:10pt;color:nav=
y">
                                          <b>ing. Luca Oliva</b><br>
                                          Senior Developer Engineer<br>
                                          <br>
                                          <img
                                            src=3D"cid:part10.FC36EE98.1317=
A0C8@intecs.it"
                                            alt=3D"Intecs Solutions
                                            S.p.A." class=3D""><br>
                                          <br>
                                          <b>Intecs Solutions S.p.A.</b><br>
                                          Via Ferrante Imparato 198<br>
                                          Isola F - 80146 Napoli - Italy<br>
                                          Phone: +39 081 19718400<br>
                                          email: <a
                                            href=3D"mailto:luca.oliva@intec=
s.it"
                                            target=3D"_blank"
                                            rel=3D"noreferrer"
                                            moz-do-not-send=3D"true">luca.o=
liva@intecs.it</a>
                                        </span></div>
                                      <br>
                                      LEGAL DISCLAIMER: The contents of
                                      this email and any transmitted
                                      files are confidential and
                                      intended solely for the use of the
                                      individual or entity to whom they
                                      are addressed. We hereby exclude
                                      any warranty and any liability as
                                      to the quality or accuracy of the
                                      contents of this email and any
                                      attached transmitted files. If you
                                      are not the intended recipient, be
                                      advised that you have received
                                      this email in error and that any
                                      use, dissemination, forwarding,
                                      printing or copying of this email
                                      is strictly prohibited. If you
                                      have received this email in error
                                      please contact the sender and
                                      delete the material from any
                                      computer.=C2=A0=C2=A0=C2=AD=C2=AD=C2=
=A0=C2=A0</div>
                                  </blockquote>
                                </div>
                              </div>
                            </div>
                          </blockquote>
                          <div>-- <br>
                            <span style=3D"font-size:10pt;color:navy"> <b>i=
ng.
                                Luca Oliva</b><br>
                              Senior Developer Engineer<br>
                              <br>
                              <img
                                src=3D"cid:part10.FC36EE98.1317A0C8@intecs.=
it"
                                alt=3D"Intecs Solutions S.p.A." class=3D"">=
<br>
                              <br>
                              <b>Intecs Solutions S.p.A.</b><br>
                              Via Ferrante Imparato 198<br>
                              Isola F - 80146 Napoli - Italy<br>
                              Phone: +39 081 19718400<br>
                              email: <a
                                href=3D"mailto:luca.oliva@intecs.it"
                                target=3D"_blank" rel=3D"noreferrer"
                                moz-do-not-send=3D"true">luca.oliva@intecs.=
it</a>
                            </span></div>
                          <br>
                          LEGAL DISCLAIMER: The contents of this email
                          and any transmitted files are confidential and
                          intended solely for the use of the individual
                          or entity to whom they are addressed. We
                          hereby exclude any warranty and any liability
                          as to the quality or accuracy of the contents
                          of this email and any attached transmitted
                          files. If you are not the intended recipient,
                          be advised that you have received this email
                          in error and that any use, dissemination,
                          forwarding, printing or copying of this email
                          is strictly prohibited. If you have received
                          this email in error please contact the sender
                          and delete the material from any
                          computer.=C2=A0=C2=A0=C2=AD=C2=AD=C2=A0=C2=A0</di=
v>
                      </blockquote>
                    </div>
                  </div>
                </blockquote>
              </div>
              _______________________________________________<br>
              USRP-users mailing list -- <a
                href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
                rel=3D"noreferrer" moz-do-not-send=3D"true">usrp-users@list=
s.ettus.com</a><br>
              To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                target=3D"_blank" rel=3D"noreferrer" moz-do-not-send=3D"tru=
e">usrp-users-leave@lists.ettus.com</a><br>
            </blockquote>
          </div>
        </div>
      </div>
    </blockquote>
    <div class=3D"moz-signature">-- <br>
      <span style=3D"font-size:10.0pt;color:navy"> <b>ing. Luca Oliva</b><b=
r>
        Senior Developer Engineer<br>
        <br>
        <img src=3D"cid:part10.FC36EE98.1317A0C8@intecs.it" alt=3D"Intecs
          Solutions S.p.A." class=3D""><br>
        <br>
        <b>Intecs Solutions S.p.A.</b><br>
        Via Ferrante Imparato 198<br>
        Isola F - 80146 Napoli - Italy<br>
        Phone: +39 081 19718400<br>
        email: <a href=3D"mailto:luca.oliva@intecs.it"
          moz-do-not-send=3D"true">luca.oliva@intecs.it</a> </span></div>
  <br>LEGAL DISCLAIMER:</p>=0D
The contents of this email and any transmitted files are confidential and i=
ntended solely for the use of the individual or entity to whom they are add=
ressed. We hereby exclude any warranty and any liability as to the quality =
or accuracy of the contents of this email and any attached transmitted file=
s. If you are not the intended recipient, be advised that you have received=
 this email in error and that any use, dissemination, forwarding, printing =
or copying of this email is strictly prohibited. If you have received this =
email in error please contact the sender and delete the material from any c=
omputer.&nbsp;&nbsp;&shy;&shy;&nbsp;&nbsp;</body>
</html>

--------------BCEE844A4422BCBE7F321092
Content-Type: image/png;
 name="akmenibhhffmmnkf.png"
Content-Transfer-Encoding: base64
Content-ID: <part10.FC36EE98.1317A0C8@intecs.it>
Content-Disposition: inline;
 filename="akmenibhhffmmnkf.png"

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
fWQEzuwR+D+zB00T+f7kJAAAAABJRU5ErkJgggA=

--------------BCEE844A4422BCBE7F321092--

--------------0AA04FDED52719911E0FB39B--

--===============7480651955263441611==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7480651955263441611==--
