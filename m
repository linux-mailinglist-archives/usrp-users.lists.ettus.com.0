Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C2411A897
	for <lists+usrp-users@lfdr.de>; Wed, 11 Dec 2019 11:06:13 +0100 (CET)
Received: from [::1] (port=50812 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ieysk-0002Xp-SY; Wed, 11 Dec 2019 05:06:10 -0500
Received: from smtpout01-ext1.partage.renater.fr ([194.254.240.32]:53048)
 by mm2.emwd.com with esmtp (Exim 4.92)
 (envelope-from <Thomas.Harder@oca.eu>) id 1ieysg-0002QH-85
 for usrp-users@lists.ettus.com; Wed, 11 Dec 2019 05:06:06 -0500
Received: from zmtaauth01.partage.renater.fr (zmtaauth01.partage.renater.fr
 [194.254.240.25])
 by smtpout10.partage.renater.fr (Postfix) with ESMTP id 042036165E;
 Wed, 11 Dec 2019 11:05:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zmtaauth01.partage.renater.fr (Postfix) with ESMTP id EBF301400D0;
 Wed, 11 Dec 2019 11:05:21 +0100 (CET)
X-Virus-Scanned: amavisd-new at zmtaauth01.partage.renater.fr
Received: from zmtaauth01.partage.renater.fr ([127.0.0.1])
 by localhost (zmtaauth01.partage.renater.fr [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id FzuIKhDEws82; Wed, 11 Dec 2019 11:05:21 +0100 (CET)
Received: from [IPv6:::ffff:10.252.71.233] (unknown [194.254.241.250])
 by zmtaauth01.partage.renater.fr (Postfix) with ESMTPA id A8A031400BB;
 Wed, 11 Dec 2019 11:05:21 +0100 (CET)
MIME-Version: 1.0
To: Rob Kossler <rkossler@nd.edu>
Date: Wed, 11 Dec 2019 11:05:22 +0100
Importance: normal
X-Priority: 3
In-Reply-To: <CAB__hTTijCzqgJL9ab+Dh+8g8ZLRh2o2A3yuRS8fG23AhF7tvA@mail.gmail.com>
References: <20191204094750.31BCC1400BB@zmtaauth01.partage.renater.fr>
 <CANf970bHPRczWQDS=OVMWmJwhJVzycCCw4Ey5JeoVqtg9WVVfQ@mail.gmail.com>
 <CANf970a_3AMjAi=FCxVZyha=u-f9At9nQANB_RZJvSw5oL_5tg@mail.gmail.com>
 <20191209093339.20778A00E4@zmtaauth02.partage.renater.fr>
 <CAB__hTTijCzqgJL9ab+Dh+8g8ZLRh2o2A3yuRS8fG23AhF7tvA@mail.gmail.com>
Message-Id: <20191211100521.A8A031400BB@zmtaauth01.partage.renater.fr>
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
Content-Type: multipart/mixed; boundary="===============6693065321287211794=="
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

--===============6693065321287211794==
Content-Type: multipart/alternative;
	boundary="_4944E579-6B84-4E54-84E8-C13BADE14612_"

--_4944E579-6B84-4E54-84E8-C13BADE14612_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Thank you Rob for this comment.
But I am not sure if I understand you correctly. Do you want to say, that i=
t is IMPOSSIBLE to stream TX two different waveforms synchronized  on the 2=
 channels of the x310 with the full bandwidth of 200MS/s on each channel?
That is what I am trying the last 6 months full time, starting with Labview=
 under windows and then UHD under Linux with a Dell Precision 5820 desktop =
(16GB RAM, Intel Xeon W-2125 CPU@ 4.GHz x8) with MXI connection, dual 10Gbi=
t connection(Intel X520-DA2), the replay block recently: always the same re=
sult: continuous underruns.
If you can confirm that this is not possible without an important FPGA chan=
ge (because I have no experience in this field and I have not the time to i=
nvest into it), I must search for another solution to create two different =
synchronized RF waveforms with 160MHz bandwidth (optical, electronical,=E2=
=80=A6) because this will be just a part of my experimental setup but it is=
 crucial to go on .
I am thankful for any advise,
Thomas


From: Rob Kossler
Sent: Tuesday, December 10, 2019 5:01 AM
To: Thomas Harder
Cc: Sam Reiter; usrp-users@lists.ettus.com
Subject: Re: [USRP-users] transmitting on two channels with replay block

Apart from solving the underrun issue, there is also an issue with synchron=
ization.=C2=A0 The replay block doesn't presently support timed commands.

And, as a side note, the issue with streaming from the host is not just the=
 host.=C2=A0 The DMA FIFO has a maximum bandwidth of something like 600 MS/=
s (combination of all inputs and outputs) that precludes streaming 400 MS/s=
 in and out of the block simultaneously.=C2=A0 So, even if the host could k=
eep up, the FIFO could not.
Rob

On Mon, Dec 9, 2019 at 4:34 AM Thomas Harder via USRP-users <usrp-users@lis=
ts.ettus.com> wrote:
Hi Sam,
Thank you for your reply.
This morning I set the MCR to 184.32 and I am still having continuous under=
runs using also=20
replay_ctrl->get_record_fullness
for both channels.
=C2=A0
But since I need the full bandwidth of 160MHz I would like implement a seco=
nd replay block in my fpga image.
=C2=A0
Could anyone help me with this?=20
I am really new in fpga programming and for the image with one replay block=
 I was just following the instructions in https://kb.ettus.com/Using_the_RF=
NoC_Replay_Block.
Thank you,
Thomas
=C2=A0
=C2=A0
From: Sam Reiter
Sent: Friday, December 6, 2019 10:23 PM
To: Thomas Harder
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] transmitting on two channels with replay block
=C2=A0
Thomas,
=C2=A0
Upon further investigation, we may be running up to a practical limit of a =
single CHDR interface rather than an issue with your code. A single replay =
block servicing two radios will have a max (theoretical) rate of 187.5 MSPS=
 on either channel. This means that you might be able to squeeze full rate =
out on 2 channels with an MCR of 184.32, but that's cutting it pretty close=
. Sounds like 2 channels at 200 MSPS with a replay setup will require 2 rep=
lay blocks serving each channel independently. If you end up trying either =
of the above out, I'd be curious to know what results you observe.
=C2=A0
Sam Reiter=20
Ettus Research
=C2=A0
=C2=A0
On Fri, Dec 6, 2019 at 2:38 PM Sam Reiter <sam.reiter@ettus.com> wrote:
Thomas,
=C2=A0
I'd need to set it up on my end, but I believe you can TX two distinct wave=
forms from a single replay block instance. You'd need to make sure that you=
r adding your data to the buffer in separate locations and at an address th=
at is a multiple of 8 bytes (which it looks like you're doing from the abov=
e snippets). Are you seeing continuous underruns, or just a handful at the =
beginning on the run? Does your duplicated code also use:
=C2=A0
replay_ctrl->get_record_fullness
=C2=A0
on both channels before kicking off the stream start?
=C2=A0
Sam Reiter=C2=A0
Ettus Research
=C2=A0
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
=C2=A0
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--_4944E579-6B84-4E54-84E8-C13BADE14612_
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
span.gmail-m-383616684794867338e24kjd
	{mso-style-name:gmail-m_-383616684794867338e24kjd;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3DEN-US link=3Dblue vlink=3D"#954F72"><div cla=
ss=3DWordSection1><p class=3DMsoNormal>Thank you Rob for this comment.</p><=
p class=3DMsoNormal>But I am not sure if I understand you correctly. Do you=
 want to say, that it is <b>IMPOSSIBLE</b> to stream TX two different wavef=
orms synchronized =C2=A0on the 2 channels of the x310 with the full bandwid=
th of 200MS/s on each channel?</p><p class=3DMsoNormal>That is what I am tr=
ying the last 6 months full time, starting with Labview under windows and t=
hen UHD under Linux with a Dell Precision 5820 desktop (16GB RAM, Intel Xeo=
n W-2125 CPU@ 4.GHz x8) with MXI connection, dual 10Gbit connection(Intel X=
520-DA2), the replay block recently: always the same result: continuous und=
erruns.</p><p class=3DMsoNormal>If you can confirm that this is not possibl=
e without an important FPGA change (because I have no experience in this fi=
eld and I have not the time to invest into it), I must search for another s=
olution to create two different synchronized RF waveforms with 160MHz bandw=
idth (optical, electronical,=E2=80=A6) because this will be just a part of =
my experimental setup but it is crucial to go on .</p><p class=3DMsoNormal>=
I am thankful for any advise,</p><p class=3DMsoNormal>Thomas</p><p class=3D=
MsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><d=
iv style=3D'mso-element:para-border-div;border:none;border-top:solid #E1E1E=
1 1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNormal style=3D'border:non=
e;padding:0in'><b>From: </b><a href=3D"mailto:rkossler@nd.edu">Rob Kossler<=
/a><br><b>Sent: </b>Tuesday, December 10, 2019 5:01 AM<br><b>To: </b><a hre=
f=3D"mailto:Thomas.Harder@oca.eu">Thomas Harder</a><br><b>Cc: </b><a href=
=3D"mailto:sam.reiter@ettus.com">Sam Reiter</a>; <a href=3D"mailto:usrp-use=
rs@lists.ettus.com">usrp-users@lists.ettus.com</a><br><b>Subject: </b>Re: [=
USRP-users] transmitting on two channels with replay block</p></div><p clas=
s=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>Apart from sol=
ving the underrun issue, there is also an issue with synchronization.&nbsp;=
 The replay block doesn't presently support timed commands.</p><div><p clas=
s=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal>And, as =
a side note, the issue with streaming from the host is not just the host.&n=
bsp; The DMA FIFO has a maximum bandwidth of something like 600 MS/s (combi=
nation of all inputs and outputs) that precludes streaming 400 MS/s in and =
out of the block simultaneously.&nbsp; So, even if the host could keep up, =
the FIFO could not.</p></div><div><p class=3DMsoNormal>Rob</p></div></div><=
p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Mon, Dec 9, 2019 at 4:34 AM Thomas Harder via USRP-users &lt;<a href=3D"mai=
lto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:</=
p></div><blockquote style=3D'border:none;border-left:solid #CCCCCC 1.0pt;pa=
dding:0in 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in'><div><div><p cl=
ass=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto=
'>Hi Sam,</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-marg=
in-bottom-alt:auto'>Thank you for your reply.</p><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>This morning I set =
the MCR to 184.32 and I am still having continuous underruns using also </p=
><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-al=
t:auto'><span style=3D'font-size:9.0pt;font-family:Consolas;color:#24292E'>=
replay_ctrl-&gt;</span><span style=3D'font-size:9.0pt;font-family:Consolas;=
color:#005CC5'>get_record_fullness</span></p><p class=3DMsoNormal style=3D'=
mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>for both channels.</p><=
p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:=
auto'>&nbsp;</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-m=
argin-bottom-alt:auto'>But since I need the full bandwidth of 160MHz I woul=
d like implement a second replay block in my fpga image.</p><p class=3DMsoN=
ormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</=
p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto'>Could anyone help me with this? </p><p class=3DMsoNormal style=3D'=
mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>I am really new in fpga=
 programming and for the image with one replay block I was just following t=
he instructions in <a href=3D"https://kb.ettus.com/Using_the_RFNoC_Replay_B=
lock" target=3D"_blank">https://kb.ettus.com/Using_the_RFNoC_Replay_Block</=
a>.</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bot=
tom-alt:auto'>Thank you,</p><p class=3DMsoNormal style=3D'mso-margin-top-al=
t:auto;mso-margin-bottom-alt:auto'>Thomas</p><p class=3DMsoNormal style=3D'=
mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</p><p class=3DMs=
oNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;=
</p><div style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt =
0in 0in 0in'><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-marg=
in-bottom-alt:auto'><b>From: </b><a href=3D"mailto:sam.reiter@ettus.com" ta=
rget=3D"_blank">Sam Reiter</a><br><b>Sent: </b>Friday, December 6, 2019 10:=
23 PM<br><b>To: </b><a href=3D"mailto:Thomas.Harder@oca.eu" target=3D"_blan=
k">Thomas Harder</a><br><b>Cc: </b><a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br><b>Subject: </b>R=
e: [USRP-users] transmitting on two channels with replay block</p></div><p =
class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:au=
to'>&nbsp;</p><div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:au=
to;mso-margin-bottom-alt:auto'>Thomas,</p></div><div><p class=3DMsoNormal s=
tyle=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</p></div=
><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bott=
om-alt:auto'>Upon further investigation, we may be running up to a practica=
l limit of a single CHDR interface rather than an issue with your code. A s=
ingle replay block servicing two radios will have a max (theoretical) rate =
of 187.5 MSPS on either channel. This means that you might be able to squee=
ze full rate out on 2 channels with an MCR of <span class=3Dgmail-m-3836166=
84794867338e24kjd>184.32, but that's cutting it pretty close. Sounds like 2=
 channels at 200 MSPS with a replay setup will require 2 replay blocks serv=
ing each channel independently. If you end up trying either of the above ou=
t, I'd be curious to know what results you observe.</span></p></div><div><p=
 class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:a=
uto'>&nbsp;</p></div><div><div><div><div><div><div><p class=3DMsoNormal sty=
le=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Sam Reiter </p><d=
iv><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto'>Ettus Research</p></div></div></div></div></div></div><p class=3D=
MsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbs=
p;</p></div></div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso=
-margin-bottom-alt:auto'>&nbsp;</p><div><div><p class=3DMsoNormal style=3D'=
mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>On Fri, Dec 6, 2019 at =
2:38 PM Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D"_b=
lank">sam.reiter@ettus.com</a>&gt; wrote:</p></div><blockquote style=3D'bor=
der:none;border-left:solid #CCCCCC 1.0pt;padding:0in 0in 0in 6.0pt;margin-l=
eft:4.8pt;margin-top:5.0pt;margin-right:0in;margin-bottom:5.0pt'><div><p cl=
ass=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto=
'>Thomas,</p><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso=
-margin-bottom-alt:auto'>&nbsp;</p></div><div><p class=3DMsoNormal style=3D=
'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>I'd need to set it up =
on my end, but I believe you can TX two distinct waveforms from a single re=
play block instance. You'd need to make sure that your adding your data to =
the buffer in separate locations and at an address that is a multiple of 8 =
bytes (which it looks like you're doing from the above snippets). Are you s=
eeing continuous underruns, or just a handful at the beginning on the run? =
Does your duplicated code also use:</p></div><div><p class=3DMsoNormal styl=
e=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</p></div><d=
iv><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto'><span style=3D'font-size:9.0pt;font-family:Consolas;color:#24292E=
'>replay_ctrl-&gt;</span><span style=3D'font-size:9.0pt;font-family:Consola=
s;color:#005CC5'>get_record_fullness</span></p></div><div><p class=3DMsoNor=
mal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</p>=
</div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin=
-bottom-alt:auto'>on both channels before kicking off the stream start?</p>=
</div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin=
-bottom-alt:auto'>&nbsp;</p></div><div><div><div><div><div><div><p class=3D=
MsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Sam =
Reiter&nbsp;</p><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;=
mso-margin-bottom-alt:auto'>Ettus Research</p></div></div></div></div></div=
></div></div></div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto'>&nbsp;</p><div><div><p class=3DMsoNormal style=3D=
'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>On Wed, Dec 4, 2019 at=
 3:48 AM Thomas Harder via USRP-users &lt;<a href=3D"mailto:usrp-users@list=
s.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:</p=
></div><blockquote style=3D'border:none;border-left:solid #CCCCCC 1.0pt;pad=
ding:0in 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;=
margin-bottom:5.0pt'><div><div><p class=3DMsoNormal style=3D'mso-margin-top=
-alt:auto;mso-margin-bottom-alt:auto'>Hello everyone,</p><p class=3DMsoNorm=
al style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Is it possi=
ble to transmit two different waveforms on the two channels of the USRP X31=
0 with the two UBX-160 daughterboards?</p><p class=3DMsoNormal style=3D'mso=
-margin-top-alt:auto;mso-margin-bottom-alt:auto'>I want to transmit two dif=
ferent waveforms simultaneous (synchronized ) on the two channels of the US=
RP with the full sample rate of 200 MS/s. I tried already to do it with a d=
ual 10Gbit-ethernet connection and I seemed to be limited by my computer. N=
ow I am trying to do it with the replay block.</p><p class=3DMsoNormal styl=
e=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</p><p class=
=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>I=
 built the FPGA image with one Replay block as described in <a href=3D"http=
s://kb.ettus.com/Using_the_RFNoC_Replay_Block" target=3D"_blank">https://kb=
.ettus.com/Using_the_RFNoC_Replay_Block</a> to run the example =E2=80=9Crep=
lay_samples_from_file=E2=80=9D and it is working fine if I transmit just on=
 one channel. Now I was modifying the code by connecting the replay block t=
o both channels:</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;m=
so-margin-bottom-alt:auto'>replay_graph-&gt;connect(replay_ctrl-&gt;get_blo=
ck_id(),replay_chan,tx_blockid,tx_chan,replay_spp);</p><p class=3DMsoNormal=
 style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>replay_graph-=
&gt;connect(replay_ctrl-&gt;get_block_id(),replay_chan1,tx_blockid1,tx_chan=
,replay_spp);</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-=
margin-bottom-alt:auto'>&nbsp;</p><p class=3DMsoNormal style=3D'mso-margin-=
top-alt:auto;mso-margin-bottom-alt:auto'>and writing the same waveform into=
 another region of the DRAM-buffer:</p><p class=3DMsoNormal style=3D'mso-ma=
rgin-top-alt:auto;mso-margin-bottom-alt:auto'>replay_ctrl-&gt;config_record=
(0,words_to_replay*replay_word_size, replay_chan);</p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>replay_ctrl-&g=
t;config_record(20000,words_to_replay*replay_word_size, replay_chan1);</p><=
p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:=
auto'>and</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-marg=
in-bottom-alt:auto'>replay_ctrl-&gt;config_play(0,words_to_replay*replay_wo=
rd_size, replay_chan);</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:=
auto;mso-margin-bottom-alt:auto'>replay_ctrl-&gt;config_play(20000,words_to=
_replay*replay_word_size, replay_chan1);</p><p class=3DMsoNormal style=3D'm=
so-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</p><p class=3DMso=
Normal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>where <=
/p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto'>words_to_replay*replay_word_size=3D16000</p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>replay_chan=3D=
0</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto'>replay_chan1=3D1</p><p class=3DMsoNormal style=3D'mso-margin-to=
p-alt:auto;mso-margin-bottom-alt:auto'>tx_blockid=3D0/Radio_0</p><p class=
=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>t=
x_blockid=3D0/Radio_1</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:a=
uto;mso-margin-bottom-alt:auto'>&nbsp;</p><p class=3DMsoNormal style=3D'mso=
-margin-top-alt:auto;mso-margin-bottom-alt:auto'>then I stream my waveforms=
 to the replay block as defined in the example and I start to replay the da=
ta:</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bot=
tom-alt:auto'>replay_ctrl-&gt;issue_stream_cmd(stream_cmd, replay_chan);</p=
><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-al=
t:auto'>replay_ctrl-&gt;issue_stream_cmd(stream_cmd, replay_chan1);</p><p c=
lass=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:aut=
o'>&nbsp;</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-marg=
in-bottom-alt:auto'>It works but with plenty of Underflows!!</p><p class=3D=
MsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbs=
p;</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bott=
om-alt:auto'>So what does it mean when it says in the manual:</p><p class=
=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>=
=E2=80=9CNote that the record and playback buffers do not need to the same,=
 allowing a single Replay block to both record and playback to different re=
gions of memory<b> simultaneously</b>.=E2=80=9D</p><p class=3DMsoNormal sty=
le=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>(<a href=3D"https=
://kb.ettus.com/Using_the_RFNoC_Replay_Block" target=3D"_blank">https://kb.=
ettus.com/Using_the_RFNoC_Replay_Block</a>)?</p><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</p><p class=
=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>B=
ecause in the manual it says also:</p><p class=3DMsoNormal style=3D'mso-mar=
gin-top-alt:auto;mso-margin-bottom-alt:auto'>=E2=80=9CThe replay block has =
the following features: One input and <b>one</b> output=E2=80=9D</p><p clas=
s=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>=
(<a href=3D"https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1replay__blo=
ck__ctrl.html" target=3D"_blank">https://files.ettus.com/manual/classuhd_1_=
1rfnoc_1_1replay__block__ctrl.html</a>)</p><p class=3DMsoNormal style=3D'ms=
o-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</p><p class=3DMsoN=
ormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>So if th=
e replay block has just one output why does it have two channels connected =
to it (replay_chan=3D 0 and 1)?</p><p class=3DMsoNormal style=3D'mso-margin=
-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</p><p class=3DMsoNormal st=
yle=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>If one replay bl=
ock can just stream to one channel at the same time, can I implement easily=
 a second replay block in the FPGA to stream on the two channels of my USRP=
 two different waveforms simultaneously?</p><p class=3DMsoNormal style=3D'm=
so-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</p><p class=3DMso=
Normal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Thank y=
ou,</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bot=
tom-alt:auto'>Thomas</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:au=
to;mso-margin-bottom-alt:auto'>&nbsp;</p><p class=3DMsoNormal style=3D'mso-=
margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</p><p class=3DMsoNor=
mal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</p>=
<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'>&nbsp;</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-=
margin-bottom-alt:auto'>&nbsp;</p></div></div></blockquote></div></blockquo=
te></div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-b=
ottom-alt:auto;margin-left:9.6pt'>_________________________________________=
______<br>USRP-users mailing list<br><a href=3D"mailto:USRP-users@lists.ett=
us.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br><a href=3D"http=
://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_=
blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</=
a></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bott=
om-alt:auto'>&nbsp;</p></div></div></blockquote></div><p class=3DMsoNormal =
style=3D'margin-left:4.8pt'>_______________________________________________=
<br>USRP-users mailing list<br><a href=3D"mailto:USRP-users@lists.ettus.com=
" target=3D"_blank">USRP-users@lists.ettus.com</a><br><a href=3D"http://lis=
ts.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_blank"=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></p>=
<p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>=

--_4944E579-6B84-4E54-84E8-C13BADE14612_--



--===============6693065321287211794==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6693065321287211794==--


