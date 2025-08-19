Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A25A7B2C808
	for <lists+usrp-users@lfdr.de>; Tue, 19 Aug 2025 17:08:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9BF73385E6D
	for <lists+usrp-users@lfdr.de>; Tue, 19 Aug 2025 11:08:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755616132; bh=bbJHz+1gHPWFfCVbchsIpBqwkLnbGfi4T+rsaUmjB3Q=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=k3aCvQ6689QpD/QDTlwGx59spoqfENC2/OedED5nF/0GApj6w3jbxCSG5/5tU/VPX
	 449HbCakxEFt42dCjqxrnu6j7uiIzC+oFEoHoTLuaFpM5MBoD60+IsavyMcG9aMfpN
	 LyO2feP4GPLB/R7ik9oiUiP0Y9EjUpnm4TBB8E4Dq6E6k1kP9gQtOxvDuMa+KMBBZH
	 xmhASOCQO4N+98VGsCAVm+WHN/qQGhKWkPahOlDD4l94H536DVZOzE5ssAt5BkSD3l
	 R9X95HXNovny7VX1Gl8jgllQa/glKMolpqk3VH8RQBt+YnrejNOz2KEAxKmsLliaDW
	 P3C4HvmKLwJHg==
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 20348385CF4
	for <usrp-users@lists.ettus.com>; Tue, 19 Aug 2025 11:08:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PnuF3BNU";
	dkim-atps=neutral
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-afcb7a0442bso796474066b.2
        for <usrp-users@lists.ettus.com>; Tue, 19 Aug 2025 08:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755616098; x=1756220898; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=g56SZBNPTaQf9YzQBvIesrZYZvvZsOcXqwgxSzRg86w=;
        b=PnuF3BNUAutJLT0LNW1rMOlrN70rjdPsG8TgyumIkqrup4GLCgxtUwY45d6eDbvslb
         Wv/A+qZhp4GyXaa2PBgrS4b4wOM5i/sGjM466WA+Hy0eAqzDYYCPSFWb54S3WL0RE7fh
         e7UZchqW2FL2sxD/AJALoe/iXKTqzO9LnXzFeYvbAIujo3IXKH3xm1iZ3vKdZEkjsgbY
         cTivj3MXPBKzCl2MxDJsj8aTEdPzAJ0gs87TpZCYbsJvzvyA9IG4tRnKLX7Mw9I4w7ms
         V3hV84B5psXFZZ/p5X1vr7w5IaUHc/sbmUtwYmYGtCnoLsBXDPRtR3wCxMkGvHVk0dJY
         53TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755616098; x=1756220898;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g56SZBNPTaQf9YzQBvIesrZYZvvZsOcXqwgxSzRg86w=;
        b=ZuqMCfBAUceizrtVhDqMKP8PBVoXMaYBoiXSBTEGditBL0XXqb4glFLYOQp7ZOpr77
         9VdIlvmlAvdNP6D+CKv9zaFL9+Vy/q3v1uzmsU0sr75zKVCMPCiKCahIYe+xebIJNOM5
         cDjhRFcMzEhxQyfZ0dS3aKOzoqG9IwzcBSXD9fvm0SqvvDNXGF2tB6jTP9uzlNZytl1D
         /5eeIUUee3Ctmg+gNnAG3XjWBv4n7C9TBEQEHZ+KHVNpAXM/ehC4Lr9r3M+CWRQseiI1
         ey18nJJAYAD29bdSLa+M/qUGV30j46oWq3VBm/n7OBz2R3e/qbHxDE24EzMmMX8iTOTS
         /laQ==
X-Gm-Message-State: AOJu0YyCh4MJgIt8jvApTEibjt3qyn0xt7Lvm0klJ8Hjxm5UYsgk8ZAw
	oA9kgcpwL6sbyE64c+0d/ADQSM1a8C0Kk0R0tvAfMWZPX7msG4hgZt4JXsOyEq3+/44fsi674Jr
	Gnk1ZRIUGddAS4Nuj3Xw/u/HNROxQ8+jQmpk1
X-Gm-Gg: ASbGncsJC48ad/uGB0F01u27LXDYI0B9p9RIw+txy2DpMPbgrPvul+bS7l9wUJ7ZOv3
	pU5lg4pYPRx/Fm0hvf8O06JPklOSHNn//3GWpXIsjL4s7RsmJhN/DC3RrRtplQNybmPKJDEv5gm
	ONza/8DSvKBVM03wQezITH5mAAuCDrbFKoTKJx+k0tjD9XL6phQ5xQTNVV6v0lAMkWhei+z6aus
	QlrE4h3nA20Z/R6Lg==
X-Google-Smtp-Source: AGHT+IFgpECAGSylcj0r1rLcMNPyYiNRjlN6zkAVsQC1PfiXEqjA2m1e4TTSw6BcMYWyw2AQKUo9x9EiGV7MhmRFR+Q=
X-Received: by 2002:a17:907:7e98:b0:af9:a1e4:1bbd with SMTP id
 a640c23a62f3a-afddcfc0d67mr253416466b.34.1755616097467; Tue, 19 Aug 2025
 08:08:17 -0700 (PDT)
MIME-Version: 1.0
References: <7d54a23b-75ef-404e-821a-9bc2b9bfe3d9.957d5327-c032-481c-971a-4c5ad06e7b08.74bc1cd1-2d5f-4abd-8d9b-8ac1c40ec874@emailsignatures365.codetwo.com>
 <PAXPR10MB4932AAC13E4187EA6BB37808F630A@PAXPR10MB4932.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <PAXPR10MB4932AAC13E4187EA6BB37808F630A@PAXPR10MB4932.EURPRD10.PROD.OUTLOOK.COM>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 19 Aug 2025 11:08:06 -0400
X-Gm-Features: Ac12FXwAzSnHyFSE-bGwnAlsOmXlK_FpQ_2f5fplVEicI0wCMJO_sCg8mp1fmQ0
Message-ID: <CAEXYVK5qU9o_gpN3ksDNk+3Bs7eP5+e4kqfTj9O_1EsLcL_F_g@mail.gmail.com>
To: Arthur Gerst <arthur.gerst@aerospacelab.com>
Message-ID-Hash: RPUT7VSH7BAMTELBH5UQ57KVRRFMXTUL
X-Message-ID-Hash: RPUT7VSH7BAMTELBH5UQ57KVRRFMXTUL
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Replay Block Command Rate Bottleneck at High PRF
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RPUT7VSH7BAMTELBH5UQ57KVRRFMXTUL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5571371193537432600=="

--===============5571371193537432600==
Content-Type: multipart/alternative; boundary="000000000000da01e7063cb93992"

--000000000000da01e7063cb93992
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 19, 2025 at 4:46=E2=80=AFAM Arthur Gerst via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
>
>
> My goal is to transmit a stored signal at pulse repetition frequencies
> (PRF) in the multi-kHz range with the x440. I'm working with a modified
> CG_1600 FPGA (using 100=E2=80=AFGbit Ethernet and 1600=E2=80=AFMHz bandwi=
dth) where I
> incorporated the Replay Block.
>
>
>
> From my tests, the Replay Block itself works as expected. I=E2=80=99ve us=
ed the
> rfnoc_replay_samples_from_file example to verify both continuous streamin=
g
> and finite sample replay, confirming the output of the radio with a
> spectrum analyzer. I=E2=80=99m able to output the desired signal at 2Gsps=
, with the
> 40000 samples that I put in the replay block (for now it=E2=80=99s a fix =
value).
> But I want to have a duty cycle of 0.1 without zero padding the rest of m=
y
> signal.
>
>
>
> However, due to the limited depth of the Replay Block's command queue, I
> must issue a stream timed command for each pulse and at least at the
> desired PRF. If the queue is full, attempting to issue a new command
> results in an error. To avoid using try/catch for this, I=E2=80=99ve adde=
d a
> function that peeks at REG_PLAY_CMD_FIFO_SPACE_ADDR and sends the next
> pulse only if space is available. This loop runs in its own thread.
>
>
>
> Despite all of this, I'm seeing many 'L' characters printed pointing out
> that incoming stream commands are considered late by the Replay Block.
>
>
>
> Based on my experience with UHD and Ettus hardware, I suspect the
> bottleneck could lie in one of the following areas:
>
>    - The host cannot issue commands quickly enough
>    - The transport layer is unable to sustain the required command rate
>    (NIC/sockets=E2=80=A6)
>    - The Replay Block cannot ingest commands at the desired speed
>
>
>
> I analysed execution times in the loop and issue_stream_command()
> function. They appeared fast enough for my application (tens of
> microseconds). However, the command queue remains nearly empty. Even afte=
r
> optimizing the issuing logic by eliminating unnecessary operations and
> reducing loop time by half, the max issuing commands the system can
> generate/consume remains the same (around 1250 commands per seconds).
>
>
>
> This leads me to believe the transport layer may be the limiting factor.
> One suspicion is that if TCP is used for command transmission, the Nagle
> algorithm might be delaying packets by attempting to concatenate them. If
> that=E2=80=99s the case, is there a way to explicitly disable it (e.g. us=
ing
> TCP_NODELAY)? Could you maybe briefly explain how the transport layer wor=
ks
> for RFNoC blocks?
>
>
>
> Alternatively, the issue could come from an entirely different source, an=
d
> I would appreciate any insights or recommendations on how to proceed.
>
>
>
> Here are some code snippets/contexts:
>
>
>
> *In the replay_block_control  :*
>
>     uint64_t get_fifo_fullness(const size_t port){
>
>         return _replay_reg_iface.peek32(REG_PLAY_CMD_FIFO_SPACE_ADDR,
> port); }
>
>
>
> *My loop (might have some issues due to copy/pasting ; added variables fo=
r
> better context):*
>
> // Set up the static part of the stream command
>
> uhd::stream_cmd_t
> stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);
>
> stream_cmd.num_samps =3D 40000; //Is a fix value for now
>
> stream_cmd.stream_now =3D false;
>
>
>
> const double prf =3D 10000; //1000 works but 1500 doesn=E2=80=99t
>
> const auto prf_interval_us =3D static_cast<int>(1e6 / prf);
>
> const double prf_interval =3D 1.0 / prf;
>
>
>
> // Loop through each "second" of pulses
>
> for (size_t second =3D 0; second < number_pulses / prf; ++second) {
>
>     LOG_F(INFO, "Sending commands for second %lu", second);
>
>
>
>     // Loop through pulses within this second
>
>     for (size_t pulse =3D 0; pulse < prf; ++pulse) {
>
>         // Calculate the scheduled time for this pulse
>
>         stream_cmd.time_spec =3D uhd::time_spec_t(start_time + second +
> pulse * prf_interval);
>
>
>
>         // Query the FIFO space before sending
>
>         uint32_t fullness =3D m_streamer.block->get_fifo_fullness(0);
>
>
>
>         if (fullness !=3D 0) {
>
>             // FIFO has space =E2=80=94 issue the command
>
>             m_streamer.block->issue_stream_cmd(stream_cmd,
> m_streamer.channel);
>
>             ++n_total_pulses;
>
>
>
>         } else {
>
>             // FIFO is full =E2=80=94 back off briefly and retry this pul=
se
>
>
> std::this_thread::sleep_for(std::chrono::microseconds(prf_interval_us));
>
>             --pulse;  // Retry current pulse
>
>         }
>
>         // Exit early if total pulse count reached
>
>         if (n_total_pulses >=3D number_pulses) {
>
>             break;
>
>         }
>
>     }
>
> }
>
> LOG_F(INFO, "Finished sending pulses!");
>
>
>
> *Software infos :*
>
> UHD 4.8.0 commit 308126a479ca19dfaebfe4784b375e608788d763
>
> Ubuntu 22.04 jammy
>
>
>
> *Hardware infos :*
>
> CPU Intel(R) Xeon(R) Gold 5317 CPU @ 3.00GHz
>
> For Data Plane : Ethernet controller: Intel Corporation Ethernet
> Controller E810-C (not used for this part)
>
> For Command : TP-LINK Adaptateur Ethernet Gigabit USB 3.0 (UE306) -> *Can=
not
> control the coalescing settings, maybe there is something also here?*
>

Something to note that I wasn't appreciative of before working with the
x440 is that you do not need the 1Gbe PS ethernet connected at all with the
x440. All your UHD operations can go over the 100G connection - even
ssh-ing into the PS side of things.

If you're willing to modify the HDL and rebuild the image, another thing to
note is you could make the FIFO deeper if you want. It's defined here':


https://github.com/EttusResearch/uhd/blob/9ab7d07b37a81f86f5d2fe04fb49ebd25=
9794125/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_replay/axis_replay.v#L529

axi_fifo_short is a 32 entry SRL based FIFO. If you changed the
instantiation to an axi_fifo (like the one on line 554) with a SIZE
parameter (note it's the log2 of the size) of 10 then you'd get 1024
entries and utilize some BRAM but not a ton. Note you'll need to change the
fullness register readback logic as well, but that seems easy enough to do.

Lastly, and maybe I am reading your loop wrong, but is there a reason why
you aren't using the space you just read to know how many entries you can
shove into the command FIFO? It seems like if you read that you have 20
spaces, you should be able to quickly send 20 of those commands knowing
they won't get lost, and then come back to the start of the loop checking
for fullness again. Otherwise, you're sending out a request packet for the
register information, waiting for that to come back, then sending out a
single timed command packet, waiting for the response acknowledgement for
that, then repeating.

Hopefully these are useful insights.

Good luck.

Brian

--000000000000da01e7063cb93992
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Aug 19, 2025 at 4:46=E2=80=AFAM A=
rthur Gerst via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a>&gt; wrote:</div><div class=3D"gmail_quote =
gmail_quote_container"><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv class=3D"msg6791543440618496571">





<div lang=3D"EN-GB" style=3D"overflow-wrap: break-word;">
<div class=3D"m_6791543440618496571WordSection1">
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">My goal is to transmit a stored signal at pulse repe=
tition frequencies (PRF) in the multi-kHz range with the x440. I&#39;m work=
ing with a modified CG_1600 FPGA (using 100<span style=3D"font-family:Arial=
,sans-serif">=E2=80=AF</span>Gbit Ethernet and
 1600<span style=3D"font-family:Arial,sans-serif">=E2=80=AF</span>MHz bandw=
idth) where I incorporated the Replay Block.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">From my tests, the Replay Block itself works as expe=
cted. I=E2=80=99ve used the rfnoc_replay_samples_from_file example to verif=
y both continuous streaming and finite sample replay, confirming the output=
 of the radio with a spectrum analyzer. I=E2=80=99m
 able to output the desired signal at 2Gsps, with the 40000 samples that I =
put in the replay block (for now it=E2=80=99s a fix value). But I want to h=
ave a duty cycle of 0.1 without zero padding the rest of my signal.
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">However, due to the limited depth of the Replay Bloc=
k&#39;s command queue, I must issue a stream timed command for each pulse a=
nd at least at the desired PRF. If the queue is full, attempting to issue a=
 new command results in an error. To avoid
 using try/catch for this, I=E2=80=99ve added a function that peeks at REG_=
PLAY_CMD_FIFO_SPACE_ADDR and sends the next pulse only if space is availabl=
e. This loop runs in its own thread.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Despite all of this, I&#39;m seeing many &#39;L&#39;=
 characters printed pointing out that incoming stream commands are consider=
ed late by the Replay Block.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Based on my experience with UHD and Ettus hardware, =
I suspect the bottleneck could lie in one of the following areas:<u></u><u>=
</u></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoNormal" style=3D"margin-left:18pt">The host cannot issue co=
mmands quickly enough<u></u><u></u></li><li class=3D"MsoNormal" style=3D"ma=
rgin-left:18pt">The transport layer is unable to sustain the required comma=
nd rate (NIC/sockets=E2=80=A6)<u></u><u></u></li><li class=3D"MsoNormal" st=
yle=3D"margin-left:18pt">The Replay Block cannot ingest commands at the des=
ired speed<u></u><u></u></li></ul>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I analysed execution times in the loop and issue_str=
eam_command() function. They appeared fast enough for my application (tens =
of microseconds). However, the command queue remains nearly empty. Even aft=
er optimizing the issuing logic by
 eliminating unnecessary operations and reducing loop time by half, the max=
 issuing commands the system can generate/consume remains the same (around =
1250 commands per seconds).
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">This leads me to believe the transport layer may be =
the limiting factor. One suspicion is that if TCP is used for command trans=
mission, the Nagle algorithm might be delaying packets by attempting to con=
catenate them. If that=E2=80=99s the case,
 is there a way to explicitly disable it (e.g. using TCP_NODELAY)? Could yo=
u maybe briefly explain how the transport layer works for RFNoC=C2=A0blocks=
?
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Alternatively, the issue could come from an entirely=
 different source, and I would appreciate any insights or recommendations o=
n how to proceed.
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Here are some code snippets/contexts:<u></u><u></u><=
/p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b>In the replay_block_control=C2=A0 :<u></u><u></u>=
</b></p>
<p class=3D"MsoNormal">=C2=A0 =C2=A0 uint64_t get_fifo_fullness(const size_=
t port){<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0 =C2=A0 =C2=A0 =C2=A0 return _replay_reg_iface=
.peek32(REG_PLAY_CMD_FIFO_SPACE_ADDR, port); }<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b>My loop (might have some issues due to copy/pasti=
ng ; added variables for better context):<u></u><u></u></b></p>
<p class=3D"MsoNormal">// Set up the static part of the stream command <u><=
/u><u></u></p>
<p class=3D"MsoNormal">uhd::stream_cmd_t stream_cmd(uhd::stream_cmd_t::STRE=
AM_MODE_NUM_SAMPS_AND_DONE);<u></u><u></u></p>
<p class=3D"MsoNormal">stream_cmd.num_samps =3D 40000; //Is a fix value for=
 now <u></u>
<u></u></p>
<p class=3D"MsoNormal">stream_cmd.stream_now =3D false;<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">const double prf =3D 10000; //1000 works but 1500 do=
esn=E2=80=99t<u></u><u></u></p>
<p class=3D"MsoNormal">const auto prf_interval_us =3D static_cast&lt;int&gt=
;(1e6 / prf);<u></u><u></u></p>
<p class=3D"MsoNormal">const double prf_interval =3D 1.0 / prf;<u></u><u></=
u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">// Loop through each &quot;second&quot; of pulses<u>=
</u><u></u></p>
<p class=3D"MsoNormal">for (size_t second =3D 0; second &lt; number_pulses =
/ prf; ++second) {<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 LOG_F(INFO, &quot;Sending command=
s for second %lu&quot;, second);<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 // Loop through pulses within thi=
s second<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 for (size_t pulse =3D 0; pulse &l=
t; prf; ++pulse) {<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // Calcul=
ate the scheduled time for this pulse<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 stream_cm=
d.time_spec =3D uhd::time_spec_t(start_time + second + pulse * prf_interval=
);<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // Query =
the FIFO space before sending<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uint32_t =
fullness =3D m_streamer.block-&gt;get_fifo_fullness(0);<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <u></u><u=
></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (=
fullness !=3D 0) {<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 // FIFO has space =E2=80=94 issue the command<u></u><u></u>=
</p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 m_streamer.block-&gt;issue_stream_cmd(stream_cmd, m_streame=
r.channel);<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 ++n_total_pulses;<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 <u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} el=
se {<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 // FIFO is full =E2=80=94 back off briefly and retry this p=
ulse<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 std::this_thread::sleep_for(std::chrono::microseconds(prf_i=
nterval_us));<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 --pulse;=C2=A0 // Retry current pulse<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }<u></u><=
u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // Exit e=
arly if total pulse count reached<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (n_tot=
al_pulses &gt;=3D number_pulses) {<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0break;<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }<u></u><=
u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 }<u></u><u></u></p>
<p class=3D"MsoNormal">}<u></u><u></u></p>
<p class=3D"MsoNormal">LOG_F(INFO, &quot;Finished sending pulses!&quot;);<u=
></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b>Software infos :<u></u><u></u></b></p>
<p class=3D"MsoNormal">UHD 4.8.0 commit 308126a479ca19dfaebfe4784b375e60878=
8d763<u></u><u></u></p>
<p class=3D"MsoNormal">Ubuntu 22.04 jammy<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b>Hardware infos :<u></u><u></u></b></p>
<p class=3D"MsoNormal">CPU Intel(R) Xeon(R) Gold 5317 CPU @ 3.00GHz<u></u><=
u></u></p>
<p class=3D"MsoNormal">For Data Plane : Ethernet controller: Intel Corporat=
ion Ethernet Controller E810-C (not used for this part)<u></u><u></u></p>
<p class=3D"MsoNormal">For Command : TP-LINK Adaptateur Ethernet Gigabit US=
B 3.0 (UE306) -&gt;
<b>Cannot control the coalescing settings, maybe there is something also he=
re?</b></p></div></div></div></blockquote><div><br></div><div>Something to =
note that I wasn&#39;t appreciative of before working with the x440 is that=
 you do not need the 1Gbe PS ethernet connected at all with the x440. All y=
our UHD operations can go over the 100G connection - even ssh-ing into the =
PS side of things.</div><div><br></div><div>If you&#39;re willing to modify=
 the HDL and rebuild the image, another thing to note is you could make the=
 FIFO deeper if you want. It&#39;s defined here&#39;:</div><div><br></div><=
div>=C2=A0=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/9ab7d0=
7b37a81f86f5d2fe04fb49ebd259794125/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_=
replay/axis_replay.v#L529">https://github.com/EttusResearch/uhd/blob/9ab7d0=
7b37a81f86f5d2fe04fb49ebd259794125/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_=
replay/axis_replay.v#L529</a></div><div><br></div><div>axi_fifo_short is a =
32 entry SRL based FIFO. If you changed the instantiation to an axi_fifo (l=
ike the one on line=C2=A0554) with a SIZE parameter (note it&#39;s the log2=
 of the size) of 10 then you&#39;d get 1024 entries and utilize some BRAM b=
ut not a ton. Note you&#39;ll need to change the fullness register readback=
 logic as well, but that seems easy enough to do.</div><div><br></div><div>=
Lastly, and maybe I am reading your loop wrong, but is there a reason why y=
ou aren&#39;t using the space you just read to know how many entries you ca=
n shove into the command FIFO? It seems like if you read that you have 20 s=
paces, you should be able to quickly send 20 of those commands knowing they=
 won&#39;t get lost, and then come back to the start of the loop checking f=
or fullness again. Otherwise, you&#39;re sending out a request packet for t=
he register information, waiting for that to come back, then sending out a =
single timed command packet, waiting for the response acknowledgement for t=
hat, then repeating.</div><div><br></div><div>Hopefully these are useful in=
sights.</div><div><br></div><div>Good luck.</div><div><br></div><div>Brian<=
/div></div></div>

--000000000000da01e7063cb93992--

--===============5571371193537432600==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5571371193537432600==--
