Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E54B147F0
	for <lists+usrp-users@lfdr.de>; Tue, 29 Jul 2025 07:54:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 007CB3864F0
	for <lists+usrp-users@lfdr.de>; Tue, 29 Jul 2025 01:54:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753768440; bh=se9SD3qiO4gkOd0QhpStHA6bvTEoJtA5ZNqeetwxzkI=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=M5DfoY74Wrk0cfKSYskr7QeLsLG7OxRrP8eNJ8EivIXU6i6N5LLEvR5ahQ1J6SJ5W
	 XA+Pd689giGEwe4/54FvMcRxvXJlG5pQBPY7OSSwGB/t03nfv+AbfurWXtdvaBuA3T
	 jIqegtjIS7duzmqe3SB5YJoNn5YLfIEar8ugrQrJEXo3MYr82X/N/58YQAL6StziKm
	 89meQhykfjV71EsjWDdNN702SPdxy9TAzjj9xQc/CDA+9W9xfDB/E5LJZ6XkCrkWRc
	 gDWLSeAOwKhpYK2uMLngiQqKsg/VsPil485QdYYy/afrngz6NSDJzdFz4OwP6OI5u3
	 qCXOaLAD6wStw==
Received: from za-smtp-delivery-57.mimecast.co.za (za-smtp-delivery-57.mimecast.co.za [41.74.205.57])
	by mm2.emwd.com (Postfix) with ESMTPS id 5AC583863A0
	for <usrp-users@lists.ettus.com>; Tue, 29 Jul 2025 01:53:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=vastech.co.za header.i=@vastech.co.za header.b="VOVbOiP3";
	dkim-atps=neutral
Received: from mail.vastech.co.za (41.193.248.106 [41.193.248.106]) by
 relay.mimecast.com with ESMTP id za-mta-60-4GvAMtqrOcm2MhN-09aw1w-1; Tue,
 29 Jul 2025 07:53:12 +0200
X-MC-Unique: 4GvAMtqrOcm2MhN-09aw1w-1
X-Mimecast-MFC-AGG-ID: 4GvAMtqrOcm2MhN-09aw1w_1753768392
dkim-signature: v=1; a=rsa-sha256; d=vastech.co.za; s=dkim;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:In-Reply-To:References;
	bh=p37aj6G0xbMHbiHni++czMJG6kywxHXf9YcSCzlPL9I=;
	b=VOVbOiP3WFXByzffGPU+rzWpTf5WLxKUjR6CoDrMQ3v0IqBdbwm80LmNOuVNXFNhnLg19fkDDOyD/vPqu4EUVK4bXgI0uS5Qadp4yd4DGu+3KKZfnIeLzT0QukT62QZS40MtEcR1TNqtTqMRk0B37PNSxXHqL+xGrKihAk3Q+bI=
Received: from EXCHANGE2.vastech.co.za (Unknown [172.30.81.30])
	by mail.vastech.co.za with ESMTPSA
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256)
	; Tue, 29 Jul 2025 07:53:10 +0200
Received: from exchange3.vastech.co.za (172.30.81.31) by
 EXCHANGE2.vastech.co.za (172.30.81.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Tue, 29 Jul 2025 07:53:09 +0200
Received: from exchange3.vastech.co.za ([172.30.81.31]) by
 exchange3.vastech.co.za ([172.30.81.31]) with mapi id 15.02.1118.040; Tue, 29
 Jul 2025 07:53:03 +0200
From: Kevin Williams <kevin.williams@vastech.co.za>
To: "bpadalino@gmail.com" <bpadalino@gmail.com>
Thread-Topic: [USRP-users] Re: [EXTERNAL]Re: remote streaming starts, but
 stops after a few packets received
Thread-Index: AQHb++IkYMk+p2kicke3vxbc7X5L4bRCs8Hg///2/ACAACOsQIAEpzIAgAAlivD//+kdAIABGuHQ
Date: Tue, 29 Jul 2025 05:53:03 +0000
Message-ID: <87a46c7a1cc643d9b30f2fc63e70cb40@vastech.co.za>
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
In-Reply-To: <CAEXYVK4MN=aNyP201VqABP=xbfB7DuiXF3kVu3t_WwVhnrf8sg@mail.gmail.com>
Accept-Language: en-US, en-ZA
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.168.3]
MIME-Version: 1.0
Message-ID-Hash: KLTPUHXABGLHXW7D5UWBYVZNVA24UPWM
X-Message-ID-Hash: KLTPUHXABGLHXW7D5UWBYVZNVA24UPWM
X-MailFrom: kevin.williams@vastech.co.za
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Werner Bode <werner.bode@vastech.co.za>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]Re: remote streaming starts, but stops after a few packets received
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KLTPUHXABGLHXW7D5UWBYVZNVA24UPWM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2722307719540986605=="

--===============2722307719540986605==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.3;
	boundary="----=_NextPart_000_01A4_01DC005D.CEE56190"

------=_NextPart_000_01A4_01DC005D.CEE56190
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_01A5_01DC005D.CEE56190"


------=_NextPart_001_01A5_01DC005D.CEE56190
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

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

From: Brian Padalino <bpadalino@gmail.com>=20
Sent: Monday, 28 July 2025 16:49
To: Kevin Williams <kevin.williams@vastech.co.za>
Cc: martin.braun@ettus.com; usrp-users@lists.ettus.com
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
<https://url.za.m.mimecastprotect.com/s/A3G4Cqj5nnSkYL0cZfqiEiSn-?domain=3D=
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


------=_NextPart_001_01A5_01DC005D.CEE56190
Content-Type: text/html;
	charset="UTF-8"
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
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
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:856583071;
	mso-list-type:hybrid;
	mso-list-template-ids:850928598 470351887 470351897 470351899 470351887 =
470351897 470351899 470351887 470351897 470351899;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:54.0pt;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:90.0pt;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:126.0pt;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:162.0pt;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:198.0pt;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:234.0pt;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:270.0pt;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:306.0pt;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:1205799648;
	mso-list-template-ids:-1450139578;}
@list l2
	{mso-list-id:1233080781;
	mso-list-template-ids:-806834510;}
@list l2:level1
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
style=3D'mso-fareast-language:EN-US'>Hi Brian,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>I=E2=80=99ve got two =
observations:<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><ol =
style=3D'margin-top:0cm' start=3D1 type=3D1><li class=3DMsoListParagraph =
style=3D'margin-left:-18.0pt;mso-list:l0 level1 lfo3'><span =
style=3D'mso-fareast-language:EN-US'>This is a summary of my custom =
block streaming where the data packet stream ends with icmp packets =
about the destination becoming =
unreachable:<o:p></o:p></span></li></ol><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>No.=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 Time=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Source=C2=A0 =
Destination=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
Protocol=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Length=C2=A0 Info<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
0.000000000=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
10.23.128.1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
10.23.128.255=C2=A0=C2=A0=C2=A0=C2=A0 =
UDP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
50=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1534 =
=E2=86=92 1534 Len=3D8<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>5343=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 49.277852197=C2=A0=C2=A0=C2=A0=C2=A0 =
10.22.128.3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
10.23.128.1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
UDP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
60=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 49152 =
=E2=86=92 36716 Len=3D16<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>&lt;5000-odd small udp and small =
rfnoc control &amp; management packets. Setup I =
guess.&gt;<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>7318=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 50.792688865=C2=A0=C2=A0=C2=A0=C2=A0 =
10.22.128.3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
10.22.128.1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RFNOC=C2=A0 =
4146=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 [Data]=C2=A0=C2=A0=C2=A0=C2=A0 =
-&gt;=C2=A0=C2=A0 6 <o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>&lt;<span =
style=3D'background:yellow;mso-highlight:yellow'>first seq=3D0 rfnoc =
data packet of the correct size given my tlast =
counter</span>&gt;<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>7319=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 50.792748665=C2=A0=C2=A0=C2=A0=C2=A0 =
Intel_e8:c3:4c=C2=A0=C2=A0=C2=A0 =
Broadcast=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 ARP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
42=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Who has =
10.22.128.1? Tell 10.23.128.1<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>7320=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 50.792754229=C2=A0=C2=A0=C2=A0=C2=A0 =
10.22.128.3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
10.22.128.1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RFNOC=C2=A0 =
4146=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 [Data]=C2=A0=C2=A0=C2=A0=C2=A0 =
-&gt;=C2=A0=C2=A0 6 <o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>&lt;<span =
style=3D'background:yellow;mso-highlight:yellow'>a few 100 more correct =
data packets</span>&gt;<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>7775=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 50.795514072=C2=A0=C2=A0=C2=A0=C2=A0 =
10.22.128.3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
10.22.128.1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RFNOC=C2=A0 =
4146=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 [Data]=C2=A0=C2=A0=C2=A0=C2=A0 =
-&gt;=C2=A0=C2=A0 6 <o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>&lt;a =
string of more control and short 66 byte rfnoc packets, but no rfnoc =
data packets&gt;<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>7968=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 52.854255766=C2=A0=C2=A0=C2=A0=C2=A0 =
Intel_e8:c3:4c=C2=A0=C2=A0=C2=A0 =
Broadcast=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 ARP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
42=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Who has =
10.22.128.1? Tell 10.23.128.1<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>7969=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 53.238261827=C2=A0=C2=A0=C2=A0=C2=A0 Intel_e8:c3:4e=C2=A0=C2=A0 =
NationalInst_35:aa:da=C2=A0=C2=A0=C2=A0 =
ARP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
42=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Who has =
10.23.128.3? Tell 10.23.128.1 (duplicate use of 10.23.128.1 =
detected!)<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>7970=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 53.238475399=C2=A0=C2=A0=C2=A0=C2=A0 =
NationalInst_35:aa:da=C2=A0=C2=A0=C2=A0 Intel_e8:c3:4e=C2=A0=C2=A0 =
ARP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
60=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
10.23.128.3 is at 00:80:2f:35:aa:da (duplicate use of 10.23.128.1 =
detected!)<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>&lt;<span =
style=3D'background:yellow;mso-highlight:yellow'>then the destination =
becomes unreachable?</span>&gt;<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>7971=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 53.878292746=C2=A0=C2=A0=C2=A0=C2=A0 =
10.23.128.1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
10.22.128.3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
ICMP=C2=A0=C2=A0=C2=A0=C2=A0 =
590=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Destination =
unreachable (Host unreachable)<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>7972=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 53.878302721=C2=A0=C2=A0=C2=A0=C2=A0 =
10.23.128.1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
10.22.128.3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
ICMP=C2=A0=C2=A0=C2=A0=C2=A0 =
590=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Destination =
unreachable (Host unreachable)<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>7973=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 53.878308143=C2=A0=C2=A0=C2=A0=C2=A0 =
10.23.128.1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
10.22.128.3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
ICMP=C2=A0=C2=A0=C2=A0=C2=A0 =
590=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Destination =
unreachable (Host unreachable)<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>7974=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 53.878314734=C2=A0=C2=A0=C2=A0=C2=A0 =
10.23.128.1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
10.22.128.3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
ICMP=C2=A0=C2=A0=C2=A0=C2=A0 =
590=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Destination =
unreachable (Host unreachable)<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>7975=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 53.878320545=C2=A0=C2=A0=C2=A0=C2=A0 =
10.23.128.1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
10.22.128.3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
ICMP=C2=A0=C2=A0=C2=A0=C2=A0 =
590=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Destination =
unreachable (Host unreachable)<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>7976=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 53.878326301=C2=A0=C2=A0=C2=A0=C2=A0 =
10.23.128.1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
10.22.128.3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
ICMP=C2=A0=C2=A0=C2=A0=C2=A0 =
590=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Destination =
unreachable (Host unreachable)<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>&lt;after =
that, just arp packets and the usrp broadcasting small udp =
packets&gt;<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>8014=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 137.075344888=C2=A0=C2=A0 NationalInst_35:aa:da=C2=A0=C2=A0=C2=A0 =
Broadcast=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 ARP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
60=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ARP =
Announcement for 10.23.128.3<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>8015=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 137.075304321=C2=A0=C2=A0 NationalInst_35:aa:d9=C2=A0=C2=A0=C2=A0 =
Broadcast=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 ARP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
60=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ARP =
Announcement for 10.22.128.3<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>8016=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 140.701925975=C2=A0=C2=A0 =
10.23.128.1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
10.23.128.255=C2=A0=C2=A0=C2=A0=C2=A0 =
UDP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
50=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 38981 =
=E2=86=92 1534 Len=3D8<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>8017=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 140.701942078=C2=A0=C2=A0 =
10.23.128.1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
10.23.128.255=C2=A0=C2=A0=C2=A0=C2=A0 =
UDP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
50=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 38981 =
=E2=86=92 1534 Len=3D8<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>8018=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 142.361983307=C2=A0=C2=A0 =
10.23.128.1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
10.23.128.255=C2=A0=C2=A0=C2=A0=C2=A0 =
UDP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
50=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 59572 =
=E2=86=92 1534 Len=3D8<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>8019=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 150.005535184=C2=A0=C2=A0 =
10.23.128.1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
10.23.128.255=C2=A0=C2=A0=C2=A0=C2=A0 =
UDP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
50=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1534 =
=E2=86=92 1534 Len=3D8<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>8020=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 150.005558707=C2=A0=C2=A0 =
10.23.128.1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
10.23.128.255=C2=A0=C2=A0=C2=A0=C2=A0 =
UDP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
50=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1534 =
=E2=86=92 1534 Len=3D8<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>8021=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 152.097709946=C2=A0=C2=A0 NationalInst_35:aa:d9=C2=A0=C2=A0=C2=A0 =
Broadcast=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 ARP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
60=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ARP =
Announcement for 10.22.128.3<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>8022=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 152.097809876=C2=A0=C2=A0 NationalInst_35:aa:da=C2=A0=C2=A0=C2=A0 =
Broadcast=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 ARP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
60=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ARP =
Announcement for 10.23.128.3<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>8023=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 155.702401576=C2=A0=C2=A0 =
10.23.128.1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
10.23.128.255=C2=A0=C2=A0=C2=A0=C2=A0 =
UDP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
50=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 38981 =
=E2=86=92 1534 Len=3D8<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>8024=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 155.702431967=C2=A0=C2=A0 =
10.23.128.1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
10.23.128.255=C2=A0=C2=A0=C2=A0=C2=A0 =
UDP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
50=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 38981 =
=E2=86=92 1534 Len=3D8<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>8025=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 157.378508296=C2=A0=C2=A0 =
10.23.128.1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
10.23.128.255=C2=A0=C2=A0=C2=A0=C2=A0 =
UDP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
50=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 59572 =
=E2=86=92 1534 Len=3D8<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><ol =
style=3D'margin-top:0cm' start=3D2 type=3D1><li class=3DMsoListParagraph =
style=3D'margin-left:-18.0pt;mso-list:l0 level1 lfo3'><span =
style=3D'mso-fareast-language:EN-US'>ILA =
results<o:p></o:p></span></li></ol><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>With my =
block I see a continuously asserted TREADY, with TLAST=E2=80=99s at =
exactly the correct sample counts, until streaming stops where I see =
TREADY deasserted for 20-odd clocks, and then reasserted (without =
further streaming).<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>Regards, =
Kevin<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><span lang=3DEN-US>From:</span></b><span =
lang=3DEN-US> Brian Padalino &lt;bpadalino@gmail.com&gt; =
<br><b>Sent:</b> Monday, 28 July 2025 16:49<br><b>To:</b> Kevin Williams =
&lt;kevin.williams@vastech.co.za&gt;<br><b>Cc:</b> =
martin.braun@ettus.com; usrp-users@lists.ettus.com<br><b>Subject:</b> =
Re: [USRP-users] Re: [EXTERNAL]Re: remote streaming starts, but stops =
after a few packets received<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Mon, Jul 28, 2025 at 10:15=E2=80=AFAM Kevin Williams &lt;<a =
href=3D"mailto:kevin.williams@vastech.co.za">kevin.williams@vastech.co.za=
</a>&gt; wrote:<o:p></o:p></p></div><div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0cm;margin-bottom:5=
.0pt'><div><div><div><p class=3DMsoNormal =
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
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>For what it's worth, I'm using remote streaming with a =
custom block and it's working well.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>In fact, the way remote streaming works (at least for =
an X440) is that the Ethernet/UDP information is written =
here:<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>&nbsp;&nbsp;<a =
href=3D"https://url.za.m.mimecastprotect.com/s/A3G4Cqj5nnSkYL0cZfqiEiSn-?=
domain=3Dgithub.com">https://github.com/EttusResearch/uhd/blob/40403b7c00=
154e4559c47bd6dde924f092992d45/fpga/usrp3/lib/rfnoc/xport_sv/chdr_xport_a=
dapter.sv#L671</a><o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>The kv_map uses the destination EPID as the key for =
the ethernet information which gets looked up for every =
packet.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>So if the streaming works when not doing remote =
streaming it might be something else since all data paths go through =
here.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>If you get the first few packets and it stops, is =
there any way you're providing `enable_fc` as an argument? That would =
enable flow control which obviously wouldn't be good if you aren't doing =
any flow control processing on your RX side.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Lastly, I agree with Martin that you should probably =
add an ILA to your block and the SEP interfaces to see where the AXI =
stream is getting stopped up.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Good luck.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Brian<o:p></o:p></p></div></div></div></div></body></ht=
ml>
------=_NextPart_001_01A5_01DC005D.CEE56190--

------=_NextPart_000_01A4_01DC005D.CEE56190
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgMFADCABgkqhkiG9w0BBwEAAKCCDBkw
ggXtMIID1aADAgECAgFZMA0GCSqGSIb3DQEBCwUAMGkxJjAkBgkqhkiG9w0BCQEWF2l0c3VwcG9y
dEB2YXN0ZWNoLmNvLnphMRswGQYDVQQDDBJWQVNUZWNoIFNBIFBUWSBMVEQxCzAJBgNVBAYTAlpB
MRUwEwYDVQQHDAxTdGVsbGVuYm9zY2gwHhcNMjQwMzE5MTQ1MTE4WhcNMzQwMzE4MTQ1MTE4WjCB
jTELMAkGA1UEBhMCWkExGzAZBgNVBAoMElZBU1RlY2ggU0EgUHR5IEx0ZDE0MDIGA1UEAwwrS2V2
aW5fV2lsbGlhbXMta2V2aW4ud2lsbGlhbXNAdmFzdGVjaC5jby56YTErMCkGCSqGSIb3DQEJARYc
a2V2aW4ud2lsbGlhbXNAdmFzdGVjaC5jby56YTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoC
ggIBAMWGpvqe2N4BuT02dH+V8g0qvyXbWrn2Gz7wK9tdw560hrtas/GD6WQ2B7HSDrcgUSoNA4dG
BujaH5Vv6+yH87FLBHhfXLv5N2ZTCNf9lne+94KgFgXFJ6XsTbjCQRgM/6NH7/aJMYAQBgUEnXfi
aSbzG4vg0bltKtqoPCYbh4hVyzFARMjw42VmKln1XGbL9ao9w3T9hLSF3iGauWW6AbTHHMfxGAoJ
4L3PSam04vKfYEo2Z0+NV65xRlZ5OV1xW8TH89tljQZ2Xnx5x2yisSXlsytTYZQSYxx3l5Ni/dpQ
CHS7aj9pKQNgxe1+IEbP7+JcUJozq7jKkyvgNyKTQjbrVAT2mEKSXcLlcCVodKdhheMd6rYxIkaB
O1Q5H+gPwgQymyrj3pQjDXeM+FcovG/rkdqW++hsy7kkSQC0W03IZWb6/k9RnX79v9Puu1OR8JOL
Cq1V6Hm5jJm40VrHTSlRzyUK8zsBRsw3WKVmVOqADgNCa1nBit5wcRqdHHkAD9gxGgBJnNru6ssK
DVpjI2aNewSotxDS9WQh9Qcx9+E33I7dGEnxhyzEa3BY4cDxb9dYIyE6p+VWxGgmqxRB35xnbVul
HHQ2tjZnvKXLWpENLENavdMGdssjoQb54zPQ8TZwVFwvXI0mXFmj/zbM2lHqsz3CEnJ2G+huMJHV
HJ+LAgMBAAGjezB5MAkGA1UdEwQCMAAwLAYJYIZIAYb4QgENBB8WHU9wZW5TU0wgR2VuZXJhdGVk
IENlcnRpZmljYXRlMB0GA1UdDgQWBBRIb2HjnWl31+WiMJf04ly+Ei0USTAfBgNVHSMEGDAWgBQR
ruX6fGvsOFzwRWYoQK/Ve0RwGzANBgkqhkiG9w0BAQsFAAOCAgEAFiPzlT4DS01wj3B+zIbDHyXc
R0cCdguyevVfXKdis2Me7/fQOLVnX686IRQY+mmJfBYnBzxGbCgcixFa+F/mcUak5P4ygIC/6Wd4
0CY1jecsISWwyrzXDSfhoB9QLu3r/UBCa0Q0zOGikf9jMWEVNJ2bTpcvbNxrKTmlGK8tlhNe3gQX
C4k3r1EsLU6VLvus8qhlRhBoDMjfPTOkV2SrShTgLu5jk//fc69hDEijYB33iiKS2eOW95TFGUsZ
jjsPq5KvsOogl8B/etOmhKab+DPZ3fQ5Gkbo2rWM94gv55+VPWgTKGdYYau08Ez2QCGU2TwwvyH5
jrdLi8hzdUVBoWtFz0KYaqX1qSfxov3EPO5IlPOXTBOc85t8GxF0hCeJVG9jYZfABVpXORLXlrdy
B9ThtZvKohKk2f6ND6BH0pd7WAQJBEDeS6sYrCUqv/q8mlxm6PMgZiFwCNBtlXIrhv40mYGTG3m/
mUXm9DfugqrC7wRqsQqaQvPwn2VMdsXhQpQrebm8MjiKcsZBNhSV9TkNPe7VWcooyLlMIZhZAlan
GuPVjZZWbg5nUzcKvJpsr0wXp/BjOdKhhDfCChsZdEhEyqqyeVI+8m5HZBy3Sufqq0tRWOsGBd/u
+eGBS+rGXWhq5czhBw2znq9rkj5EyWTRj4EURLv6iUH3z0NmWP0wggYkMIIEDKADAgECAgkA/jVd
5DmuX4MwDQYJKoZIhvcNAQELBQAwaTEmMCQGCSqGSIb3DQEJARYXaXRzdXBwb3J0QHZhc3RlY2gu
Y28uemExGzAZBgNVBAMMElZBU1RlY2ggU0EgUFRZIExURDELMAkGA1UEBhMCWkExFTATBgNVBAcM
DFN0ZWxsZW5ib3NjaDAeFw0yNDAzMTkxNDQ5MDRaFw0zNDAzMTcxNDQ5MDRaMGkxJjAkBgkqhkiG
9w0BCQEWF2l0c3VwcG9ydEB2YXN0ZWNoLmNvLnphMRswGQYDVQQDDBJWQVNUZWNoIFNBIFBUWSBM
VEQxCzAJBgNVBAYTAlpBMRUwEwYDVQQHDAxTdGVsbGVuYm9zY2gwggIiMA0GCSqGSIb3DQEBAQUA
A4ICDwAwggIKAoICAQC6j3tD0mPRxASmpcVlJO0jRt+F2jpqgVqDbj87h2hZgUXDREJ/1TJm99ab
q6eG/UbMoBHNInKcKlm3RSdyv8qevw9h3qoyJPpBJmSj8Cw+a9LDesM2OOEaGdFVzUa0Wv/bbV0K
VylC2bELZizejHXfOSQ2KFiDfgm9WPiYpdX0lSt0N6LRI2hciO4UD48S8ab9q/heFNBvxMLRPD/r
xLZ5jKkmU7oZGWrdGShXhvZSXsU+I0y+VZ4rUTBc6TA8dd5Tb9SqGcC2DlvTexzpuSrPj7mZhTAu
QGKUCoihueMP3cqM76825hGWrfEaVZ/rbmJif9E+TmbSANDv62E/HV7K7/rev/BcrJEyAZBFVnZo
BslGjCoZ9N9aARsh4yQ1kcZNhXx43YHfbSY51Qb+3qZGOfyLdJarjuskejwi/wdbSkTyeNYROhp8
T+ofwOUv5Rgr84nCh1Ev/8Pstf/P9bAsQb/yVXLcXon6nzTjNxJBnycjAk59OssjsjBZqDDZJ70L
HYPQ52SLKr+im20vjAJzkmjdrVFQ7qKEFIH2qR8c+eHnIht9pEI+BDzZEerglTanlbnVWNrsOQqP
e2G0g2yyZwjp+StoRJyFMcu8Kk0sgjMqIgr82wcSfPXViQxWRHTyJGOzLI7MbvAvq7f0IsIHaMS+
MVlt83pzamE4vBuiEwIDAQABo4HOMIHLMB0GA1UdDgQWBBQRruX6fGvsOFzwRWYoQK/Ve0RwGzCB
mwYDVR0jBIGTMIGQgBQRruX6fGvsOFzwRWYoQK/Ve0RwG6FtpGswaTEmMCQGCSqGSIb3DQEJARYX
aXRzdXBwb3J0QHZhc3RlY2guY28uemExGzAZBgNVBAMMElZBU1RlY2ggU0EgUFRZIExURDELMAkG
A1UEBhMCWkExFTATBgNVBAcMDFN0ZWxsZW5ib3NjaIIJAP41XeQ5rl+DMAwGA1UdEwQFMAMBAf8w
DQYJKoZIhvcNAQELBQADggIBAJyguGtMwc10ydLtksblz27VRj1QXtuFABjDFO85R96QuheQCugS
zKpFMmaUBf9zL3MeBhddcc/aYT+l00VyMSqfRgNelZayMZxyiYa7xr4VTpMUQb3PMA6tUaJcMKQR
KhMLSdrGHvAwnyaP3XhZoFtVj+e4i5ysS93uVRzqSaMCgt4N9zRAIoyXRIgganQPsuGMdP/wy5zi
EU+2L2CMaQezzVp0Tq9SiHDVj4iHJPqlZJ2v5pRbEqHe0A43iNcq6+pcYVI6WuICmx3UvcXjHBuj
Xv+BUeLEKmhQ8CLzRefB3udxwpgh9CQX7OIS00MWhLQaRFMTCmyMCltI8YgfbFU8B4IO7MUOo9PN
nL4l8avY+BvXlsXgMAALhMBXy83dyWKe+O2EKLPatnpJX4+fFLEMLMak34Pm+B73kzQwBKTXLK9Z
iv2ba//q/LBiuBM5HDfKkcDsjpKpi1e2ofADJbE2ajNpqYNCA/xkJLQl7hFFrnGoDPrpM4LOfFYn
6DVkMpRS5dpwLfQFvCJQChp2mmrzwaWcCYeXPCVv7Yeka1fZRonbg2hFTlaR6Tw1DCTKEVnajfJt
1pmfaQZZ5iPKU6+a9Z4Lb16wN1gvDAZ60V+BzObCclS3RUnCoF8P1ekVhFIsI8zE9cLTLe6VlAbq
L9nC0AZauAaa8woBU71JhSI3MYIEvDCCBLgCAQEwbjBpMSYwJAYJKoZIhvcNAQkBFhdpdHN1cHBv
cnRAdmFzdGVjaC5jby56YTEbMBkGA1UEAwwSVkFTVGVjaCBTQSBQVFkgTFREMQswCQYDVQQGEwJa
QTEVMBMGA1UEBwwMU3RlbGxlbmJvc2NoAgFZMA0GCWCGSAFlAwQCAwUAoIICHzAYBgkqhkiG9w0B
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yNTA3MjkwNTUzMDFaME8GCSqGSIb3DQEJ
BDFCBEBMcQe1+zMM2z195VUAzoAw2c0PM8rV5T7O2OrIuLBq+o+2GsgWRQ81F9oYQPNxlWW+DFbb
INzza6q8lmSbPI6NMH0GCSsGAQQBgjcQBDFwMG4waTEmMCQGCSqGSIb3DQEJARYXaXRzdXBwb3J0
QHZhc3RlY2guY28uemExGzAZBgNVBAMMElZBU1RlY2ggU0EgUFRZIExURDELMAkGA1UEBhMCWkEx
FTATBgNVBAcMDFN0ZWxsZW5ib3NjaAIBWTB/BgsqhkiG9w0BCRACCzFwoG4waTEmMCQGCSqGSIb3
DQEJARYXaXRzdXBwb3J0QHZhc3RlY2guY28uemExGzAZBgNVBAMMElZBU1RlY2ggU0EgUFRZIExU
RDELMAkGA1UEBhMCWkExFTATBgNVBAcMDFN0ZWxsZW5ib3NjaAIBWTCBkwYJKoZIhvcNAQkPMYGF
MIGCMAsGCWCGSAFlAwQBKjALBglghkgBZQMEARYwCgYIKoZIhvcNAwcwCwYJYIZIAWUDBAECMA4G
CCqGSIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDALBglghkgBZQMEAgMwCwYJYIZIAWUDBAICMAsG
CWCGSAFlAwQCATAHBgUrDgMCGjANBgkqhkiG9w0BAQEFAASCAgAZe+ZlsbBqfYfpH4vNSWNExm4Y
gETW+pBtgVtiq1BdY6o0VKHQRFqxdW6qIN3Puc9zoYNdLMJO7h/HVRfq/B1Q0yd/JZjirCR+ADV/
thQEVIhKBIG45YhhGWDX77ofu9LeQ4O59Yrvxo11OebWqYOAKh2rkMBMnR8AKllTIQxCNerjOHWx
I0VqHE5VAOXRLuCbji+vDpKPncG+pOmznFy7HX+tajUxTnKJoK3sKW2hzUfcuiHWBFMEKXIRQjtn
UWBYfxUqoBFF5T3vcvH1DT0DLHKUPqEPSX8Us0sxcUrI5D7MuDvd8kvXN98bLYRnrB55LCtWjTjj
gYGol8u9YX4z7DjbkoVIbbMKW0QaK/jfOvOypzLgusm/XBxytHoieBQEXQWu1BIe+vs1Dk2JVWKl
RICVsczxle9k54xG7I7sUxiu/njvt6q8G3d5Vs6WMmchhyi6s1r8bfL54GcBBPJi2SCSzlSy0B94
oGG11bCdJw1RH3dFO7xOwhJdL0y5REpqAkTmhtV0Y6bVU1fnHRChLWjBH80mg6U7zD79J7c2xRI4
c6ncTLaC9Xi97SUpfBXmv73Ew+Gq5BC8eEGk2HQmt3GqknuOk4GD+NE5gGCNBbRooO01jcIh5gct
CfEqh3EYw7kftt5taZxCySsUrGXXwMX2EFPLk+yqvmC7oLyl5QAAAAAAAA==

------=_NextPart_000_01A4_01DC005D.CEE56190--

--===============2722307719540986605==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2722307719540986605==--
