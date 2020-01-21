Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D6794144002
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2020 15:55:06 +0100 (CET)
Received: from [::1] (port=60410 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ituvj-0006gs-2G; Tue, 21 Jan 2020 09:54:59 -0500
Received: from smtpout01-ext3.partage.renater.fr ([194.254.240.34]:45966
 helo=smtpout01-ext1.partage.renater.fr)
 by mm2.emwd.com with esmtp (Exim 4.92)
 (envelope-from <Thomas.Harder@oca.eu>) id 1ituve-0006db-MZ
 for usrp-users@lists.ettus.com; Tue, 21 Jan 2020 09:54:54 -0500
Received: from zmtaauth01.partage.renater.fr (zmtaauth01.partage.renater.fr
 [194.254.240.25])
 by smtpout10.partage.renater.fr (Postfix) with ESMTP id 3B0EB61DBA;
 Tue, 21 Jan 2020 15:54:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zmtaauth01.partage.renater.fr (Postfix) with ESMTP id 3100F1400FB;
 Tue, 21 Jan 2020 15:54:09 +0100 (CET)
X-Virus-Scanned: amavisd-new at zmtaauth01.partage.renater.fr
Received: from zmtaauth01.partage.renater.fr ([127.0.0.1])
 by localhost (zmtaauth01.partage.renater.fr [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id GEuPOResjtmD; Tue, 21 Jan 2020 15:54:09 +0100 (CET)
Received: from [IPv6:::ffff:10.252.71.233] (unknown [194.254.241.251])
 by zmtaauth01.partage.renater.fr (Postfix) with ESMTPA id E842E1400B6;
 Tue, 21 Jan 2020 15:54:08 +0100 (CET)
MIME-Version: 1.0
To: Sam Reiter <sam.reiter@ettus.com>, Jeff S <e070832@hotmail.com>
Date: Tue, 21 Jan 2020 15:54:10 +0100
Importance: normal
X-Priority: 3
In-Reply-To: <CANf970ZmJ0PNwN2KdiXHifn3Nfn0Mr7SRTkfM6UuOKoQgcrhjw@mail.gmail.com>
References: <20200114110743.34AAD1400E0@zmtaauth01.partage.renater.fr>
 <BN6PR19MB1635C290AC93638924D3755AA4340@BN6PR19MB1635.namprd19.prod.outlook.com>
 <CANf970ZmJ0PNwN2KdiXHifn3Nfn0Mr7SRTkfM6UuOKoQgcrhjw@mail.gmail.com>
Content-Type: multipart/mixed;
 boundary="_CEB7D28F-03F7-4304-9EF2-9E34619F5F0B_"
Message-Id: <20200121145408.E842E1400B6@zmtaauth01.partage.renater.fr>
Subject: Re: [USRP-users] using GPIO output to trigger external RF switches
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

--_CEB7D28F-03F7-4304-9EF2-9E34619F5F0B_
Content-Type: multipart/alternative;
	boundary="_23A104D6-CA79-4BDA-97E8-2F859440571A_"

--_23A104D6-CA79-4BDA-97E8-2F859440571A_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Thank you Jeff and Sam,
I found now also the gpio.cpp example. Really helpful to get familiar with =
GPIO.

>> To accomplish what you're talking about, I think you'd just need to use =
timed commands >>on both set_tx_rate() and set_gpio_attr(). If these are se=
t to execute simultaneously, the >>GPIO line you set will go high on the sa=
me clock cycle as the LO retune.

In fact in my code which is based on the =E2=80=9Ctx_samples_from_file=E2=
=80=9D example I start transmitting my data in the file in the future with =
tx_metadata_t  time specification and with timed commands I set set_gpio_at=
tr() to the same point in future.
But this gives me just 1 output pulse in GPIO what is not sufficient for my=
 application.

I am transmitting  in continuous mode (a fixed modulation in a while loop) =
and my center frequency stays fix during the whole transmission whereas wit=
h my data in the file I am modulating the center frequency to discrete freq=
uencies in the whole bandwidth of 160MHz. I measured a transition time of t=
he usrp  of around 20ns between different frequencies in my modulation.
To be able to postprocess my RF signal I would like to have a pulse each ti=
me the tx-frequency is changing.

As the ATR is just showing if the usrp is transmitting, receiving or idle i=
t is not really helpful
And putting set_gpio_attr() in the while loop for my continuous transmissio=
n is slowing down the streaming and causes underruns.

Do you think of any other solution to get a pulse each time the transmissio=
n frequency of the USRP is changing?

Thomas

From: Sam Reiter
Sent: Tuesday, January 14, 2020 6:44 PM
To: Jeff S
Cc: usrp-users@lists.ettus.com; Thomas Harder
Subject: Re: [USRP-users] using GPIO output to trigger external RF switches

Thomas,

To accomplish what you're talking about, I think you'd just need to use tim=
ed commands on both set_tx_rate() and set_gpio_attr(). If these are set to =
execute simultaneously, the GPIO line you set will go high on the same cloc=
k cycle as the LO retune.

Sam


On Tue, Jan 14, 2020 at 5:59 AM Jeff S via USRP-users <usrp-users@lists.ett=
us.com> wrote:
Thomas,

I am looking at GPIO right now as well.=C2=A0 As to your question #2 on exa=
mples, I compiled and am able to run the example I found in the UHD softwar=
e:

uhd/host/examples/gpio.cpp

I am able to set individual data lines to experiment with (and eventually u=
se as a roadmap for my development) using commands like:

./gpio --dwell 0 --bitbang --ddr 0x00ff --out 0x0055

which I verified works using a logic analyzer.=C2=A0 I eventually want to t=
ry to create a keying loop, but that may take some FPGA control (?).

Jeff



From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Thomas H=
arder via USRP-users <usrp-users@lists.ettus.com>
Sent: Tuesday, January 14, 2020 5:07 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] using GPIO output to trigger external RF switches=20
=C2=A0
Hi,
I am continuously transmitting a waveform with several RF with 200MSPS with=
 my USRP X310 (modified code on the basis of =E2=80=9Ctx_samples_from_file.=
cpp=E2=80=9D with a waveform in a .dat file). I would like to get a trigger=
 signal from the USRP when it is changing the tx- frequency which I set in =
my .dat file.=20
Could the GPIO deliver this trigger without changing the image?=20
I am using the SRAM image with UHD 3.14.1
=C2=A0
A second question is concerning the GPIO example on https://files.ettus.com=
/manual/page_gpio_api.html.
I copied and paced it in the =E2=80=9Ctx_waveforms=E2=80=9D example just ch=
anging the usrp device handle to =E2=80=9Cusrp=E2=80=9D but when I compiled=
 it and started tx, I couldn=E2=80=99t measure any tension on PIN 4 and 6 a=
s defined in the example. Are there more examples how to program the GPIO?
Thank you,
Thomas
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--_23A104D6-CA79-4BDA-97E8-2F859440571A_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dutf-8"><meta name=3DGenerator content=3D"Microsoft=
 Word 15 (filtered medium)"><!--[if !mso]><style>v\:* {behavior:url(#defaul=
t#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
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
	color:blue;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3DEN-US link=3Dblue vlink=3D"#954F72"><div cla=
ss=3DWordSection1><p class=3DMsoNormal>Thank you Jeff and Sam,</p><p class=
=3DMsoNormal>I found now also the gpio.cpp example. Really helpful to get f=
amiliar with GPIO.</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3D=
MsoNormal>&gt;&gt; To accomplish what you're talking about, I think you'd j=
ust need to use timed commands &gt;&gt;on both set_tx_rate() and set_gpio_a=
ttr(). If these are set to execute simultaneously, the &gt;&gt;GPIO line yo=
u set will go high on the same clock cycle as the LO retune.</p><p class=3D=
MsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>In fact in my code whic=
h is based on the =E2=80=9Ctx_samples_from_file=E2=80=9D example I start tr=
ansmitting my data in the file in the future with tx_metadata_t=C2=A0 time =
specification and with timed commands I set set_gpio_attr() to the same poi=
nt in future.</p><p class=3DMsoNormal>But this gives me just 1 output pulse=
 in GPIO what is not sufficient for my application.</p><p class=3DMsoNormal=
><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I am transmitting=C2=A0 in conti=
nuous mode (a fixed modulation in a while loop) and my center frequency sta=
ys fix during the whole transmission whereas with my data in the file I am =
modulating the center frequency to discrete frequencies in the whole bandwi=
dth of 160MHz. I measured a transition time of the usrp =C2=A0of around 20n=
s between different frequencies in my modulation.</p><p class=3DMsoNormal><=
b>To be able to postprocess my RF signal I would like to have a pulse each =
time the tx-frequency is changing.<o:p></o:p></b></p><p class=3DMsoNormal><=
o:p>&nbsp;</o:p></p><p class=3DMsoNormal>As the ATR is just showing if the =
usrp is transmitting, receiving or idle it is not really helpful</p><p clas=
s=3DMsoNormal>And putting set_gpio_attr() in the while loop for my continuo=
us transmission is slowing down the streaming and causes underruns.</p><p c=
lass=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Do you think of =
any other solution to get a pulse each time the transmission frequency of t=
he USRP is changing?</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=
=3DMsoNormal>Thomas</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div style=
=3D'mso-element:para-border-div;border:none;border-top:solid #E1E1E1 1.0pt;=
padding:3.0pt 0in 0in 0in'><p class=3DMsoNormal style=3D'border:none;paddin=
g:0in'><b>From: </b><a href=3D"mailto:sam.reiter@ettus.com">Sam Reiter</a><=
br><b>Sent: </b>Tuesday, January 14, 2020 6:44 PM<br><b>To: </b><a href=3D"=
mailto:e070832@hotmail.com">Jeff S</a><br><b>Cc: </b><a href=3D"mailto:usrp=
-users@lists.ettus.com">usrp-users@lists.ettus.com</a>; <a href=3D"mailto:T=
homas.Harder@oca.eu">Thomas Harder</a><br><b>Subject: </b>Re: [USRP-users] =
using GPIO output to trigger external RF switches</p></div><p class=3DMsoNo=
rmal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>Thomas,</p></div><=
div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNorm=
al>To accomplish what you're talking about, I think you'd just need to use =
timed commands on both set_tx_rate() and set_gpio_attr(). If these are set =
to execute simultaneously, the GPIO line you set will go high on the same c=
lock cycle as the LO retune.</p></div><div><p class=3DMsoNormal><o:p>&nbsp;=
</o:p></p></div><div><div><div><div><div><div><p class=3DMsoNormal>Sam</p><=
/div></div></div></div></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></di=
v></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoN=
ormal>On Tue, Jan 14, 2020 at 5:59 AM Jeff S via USRP-users &lt;<a href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote=
:</p></div><blockquote style=3D'border:none;border-left:solid #CCCCCC 1.0pt=
;padding:0in 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:=
0in;margin-bottom:5.0pt'><div><div><p class=3DMsoNormal style=3D'margin-lef=
t:4.8pt'><span style=3D'font-size:12.0pt;color:black'>Thomas,<o:p></o:p></s=
pan></p></div><div><p class=3DMsoNormal style=3D'margin-left:4.8pt'><span s=
tyle=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></p></div><di=
v><p class=3DMsoNormal style=3D'margin-left:4.8pt'><span style=3D'font-size=
:12.0pt;color:black'>I am looking at GPIO right now as well.&nbsp; As to yo=
ur question #2 on examples, I compiled and am able to run the example I fou=
nd in the UHD software:<o:p></o:p></span></p></div><div><p class=3DMsoNorma=
l style=3D'margin-left:4.8pt'><span style=3D'font-size:12.0pt;color:black'>=
<o:p>&nbsp;</o:p></span></p></div><blockquote style=3D'margin-top:5.0pt;mar=
gin-bottom:5.0pt'><div><p class=3DMsoNormal style=3D'margin-left:40.8pt'><s=
pan style=3D'font-size:12.0pt;color:black'>uhd/host/examples/gpio.cpp<o:p><=
/o:p></span></p></div></blockquote><div><p class=3DMsoNormal style=3D'margi=
n-left:4.8pt'><span style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p=
></span></p></div><div><p class=3DMsoNormal style=3D'margin-left:4.8pt'><sp=
an style=3D'font-size:12.0pt;color:black'>I am able to set individual data =
lines to experiment with (and eventually use as a roadmap for my developmen=
t) using commands like:<o:p></o:p></span></p></div><div><p class=3DMsoNorma=
l style=3D'margin-left:4.8pt'><span style=3D'font-size:12.0pt;color:black'>=
<o:p>&nbsp;</o:p></span></p></div><blockquote style=3D'margin-top:5.0pt;mar=
gin-bottom:5.0pt'><div><p class=3DMsoNormal style=3D'margin-left:40.8pt'><s=
pan style=3D'font-size:12.0pt;color:black'>./gpio --dwell 0 --bitbang --ddr=
 0x00ff --out 0x0055<o:p></o:p></span></p></div></blockquote><div><p class=
=3DMsoNormal style=3D'margin-left:4.8pt'><span style=3D'font-size:12.0pt;co=
lor:black'><o:p>&nbsp;</o:p></span></p></div><div><p class=3DMsoNormal styl=
e=3D'margin-left:4.8pt'><span style=3D'font-size:12.0pt;color:black'>which =
I verified works using a logic analyzer.&nbsp; I eventually want to try to =
create a keying loop, but that may take some FPGA control (?).<o:p></o:p></=
span></p></div><div><p class=3DMsoNormal style=3D'margin-left:4.8pt'><span =
style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></p></div><d=
iv><p class=3DMsoNormal style=3D'margin-left:4.8pt'><span style=3D'font-siz=
e:12.0pt;color:black'>Jeff<o:p></o:p></span></p></div><div><p class=3DMsoNo=
rmal style=3D'margin-left:4.8pt'><span style=3D'font-size:12.0pt;color:blac=
k'><o:p>&nbsp;</o:p></span></p></div><div id=3D"gmail-m_1960093859765433781=
Signature"><div><p class=3DMsoNormal style=3D'margin-left:4.8pt'><o:p>&nbsp=
;</o:p></p><p class=3DMsoNormal style=3D'margin-left:4.8pt'><img border=3D0=
 width=3D469 height=3D1 style=3D'width:4.8888in;height:.0138in' id=3D"Horiz=
ontal_x0020_Line_x0020_1" src=3D"cid:image001.png@01D5D073.0520A6A0"></p><d=
iv id=3D"gmail-m_1960093859765433781divRplyFwdMsg"><p class=3DMsoNormal sty=
le=3D'margin-left:4.8pt'><b><span style=3D'color:black'>From:</span></b><sp=
an style=3D'color:black'> USRP-users &lt;<a href=3D"mailto:usrp-users-bounc=
es@lists.ettus.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a=
>&gt; on behalf of Thomas Harder via USRP-users &lt;<a href=3D"mailto:usrp-=
users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;=
<br><b>Sent:</b> Tuesday, January 14, 2020 5:07 AM<br><b>To:</b> <a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettu=
s.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blan=
k">usrp-users@lists.ettus.com</a>&gt;<br><b>Subject:</b> [USRP-users] using=
 GPIO output to trigger external RF switches</span> </p><div><p class=3DMso=
Normal style=3D'margin-left:4.8pt'>&nbsp;</p></div></div><div><div><p style=
=3D'margin:0in;margin-bottom:.0001pt'>Hi,</p><p style=3D'margin:0in;margin-=
bottom:.0001pt'>I am continuously transmitting a waveform with several RF w=
ith 200MSPS with my USRP X310 (modified code on the basis of =E2=80=9Ctx_sa=
mples_from_file.cpp=E2=80=9D with a waveform in a .dat file). I would like =
to get a trigger signal from the USRP when it is changing the tx- frequency=
 which I set in my .dat file. </p><p style=3D'margin:0in;margin-bottom:.000=
1pt'>Could the GPIO deliver this trigger without changing the image? </p><p=
 style=3D'margin:0in;margin-bottom:.0001pt'>I am using the SRAM image with =
UHD 3.14.1</p><p style=3D'margin:0in;margin-bottom:.0001pt'>&nbsp;</p><p st=
yle=3D'margin:0in;margin-bottom:.0001pt'>A second question is concerning th=
e GPIO example on <a href=3D"https://files.ettus.com/manual/page_gpio_api.h=
tml" target=3D"_blank">https://files.ettus.com/manual/page_gpio_api.html</a=
>.</p><p style=3D'margin:0in;margin-bottom:.0001pt'>I copied and paced it i=
n the =E2=80=9Ctx_waveforms=E2=80=9D example just changing the usrp device =
handle to =E2=80=9Cusrp=E2=80=9D but when I compiled it and started tx, I c=
ouldn=E2=80=99t measure any tension on PIN 4 and 6 as defined in the exampl=
e. Are there more examples how to program the GPIO?</p><p style=3D'margin:0=
in;margin-bottom:.0001pt'>Thank you,</p><p style=3D'margin:0in;margin-botto=
m:.0001pt'>Thomas</p></div></div></div></div></div></blockquote></div><p cl=
ass=3DMsoNormal style=3D'margin-left:4.8pt'>_______________________________=
________________<br>USRP-users mailing list<br><a href=3D"mailto:USRP-users=
@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br><a hr=
ef=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" t=
arget=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.e=
ttus.com</a></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></ht=
ml>=

--_23A104D6-CA79-4BDA-97E8-2F859440571A_--

--_CEB7D28F-03F7-4304-9EF2-9E34619F5F0B_
Content-Type: image/png; name="25C7523DB0D9401587F1AFD501FAFC0B.png"
Content-ID: <image001.png@01D5D073.0520A6A0>
Content-Transfer-Encoding: base64
Content-Disposition: inline; filename="25C7523DB0D9401587F1AFD501FAFC0B.png"

iVBORw0KGgoAAAANSUhEUgAAAsAAAAACCAYAAABWkGp5AAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAlSURBVFhH7chBDQAACMQw/Js+EIAC6JJ+VlMA
AOCRdQIAwEGVBmC+esxRNQOcAAAAAElFTkSuQmCC

--_CEB7D28F-03F7-4304-9EF2-9E34619F5F0B_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_CEB7D28F-03F7-4304-9EF2-9E34619F5F0B_--


