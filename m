Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D69611285C
	for <lists+usrp-users@lfdr.de>; Wed,  4 Dec 2019 10:48:57 +0100 (CET)
Received: from [::1] (port=54252 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1icRHB-0003NW-4t; Wed, 04 Dec 2019 04:48:53 -0500
Received: from smtpout01-ext1.partage.renater.fr ([194.254.240.32]:42428)
 by mm2.emwd.com with esmtp (Exim 4.92)
 (envelope-from <Thomas.Harder@oca.eu>) id 1icRH7-0003JF-UX
 for usrp-users@lists.ettus.com; Wed, 04 Dec 2019 04:48:50 -0500
Received: from zmtaauth01.partage.renater.fr (zmtaauth01.partage.renater.fr
 [194.254.240.25])
 by smtpout10.partage.renater.fr (Postfix) with ESMTP id 261AD61360
 for <usrp-users@lists.ettus.com>; Wed,  4 Dec 2019 10:48:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zmtaauth01.partage.renater.fr (Postfix) with ESMTP id 60E0C140100
 for <usrp-users@lists.ettus.com>; Wed,  4 Dec 2019 10:47:50 +0100 (CET)
X-Virus-Scanned: amavisd-new at zmtaauth01.partage.renater.fr
Received: from zmtaauth01.partage.renater.fr ([127.0.0.1])
 by localhost (zmtaauth01.partage.renater.fr [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id r20jUosdXWXL for <usrp-users@lists.ettus.com>;
 Wed,  4 Dec 2019 10:47:50 +0100 (CET)
Received: from [IPv6:::ffff:10.252.71.233] (unknown [194.254.241.251])
 by zmtaauth01.partage.renater.fr (Postfix) with ESMTPA id 31BCC1400BB
 for <usrp-users@lists.ettus.com>; Wed,  4 Dec 2019 10:47:50 +0100 (CET)
MIME-Version: 1.0
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Wed, 4 Dec 2019 10:47:50 +0100
Importance: normal
X-Priority: 3
Message-Id: <20191204094750.31BCC1400BB@zmtaauth01.partage.renater.fr>
Subject: [USRP-users] transmitting on two channels with replay block
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
Content-Type: multipart/mixed; boundary="===============0714319763371663180=="
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

--===============0714319763371663180==
Content-Type: multipart/alternative;
	boundary="_C9A6657D-6B13-4258-94C0-CBC75260CC7E_"

--_C9A6657D-6B13-4258-94C0-CBC75260CC7E_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hello everyone,
Is it possible to transmit two different waveforms on the two channels of t=
he USRP X310 with the two UBX-160 daughterboards?
I want to transmit two different waveforms simultaneous (synchronized ) on =
the two channels of the USRP with the full sample rate of 200 MS/s. I tried=
 already to do it with a dual 10Gbit-ethernet connection and I seemed to be=
 limited by my computer. Now I am trying to do it with the replay block.

I built the FPGA image with one Replay block as described in https://kb.ett=
us.com/Using_the_RFNoC_Replay_Block to run the example =E2=80=9Creplay_samp=
les_from_file=E2=80=9D and it is working fine if I transmit just on one cha=
nnel. Now I was modifying the code by connecting the replay block to both c=
hannels:
replay_graph->connect(replay_ctrl->get_block_id(),replay_chan,tx_blockid,tx=
_chan,replay_spp);
replay_graph->connect(replay_ctrl->get_block_id(),replay_chan1,tx_blockid1,=
tx_chan,replay_spp);

and writing the same waveform into another region of the DRAM-buffer:
replay_ctrl->config_record(0,words_to_replay*replay_word_size, replay_chan)=
;
replay_ctrl->config_record(20000,words_to_replay*replay_word_size, replay_c=
han1);
and
replay_ctrl->config_play(0,words_to_replay*replay_word_size, replay_chan);
replay_ctrl->config_play(20000,words_to_replay*replay_word_size, replay_cha=
n1);

where=20
words_to_replay*replay_word_size=3D16000
replay_chan=3D0
replay_chan1=3D1
tx_blockid=3D0/Radio_0
tx_blockid=3D0/Radio_1

then I stream my waveforms to the replay block as defined in the example an=
d I start to replay the data:
replay_ctrl->issue_stream_cmd(stream_cmd, replay_chan);
replay_ctrl->issue_stream_cmd(stream_cmd, replay_chan1);

It works but with plenty of Underflows!!

So what does it mean when it says in the manual:
=E2=80=9CNote that the record and playback buffers do not need to the same,=
 allowing a single Replay block to both record and playback to different re=
gions of memory simultaneously.=E2=80=9D
(https://kb.ettus.com/Using_the_RFNoC_Replay_Block)?

Because in the manual it says also:
=E2=80=9CThe replay block has the following features: One input and one out=
put=E2=80=9D
(https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1replay__block__ctrl.ht=
ml)

So if the replay block has just one output why does it have two channels co=
nnected to it (replay_chan=3D 0 and 1)?

If one replay block can just stream to one channel at the same time, can I =
implement easily a second replay block in the FPGA to stream on the two cha=
nnels of my USRP two different waveforms simultaneously?

Thank you,
Thomas






--_C9A6657D-6B13-4258-94C0-CBC75260CC7E_
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3DEN-US link=3D"#0563C1" vlink=3D"#954F72"><di=
v class=3DWordSection1><p class=3DMsoNormal>Hello everyone,</p><p class=3DM=
soNormal>Is it possible to transmit two different waveforms on the two chan=
nels of the USRP X310 with the two UBX-160 daughterboards?</p><p class=3DMs=
oNormal>I want to transmit two different waveforms simultaneous (synchroniz=
ed ) on the two channels of the USRP with the full sample rate of 200 MS/s.=
 I tried already to do it with a dual 10Gbit-ethernet connection and I seem=
ed to be limited by my computer. Now I am trying to do it with the replay b=
lock.</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I b=
uilt the FPGA image with one Replay block as described in <a href=3D"https:=
//kb.ettus.com/Using_the_RFNoC_Replay_Block">https://kb.ettus.com/Using_the=
_RFNoC_Replay_Block</a> to run the example =E2=80=9Creplay_samples_from_fil=
e=E2=80=9D and it is working fine if I transmit just on one channel. Now I =
was modifying the code by connecting the replay block to both channels:</p>=
<p class=3DMsoNormal>replay_graph-&gt;connect(replay_ctrl-&gt;get_block_id(=
),replay_chan,tx_blockid,tx_chan,replay_spp);</p><p class=3DMsoNormal>repla=
y_graph-&gt;connect(replay_ctrl-&gt;get_block_id(),replay_chan1,tx_blockid1=
,tx_chan,replay_spp);</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=
=3DMsoNormal>and writing the same waveform into another region of the DRAM-=
buffer:</p><p class=3DMsoNormal>replay_ctrl-&gt;config_record(0,words_to_re=
play*replay_word_size, replay_chan);</p><p class=3DMsoNormal>replay_ctrl-&g=
t;config_record(20000,words_to_replay*replay_word_size, replay_chan1);</p><=
p class=3DMsoNormal>and</p><p class=3DMsoNormal>replay_ctrl-&gt;config_play=
(0,words_to_replay*replay_word_size, replay_chan);<o:p></o:p></p><p class=
=3DMsoNormal>replay_ctrl-&gt;config_play(20000,words_to_replay*replay_word_=
size, replay_chan1);</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=
=3DMsoNormal>where </p><p class=3DMsoNormal>words_to_replay*replay_word_siz=
e=3D16000</p><p class=3DMsoNormal>replay_chan=3D0</p><p class=3DMsoNormal>r=
eplay_chan1=3D1</p><p class=3DMsoNormal>tx_blockid=3D0/Radio_0</p><p class=
=3DMsoNormal>tx_blockid=3D0/Radio_1</p><p class=3DMsoNormal><o:p>&nbsp;</o:=
p></p><p class=3DMsoNormal>then I stream my waveforms to the replay block a=
s defined in the example and I start to replay the data:</p><p class=3DMsoN=
ormal>replay_ctrl-&gt;issue_stream_cmd(stream_cmd, replay_chan);<o:p></o:p>=
</p><p class=3DMsoNormal>replay_ctrl-&gt;issue_stream_cmd(stream_cmd, repla=
y_chan1);</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal=
>It works but with plenty of Underflows!!</p><p class=3DMsoNormal><o:p>&nbs=
p;</o:p></p><p class=3DMsoNormal>So what does it mean when it says in the m=
anual:</p><p class=3DMsoNormal>=E2=80=9CNote that the record and playback b=
uffers do not need to the same, allowing a single Replay block to both reco=
rd and playback to different regions of memory<b> simultaneously</b>.=E2=80=
=9D<o:p></o:p></p><p class=3DMsoNormal>(<a href=3D"https://kb.ettus.com/Usi=
ng_the_RFNoC_Replay_Block">https://kb.ettus.com/Using_the_RFNoC_Replay_Bloc=
k</a>)?<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3D=
MsoNormal>Because in the manual it says also:<o:p></o:p></p><p class=3DMsoN=
ormal>=E2=80=9CThe replay block has the following features: One input and <=
b>one</b> output=E2=80=9D<o:p></o:p></p><p class=3DMsoNormal>(https://files=
.ettus.com/manual/classuhd_1_1rfnoc_1_1replay__block__ctrl.html)</p><p clas=
s=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>So if the replay bl=
ock has just one output why does it have two channels connected to it (repl=
ay_chan=3D 0 and 1)?<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></=
p><p class=3DMsoNormal>If one replay block can just stream to one channel a=
t the same time, can I implement easily a second replay block in the FPGA t=
o stream on the two channels of my USRP two different waveforms simultaneou=
sly?<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMso=
Normal>Thank you,<o:p></o:p></p><p class=3DMsoNormal>Thomas<o:p></o:p></p><=
p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><o:p>&nbsp;</=
o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><o:p=
>&nbsp;</o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></h=
tml>=

--_C9A6657D-6B13-4258-94C0-CBC75260CC7E_--



--===============0714319763371663180==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0714319763371663180==--


