Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ACD6B14CB1
	for <lists+usrp-users@lfdr.de>; Tue, 29 Jul 2025 13:04:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C8DED3864F6
	for <lists+usrp-users@lfdr.de>; Tue, 29 Jul 2025 07:03:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753787039; bh=VCmwmjcdR4/nFzro+W9tABNyC43WtzpjvvcmiN7Ftt8=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=tPaIPXnfgNr7Na5VBQZLjI8s01YQ6L9HzuSnoUNcBmM23TpDHMYfvPr+iz6TEasO6
	 iCODHaqDcADfq16ErwufPEmeoH6fcBqVVZZYfO4XHeM4zKf5an8D71b4XabF2HoNBv
	 skrxDa3IfqgaZABMF5ke7X2qWtywx+Tc7wPdgI75nomJ7kNjvpjfRllpS6LNKEtHZz
	 WyunWEl+z/OCiWY9N3/AMyuEzHnuFLBDKjDhjiMRTbBgkDx/09PhnkwG1+2ypf5fN8
	 4IY47yHIwqNBIHPGLUwyIJbfcHQp5Ev42bftXCyX7r13WpKXt+dWHEP4/oqBngbAHw
	 yA3DVfDPvWlrQ==
Received: from za-smtp-delivery-57.mimecast.co.za (za-smtp-delivery-57.mimecast.co.za [41.74.201.57])
	by mm2.emwd.com (Postfix) with ESMTPS id 8DB5C3864B7
	for <usrp-users@lists.ettus.com>; Tue, 29 Jul 2025 07:03:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=vastech.co.za header.i=@vastech.co.za header.b="YdI0z8Xo";
	dkim-atps=neutral
Received: from mail.vastech.co.za (41.193.248.106 [41.193.248.106]) by
 relay.mimecast.com with ESMTP id za-mta-47-HdY3-r7zNsS_SVmnNgd14Q-1; Tue,
 29 Jul 2025 13:03:12 +0200
X-MC-Unique: HdY3-r7zNsS_SVmnNgd14Q-1
X-Mimecast-MFC-AGG-ID: HdY3-r7zNsS_SVmnNgd14Q_1753786992
dkim-signature: v=1; a=rsa-sha256; d=vastech.co.za; s=dkim;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:In-Reply-To:References;
	bh=v8n8gHQwDclluWHT3MGZsRMLT0WKS1K8e84TFtRsxqQ=;
	b=YdI0z8XocRGaYBpJnNmlkejqz36TN62L6gMNv0Ny5C37VjeXuBkw4u92MXPSw7+rCXaWkt2K4ZB7KdOCk5Hy/aHemaUFd4AnrlVZk902GF4I9DMwUpSRmxZ0RT2FNHltxFx5iYAVuagHnLTbzyTJVYojD97XHzXQqbSDeNAe7nA=
Received: from exchange3.vastech.co.za (Unknown [172.30.81.31])
	by mail.vastech.co.za with ESMTPSA
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256)
	; Tue, 29 Jul 2025 13:03:08 +0200
Received: from exchange3.vastech.co.za (172.30.81.31) by
 exchange3.vastech.co.za (172.30.81.31) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Tue, 29 Jul 2025 13:03:07 +0200
Received: from exchange3.vastech.co.za ([172.30.81.31]) by
 exchange3.vastech.co.za ([172.30.81.31]) with mapi id 15.02.1118.040; Tue, 29
 Jul 2025 13:03:07 +0200
From: Kevin Williams <kevin.williams@vastech.co.za>
To: "martin.braun@ettus.com" <martin.braun@ettus.com>
Thread-Topic: [USRP-users] Re: [EXTERNAL]Re: remote streaming starts, but
 stops after a few packets received
Thread-Index: AQHb++IkYMk+p2kicke3vxbc7X5L4bRCs8Hg///2/ACAACOsQIAEpzIAgAAlivD//+kdAIABGuHQgAAaqED//+YPAAAEaZ8w///hd4D//61/0A==
Date: Tue, 29 Jul 2025 11:03:06 +0000
Message-ID: <827a6d39fb054bb4beb9eecdd59bd922@vastech.co.za>
References: <111b29cda9ce4309b4966fcfcc3b7ece@vastech.co.za>
 <CAAxXO2HUxF7tDvb8_OzmZS4xat-SM=X_BMN465cvw5PzGQvQ+A@mail.gmail.com>
 <00b1e2cd914e4e87a81ed418f7fa142c@vastech.co.za>
 <CAFOi1A79w6Yn703f7V+Jwe2X0PpR7or7Vn1naNgWmhYY3kJm-g@mail.gmail.com>
 <45a2d2bfa5784898840a602a2b31db9c@vastech.co.za>
 <CAFOi1A7k0F=vs7bhSVQFjoQFvBg=nNtfyLxq_zJypMPJUp_uhg@mail.gmail.com>
 <a60e4a0ea3ec4a10b95d90103bd2a7f7@vastech.co.za>
 <CAFOi1A5oPd6pCJK8mh18Un=WDLGVYt+mGpQHp5J2UQR7xLNV+A@mail.gmail.com>
 <42dbe59d936f4847841d2f442a7ebdf8@vastech.co.za>
 <CAEXYVK4MN=aNyP201VqABP=xbfB7DuiXF3kVu3t_WwVhnrf8sg@mail.gmail.com>
 <87a46c7a1cc643d9b30f2fc63e70cb40@vastech.co.za>
 <fb3ebac4d0aa48b7a1c3d9e7261ce06d@vastech.co.za>
 <CAFOi1A4X3PcST+MYSdpCSZUwZtNvBE14xSoHywGZ1RZeR7AP2g@mail.gmail.com>
 <f2f6f4a9aa574c9599c240b8353e2d02@vastech.co.za>
 <CAFOi1A4FsGYAbAz++Yg+rBphiXoPWYCjOLv_MYhWrmpNQZZOjA@mail.gmail.com>
In-Reply-To: <CAFOi1A4FsGYAbAz++Yg+rBphiXoPWYCjOLv_MYhWrmpNQZZOjA@mail.gmail.com>
Accept-Language: en-US, en-ZA
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.168.3]
MIME-Version: 1.0
Message-ID-Hash: C6DWS6UWXOTSC35CFSVTDIM4X52XBBMB
X-Message-ID-Hash: C6DWS6UWXOTSC35CFSVTDIM4X52XBBMB
X-MailFrom: kevin.williams@vastech.co.za
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Werner Bode <werner.bode@vastech.co.za>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]Re: remote streaming starts, but stops after a few packets received
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C6DWS6UWXOTSC35CFSVTDIM4X52XBBMB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4530332315792078249=="

--===============4530332315792078249==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.3;
	boundary="----=_NextPart_000_0242_01DC0089.1F88A280"

------=_NextPart_000_0242_01DC0089.1F88A280
Content-Type: multipart/related;
	boundary="----=_NextPart_001_0243_01DC0089.1F88A280"


------=_NextPart_001_0243_01DC0089.1F88A280
Content-Type: multipart/alternative;
	boundary="----=_NextPart_002_0244_01DC0089.1F88A280"


------=_NextPart_002_0244_01DC0089.1F88A280
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The resolution is that the x310 has the rfnoc_chdr clock (which I used =
to clock my block) slower than the radio clock, whereas with my previous =
n300 that clock is faster..!

=20

I need to create many output channels from my block now, so I think I =
will just ignore handshaking, and design on the basis of the radio =
streaming continuously.

=20

From: Martin Braun <martin.braun@ettus.com>=20
Sent: Tuesday, 29 July 2025 10:01
Cc: usrp-users@lists.ettus.com
Subject: [USRP-users] Re: [EXTERNAL]Re: remote streaming starts, but =
stops after a few packets received

=20

Normally flow control is the thing that will let the radio stall, but =
maybe it's something else. From what I can see, there's two potential =
culprits: 1) Your block is not permanently processing samples, but has =
some bubble cycles or something like that. 2) The SEP->SEP connection =
has an issue.

=20

If you can, connect everything statically and see how that fares.

=20

--M

=20

On Tue, Jul 29, 2025 at 9:52=E2=80=AFAM Kevin Williams =
<kevin.williams@vastech.co.za <mailto:kevin.williams@vastech.co.za> > =
wrote:

Hi Martin,

=20

I do see a single =E2=80=9CO=E2=80=9D, but this is remote streaming so I =
didn=E2=80=99t think that should occur?

=20

Yes, this is a radio -> my custom block dynamic connection.

=20

Regards, Kevin

=20

From: Martin Braun <martin.braun@ettus.com =
<mailto:martin.braun@ettus.com> >=20
Sent: Tuesday, 29 July 2025 09:44
Cc: usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>=20
Subject: [USRP-users] Re: [EXTERNAL]Re: remote streaming starts, but =
stops after a few packets received

=20

Kevin,

=20

based on the src port, this looks like it's going from Device to Host, =
not the other way around. This means it's an async message from an RFNoC =
block, with address 0x1000. I can't tell for sure from this screenshot, =
but I think this is coming from the radio, and 0x1000 is the "RX Error" =
address. The data is incorrectly formatted (probably an issue of the =
CHDR dissector, but I think it's telling us the data is "2" (if we read =
this in network order).

=20

Put these together, and we're looking at a simple overrun. Something in =
your chain is holding up the radio after a few packets. Are you sure =
you're not seeing an "O" anywhere in your output? You are using a radio =
block, right?

=20

--M

=20

On Tue, Jul 29, 2025 at 9:19=E2=80=AFAM Kevin Williams =
<kevin.williams@vastech.co.za <mailto:kevin.williams@vastech.co.za> > =
wrote:

Hi,

=20

Another observation is the every time the streaming stalls, whether =
remote streaming or normal rx_streamer operation, I see this packet from =
the host to the x310 a few data packets before it stops.

=20

What is this control write address (0x01000), and is it perhaps =
relevant?

=20



=20

From: Kevin Williams=20
Sent: Tuesday, 29 July 2025 07:53
To: 'bpadalino@gmail.com <mailto:bpadalino@gmail.com> ' =
<bpadalino@gmail.com <mailto:bpadalino@gmail.com> >
Cc: 'martin.braun@ettus.com <mailto:martin.braun@ettus.com> ' =
<martin.braun@ettus.com <mailto:martin.braun@ettus.com> >; =
'usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com> ' =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com> >; =
Werner Bode <werner.bode@vastech.co.za =
<mailto:werner.bode@vastech.co.za> >
Subject: RE: [USRP-users] Re: [EXTERNAL]Re: remote streaming starts, but =
stops after a few packets received

=20

Hi Brian,

=20

I=E2=80=99ve got two observations:

=20

1.	This is a summary of my custom block streaming where the data packet =
stream ends with icmp packets about the destination becoming =
unreachable:

=20

No.         Time      Source  Destination         Protocol               =
Length  Info

1              0.000000000       10.23.128.1         10.23.128.255     =
UDP       50           1534 =E2=86=92 1534 Len=3D8

5343       49.277852197     10.22.128.3         10.23.128.1         UDP  =
     60           49152 =E2=86=92 36716 Len=3D16

<5000-odd small udp and small rfnoc control & management packets. Setup =
I guess.>

=20

7318       50.792688865     10.22.128.3         10.22.128.1         =
RFNOC  4146       [Data]     ->   6=20

<first seq=3D0 rfnoc data packet of the correct size given my tlast =
counter>

=20

7319       50.792748665     Intel_e8:c3:4c    Broadcast            ARP   =
     42           Who has 10.22.128.1? Tell 10.23.128.1

7320       50.792754229     10.22.128.3         10.22.128.1         =
RFNOC  4146       [Data]     ->   6=20

<a few 100 more correct data packets>

=20

7775       50.795514072     10.22.128.3         10.22.128.1         =
RFNOC  4146       [Data]     ->   6=20

=20

<a string of more control and short 66 byte rfnoc packets, but no rfnoc =
data packets>

=20

7968       52.854255766     Intel_e8:c3:4c    Broadcast            ARP   =
     42           Who has 10.22.128.1? Tell 10.23.128.1

7969       53.238261827     Intel_e8:c3:4e   NationalInst_35:aa:da    =
ARP        42           Who has 10.23.128.3? Tell 10.23.128.1 (duplicate =
use of 10.23.128.1 detected!)

7970       53.238475399     NationalInst_35:aa:da    Intel_e8:c3:4e   =
ARP        60           10.23.128.3 is at 00:80:2f:35:aa:da (duplicate =
use of 10.23.128.1 detected!)

<then the destination becomes unreachable?>

=20

7971       53.878292746     10.23.128.1         10.22.128.3         ICMP =
    590         Destination unreachable (Host unreachable)

7972       53.878302721     10.23.128.1         10.22.128.3         ICMP =
    590         Destination unreachable (Host unreachable)

7973       53.878308143     10.23.128.1         10.22.128.3         ICMP =
    590         Destination unreachable (Host unreachable)

7974       53.878314734     10.23.128.1         10.22.128.3         ICMP =
    590         Destination unreachable (Host unreachable)

7975       53.878320545     10.23.128.1         10.22.128.3         ICMP =
    590         Destination unreachable (Host unreachable)

7976       53.878326301     10.23.128.1         10.22.128.3         ICMP =
    590         Destination unreachable (Host unreachable)

=20

<after that, just arp packets and the usrp broadcasting small udp =
packets>

=20

8014       137.075344888   NationalInst_35:aa:da    Broadcast            =
ARP        60           ARP Announcement for 10.23.128.3

8015       137.075304321   NationalInst_35:aa:d9    Broadcast            =
ARP        60           ARP Announcement for 10.22.128.3

8016       140.701925975   10.23.128.1         10.23.128.255     UDP     =
  50           38981 =E2=86=92 1534 Len=3D8

8017       140.701942078   10.23.128.1         10.23.128.255     UDP     =
  50           38981 =E2=86=92 1534 Len=3D8

8018       142.361983307   10.23.128.1         10.23.128.255     UDP     =
  50           59572 =E2=86=92 1534 Len=3D8

8019       150.005535184   10.23.128.1         10.23.128.255     UDP     =
  50           1534 =E2=86=92 1534 Len=3D8

8020       150.005558707   10.23.128.1         10.23.128.255     UDP     =
  50           1534 =E2=86=92 1534 Len=3D8

8021       152.097709946   NationalInst_35:aa:d9    Broadcast            =
ARP        60           ARP Announcement for 10.22.128.3

8022       152.097809876   NationalInst_35:aa:da    Broadcast            =
ARP        60           ARP Announcement for 10.23.128.3

8023       155.702401576   10.23.128.1         10.23.128.255     UDP     =
  50           38981 =E2=86=92 1534 Len=3D8

8024       155.702431967   10.23.128.1         10.23.128.255     UDP     =
  50           38981 =E2=86=92 1534 Len=3D8

8025       157.378508296   10.23.128.1         10.23.128.255     UDP     =
  50           59572 =E2=86=92 1534 Len=3D8

=20

=20

2.	ILA results

=20

With my block I see a continuously asserted TREADY, with TLAST=E2=80=99s =
at exactly the correct sample counts, until streaming stops where I see =
TREADY deasserted for 20-odd clocks, and then reasserted (without =
further streaming).

=20

Regards, Kevin

=20

=20

From: Brian Padalino <bpadalino@gmail.com <mailto:bpadalino@gmail.com> > =

Sent: Monday, 28 July 2025 16:49
To: Kevin Williams <kevin.williams@vastech.co.za =
<mailto:kevin.williams@vastech.co.za> >
Cc: martin.braun@ettus.com <mailto:martin.braun@ettus.com> ; =
usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>=20
Subject: Re: [USRP-users] Re: [EXTERNAL]Re: remote streaming starts, but =
stops after a few packets received

=20

On Mon, Jul 28, 2025 at 10:15=E2=80=AFAM Kevin Williams =
<kevin.williams@vastech.co.za <mailto:kevin.williams@vastech.co.za> > =
wrote:

I did an experiment today with just this (Ettus blocks only):

=20

connections:

  - { srcblk: radio0,     srcport: out_0,    dstblk: ep0,       dstport: =
in0}

  - { srcblk: ep6,        srcport: out0,     dstblk: ddc0, dstport: in_0 =
}

  - { srcblk: ddc0,  srcport: out_0,    dstblk: ep6,       dstport: in0 =
}

=20

Which did not work =E2=80=93 the remote streaming stopped.

=20

Changing the destination EP to a new one, ep7, worked again.

=20

From the RFNoC 4 workshop slides I was under the impression blocks could =
start and end on the same SEP?

=20

For what it's worth, I'm using remote streaming with a custom block and =
it's working well.

=20

In fact, the way remote streaming works (at least for an X440) is that =
the Ethernet/UDP information is written here:

=20

  =
https://github.com/EttusResearch/uhd/blob/40403b7c00154e4559c47bd6dde924f=
092992d45/fpga/usrp3/lib/rfnoc/xport_sv/chdr_xport_adapter.sv#L671 =
<https://url.za.m.mimecastprotect.com/s/H9mfCKOByytM7xBsMfri5-4wa?domain=3D=
github.com>=20

=20

The kv_map uses the destination EPID as the key for the ethernet =
information which gets looked up for every packet.

=20

So if the streaming works when not doing remote streaming it might be =
something else since all data paths go through here.

=20

If you get the first few packets and it stops, is there any way you're =
providing `enable_fc` as an argument? That would enable flow control =
which obviously wouldn't be good if you aren't doing any flow control =
processing on your RX side.

=20

Lastly, I agree with Martin that you should probably add an ILA to your =
block and the SEP interfaces to see where the AXI stream is getting =
stopped up.

=20

Good luck.

=20

Brian


------=_NextPart_002_0244_01DC0089.1F88A280
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered medium)"><!--[if =
!mso]><style>v\:* {behavior:url(#default#VML);}
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.m308529856188436682m1275845332921058704msolistparagraph, =
li.m308529856188436682m1275845332921058704msolistparagraph, =
div.m308529856188436682m1275845332921058704msolistparagraph
	=
{mso-style-name:m_308529856188436682m1275845332921058704msolistparagraph;=

	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:153037204;
	mso-list-template-ids:-1244245710;}
@list l1
	{mso-list-id:773480568;
	mso-list-template-ids:1862172552;}
@list l1:level1
	{mso-level-start-at:2;
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-ZA link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>The resolution is that the x310 has =
the rfnoc_chdr clock (which I used to clock my block) slower than the =
radio clock, whereas with my previous n300 that clock is =
faster..!<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>I need to =
create many output channels from my block now, so I think I will just =
ignore handshaking, and design on the basis of the radio streaming =
continuously.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><span lang=3DEN-US>From:</span></b><span =
lang=3DEN-US> Martin Braun &lt;martin.braun@ettus.com&gt; =
<br><b>Sent:</b> Tuesday, 29 July 2025 10:01<br><b>Cc:</b> =
usrp-users@lists.ettus.com<br><b>Subject:</b> [USRP-users] Re: =
[EXTERNAL]Re: remote streaming starts, but stops after a few packets =
received<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p =
class=3DMsoNormal>Normally flow control is the thing that will let the =
radio stall, but maybe it's something else. From what I can see, there's =
two potential culprits: 1) Your block is not permanently processing =
samples, but has some bubble cycles or something like that. 2) The =
SEP-&gt;SEP connection has an issue.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>If you can, connect everything statically and see how =
that fares.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>--M<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Tue, Jul 29, 2025 at 9:52=E2=80=AFAM Kevin Williams &lt;<a =
href=3D"mailto:kevin.williams@vastech.co.za">kevin.williams@vastech.co.za=
</a>&gt; wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><div><div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Hi =
Martin,<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>I do see a =
single =E2=80=9CO=E2=80=9D, but this is remote streaming so I =
didn=E2=80=99t think that should occur?<o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Yes, this =
is a radio -&gt; my custom block dynamic connection.<o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Regards, =
Kevin<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><span =
lang=3DEN-US>From:</span></b><span lang=3DEN-US> Martin Braun &lt;<a =
href=3D"mailto:martin.braun@ettus.com" =
target=3D"_blank">martin.braun@ettus.com</a>&gt; <br><b>Sent:</b> =
Tuesday, 29 July 2025 09:44<br><b>Cc:</b> <a =
href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a><br><b>Subject:</b> =
[USRP-users] Re: [EXTERNAL]Re: remote streaming starts, but stops after =
a few packets received</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Kevin,<o:p><=
/o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>based on =
the src port, this looks like it's going from Device to Host, not the =
other way around. This means it's an async message from an RFNoC block, =
with address 0x1000. I can't tell for sure from this screenshot, but I =
think this is coming from the radio, and 0x1000 is the &quot;RX =
Error&quot; address. The data is incorrectly formatted (probably an =
issue of the CHDR dissector, but I think it's telling us the data is =
&quot;2&quot; (if we read this in network =
order).<o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Put these =
together, and we're looking at a simple overrun. Something in your chain =
is holding up the radio after a few packets. Are you sure you're not =
seeing an &quot;O&quot; anywhere in your output? You are using a radio =
block, right?<o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>--M<o:p></o:=
p></p></div></div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>On Tue, Jul =
29, 2025 at 9:19=E2=80=AFAM Kevin Williams &lt;<a =
href=3D"mailto:kevin.williams@vastech.co.za" =
target=3D"_blank">kevin.williams@vastech.co.za</a>&gt; =
wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid windowtext 1.0pt;padding:0cm 0cm =
0cm =
6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0cm;margin-bottom:5=
.0pt;border-color:currentcolor currentcolor currentcolor =
rgb(204,204,204)'><div><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Hi,<o:p></o:=
p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Another =
observation is the every time the streaming stalls, whether remote =
streaming or normal rx_streamer operation, I see this packet from the =
host to the x310 a few data packets before it stops.<o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>What is =
this control write address (0x01000), and is it perhaps =
relevant?<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><img =
border=3D0 width=3D643 height=3D369 =
style=3D'width:6.6979in;height:3.8437in' =
id=3D"m_308529856188436682m_1275845332921058704Picture_x0020_1" =
src=3D"cid:image001.png@01DC0089.03E8F2F0"><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><div><div style=3D'border:none;border-top:solid windowtext =
1.0pt;padding:3.0pt 0cm 0cm 0cm;border-color:currentcolor'><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><span =
lang=3DEN-US>From:</span></b><span lang=3DEN-US> Kevin Williams =
<br><b>Sent:</b> Tuesday, 29 July 2025 07:53<br><b>To:</b> '<a =
href=3D"mailto:bpadalino@gmail.com" =
target=3D"_blank">bpadalino@gmail.com</a>' &lt;<a =
href=3D"mailto:bpadalino@gmail.com" =
target=3D"_blank">bpadalino@gmail.com</a>&gt;<br><b>Cc:</b> '<a =
href=3D"mailto:martin.braun@ettus.com" =
target=3D"_blank">martin.braun@ettus.com</a>' &lt;<a =
href=3D"mailto:martin.braun@ettus.com" =
target=3D"_blank">martin.braun@ettus.com</a>&gt;; '<a =
href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a>' &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;; Werner Bode &lt;<a =
href=3D"mailto:werner.bode@vastech.co.za" =
target=3D"_blank">werner.bode@vastech.co.za</a>&gt;<br><b>Subject:</b> =
RE: [USRP-users] Re: [EXTERNAL]Re: remote streaming starts, but stops =
after a few packets received</span><o:p></o:p></p></div></div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Hi =
Brian,<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>I=E2=80=99ve=
 got two observations:<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><ol start=3D1 type=3D1><li =
class=3Dm308529856188436682m1275845332921058704msolistparagraph =
style=3D'mso-list:l0 level1 lfo1'>This is a summary of my custom block =
streaming where the data packet stream ends with icmp packets about the =
destination becoming unreachable:<o:p></o:p></li></ol><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>No.&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Source&nbsp; =
Destination&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
Protocol&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; Length&nbsp; Info<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>1&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
0.000000000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
10.23.128.1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
10.23.128.255&nbsp;&nbsp;&nbsp;&nbsp; =
UDP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
50&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1534 =
=E2=86=92 1534 Len=3D8<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>5343&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 49.277852197&nbsp;&nbsp;&nbsp;&nbsp; =
10.22.128.3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
10.23.128.1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
UDP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
60&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 49152 =
=E2=86=92 36716 Len=3D16<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&lt;5000-odd=
 small udp and small rfnoc control &amp; management packets. Setup I =
guess.&gt;<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>7318&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 50.792688865&nbsp;&nbsp;&nbsp;&nbsp; =
10.22.128.3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
10.22.128.1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RFNOC&nbsp; =
4146&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Data]&nbsp;&nbsp;&nbsp;&nbsp; =
-&gt;&nbsp;&nbsp; 6 <o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&lt;<span =
style=3D'background:yellow'>first seq=3D0 rfnoc data packet of the =
correct size given my tlast counter</span>&gt;<o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>7319&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 50.792748665&nbsp;&nbsp;&nbsp;&nbsp; =
Intel_e8:c3:4c&nbsp;&nbsp;&nbsp; =
Broadcast&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; ARP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
42&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Who has =
10.22.128.1? Tell 10.23.128.1<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>7320&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 50.792754229&nbsp;&nbsp;&nbsp;&nbsp; =
10.22.128.3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
10.22.128.1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RFNOC&nbsp; =
4146&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Data]&nbsp;&nbsp;&nbsp;&nbsp; =
-&gt;&nbsp;&nbsp; 6 <o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&lt;<span =
style=3D'background:yellow'>a few 100 more correct data =
packets</span>&gt;<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>7775&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 50.795514072&nbsp;&nbsp;&nbsp;&nbsp; =
10.22.128.3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
10.22.128.1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RFNOC&nbsp; =
4146&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Data]&nbsp;&nbsp;&nbsp;&nbsp; =
-&gt;&nbsp;&nbsp; 6 <o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&lt;a =
string of more control and short 66 byte rfnoc packets, but no rfnoc =
data packets&gt;<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>7968&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 52.854255766&nbsp;&nbsp;&nbsp;&nbsp; =
Intel_e8:c3:4c&nbsp;&nbsp;&nbsp; =
Broadcast&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; ARP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
42&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Who has =
10.22.128.1? Tell 10.23.128.1<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>7969&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 53.238261827&nbsp;&nbsp;&nbsp;&nbsp; =
Intel_e8:c3:4e&nbsp;&nbsp; NationalInst_35:aa:da&nbsp;&nbsp;&nbsp; =
ARP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
42&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Who has =
10.23.128.3? Tell 10.23.128.1 (duplicate use of 10.23.128.1 =
detected!)<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>7970&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 53.238475399&nbsp;&nbsp;&nbsp;&nbsp; =
NationalInst_35:aa:da&nbsp;&nbsp;&nbsp; Intel_e8:c3:4e&nbsp;&nbsp; =
ARP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
60&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
10.23.128.3 is at 00:80:2f:35:aa:da (duplicate use of 10.23.128.1 =
detected!)<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&lt;<span =
style=3D'background:yellow'>then the destination becomes =
unreachable?</span>&gt;<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>7971&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 53.878292746&nbsp;&nbsp;&nbsp;&nbsp; =
10.23.128.1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
10.22.128.3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ICMP&nbsp;&nbsp;&nbsp;&nbsp; =
590&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Destination =
unreachable (Host unreachable)<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>7972&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 53.878302721&nbsp;&nbsp;&nbsp;&nbsp; =
10.23.128.1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
10.22.128.3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ICMP&nbsp;&nbsp;&nbsp;&nbsp; =
590&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Destination =
unreachable (Host unreachable)<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>7973&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 53.878308143&nbsp;&nbsp;&nbsp;&nbsp; =
10.23.128.1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
10.22.128.3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ICMP&nbsp;&nbsp;&nbsp;&nbsp; =
590&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Destination =
unreachable (Host unreachable)<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>7974&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 53.878314734&nbsp;&nbsp;&nbsp;&nbsp; =
10.23.128.1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
10.22.128.3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ICMP&nbsp;&nbsp;&nbsp;&nbsp; =
590&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Destination =
unreachable (Host unreachable)<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>7975&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 53.878320545&nbsp;&nbsp;&nbsp;&nbsp; =
10.23.128.1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
10.22.128.3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ICMP&nbsp;&nbsp;&nbsp;&nbsp; =
590&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Destination =
unreachable (Host unreachable)<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>7976&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 53.878326301&nbsp;&nbsp;&nbsp;&nbsp; =
10.23.128.1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
10.22.128.3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ICMP&nbsp;&nbsp;&nbsp;&nbsp; =
590&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Destination =
unreachable (Host unreachable)<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&lt;after =
that, just arp packets and the usrp broadcasting small udp =
packets&gt;<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>8014&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 137.075344888&nbsp;&nbsp; =
NationalInst_35:aa:da&nbsp;&nbsp;&nbsp; =
Broadcast&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; ARP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
60&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ARP =
Announcement for 10.23.128.3<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>8015&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 137.075304321&nbsp;&nbsp; =
NationalInst_35:aa:d9&nbsp;&nbsp;&nbsp; =
Broadcast&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; ARP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
60&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ARP =
Announcement for 10.22.128.3<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>8016&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 140.701925975&nbsp;&nbsp; =
10.23.128.1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
10.23.128.255&nbsp;&nbsp;&nbsp;&nbsp; =
UDP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
50&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 38981 =
=E2=86=92 1534 Len=3D8<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>8017&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 140.701942078&nbsp;&nbsp; =
10.23.128.1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
10.23.128.255&nbsp;&nbsp;&nbsp;&nbsp; =
UDP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
50&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 38981 =
=E2=86=92 1534 Len=3D8<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>8018&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 142.361983307&nbsp;&nbsp; =
10.23.128.1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
10.23.128.255&nbsp;&nbsp;&nbsp;&nbsp; =
UDP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
50&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 59572 =
=E2=86=92 1534 Len=3D8<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>8019&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 150.005535184&nbsp;&nbsp; =
10.23.128.1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
10.23.128.255&nbsp;&nbsp;&nbsp;&nbsp; =
UDP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
50&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1534 =
=E2=86=92 1534 Len=3D8<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>8020&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 150.005558707&nbsp;&nbsp; =
10.23.128.1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
10.23.128.255&nbsp;&nbsp;&nbsp;&nbsp; =
UDP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
50&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1534 =
=E2=86=92 1534 Len=3D8<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>8021&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 152.097709946&nbsp;&nbsp; =
NationalInst_35:aa:d9&nbsp;&nbsp;&nbsp; =
Broadcast&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; ARP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
60&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ARP =
Announcement for 10.22.128.3<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>8022&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 152.097809876&nbsp;&nbsp; =
NationalInst_35:aa:da&nbsp;&nbsp;&nbsp; =
Broadcast&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; ARP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
60&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ARP =
Announcement for 10.23.128.3<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>8023&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 155.702401576&nbsp;&nbsp; =
10.23.128.1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
10.23.128.255&nbsp;&nbsp;&nbsp;&nbsp; =
UDP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
50&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 38981 =
=E2=86=92 1534 Len=3D8<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>8024&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 155.702431967&nbsp;&nbsp; =
10.23.128.1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
10.23.128.255&nbsp;&nbsp;&nbsp;&nbsp; =
UDP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
50&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 38981 =
=E2=86=92 1534 Len=3D8<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>8025&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 157.378508296&nbsp;&nbsp; =
10.23.128.1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
10.23.128.255&nbsp;&nbsp;&nbsp;&nbsp; =
UDP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
50&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 59572 =
=E2=86=92 1534 Len=3D8<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><ol start=3D2 type=3D1><li =
class=3Dm308529856188436682m1275845332921058704msolistparagraph =
style=3D'mso-list:l1 level1 lfo2'>ILA results<o:p></o:p></li></ol><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>With my =
block I see a continuously asserted TREADY, with TLAST=E2=80=99s at =
exactly the correct sample counts, until streaming stops where I see =
TREADY deasserted for 20-odd clocks, and then reasserted (without =
further streaming).<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Regards, =
Kevin<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><span =
lang=3DEN-US>From:</span></b><span lang=3DEN-US> Brian Padalino &lt;<a =
href=3D"mailto:bpadalino@gmail.com" =
target=3D"_blank">bpadalino@gmail.com</a>&gt; <br><b>Sent:</b> Monday, =
28 July 2025 16:49<br><b>To:</b> Kevin Williams &lt;<a =
href=3D"mailto:kevin.williams@vastech.co.za" =
target=3D"_blank">kevin.williams@vastech.co.za</a>&gt;<br><b>Cc:</b> <a =
href=3D"mailto:martin.braun@ettus.com" =
target=3D"_blank">martin.braun@ettus.com</a>; <a =
href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a><br><b>Subject:</b> Re: =
[USRP-users] Re: [EXTERNAL]Re: remote streaming starts, but stops after =
a few packets received</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>On Mon, Jul =
28, 2025 at 10:15=E2=80=AFAM Kevin Williams &lt;<a =
href=3D"mailto:kevin.williams@vastech.co.za" =
target=3D"_blank">kevin.williams@vastech.co.za</a>&gt; =
wrote:<o:p></o:p></p></div><div><blockquote =
style=3D'border:none;border-left:solid windowtext 1.0pt;padding:0cm 0cm =
0cm =
6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0cm;margin-bottom:5=
.0pt;border-color:currentcolor currentcolor currentcolor =
rgb(204,204,204)'><div><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>I did an =
experiment today with just this (Ettus blocks only):<o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>connections:=
<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp; - { =
srcblk: radio0,&nbsp;&nbsp;&nbsp;&nbsp; srcport: =
out_0,&nbsp;&nbsp;&nbsp; dstblk: =
ep0,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dstport: in0}<o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp; - { =
srcblk: <span =
style=3D'background:yellow'>ep6</span>,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; srcport: out0,&nbsp;&nbsp;&nbsp;&nbsp; dstblk: ddc0, dstport: =
in_0 }<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp; - { =
srcblk: ddc0,&nbsp; srcport: out_0,&nbsp;&nbsp;&nbsp; dstblk: <span =
style=3D'background:yellow'>ep6</span>,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; dstport: in0 }<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Which did =
not work =E2=80=93 the remote streaming stopped.<o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Changing =
the destination EP to a new one, ep7, worked again.<o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>From the =
RFNoC 4 workshop slides I was under the impression blocks could start =
and end on the same =
SEP?<o:p></o:p></p></div></div></div></blockquote><div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>For what =
it's worth, I'm using remote streaming with a custom block and it's =
working well.<o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>In fact, =
the way remote streaming works (at least for an X440) is that the =
Ethernet/UDP information is written here:<o:p></o:p></p></div><div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;&nbsp;=
<a =
href=3D"https://url.za.m.mimecastprotect.com/s/H9mfCKOByytM7xBsMfri5-4wa?=
domain=3Dgithub.com" =
target=3D"_blank">https://github.com/EttusResearch/uhd/blob/40403b7c00154=
e4559c47bd6dde924f092992d45/fpga/usrp3/lib/rfnoc/xport_sv/chdr_xport_adap=
ter.sv#L671</a><o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>The kv_map =
uses the destination EPID as the key for the ethernet information which =
gets looked up for every packet.<o:p></o:p></p></div><div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>So if the =
streaming works when not doing remote streaming it might be something =
else since all data paths go through here.<o:p></o:p></p></div><div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>If you get =
the first few packets and it stops, is there any way you're providing =
`enable_fc` as an argument? That would enable flow control which =
obviously wouldn't be good if you aren't doing any flow control =
processing on your RX side.<o:p></o:p></p></div><div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Lastly, I =
agree with Martin that you should probably add an ILA to your block and =
the SEP interfaces to see where the AXI stream is getting stopped =
up.<o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Good =
luck.<o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Brian<o:p></=
o:p></p></div></div></div></div></div></div></blockquote></div></div></di=
v></div></blockquote></div></div></body></html>
------=_NextPart_002_0244_01DC0089.1F88A280--

------=_NextPart_001_0243_01DC0089.1F88A280
Content-Type: image/png;
	name="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <image001.png@01DC0089.03E8F2F0>

iVBORw0KGgoAAAANSUhEUgAAAoMAAAFxCAYAAAAI3KIBAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAALiBSURBVHhe7Z0LvFXT9vgniZLkXyl6SEVKhZIe
RFGSV0giokQeFUlKIqVCIfRQHnkljwpJUnmGyE0q8q6bqHCl617px+1h/vd3tOZpnW2fudd+nOqc
M76fz/6ctdY4a62x11p7rjHHmHOM3X799Vf7j3/8w8App5wif7PFf/7zn2BJURRFURRF2RXZPfir
KIqiKIqiFEF2qDF44oknmv/3//5frs+WLVsCqZ9nn33WPPLII8HazicdfW677TZTvnx5c8ABB5hq
1aqZ888/36xZsyaQZsaOvj5PP/20Oeyww0zFihXNjBkzgq1+br/9dnPZZZcFa9vYunWrqVmzplmw
YEGwJf/g+XvmmWeCtR3DokWLTNmyZc38+fODLenz3XffmXPPPdfUrl1brn2PHj3M//73v0C683jo
oYfM8ccfH6xt54EHHhA9q1evbnr37h35t/7666+bxo0bm4MPPti0bdvWfPXVV4HEmH/+85/mjDPO
ENkxxxxjXnnllUASjc8++8yUK1fO/Pe//w22bOP++++X63rIIYfIM7phw4ZAYszMmTNN06ZNzdFH
H21OO+00s3z58kDiZ+PGjeaKK66QY3Jsnv9MefPNN6Xd5Dscfvjh5qabbjJ//vlnIE1Oz549zZdf
fhmsZY8//vjD1K1b18yaNSvYso158+bJfapatapp166d+emnnwKJH4535ZVX5ly7ESNGBJJt3Hvv
vaZOnTrSdlx66aXmt99+CyTJyUtX37PF8XkuGjRoYBo2bGjuueeeQBKNvJ47RdlV2KHG4Ntvv21+
/fVXs/fee5sPPvhAlvfYY49A6if8QsiEv/76K1jKjHT1oeGiQaRBrly5srn66qsDyd9JRddsXZ+o
XHTRRebrr79OaATkxVlnnSUv+k2bNgVbjPnwww/lGWjSpEmwJTqp3svx48ebNm3aBGv5D4buwIED
xWDOBv369TONGjWSZ+fjjz82K1asMBMmTAikf8daGyzlD7wgMQQTvRgZeoJub7zxhvn888/NqlWr
5H+TQZvAS/e+++4z3377rTn11FPNNddcE0iN/F5OOukkkY0dO9ZcddVVkYajYDS/9tprplu3bn+7
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
4uGeM4EiGUzK4HgxYyvYkpuYkWjLli0rtbAzwXcvgXGIMQNUxvVRl93hu5dhhg0b9rcxg77fgU+f
ZLoqys5CjcE4aFQrVqxoX3/99WDLdnwyiPX27G233Ras5eamm26yp5xySrAWHQZSc874BgoKkz4+
WSI4f4UKFaRB/9///ieNdceOHQOptaeeeqrMDuRFOHXqVFulShX5v2SykSNH2latWskL/YsvvpBZ
vMuWLROZD58+mejqSNUY/Mc//mErVapkV6xYITOSmzVrZsePHy+yTPRJ9/rklz5Rrl0i0tUnG/cy
m4wdO1buB/D7a9iwocwKdjAJ4qmnnpLlu+66yxYvXjzHGLzsssvs5ZdfLssffPCBTH6JYgxi3Nau
Xdv+8ssvMsN44sSJ9sEHHxQZBhUzZLlOsHTp0lzGIMaYe1449kEHHSSzdh3J2pBE+O4ldOjQwd53
332iK0a3+47J7qUjkTHo+x349Emmq6LsLNQYjMM3my3ZTDe8AH379g3WckPP8eijjw7WokPPMa9G
uTDp45PlBbP5atWqJTMdSfPw888/BxIr3gYafmT16tWTRtjhk/ES79atm913330lXcRjjz0WSJLj
0yddXdnODFC8RHh5WK5fv34g9UNKGl52++23n73mmmvs1q1bA0n6+mRyffJDH58sGenqk66u+QHn
ZsYynioMLYwonpEHHnhA5Hj+mD1buXJle8cdd0haEwwRwAjDGOEaYDBdcMEFYtiBzxiEe++9V2YS
Y9jQqQwbdHfeeafI8DzibaQj4yDdDp0aZIcffniOEelI1obkRV738plnnpHv6Nb57jy33333nazn
dS/x8nId+SDDY8jyVVddJfJkvwPfs+WTKcrOQsvRKYqiKIqiFGF0AomiKIqiKEoRRo1BRVEURVGU
Iowag4qiKIqiKEUYNQYVRVEURVGKMGoMKilBBv2qVavmqjgQhmoH1113XbCWmzFjxpijjjoqWMuN
T6YoSmK++uqrlEsVhiHp87hx44K1XZcLLrjAPPjgg8Ha36lbt65UNKlXr16wJX/53//+Z7p27SpJ
uw888MBcJQCjQHm8ChUqSELsmjVrBlsVZeehxqASCaoaLFmyxLRp00bKVMWzevVqyfL/1ltvBVu2
89///leMveHDhwdbtuOTKYqSv1AWrjDA96Ae8o6CSir/+te/zNq1a80HH3wgtZ0//vjjQOqHMoF3
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

------=_NextPart_001_0243_01DC0089.1F88A280--

------=_NextPart_000_0242_01DC0089.1F88A280
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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

------=_NextPart_000_0242_01DC0089.1F88A280--

--===============4530332315792078249==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4530332315792078249==--
