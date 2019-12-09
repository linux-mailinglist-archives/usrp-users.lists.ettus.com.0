Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9568711695E
	for <lists+usrp-users@lfdr.de>; Mon,  9 Dec 2019 10:34:28 +0100 (CET)
Received: from [::1] (port=54190 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ieFQv-0000IF-H1; Mon, 09 Dec 2019 04:34:25 -0500
Received: from smtpout02-ext2.partage.renater.fr ([194.254.241.33]:52012
 helo=smtpout02-ext1.partage.renater.fr)
 by mm2.emwd.com with esmtp (Exim 4.92)
 (envelope-from <Thomas.Harder@oca.eu>) id 1ieFQs-0000EK-W5
 for usrp-users@lists.ettus.com; Mon, 09 Dec 2019 04:34:23 -0500
Received: from zmtaauth02.partage.renater.fr (zmtaauth02.partage.renater.fr
 [194.254.241.25])
 by smtpout20.partage.renater.fr (Postfix) with ESMTP id 95CA1BFF5F;
 Mon,  9 Dec 2019 10:33:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zmtaauth02.partage.renater.fr (Postfix) with ESMTP id 5B5CDA00B4;
 Mon,  9 Dec 2019 10:33:39 +0100 (CET)
X-Virus-Scanned: amavisd-new at zmtaauth02.partage.renater.fr
Received: from zmtaauth02.partage.renater.fr ([127.0.0.1])
 by localhost (zmtaauth02.partage.renater.fr [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id 4608D3ITdvir; Mon,  9 Dec 2019 10:33:39 +0100 (CET)
Received: from [IPv6:::ffff:10.252.71.233] (unknown [194.254.241.251])
 by zmtaauth02.partage.renater.fr (Postfix) with ESMTPA id 20778A00E4;
 Mon,  9 Dec 2019 10:33:39 +0100 (CET)
MIME-Version: 1.0
To: Sam Reiter <sam.reiter@ettus.com>
Date: Mon, 9 Dec 2019 10:33:39 +0100
Importance: normal
X-Priority: 3
In-Reply-To: <CANf970a_3AMjAi=FCxVZyha=u-f9At9nQANB_RZJvSw5oL_5tg@mail.gmail.com>
References: <20191204094750.31BCC1400BB@zmtaauth01.partage.renater.fr>
 <CANf970bHPRczWQDS=OVMWmJwhJVzycCCw4Ey5JeoVqtg9WVVfQ@mail.gmail.com>
 <CANf970a_3AMjAi=FCxVZyha=u-f9At9nQANB_RZJvSw5oL_5tg@mail.gmail.com>
Message-Id: <20191209093339.20778A00E4@zmtaauth02.partage.renater.fr>
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
From: Thomas Harder via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Thomas Harder <Thomas.Harder@oca.eu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5510266259725167947=="
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

--===============5510266259725167947==
Content-Type: multipart/alternative;
	boundary="_54F91EAA-032C-4058-ABF1-C96007ED95BD_"

--_54F91EAA-032C-4058-ABF1-C96007ED95BD_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi Sam,
Thank you for your reply.
 This morning I set the MCR to 184.32 and I am still having continuous unde=
rruns using also=20
replay_ctrl->get_record_fullness
for both channels.

But since I need the full bandwidth of 160MHz I would like implement a seco=
nd replay block in my fpga image.

Could anyone help me with this?=20
I am really new in fpga programming and for the image with one replay block=
 I was just following the instructions in https://kb.ettus.com/Using_the_RF=
NoC_Replay_Block.
Thank you,
Thomas


From: Sam Reiter
Sent: Friday, December 6, 2019 10:23 PM
To: Thomas Harder
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] transmitting on two channels with replay block

Thomas,

Upon further investigation, we may be running up to a practical limit of a =
single CHDR interface rather than an issue with your code. A single replay =
block servicing two radios will have a max (theoretical) rate of 187.5 MSPS=
 on either channel. This means that you might be able to squeeze full rate =
out on 2 channels with an MCR of 184.32, but that's cutting it pretty close=
. Sounds like 2 channels at 200 MSPS with a replay setup will require 2 rep=
lay blocks serving each channel independently. If you end up trying either =
of the above out, I'd be curious to know what results you observe.

Sam Reiter=20
Ettus Research


On Fri, Dec 6, 2019 at 2:38 PM Sam Reiter <sam.reiter@ettus.com> wrote:
Thomas,

I'd need to set it up on my end, but I believe you can TX two distinct wave=
forms from a single replay block instance. You'd need to make sure that you=
r adding your data to the buffer in separate locations and at an address th=
at is a multiple of 8 bytes (which it looks like you're doing from the abov=
e snippets). Are you seeing continuous underruns, or just a handful at the =
beginning on the run? Does your duplicated code also use:

replay_ctrl->get_record_fullness

on both channels before kicking off the stream start?

Sam Reiter=C2=A0
Ettus Research

On Wed, Dec 4, 2019 at 3:48 AM Thomas Harder via USRP-users <usrp-users@lis=
ts.ettus.com> wrote:
Hello everyone,
Is it possible to transmit two different waveforms on the two channels of t=
he USRP X310 with the two UBX-160 daughterboards?
I want to transmit two different waveforms simultaneous (synchronized ) on =
the two channels of the USRP with the full sample rate of 200 MS/s. I tried=
 already to do it with a dual 10Gbit-ethernet connection and I seemed to be=
 limited by my computer. Now I am trying to do it with the replay block.
=C2=A0
I built the FPGA image with one Replay block as described in https://kb.ett=
us.com/Using_the_RFNoC_Replay_Block to run the example =E2=80=9Creplay_samp=
les_from_file=E2=80=9D and it is working fine if I transmit just on one cha=
nnel. Now I was modifying the code by connecting the replay block to both c=
hannels:
replay_graph->connect(replay_ctrl->get_block_id(),replay_chan,tx_blockid,tx=
_chan,replay_spp);
replay_graph->connect(replay_ctrl->get_block_id(),replay_chan1,tx_blockid1,=
tx_chan,replay_spp);
=C2=A0
and writing the same waveform into another region of the DRAM-buffer:
replay_ctrl->config_record(0,words_to_replay*replay_word_size, replay_chan)=
;
replay_ctrl->config_record(20000,words_to_replay*replay_word_size, replay_c=
han1);
and
replay_ctrl->config_play(0,words_to_replay*replay_word_size, replay_chan);
replay_ctrl->config_play(20000,words_to_replay*replay_word_size, replay_cha=
n1);
=C2=A0
where=20
words_to_replay*replay_word_size=3D16000
replay_chan=3D0
replay_chan1=3D1
tx_blockid=3D0/Radio_0
tx_blockid=3D0/Radio_1
=C2=A0
then I stream my waveforms to the replay block as defined in the example an=
d I start to replay the data:
replay_ctrl->issue_stream_cmd(stream_cmd, replay_chan);
replay_ctrl->issue_stream_cmd(stream_cmd, replay_chan1);
=C2=A0
It works but with plenty of Underflows!!
=C2=A0
So what does it mean when it says in the manual:
=E2=80=9CNote that the record and playback buffers do not need to the same,=
 allowing a single Replay block to both record and playback to different re=
gions of memory simultaneously.=E2=80=9D
(https://kb.ettus.com/Using_the_RFNoC_Replay_Block)?
=C2=A0
Because in the manual it says also:
=E2=80=9CThe replay block has the following features: One input and one out=
put=E2=80=9D
(https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1replay__block__ctrl.ht=
ml)
=C2=A0
So if the replay block has just one output why does it have two channels co=
nnected to it (replay_chan=3D 0 and 1)?
=C2=A0
If one replay block can just stream to one channel at the same time, can I =
implement easily a second replay block in the FPGA to stream on the two cha=
nnels of my USRP two different waveforms simultaneously?
=C2=A0
Thank you,
Thomas
=C2=A0
=C2=A0
=C2=A0
=C2=A0
=C2=A0
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--_54F91EAA-032C-4058-ABF1-C96007ED95BD_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta ht=
tp-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta name=
=3DGenerator content=3D"Microsoft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.e24kjd
	{mso-style-name:e24kjd;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3DEN-US link=3Dblue vlink=3D"#954F72"><div cla=
ss=3DWordSection1><p class=3DMsoNormal>Hi Sam,</p><p class=3DMsoNormal>Than=
k you for your reply.</p><p class=3DMsoNormal> This morning I set the MCR t=
o 184.32 and I am still having continuous underruns using also </p><p class=
=3DMsoNormal><span style=3D'font-size:9.0pt;font-family:Consolas;color:#242=
92E'>replay_ctrl-&gt;</span><span style=3D'font-size:9.0pt;font-family:Cons=
olas;color:#005CC5'>get_record_fullness<o:p></o:p></span></p><p class=3DMso=
Normal>for both channels.</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p c=
lass=3DMsoNormal>But since I need the full bandwidth of 160MHz I would like=
 implement a second replay block in my fpga image.</p><p class=3DMsoNormal>=
<o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Could anyone help me with this? <=
/p><p class=3DMsoNormal>I am really new in fpga programming and for the ima=
ge with one replay block I was just following the instructions in <a href=
=3D"https://kb.ettus.com/Using_the_RFNoC_Replay_Block" target=3D"_blank">ht=
tps://kb.ettus.com/Using_the_RFNoC_Replay_Block</a>.</p><p class=3DMsoNorma=
l>Thank you,</p><p class=3DMsoNormal>Thomas<o:p></o:p></p><p class=3DMsoNor=
mal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div sty=
le=3D'mso-element:para-border-div;border:none;border-top:solid #E1E1E1 1.0p=
t;padding:3.0pt 0in 0in 0in'><p class=3DMsoNormal style=3D'border:none;padd=
ing:0in'><b>From: </b><a href=3D"mailto:sam.reiter@ettus.com">Sam Reiter</a=
><br><b>Sent: </b>Friday, December 6, 2019 10:23 PM<br><b>To: </b><a href=
=3D"mailto:Thomas.Harder@oca.eu">Thomas Harder</a><br><b>Cc: </b><a href=3D=
"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br><b>Su=
bject: </b>Re: [USRP-users] transmitting on two channels with replay block<=
/p></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMso=
Normal>Thomas,</p></div><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></di=
v><div><p class=3DMsoNormal>Upon further investigation, we may be running u=
p to a practical limit of a single CHDR interface rather than an issue with=
 your code. A single replay block servicing two radios will have a max (the=
oretical) rate of 187.5 MSPS on either channel. This means that you might b=
e able to squeeze full rate out on 2 channels with an MCR of <span class=3D=
e24kjd>184.32, but that's cutting it pretty close. Sounds like 2 channels a=
t 200 MSPS with a replay setup will require 2 replay blocks serving each ch=
annel independently. If you end up trying either of the above out, I'd be c=
urious to know what results you observe.</span></p></div><div><p class=3DMs=
oNormal><o:p>&nbsp;</o:p></p></div><div><div><div><div><div><div><p class=
=3DMsoNormal>Sam Reiter </p><div><p class=3DMsoNormal>Ettus Research</p></d=
iv></div></div></div></div></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p>=
</div></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3D=
MsoNormal>On Fri, Dec 6, 2019 at 2:38 PM Sam Reiter &lt;<a href=3D"mailto:s=
am.reiter@ettus.com">sam.reiter@ettus.com</a>&gt; wrote:</p></div><blockquo=
te style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0in 0in 0in=
 6.0pt;margin-left:4.8pt;margin-right:0in'><div><p class=3DMsoNormal>Thomas=
,</p><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DM=
soNormal>I'd need to set it up on my end, but I believe you can TX two dist=
inct waveforms from a single replay block instance. You'd need to make sure=
 that your adding your data to the buffer in separate locations and at an a=
ddress that is a multiple of 8 bytes (which it looks like you're doing from=
 the above snippets). Are you seeing continuous underruns, or just a handfu=
l at the beginning on the run? Does your duplicated code also use:</p></div=
><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNo=
rmal><span style=3D'font-size:9.0pt;font-family:Consolas;color:#24292E'>rep=
lay_ctrl-&gt;</span><span style=3D'font-size:9.0pt;font-family:Consolas;col=
or:#005CC5'>get_record_fullness</span></p></div><div><p class=3DMsoNormal><=
o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal>on both channels before=
 kicking off the stream start?</p></div><div><p class=3DMsoNormal><o:p>&nbs=
p;</o:p></p></div><div><div><div><div><div><div><p class=3DMsoNormal>Sam Re=
iter&nbsp;</p><div><p class=3DMsoNormal>Ettus Research</p></div></div></div=
></div></div></div></div></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><d=
iv><div><p class=3DMsoNormal>On Wed, Dec 4, 2019 at 3:48 AM Thomas Harder v=
ia USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_=
blank">usrp-users@lists.ettus.com</a>&gt; wrote:</p></div><blockquote style=
=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0in 0in 0in 6.0pt;m=
argin-left:4.8pt;margin-right:0in'><div><div><p class=3DMsoNormal style=3D'=
mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Hello everyone,</p><p c=
lass=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:aut=
o'>Is it possible to transmit two different waveforms on the two channels o=
f the USRP X310 with the two UBX-160 daughterboards?</p><p class=3DMsoNorma=
l style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>I want to tr=
ansmit two different waveforms simultaneous (synchronized ) on the two chan=
nels of the USRP with the full sample rate of 200 MS/s. I tried already to =
do it with a dual 10Gbit-ethernet connection and I seemed to be limited by =
my computer. Now I am trying to do it with the replay block.</p><p class=3D=
MsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbs=
p;</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bott=
om-alt:auto'>I built the FPGA image with one Replay block as described in <=
a href=3D"https://kb.ettus.com/Using_the_RFNoC_Replay_Block" target=3D"_bla=
nk">https://kb.ettus.com/Using_the_RFNoC_Replay_Block</a> to run the exampl=
e =E2=80=9Creplay_samples_from_file=E2=80=9D and it is working fine if I tr=
ansmit just on one channel. Now I was modifying the code by connecting the =
replay block to both channels:</p><p class=3DMsoNormal style=3D'mso-margin-=
top-alt:auto;mso-margin-bottom-alt:auto'>replay_graph-&gt;connect(replay_ct=
rl-&gt;get_block_id(),replay_chan,tx_blockid,tx_chan,replay_spp);</p><p cla=
ss=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'=
>replay_graph-&gt;connect(replay_ctrl-&gt;get_block_id(),replay_chan1,tx_bl=
ockid1,tx_chan,replay_spp);</p><p class=3DMsoNormal style=3D'mso-margin-top=
-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</p><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>and writing the sam=
e waveform into another region of the DRAM-buffer:</p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>replay_ctrl-&g=
t;config_record(0,words_to_replay*replay_word_size, replay_chan);</p><p cla=
ss=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'=
>replay_ctrl-&gt;config_record(20000,words_to_replay*replay_word_size, repl=
ay_chan1);</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-mar=
gin-bottom-alt:auto'>and</p><p class=3DMsoNormal style=3D'mso-margin-top-al=
t:auto;mso-margin-bottom-alt:auto'>replay_ctrl-&gt;config_play(0,words_to_r=
eplay*replay_word_size, replay_chan);</p><p class=3DMsoNormal style=3D'mso-=
margin-top-alt:auto;mso-margin-bottom-alt:auto'>replay_ctrl-&gt;config_play=
(20000,words_to_replay*replay_word_size, replay_chan1);</p><p class=3DMsoNo=
rmal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</p=
><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-al=
t:auto'>where </p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso=
-margin-bottom-alt:auto'>words_to_replay*replay_word_size=3D16000</p><p cla=
ss=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'=
>replay_chan=3D0</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;m=
so-margin-bottom-alt:auto'>replay_chan1=3D1</p><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>tx_blockid=3D0/Radi=
o_0</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bot=
tom-alt:auto'>tx_blockid=3D0/Radio_1</p><p class=3DMsoNormal style=3D'mso-m=
argin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</p><p class=3DMsoNorm=
al style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>then I stre=
am my waveforms to the replay block as defined in the example and I start t=
o replay the data:</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto=
;mso-margin-bottom-alt:auto'>replay_ctrl-&gt;issue_stream_cmd(stream_cmd, r=
eplay_chan);</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-m=
argin-bottom-alt:auto'>replay_ctrl-&gt;issue_stream_cmd(stream_cmd, replay_=
chan1);</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin=
-bottom-alt:auto'>&nbsp;</p><p class=3DMsoNormal style=3D'mso-margin-top-al=
t:auto;mso-margin-bottom-alt:auto'>It works but with plenty of Underflows!!=
</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom=
-alt:auto'>&nbsp;</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;=
mso-margin-bottom-alt:auto'>So what does it mean when it says in the manual=
:</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto'>=E2=80=9CNote that the record and playback buffers do not need =
to the same, allowing a single Replay block to both record and playback to =
different regions of memory<b> simultaneously</b>.=E2=80=9D</p><p class=3DM=
soNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>(<a h=
ref=3D"https://kb.ettus.com/Using_the_RFNoC_Replay_Block" target=3D"_blank"=
>https://kb.ettus.com/Using_the_RFNoC_Replay_Block</a>)?</p><p class=3DMsoN=
ormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</=
p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto'>Because in the manual it says also:</p><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>=E2=80=9CThe replay=
 block has the following features: One input and <b>one</b> output=E2=80=9D=
</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom=
-alt:auto'>(<a href=3D"https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1=
replay__block__ctrl.html" target=3D"_blank">https://files.ettus.com/manual/=
classuhd_1_1rfnoc_1_1replay__block__ctrl.html</a>)</p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</p><p c=
lass=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:aut=
o'>So if the replay block has just one output why does it have two channels=
 connected to it (replay_chan=3D 0 and 1)?</p><p class=3DMsoNormal style=3D=
'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</p><p class=3DM=
soNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>If on=
e replay block can just stream to one channel at the same time, can I imple=
ment easily a second replay block in the FPGA to stream on the two channels=
 of my USRP two different waveforms simultaneously?</p><p class=3DMsoNormal=
 style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</p><p =
class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:au=
to'>Thank you,</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso=
-margin-bottom-alt:auto'>Thomas</p><p class=3DMsoNormal style=3D'mso-margin=
-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</p><p class=3DMsoNormal st=
yle=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</p><p cla=
ss=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'=
>&nbsp;</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin=
-bottom-alt:auto'>&nbsp;</p><p class=3DMsoNormal style=3D'mso-margin-top-al=
t:auto;mso-margin-bottom-alt:auto'>&nbsp;</p></div></div></blockquote></div=
></blockquote></div><p class=3DMsoNormal style=3D'margin-left:9.6pt'>______=
_________________________________________<br>USRP-users mailing list<br><a =
href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lis=
ts.ettus.com</a><br><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp=
-users_lists.ettus.com" target=3D"_blank">http://lists.ettus.com/mailman/li=
stinfo/usrp-users_lists.ettus.com</a></p><p class=3DMsoNormal><o:p>&nbsp;</=
o:p></p></div></body></html>=

--_54F91EAA-032C-4058-ABF1-C96007ED95BD_--



--===============5510266259725167947==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5510266259725167947==--


