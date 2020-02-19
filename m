Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EF112165027
	for <lists+usrp-users@lfdr.de>; Wed, 19 Feb 2020 21:40:09 +0100 (CET)
Received: from [::1] (port=37268 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j4W8c-0003ri-0Y; Wed, 19 Feb 2020 15:40:06 -0500
Received: from updc19pa21.eemsg.mail.mil ([214.24.27.196]:39892)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <andrew.payne1@navy.mil>)
 id 1j4W8X-0003ks-0J
 for usrp-users@lists.ettus.com; Wed, 19 Feb 2020 15:40:01 -0500
X-EEMSG-check-017: 60049612|UPDC19PA21_ESA_OUT03.csd.disa.mil
X-EEMSG-Attachment-filename: smime.p7s
X-EEMSG-Attachment-filesize: 5373
X-IronPort-AV: E=Sophos;i="5.70,461,1574121600"; 
 d="p7s'?scan'208,217";a="60049612"
Received: from naeanrfkax28.nmci.navy.mil (HELO
 NAEANRFKAX28o.NADSUSEA.NADS.NAVY.MIL) ([205.85.33.195])
 by UPDC19PA21.eemsg.mail.mil with ESMTP/TLS/DHE-RSA-AES256-SHA256;
 19 Feb 2020 20:39:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=navy.mil; s=dkim1; c=relaxed/simple;
 q=dns/txt; i=@navy.mil; t=1582144750; x=1584736750;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YFz2MWffmjEcAjZhrZHL6VMEmNC3/8sDr3NgnPVdzZg=;
 b=YRk3Hx+46r8vged4VuhM/KTEbxTLudDDgaK4LL0KmJgbJ+GG0PkGClGRjX07kXNp
 lZHcN3fkqinL5c05F18twjxxY3Dg8RwNs+e3sfwRuElG4SVSDwqI48ccx3u6G4U0
 Zpn/4WWnrBggKpsVgjL1AGjP7AuRNXZ9+ZjWW7FTfXjjsryilHnupVkFpeYyHfkj
 GKg6peLZ0OcduzY6845T0JqPDTMbJ2oXKcdPkL20MbD2ZOnt/qATXVCGg0ZlGhk4
 Pud6D6/lROY9IAFaF90EGJ76OPiW9U2aLGrQheRVy1XbYbLhpa4GwcNIpjKtAS9r
 +iZfTrdo/ITvBJXm54a4CA==;
X-AuditID: cd5521c2-6aabda8000005449-6a-5e4d9cee5167
Received: from NAEANRFKXH52V.nadsusea.nads.navy.mil (Unknown_Domain
 [205.85.33.242]) (using TLS with cipher AES128-SHA256 (128/128 bits))
 (Client did not present a certificate)
 by NAEANRFKAX28o.NADSUSEA.NADS.NAVY.MIL (Symantec Messaging Gateway) with SMTP
 id 59.6E.21577.EEC9D4E5; Wed, 19 Feb 2020 15:39:10 -0500 (EST)
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Thread-Topic: [Non-DoD Source] Re: [USRP-users] RFNOC: 2 input/2 output block, 
 synchronizing their outputs to GNURadio host
Thread-Index: AdXiZg7zdywlVwcoTn+hkUntlG0U1AAZJF4AASUU5lA=
Date: Wed, 19 Feb 2020 20:39:07 +0000
Message-ID: <076257c564ba4a4eb7511de35eaa2f4f@NAEACRANXE02V.nadsusea.nads.navy.mil>
References: <dbe0e0b485ba4b2786c97ea5e0a0eee2@NAEACRANXE02V.nadsusea.nads.navy.mil>
 <CAL7q81uzuFsY4rE5ZEN1aWYwJ8qR0cf=9toQ3fuVGKOrNGmEmQ@mail.gmail.com>
In-Reply-To: <CAL7q81uzuFsY4rE5ZEN1aWYwJ8qR0cf=9toQ3fuVGKOrNGmEmQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.18.56.62]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrJIsWRmVeSWpSXmKPExsVyNlTxk+67Ob5xBg03eSz+vDvPavGqbQGz
 xYXOOewOzB4zT21h95i48hCzx/Uz25kCmKO4bFJSczLLUov07RK4Mq4d+sxYsOkTY8Xj5acZ
 GxiXXWfsYuTkkBAwkbi9qI8FxBYSOMIk8egrL4jNJpAg8XN3K1iNiIChxMPmZWA2s0CWxK4F
 35hBbGGBGolzfYugamolJi/6yw5hW0kcnb2CFcRmEVCVWHl0MpjNKxAs0fapka2LkQto1yxG
 ie2Lu8EWcwoESvR3NjKB2IwCYhLfT61hglgmLnHryXwmiENFJB5ePM0GYYtKvHz8jxXCNpDY
 unQfC4QtL9E36zAryAJmgV5GiS37HkFtFpQ4OfMJUBEH0GZliSUnhCYwis5CsmIWspZZSFog
 iqIlnq2+zQxha0s8vfmUBcZetvA1UJwDyNaSWDzLE1UYxLaWmPHrIBuErSgxpfshO4RtKvH6
 6EfGBYzcqxiV/RxdHf2C3LwdI4ws9PwcXYJDg10dwQwgERap5+vps4kRkgIO7WCcfeK93iFG
 Jg7GQ4wqQIMebVh9gVGKJS8/L1VJhNdb3CtOiDclsbIqtSg/vqg0J7X4EKM0B4uSOK/AV9s4
 IYH0xJLU7NTUgtQimCwTB6dUAxPH/gvJnHeNt7t5P/617/HXyYJlJSkcZ3YWL0jSvO2z//27
 dw6tM9Lm/5ZSKmw6JHyQ5azDxqdTE9dueiLG5rIi+N+uc08e8b5Z4/2WM+hJ9U/jD6U8MUlc
 Xw+t4F8XkWoi7j7v0pMnfW6Ohzaf+RBm03FQSVtW2fLdM7MvARGl1tysTbkH1I/+PKAZ9rh5
 0QaWt0IRGQZHguq1581Zs6zdNNn+ocd6kUt+030+6f2cmWIS+7XqstY3V9eS/C1n4sJ15Tom
 7JyamS4kkHR9j5ppD9PCz4X8zwrkPi/mMf+xzklBbutJjf/Oe7ybVx33Vv4TtnjTad4dbYop
 j+ItVjFudrin8//qEhPW6Ytf+BoqsRRnJBpqMRcVJwIAHT4Ea3wDAAA=
Subject: Re: [USRP-users] [Non-DoD Source] Re: RFNOC: 2 input/2 output block,
 synchronizing their outputs to GNURadio host
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
From: "Payne, William Andrew \(Andrew\) CIV USN NSWC CD CRANE ID \(USA\) via
 USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Payne, William Andrew \(Andrew\) CIV USN NSWC CD CRANE ID \(USA\)"
 <andrew.payne1@navy.mil>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 "matt.pegram@ni.com" <matt.pegram@ni.com>
Content-Type: multipart/mixed; boundary="===============0978691677054136922=="
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

--===============0978691677054136922==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_008E_01D5E73A.B7494750"

------=_NextPart_000_008E_01D5E73A.B7494750
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_008F_01D5E73A.B7494750"


------=_NextPart_001_008F_01D5E73A.B7494750
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Jonathan,

=20

Fortunately, a lot of progress has been made since you mentioned some =
ideas for me, I was just hesitating to reply until I got stuck again.  I =
have been running on an e310 a 2-stream custom noc_block with axi =
wrappers set to simple mode successfully for the past few days, proving =
it is very much possible and not a difficult task.  I think the root =
cause of my problem was either:

1.       Not running make clean before make install in my rfnocmodtool =
directory

2.       Not inputting my settings registers correctly in the UHD =
nocsript.

3.       Not correctly setting up my GRC block xml file.

4.       Correcting a bug in my custom Verilog code in my noc_block.

=20

But now there is a slight issue that I hope you can help me out with.  =
My test bench is composed of the e310 receiving RF from a sig gen tuned =
to a center freq and sweeping the amplitude from noise floor to less =
than max input, running through my custom string of IP blocks that =
comprise my rfnoc block (complex to magnitude -> moving sum -> keep one =
in n).   Data streams through just fine, no timeouts, but sometimes I =
get odd results such as the magnitude going down a little when I =
expected it to keep rising with the sig gen input.=20

=20

I wanted to dig a little deeper into the sampling details from the rx =
front end.  Here=E2=80=99s my list of questions for you:

1.       I understand from Analog documentation that the AD9361 outputs =
12-bit samples in two=E2=80=99s complement, is that right? Also I gather =
from tracing through the HDL, within e31x_core, the data is packed =
MSB-aligned, with LSBs 3=E2=80=A60 locked at 1=E2=80=99b0.  When you =
feed a 16-bit I, 16-bit Q sample into the complex_to_magphase IP block =
it outputs a 16-bit real, 16-bit phase result. So is the magnitude =
(16-bit real output) formatted the same way, i.e. {D11=E2=80=A6D0, =
4=E2=80=99d0}?  Does it not matter to that IP block whether it is MSB =
padded or LSB padded?  Is it also in 2=E2=80=99s complement?

2.       Dynamic range of e310, if the samples are 12-bit then does this =
come out to 20*log10(4095) =3D 72.2 dB?  So I should be experiencing =
some abnormalities at the extremes?

3.       Since I have the analog bw set to 10 MHz, and I am feeding the =
SDR a CW signal which is very narrow in the spectrum, is it possible to =
actually max out the ADC with this bench setup?

4.       Most import question, I=E2=80=99m using noc_block_fft as a =
guide for producing magnitude samples.  In that file mag_tdata[31:0] is =
assigned {1=E2=80=99b0, mag_tdata_int[15:0], 15=E2=80=99d0}, then that =
mag_tdata is fed to axi_round_and_clip wherein the first MSB is clipped, =
and truncated such that 16 bit data is outputted.  My question is: Does =
that not just clip the leading 0 off and round the LSB?  Then =
wouldn=E2=80=99t the host computer interpret this over the wire real =
uint16 as a two=E2=80=99s complement float or int, going negative as the =
MSB goes high?  How can I treat that result as an unsigned 16-bit int?

=20

Thank you,

Andrew

=20

From: Jonathon Pendlum <jonathon.pendlum@ettus.com>=20
Sent: Thursday, February 13, 2020 14:07
To: Payne, William Andrew (Andrew) CIV USN NSWC CD CRANE ID (USA) =
<andrew.payne1@navy.mil>
Cc: usrp-users@lists.ettus.com; matt.pegram@ni.com
Subject: [Non-DoD Source] Re: [USRP-users] RFNOC: 2 input/2 output =
block, synchronizing their outputs to GNURadio host

=20

Hi Andrew,

=20

Are you able to run any of the in-tree RFNoC blocks on your E310 without =
this error? Does your block work if you make it 1 input / 1 output? =
Also, do you have access to an X310? If so, can you try running your =
block on there and see if it works?

=20

Jonathon

=20

On Thu, Feb 13, 2020 at 7:10 AM Payne, William Andrew (Andrew) CIV USN =
NSWC CD CRANE ID (USA) via USRP-users <usrp-users@lists.ettus.com =
<mailto:usrp-users@lists.ettus.com> > wrote:

Hi,

I am trying to solve what I think is a timing issue with my RFNOC =
design.  I have an E310 running UHD 3.15LTS/GNUradio 3.7/gr-ettus.

I have created a custom RFNOC block for GNUradio without much custom =
logic, I've managed to just reuse code blocks from the uhd-fpga repo in =
lib/rfnoc.  In particular, I am using the following blocks in this =
order: complex to magphase (ISE IP in lib/rfnoc) -> moving_sum -> =
keep_one_in_n -> fifo with size 5 (so I don't have to have RFNOC:FIFO =
blocks taking up room in the FPGA).  For moving_sum I'm trying to use =
511 as the sum length and for keep_one_in_n I am using 512.  I have made =
this block a permanent 2 input/2 output block by setting those =
parameters in noc_shell instantiation.  I am using the axi_wrappers (0 =
and 1) with SIMPLE MODE set to 0, and simply utilizing the =
cvita_hdr_modify.v IP exactly as utilized in the =
noc_block_keep_one_in_n.v block to set the tuser headers.

In Vivado behavioral simulation the data correctly flows through but =
what I am unsure about is the fact that after synthesizing and loading =
the FPGA bit file into the e310 and running my flowgraph, it just =
repeatedly prints out timeout on channel 0.   By the way this code does =
work on just a single input/single output application but I want to =
consolidate it into a single GRC block to save space on the relatively =
small FPGA.  What do I need to do to sync the 2 e310 rx2 channels so =
they arrive close to on-time in GRC?  Or is that probably not the =
problem?  I assume I should be looking at how it's done in =
noc_block_ddc/duc as they have implemented timed samples within those?

Thanks,
Andrew

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>=20
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.noclick_com/mailman/listinfo/usrp-users_lists.ettus.c=
om>=20


------=_NextPart_001_008F_01D5E73A.B7494750
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
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
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1074084413;
	mso-list-type:hybrid;
	mso-list-template-ids:518045978 67698703 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:1747875606;
	mso-list-type:hybrid;
	mso-list-template-ids:-1040808872 67698703 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Hello Jonathan,<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Fortunately, a lot of progress has been made since you mentioned some =
ideas for me, I was just hesitating to reply until I got stuck =
again.=C2=A0 I have been running on an e310 a 2-stream custom noc_block =
with axi wrappers set to simple mode successfully for the past few days, =
proving it is very much possible and not a difficult task.=C2=A0 I think =
the root cause of my problem was either:<o:p></o:p></span></p><p =
class=3DMsoListParagraph style=3D'text-indent:-.25in;mso-list:l1 level1 =
lfo1'><![if !supportLists]><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><span style=3D'mso-list:Ignore'>1.<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Not running make clean before make install in my rfnocmodtool =
directory<o:p></o:p></span></p><p class=3DMsoListParagraph =
style=3D'text-indent:-.25in;mso-list:l1 level1 lfo1'><![if =
!supportLists]><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><span style=3D'mso-list:Ignore'>2.<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Not inputting my settings registers correctly in the UHD =
nocsript.<o:p></o:p></span></p><p class=3DMsoListParagraph =
style=3D'text-indent:-.25in;mso-list:l1 level1 lfo1'><![if =
!supportLists]><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><span style=3D'mso-list:Ignore'>3.<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Not correctly setting up my GRC block xml file.<o:p></o:p></span></p><p =
class=3DMsoListParagraph style=3D'text-indent:-.25in;mso-list:l1 level1 =
lfo1'><![if !supportLists]><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><span style=3D'mso-list:Ignore'>4.<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Correcting a bug in my custom Verilog code in my =
noc_block.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>But now there is a slight issue that I hope you can help me out with. =
=C2=A0My test bench is composed of the e310 receiving RF from a sig gen =
tuned to a center freq and sweeping the amplitude from noise floor to =
less than max input, running through my custom string of IP blocks that =
comprise my rfnoc block (complex to magnitude -&gt; moving sum -&gt; =
keep one in n).=C2=A0 =C2=A0Data streams through just fine, no timeouts, =
but sometimes I get odd results such as the magnitude going down a =
little when I expected it to keep rising with the sig gen input. =
<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>I wanted to dig a little deeper into the sampling details from the rx =
front end.=C2=A0 Here=E2=80=99s my list of questions for =
you:<o:p></o:p></span></p><p class=3DMsoListParagraph =
style=3D'text-indent:-.25in;mso-list:l0 level1 lfo2'><![if =
!supportLists]><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><span style=3D'mso-list:Ignore'>1.<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>I understand from Analog documentation that the AD9361 outputs 12-bit =
samples in two=E2=80=99s complement, is that right? Also I gather from =
tracing through the HDL, within e31x_core, the data is packed =
MSB-aligned, with LSBs 3=E2=80=A60 locked at 1=E2=80=99b0. =C2=A0When =
you feed a 16-bit I, 16-bit Q sample into the complex_to_magphase IP =
block it outputs a 16-bit real, 16-bit phase result. So is the magnitude =
(16-bit real output) formatted the same way, i.e. {D11=E2=80=A6D0, =
4=E2=80=99d0}?=C2=A0 Does it not matter to that IP block whether it is =
MSB padded or LSB padded? =C2=A0Is it also in 2=E2=80=99s =
complement?<o:p></o:p></span></p><p class=3DMsoListParagraph =
style=3D'text-indent:-.25in;mso-list:l0 level1 lfo2'><![if =
!supportLists]><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><span style=3D'mso-list:Ignore'>2.<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Dynamic range of e310, if the samples are 12-bit then does this come =
out to 20*log10(4095) =3D 72.2 dB?=C2=A0 So I should be experiencing =
some abnormalities at the extremes?<o:p></o:p></span></p><p =
class=3DMsoListParagraph style=3D'text-indent:-.25in;mso-list:l0 level1 =
lfo2'><![if !supportLists]><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><span style=3D'mso-list:Ignore'>3.<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Since I have the analog bw set to 10 MHz, and I am feeding the SDR a CW =
signal which is very narrow in the spectrum, is it possible to actually =
max out the ADC with this bench setup?<o:p></o:p></span></p><p =
class=3DMsoListParagraph style=3D'text-indent:-.25in;mso-list:l0 level1 =
lfo2'><![if !supportLists]><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><span style=3D'mso-list:Ignore'>4.<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Most import question, I=E2=80=99m using noc_block_fft as a guide for =
producing magnitude samples.=C2=A0 In that file mag_tdata[31:0] is =
assigned {1=E2=80=99b0, mag_tdata_int[15:0], 15=E2=80=99d0}, then that =
mag_tdata is fed to axi_round_and_clip wherein the first MSB is clipped, =
and truncated such that 16 bit data is outputted. =C2=A0My question is: =
Does that not just clip the leading 0 off and round the LSB?=C2=A0 Then =
wouldn=E2=80=99t the host computer interpret this over the wire real =
uint16 as a two=E2=80=99s complement float or int, going negative as the =
MSB goes high?=C2=A0 How can I treat that result as an unsigned 16-bit =
int?<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Thank you,<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Andrew<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><b><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>From:</span><=
/b><span style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'> =
Jonathon Pendlum &lt;jonathon.pendlum@ettus.com&gt; <br><b>Sent:</b> =
Thursday, February 13, 2020 14:07<br><b>To:</b> Payne, William Andrew =
(Andrew) CIV USN NSWC CD CRANE ID (USA) =
&lt;andrew.payne1@navy.mil&gt;<br><b>Cc:</b> usrp-users@lists.ettus.com; =
matt.pegram@ni.com<br><b>Subject:</b> [Non-DoD Source] Re: [USRP-users] =
RFNOC: 2 input/2 output block, synchronizing their outputs to GNURadio =
host<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>Hi =
Andrew,<o:p></o:p></p><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Are you able to run any of the in-tree RFNoC blocks on =
your E310 without this error? Does your block work if you make it 1 =
input / 1 output? Also, do you have access to an X310? If so, can you =
try running your block on there and see if it =
works?<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Jonathon<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Thu, Feb 13, 2020 at 7:10 AM Payne, William Andrew (Andrew) CIV USN NSWC =
CD CRANE ID (USA) via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt; wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0in 0in 0in =
6.0pt;margin-left:4.8pt;margin-right:0in'><p =
class=3DMsoNormal>Hi,<br><br>I am trying to solve what I think is a =
timing issue with my RFNOC design.&nbsp; I have an E310 running UHD =
3.15LTS/GNUradio 3.7/gr-ettus.<br><br>I have created a custom RFNOC =
block for GNUradio without much custom logic, I've managed to just reuse =
code blocks from the uhd-fpga repo in lib/rfnoc.&nbsp; In particular, I =
am using the following blocks in this order: complex to magphase (ISE IP =
in lib/rfnoc) -&gt; moving_sum -&gt; keep_one_in_n -&gt; fifo with size =
5 (so I don't have to have RFNOC:FIFO blocks taking up room in the =
FPGA).&nbsp; For moving_sum I'm trying to use 511 as the sum length and =
for keep_one_in_n I am using 512.&nbsp; I have made this block a =
permanent 2 input/2 output block by setting those parameters in =
noc_shell instantiation.&nbsp; I am using the axi_wrappers (0 and 1) =
with SIMPLE MODE set to 0, and simply utilizing the cvita_hdr_modify.v =
IP exactly as utilized in the noc_block_keep_one_in_n.v block to set the =
tuser headers.<br><br>In Vivado behavioral simulation the data correctly =
flows through but what I am unsure about is the fact that after =
synthesizing and loading the FPGA bit file into the e310 and running my =
flowgraph, it just repeatedly prints out timeout on channel 0. &nbsp; By =
the way this code does work on just a single input/single output =
application but I want to consolidate it into a single GRC block to save =
space on the relatively small FPGA.&nbsp; What do I need to do to sync =
the 2 e310 rx2 channels so they arrive close to on-time in GRC?&nbsp; Or =
is that probably not the problem?&nbsp; I assume I should be looking at =
how it's done in noc_block_ddc/duc as they have implemented timed =
samples within =
those?<br><br>Thanks,<br>Andrew<br><br>__________________________________=
_____________<br>USRP-users mailing list<br><a =
href=3D"mailto:USRP-users@lists.ettus.com" =
target=3D"_blank">USRP-users@lists.ettus.com</a><br><a =
href=3D"http://lists.ettus.noclick_com/mailman/listinfo/usrp-users_lists.=
ettus.com" =
target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com</a><o:p></o:p></p></blockquote></div></div></div></body></htm=
l>
------=_NextPart_001_008F_01D5E73A.B7494750--

------=_NextPart_000_008E_01D5E73A.B7494750
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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
Vgk3TBRZ9Sq3HEb8G49PFh65bQcY6SkqhayKLSU6EKGz6140536RPEL/DwN6/xF8IXzh7/0aKWgD
qnEiGV1zRciJh2wQQRGY6GruyYOcg0yGfDfgSHLH7qYPwaKLYGWnJ+G2o/lw3Wyslv61MeR90m6n
1MTMwhnpEWojajvlaejFGPxJFxpvjQc6wEr2f7vB71iMTkV7tsjowBRR8H9s5PGdyfn49cNBLYDu
A72tyvDzR30Rk/CYvrq5bv/NKfs07Xr1FMS+au7qrOpI935KHZODw7y3+OGdmn81SYW2MjqvuUwJ
OZ0luyccfOFBPYGi9p/hzksBa8u47QIDAQABo4IBnTCCAZkwHwYDVR0jBBgwFoAU9x/xRjhVv7xx
i7IGO44rGLJeu7QwOgYDVR0fBDMwMTAvoC2gK4YpaHR0cDovL2NybC5kaXNhLm1pbC9jcmwvRE9E
RU1BSUxDQV80My5jcmwwDgYDVR0PAQH/BAQDAgbAMBYGA1UdIAQPMA0wCwYJYIZIAWUCAQsqMB0G
A1UdDgQWBBTVs4MOovend9q9IOsz83ijPBR0uTBoBggrBgEFBQcBAQRcMFowNgYIKwYBBQUHMAKG
Kmh0dHA6Ly9jcmwuZGlzYS5taWwvc2lnbi9ET0RFTUFJTENBXzQzLmNlcjAgBggrBgEFBQcwAYYU
aHR0cDovL29jc3AuZGlzYS5taWwwQQYDVR0RBDowOIEWYW5kcmV3LnBheW5lMUBuYXZ5Lm1pbKAe
BgorBgEEAYI3FAIDoBAMDjE0MDI3OTE3NTJAbWlsMBsGA1UdCQQUMBIwEAYIKwYBBQUHCQQxBBMC
VVMwKQYDVR0lBCIwIAYKKwYBBAGCNxQCAgYIKwYBBQUHAwIGCCsGAQUFBwMEMA0GCSqGSIb3DQEB
CwUAA4IBAQClBbUSeLYxbCVTVVRK+AfD7P572vmh3kQkp2pedwkngZ0otI8hWq4aZly2lFCjD2hH
kQLFBALD4bOwoBJqgOzG9j9tjnLWExDJmka++2XiOJuxzlKRVeCLfWKKHFnlR1hVvzKMPOl/1ycV
Gnj/eW9n01g7RgB7HjnV0hHTvvQYdPAlpfx4nYGaOm0dACOGbpTLAfTbvJL7t6xB49PGk/4tNrwl
w2FwoKpfaOKfCiQvfyoy5Rdhc2phFLThRgddnHWINBVLuj09vFO7Jy7zw1NlMBpEim5k82u9gqbk
/arMrihjqvUUewYtzfsdhSx62F9zK2L3LBQ+zqFXGYwWAu3pMYIC/zCCAvsCAQEwZDBdMQswCQYD
VQQGEwJVUzEYMBYGA1UEChMPVS5TLiBHb3Zlcm5tZW50MQwwCgYDVQQLEwNEb0QxDDAKBgNVBAsT
A1BLSTEYMBYGA1UEAxMPRE9EIEVNQUlMIENBLTQzAgMPhu0wCQYFKw4DAhoFAKCCAXAwGAYJKoZI
hvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMjAwMjE5MjAzOTA0WjAjBgkqhkiG
9w0BCQQxFgQUVEgaWFJLBRhmmNEyey3YKUoK0rgwJQYJKoZIhvcNAQkPMRgwgRUwBwYFKw4DAhow
CgYIKoZIhvcNAwcwcwYJKwYBBAGCNxAEMWYwZDBdMQswCQYDVQQGEwJVUzEYMBYGA1UEChMPVS5T
LiBHb3Zlcm5tZW50MQwwCgYDVQQLEwNEb0QxDDAKBgNVBAsTA1BLSTEYMBYGA1UEAxMPRE9EIEVN
QUlMIENBLTQzAgMPhu8wdQYLKoZIhvcNAQkQAgsxZqBkMF0xCzAJBgNVBAYTAlVTMRgwFgYDVQQK
Ew9VLlMuIEdvdmVybm1lbnQxDDAKBgNVBAsTA0RvRDEMMAoGA1UECxMDUEtJMRgwFgYDVQQDEw9E
T0QgRU1BSUwgQ0EtNDMCAw+G7zANBgkqhkiG9w0BAQEFAASCAQAgeb+BTAeyhAXGFMSB47KHc4qe
lO7FTQPZhwpTjE+C2EmZsjduiquvSKOJd9Mdv1fIkhTpNsblBbSVU8MCpChJGdhzf15+Pkm7+eWF
gZhhjADK3iLM2f0ZAeMS5gSmLooaqa1zC94DFC589/JN/6ITOufsZmRkI1eStQ95gaJlkt+Ro3Dt
53sjrFNaJ/R5u9eaAfJSM4XC8nq2uAEQw95pt5EFwrfKxVw+JH4VDD4vjzHijPdSaNtONEEwD1hk
JdYyD9ubaWwaa7F8Bb8IQLXcNChe8agFrXmvU87xBGLA+gOiOMP1dyINvoEYXvLV6ajMjOYX8xe3
/R0nL/ET2+hdAAAAAAAA

------=_NextPart_000_008E_01D5E73A.B7494750--


--===============0978691677054136922==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0978691677054136922==--

