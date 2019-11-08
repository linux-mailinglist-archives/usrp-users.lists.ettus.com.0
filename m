Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5E2F3D7D
	for <lists+usrp-users@lfdr.de>; Fri,  8 Nov 2019 02:41:20 +0100 (CET)
Received: from [::1] (port=43308 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iStH1-0007xa-Fs; Thu, 07 Nov 2019 20:41:15 -0500
Received: from proxy25212.mail.163.com ([103.129.252.12]:53814)
 by mm2.emwd.com with esmtps (TLSv1.2:DHE-RSA-AES256-SHA:256)
 (Exim 4.92) (envelope-from <ruoyilei@126.com>) id 1iStGw-0007sW-Ln
 for usrp-users@lists.ettus.com; Thu, 07 Nov 2019 20:41:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=uNQqw
 CiU27wiUgCMlLeUwWtuqMqo7tEYKa8BtNT9CVE=; b=lkCLUFbo1lgMopyE0kvmS
 TmodzjGN5RmVbCCTbdhzFfiJLtw7dsJAfklWuzvy6z2JXPvXEX0yrKOypOYCV20/
 FG+KcpSkdasE69wMC4aoLxzrO791iXU0tj84R3B+td3UTtM1GkC6krEh+Z4D+ajZ
 CbjVql+QBekkHpBLG8WU8Y=
Received: from DESKTOPDUOEVL6 (unknown [58.213.113.89])
 by smtp1 (Coremail) with SMTP id C8mowACH_L31xsRdFCKuAA--.16119S2;
 Fri, 08 Nov 2019 09:37:58 +0800 (CST)
To: "'Sam Reiter'" <sam.reiter@ettus.com>
References: <4641024f.15948.16e1bbf492a.Coremail.ruoyilei@126.com>
 <CANf970aHdsoTV5QAnECkpT3cv-2dGYJzCLr+bAYC8b0=fBAn2g@mail.gmail.com>
 <7524c856.d8d.16e3454fe58.Coremail.ruoyilei@126.com>
 <CANf970bfwGT5=Gco_YwiVG0gyra6_TWVXU_OwcC86Ka0j_DfEA@mail.gmail.com>
 <62834477.8379.16e393099c8.Coremail.ruoyilei@126.com>
 <CANf970ZD5s9YoWE42BFLZ4BW7A==w3Nrj505Qr+oXbUsoPvXNQ@mail.gmail.com>
In-Reply-To: <CANf970ZD5s9YoWE42BFLZ4BW7A==w3Nrj505Qr+oXbUsoPvXNQ@mail.gmail.com>
Date: Fri, 8 Nov 2019 09:37:56 +0800
Message-ID: <003701d595d5$267a9c80$736fd580$@126.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="----=_NextPart_000_0038_01D59618.34A07490"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQI/Ew1tvakPEswrT3tEEtWk7B8ZjQDZ7an8ApQExVYB9+2mJAK0VmtZAVb17VCmYfJYYA==
Content-Language: zh-cn
X-CM-TRANSID: C8mowACH_L31xsRdFCKuAA--.16119S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxtF1DWw45uF47Kr4kKF18Grg_yoW3Ww1Up3
 yUG34DKr4UXa18J3ykArWUWryUZwn3AwsIqr4Yk3ZFk3s8WFyDXF1xtrWYg3yDWr9akw4j
 qrZ0kw109Fs8XaUanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j6nmiUUUUU=
X-Originating-IP: [58.213.113.89]
X-CM-SenderInfo: 5uxr5xxohlqiyswou0bp/1tbiZxhnH116cGZpuwAAsk
Subject: [USRP-users] =?utf-8?b?5Zue5aSNOiAgcXVlc3Rpb25zIGFib3V0IHVoZC1k?=
	=?utf-8?q?pdk_with_n310?=
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: wangpan via USRP-users <usrp-users@lists.ettus.com>
Reply-To: ruoyilei@126.com
Cc: usrp-users@lists.ettus.com
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

This is a multipart message in MIME format.

------=_NextPart_000_0038_01D59618.34A07490
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0039_01D59618.34A07490"


------=_NextPart_001_0039_01D59618.34A07490
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello, Sam Reiter.

Thank you for your reply.I have a test with benchmark, 2x2 @122.88M is =
ok(maybe the cpu =E2=80=9Cperformance=E2=80=9D is diabled in the initial =
test).I give the command with 3x3@122.88M <mailto:3x3@122.88M> . The =
output is in the attachment.

     /usr/local/lib/uhd/examples/benchmark_rate  \

    --args =
"type=3Dn3xx,mgmt_addr=3D192.168.2.230,addr=3D192.168.10.2,second_addr=3D=
192.168.20.2,master_clock_rate=3D122.88e6,use_dpdk=3D1" \

    --duration 60 \

    --channels "0,1,2" \

    --rx_rate 122.88e6 \

    --rx_subdev "A:0 A:1 B:0" \

    --tx_rate 122.88e6 \

    --tx_subdev "A:0 A:1 B:0"

=20

Best,

Panny Wang

=20

=E5=8F=91=E4=BB=B6=E4=BA=BA: Sam Reiter <sam.reiter@ettus.com>=20
=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: 2019=E5=B9=B411=E6=9C=888=E6=97=A5 =
4:41
=E6=94=B6=E4=BB=B6=E4=BA=BA: =E7=8E=8B=E7=9B=BC <ruoyilei@126.com>
=E6=8A=84=E9=80=81: usrp-users@lists.ettus.com
=E4=B8=BB=E9=A2=98: Re: [USRP-users] questions about uhd-dpdk with n310

=20

Panny Wang,

=20

The cpufreq-info looks good, but the ifconfig at the bottom is a bit =
confusing with what you've sent over up to this point. Can you send the =
exact ./benchmark_rate command that you're using (with all args =
included) to produce the output you sent over initially? The MPMD info =
in the last couple doesn't seem consistent with this ifconfig output:

=20

enp7s0f0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.1.73  netmask 255.255.255.0  broadcast =
192.168.1.255
        inet6 fe80::9604:9cff:fed2:b1a3  prefixlen 64  scopeid =
0x20<link>
        ether 94:04:9c:d2:b1:a3  txqueuelen 1000  (Ethernet)
        RX packets 114457  bytes 8586410 (8.5 MB)
        RX errors 0  dropped 3  overruns 0  frame 0
        TX packets 179513  bytes 37029298 (37.0 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device memory 0x95e80000-95efffff =20

enp7s0f1: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 8000
        inet 192.168.2.254  netmask 255.255.255.0  broadcast =
192.168.2.255
        inet6 fe80::9604:9cff:fed2:b1a4  prefixlen 64  scopeid =
0x20<link>
        ether 94:04:9c:d2:b1:a4  txqueuelen 1000  (Ethernet)
        RX packets 3404  bytes 296849 (296.8 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 2196  bytes 243446 (243.4 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device memory 0x95e00000-95e7ffff =20

lo: flags=3D73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 63270  bytes 4016936 (4.0 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 63270  bytes 4016936 (4.0 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

=20

Sam Reiter=20

=20

On Mon, Nov 4, 2019 at 7:32 PM =E7=8E=8B=E7=9B=BC <ruoyilei@126.com =
<mailto:ruoyilei@126.com> > wrote:

Hey Sam Reiter,

The output of "cpufreq-info && ifconfig" is in the attchment. At the =
same time I put more information about my system there.=20

Both 10GbE links are binded to dpdk, so ifconfig can not output them.My =
cpu clock is 2.7GHz,maybe it is not powerfull enough.

It would be great If you can help me confirm my configuration .=20


  <https://mail-online.nosdn.127.net/qiyelogo/defaultAvatar.png>=20

=E7=8E=8B=E7=9B=BC


ruoyilei@126.com <mailto:ruoyilei@126.com>=20

=E7=AD=BE=E5=90=8D=E7=94=B1  =
<https://mail.163.com/dashi/dlpro.html?from=3Dmail81> =
=E7=BD=91=E6=98=93=E9=82=AE=E7=AE=B1=E5=A4=A7=E5=B8=88 =
=E5=AE=9A=E5=88=B6=20

On 11/5/2019 04:13=EF=BC=8C <mailto:sam.reiter@ettus.com> Sam =
Reiter<sam.reiter@ettus.com> wrote=EF=BC=9A=20

Hey Panny Wang,

=20

You're correct, you should specify a second address with =
addr/second_addr, rather than addr0/addr1 - my bad. [1]

=20

Assuming you're using both 10GbE links correctly, my next step would be =
to investigate the processor you're using. Something with a higher clock =
speed is generally recommended for higher streaming rates.=20

=20

Would you be able to send over the output of:

=20

cpufreq-info && ifconfig

=20

Best,

=20

Sam Reiter=20

=20

[1] =
https://kb.ettus.com/Using_Dual_10_Gigabit_Ethernet_on_the_USRP_X300/X310=


=20

On Sun, Nov 3, 2019 at 8:53 PM =E7=8E=8B=E7=9B=BC <ruoyilei@126.com =
<mailto:ruoyilei@126.com> > wrote:

Hello,

Sam Reiter. When leveraging dual 10GbE links,I  specify" =
addr=3D192.168.20.2,second_addr=3D192.168.10.2",last email I didn't give =
the example . The result is not much diffrent with use a single 10GbE =
link.

I think it is  =
"addr=3D<xxx.xxx.xxx.xxx>,second_addr=3D<xxx.xxx.xxx.xxx>" but not =
"addr0=3D<xxx.xxx.xxx.xxx>,addr1=3D<xxx.xxx.xxx.xxx>". when use  =
"addr0=3D<xxx.xxx.xxx.xxx>,addr1=3D<xxx.xxx.xxx.xxx>",I get errors:

[INFO] [MPMD] Initializing 3 device(s) in parallel with args: =
mgmt_addr0=3D192.168.2.230,type0=3Dn3xx,product0=3Dn310,serial0=3D316645B=
,claimed0=3DFalse,mgmt_addr1=3D192.168.2.230,type1=3Dn3xx,product1=3Dn310=
,serial1=3D316645B,claimed1=3DFalse,mgmt_addr2=3D192.168.2.230,type2=3Dn3=
xx,product2=3Dn310,serial2=3D316645B,claimed2=3DFalse,type=3Dn3xx,mgmt_ad=
dr=3D192.168.2.230,addr1=3D192.168.10.2,addr2=3D192.168.20.2,master_clock=
_rate=3D122.88e6,use_dpdk=3D1

[ERROR] [RPC] Someone tried to claim this device again (From: =
192.168.2.254)

[WARNING] [MPM.RPCServer] Someone tried to claim this device again =
(From: 192.168.2.254)

Error: RuntimeError: Error during RPC call to `claim'. Error message: =
Someone tried to claim this device again (From: 192.168.2.254)

root@seu73:/home/seu#=20

On 11/2/2019 02:30=EF=BC=8C <mailto:sam.reiter@ettus.com> Sam =
Reiter<sam.reiter@ettus.com> wrote=EF=BC=9A

Panny Wang,

=20

I notice that you're only specifying a single streaming address in your =
call to benchmark rate, implying that you're only leveraging a single =
10GbE link. You can specify =
"addr0=3D<xxx.xxx.xxx.xxx>,addr1=3D<xxx.xxx.xxx.xxx>" in your device =
args.=20

=20

Best,

Sam Reiter
SDR Applications Engineer
Ettus Research

=20

On Wed, Oct 30, 2019 at 3:20 AM =E7=8E=8B=E7=9B=BC via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com> > wrote:

Hello,

 Nate.I want to use DPDK in UHD with N310 follow  =
<https://files.ettus.com/manual/page_dpdk.html.> =
https://files.ettus.com/manual/page_dpdk.html,but the result is not =
satisfactory.I got you have some research about this from the user-list =
emails(With an i7-4790k / Intel x520-DA2 and N310, to stream at full =
duplex, over two channels at 125 MS/s, the lowest I can run my CPU clock =
freq at without flow control errors is 3.8 GHz using benchmark_rate and =
the native networking stack. Using DPDK I can run 2x2 @ 125 MS/s with my =
CPU freq locked at 1.5 GHz with no flow control errors. ).

May be you can do me a favor and have some idea about my quesion.

(1) I use benchmark_rate to test the streaming performance, I only got =
122.88MS/s for 1channel, or 61.44MS/s for 2x2. run with 2x2@122.88MS =
<mailto:2x2@122.88MS> /s , a lot of samples dropped.=20

Unfortuately, my destination is 4x4@122.88MS <mailto:4x4@122.88MS> /s. I =
don't know is it possible for my present host machine, or what =
configuration of host machine should have?

ubuntu server 18.04    uhd:3.14.1.1  dpdk 17.11.6   dual 10GbE links (XG =
image loaded)

host machine: 4 node, 8 cores in each node, tota 32 cores, cpu: Intel(R) =
Xeon(R) CPU E5-4650 0 @ 2.70GHz

more informations about my host machine is in the =
attchachment.(hypethread closed, cpufrequtils GOVERNOR=3D"perfomance")

   --args =
"type=3Dn3xx,mgmt_addr=3D192.168.1.104,addr=3D192.168.20.2,master_clock_r=
ate=3D122.88e6,use_dpdk=3D1" \

   --duration 60 \

   --channels "0,1" \

   --rx_rate 122.88e6 \

   --rx_subdev "A:0 A:1" \

   --tx_rate 122.88e6 \

   --tx_subdev "A:0 A:1"=20

   Benchmark rate summary:

     Num received samples:     2744145668

  Num dropped samples:      6030320380

  Num overruns detected:    921

  Num transmitted samples:  14684137560

  Num sequence errors (Tx): 0

  Num sequence errors (Rx): 0

  Num underruns detected:   67231

  Num late commands:        0

  Num timeouts (Tx):        0

  Num timeouts (Rx):        0


=20


(2) In the  txrx_loopback_to_file test ,when I use the default --setting =
for 4*4channels, there is a error UUUUError: Receiver error =
ERROR_CODE_LATE_COMMAND .

I change it to --setting 1 ,it works.

I want to know the influence to my streaming or sample datas if 1 =
increase  --setting?

(--settling arg (=3D0.20000000000000001) settling time (seconds) before =
receiving)

=20

Much appreciated.

=20

Regards,

Panny Wang

=20

=20

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>=20
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


------=_NextPart_001_0039_01D59618.34A07490
Content-Type: text/html;
	charset="utf-8"
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
	{font-family:=E5=AE=8B=E4=BD=93;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:=E7=AD=89=E7=BA=BF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91;
	panose-1:2 11 5 3 2 2 4 2 2 4;}
@font-face
	{font-family:_ae=C2=8F6f=C2=96c5=C2=9Ed1;
	panose-1:0 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"\@=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91";}
@font-face
	{font-family:"\@=E5=AE=8B=E4=BD=93";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@=E7=AD=89=E7=BA=BF";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:=E5=AE=8B=E4=BD=93;}
h1
	{mso-style-priority:9;
	mso-style-link:"=E6=A0=87=E9=A2=98 1 =E5=AD=97=E7=AC=A6";
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:24.0pt;
	font-family:=E5=AE=8B=E4=BD=93;}
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
	font-size:12.0pt;
	font-family:=E5=AE=8B=E4=BD=93;}
span.1
	{mso-style-name:"=E6=A0=87=E9=A2=98 1 =E5=AD=97=E7=AC=A6";
	mso-style-priority:9;
	mso-style-link:"=E6=A0=87=E9=A2=98 1";
	font-family:=E5=AE=8B=E4=BD=93;
	font-weight:bold;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:=E7=AD=89=E7=BA=BF;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DZH-CN link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF'>Hello, =
</span><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF'>Sam =
Reiter.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF'>Thank you for =
your reply.I have a test with benchmark, 2x2 @122.88M is ok(maybe the =
cpu =E2=80=9Cperformance=E2=80=9D is diabled in the initial test).I give =
the command with <a href=3D"mailto:3x3@122.88M">3x3@122.88M</a>. The =
output is in the attachment.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF'>=C2=A0=C2=A0=C2=
=A0=C2=A0 /usr/local/lib/uhd/examples/benchmark_rate=C2=A0 =
\<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF'>=C2=A0=C2=A0=C2=
=A0 --args =
&quot;type=3Dn3xx,mgmt_addr=3D192.168.2.230,addr=3D192.168.10.2,second_ad=
dr=3D192.168.20.2,master_clock_rate=3D122.88e6,use_dpdk=3D1&quot; =
\<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF'>=C2=A0=C2=A0=C2=
=A0 --duration 60 \<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF'>=C2=A0=C2=A0=C2=
=A0 --channels &quot;0,1,2&quot; \<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF'>=C2=A0=C2=A0=C2=
=A0 --rx_rate 122.88e6 \<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF'>=C2=A0=C2=A0=C2=
=A0 --rx_subdev &quot;A:0 A:1 B:0&quot; \<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF'>=C2=A0=C2=A0=C2=
=A0 --tx_rate 122.88e6 \<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF'>=C2=A0=C2=A0=C2=
=A0 --tx_subdev &quot;A:0 A:1 B:0&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF'><o:p>&nbsp;</o:=
p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF'>Best,<o:p></o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF'>Panny =
Wang<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF'><o:p>&nbsp;</o:=
p></span></p><p class=3DMsoNormal><b><span =
style=3D'font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF'>=E5=8F=91=E4=BB=
=B6=E4=BA=BA<span lang=3DEN-US>:</span></span></b><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF'> Sam Reiter =
&lt;sam.reiter@ettus.com&gt; <br></span><b><span =
style=3D'font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF'>=E5=8F=91=E9=80=
=81=E6=97=B6=E9=97=B4<span lang=3DEN-US>:</span></span></b><span =
lang=3DEN-US style=3D'font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF'> =
2019</span><span =
style=3D'font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF'>=E5=B9=B4<span =
lang=3DEN-US>11</span>=E6=9C=88<span lang=3DEN-US>8</span>=E6=97=A5<span =
lang=3DEN-US> 4:41<br></span><b>=E6=94=B6=E4=BB=B6=E4=BA=BA<span =
lang=3DEN-US>:</span></b><span lang=3DEN-US> =
</span>=E7=8E=8B=E7=9B=BC<span lang=3DEN-US> =
&lt;ruoyilei@126.com&gt;<br></span><b>=E6=8A=84=E9=80=81<span =
lang=3DEN-US>:</span></b><span lang=3DEN-US> =
usrp-users@lists.ettus.com<br></span><b>=E4=B8=BB=E9=A2=98<span =
lang=3DEN-US>:</span></b><span lang=3DEN-US> Re: [USRP-users] questions =
about uhd-dpdk with n310<o:p></o:p></span></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><div><div><p =
class=3DMsoNormal><span lang=3DEN-US>Panny =
Wang,<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div><div><p =
class=3DMsoNormal><span lang=3DEN-US>The cpufreq-info looks good, but =
the ifconfig at the bottom is a bit confusing with what you've sent over =
up to this point. Can you send the exact ./benchmark_rate command that =
you're using (with all args included) to produce the output you sent =
over initially? The MPMD info in the last couple doesn't seem consistent =
with this ifconfig output:<o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div><div><p =
class=3DMsoNormal><span lang=3DEN-US>enp7s0f0: =
flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt; &nbsp;mtu =
1500<br>&nbsp; &nbsp; &nbsp; &nbsp; inet 192.168.1.73 &nbsp;netmask =
255.255.255.0 &nbsp;broadcast 192.168.1.255<br>&nbsp; &nbsp; &nbsp; =
&nbsp; inet6 fe80::9604:9cff:fed2:b1a3 &nbsp;prefixlen 64 &nbsp;scopeid =
0x20&lt;link&gt;<br>&nbsp; &nbsp; &nbsp; &nbsp; ether 94:04:9c:d2:b1:a3 =
&nbsp;txqueuelen 1000 &nbsp;(Ethernet)<br>&nbsp; &nbsp; &nbsp; &nbsp; RX =
packets 114457 &nbsp;bytes 8586410 (8.5 MB)<br>&nbsp; &nbsp; &nbsp; =
&nbsp; RX errors 0 &nbsp;dropped 3 &nbsp;overruns 0 &nbsp;frame =
0<br>&nbsp; &nbsp; &nbsp; &nbsp; TX packets 179513 &nbsp;bytes 37029298 =
(37.0 MB)<br>&nbsp; &nbsp; &nbsp; &nbsp; TX errors 0 &nbsp;dropped 0 =
overruns 0 &nbsp;carrier 0 &nbsp;collisions 0<br>&nbsp; &nbsp; &nbsp; =
&nbsp; device memory 0x95e80000-95efffff &nbsp;<br><br>enp7s0f1: =
flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt; &nbsp;mtu =
8000<br>&nbsp; &nbsp; &nbsp; &nbsp; inet 192.168.2.254 &nbsp;netmask =
255.255.255.0 &nbsp;broadcast 192.168.2.255<br>&nbsp; &nbsp; &nbsp; =
&nbsp; inet6 fe80::9604:9cff:fed2:b1a4 &nbsp;prefixlen 64 &nbsp;scopeid =
0x20&lt;link&gt;<br>&nbsp; &nbsp; &nbsp; &nbsp; ether 94:04:9c:d2:b1:a4 =
&nbsp;txqueuelen 1000 &nbsp;(Ethernet)<br>&nbsp; &nbsp; &nbsp; &nbsp; RX =
packets 3404 &nbsp;bytes 296849 (296.8 KB)<br>&nbsp; &nbsp; &nbsp; =
&nbsp; RX errors 0 &nbsp;dropped 0 &nbsp;overruns 0 &nbsp;frame =
0<br>&nbsp; &nbsp; &nbsp; &nbsp; TX packets 2196 &nbsp;bytes 243446 =
(243.4 KB)<br>&nbsp; &nbsp; &nbsp; &nbsp; TX errors 0 &nbsp;dropped 0 =
overruns 0 &nbsp;carrier 0 &nbsp;collisions 0<br>&nbsp; &nbsp; &nbsp; =
&nbsp; device memory 0x95e00000-95e7ffff &nbsp;<br><br>lo: =
flags=3D73&lt;UP,LOOPBACK,RUNNING&gt; &nbsp;mtu 65536<br>&nbsp; &nbsp; =
&nbsp; &nbsp; inet 127.0.0.1 &nbsp;netmask 255.0.0.0<br>&nbsp; &nbsp; =
&nbsp; &nbsp; inet6 ::1 &nbsp;prefixlen 128 &nbsp;scopeid =
0x10&lt;host&gt;<br>&nbsp; &nbsp; &nbsp; &nbsp; loop &nbsp;txqueuelen =
1000 &nbsp;(Local Loopback)<br>&nbsp; &nbsp; &nbsp; &nbsp; RX packets =
63270 &nbsp;bytes 4016936 (4.0 MB)<br>&nbsp; &nbsp; &nbsp; &nbsp; RX =
errors 0 &nbsp;dropped 0 &nbsp;overruns 0 &nbsp;frame 0<br>&nbsp; &nbsp; =
&nbsp; &nbsp; TX packets 63270 &nbsp;bytes 4016936 (4.0 MB)<br>&nbsp; =
&nbsp; &nbsp; &nbsp; TX errors 0 &nbsp;dropped 0 overruns 0 =
&nbsp;carrier 0 &nbsp;collisions 0<o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div><div><div><div><div><div><=
p class=3DMsoNormal><span lang=3DEN-US>Sam Reiter =
<o:p></o:p></span></p></div></div></div></div></div></div><p =
class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><div><div><p =
class=3DMsoNormal><span lang=3DEN-US>On Mon, Nov 4, 2019 at 7:32 PM =
</span>=E7=8E=8B=E7=9B=BC<span lang=3DEN-US> &lt;<a =
href=3D"mailto:ruoyilei@126.com">ruoyilei@126.com</a>&gt; =
wrote:<o:p></o:p></span></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><div><div><div><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>Hey&nbsp;Sam Reiter,<o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>The output of &quot;<b>cpufreq-info &amp;&amp; =
ifconfig</b>&quot; is in the attchment. At the same time I put more =
information about my system =
there.&nbsp;<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>Both 10GbE links are binded to dpdk, so ifconfig can not =
output them.My cpu clock is 2.7GHz,maybe it is not powerfull =
enough.<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>It would be great&nbsp;If you can help =
me&nbsp;confirm&nbsp;my configuration =
.&nbsp;<o:p></o:p></span></p></div><div =
id=3D"gmail-m_588403982258394195ntes-pcmac-signature"><div><div =
style=3D'border:none;border-bottom:solid #E6E6E6 1.0pt;padding:0cm 0cm =
5.0pt 0cm;margin-bottom:7.5pt;display:inline-block'><table =
class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 =
width=3D"100%" style=3D'width:100.0%;border-collapse:collapse'><tr><td =
width=3D38 style=3D'width:28.5pt;padding:0cm 0cm 0cm 0cm'><p =
class=3DMsoNormal style=3D'word-break:break-all'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif=
;color:#9B9EA1'><img border=3D0 width=3D38 height=3D38 =
style=3D'width:.3958in;height:.3958in' id=3D"_x0000_i1025" =
src=3D"https://mail-online.nosdn.127.net/qiyelogo/defaultAvatar.png"><o:p=
></o:p></span></p></td><td style=3D'padding:0cm 0cm 0cm 7.5pt'><div><p =
class=3DMsoNormal style=3D'word-break:break-all'><b><span =
style=3D'color:#31353B'>=E7=8E=8B=E7=9B=BC</span></b><b><span =
lang=3DEN-US =
style=3D'font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif;color:#31353B'><=
o:p></o:p></span></b></p></div></td></tr><tr><td width=3D"100%" =
colspan=3D2 style=3D'width:100.0%;padding:7.5pt 0cm 0cm 0cm'><div><p =
class=3DMsoNormal style=3D'word-break:break-all'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif=
;color:#9B9EA1'><a =
href=3D"mailto:ruoyilei@126.com">ruoyilei@126.com</a><o:p></o:p></span></=
p></div></td></tr></table></div></div><div><p class=3DMsoNormal =
style=3D'line-height:13.5pt'><span =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif;color:#B5B9BD'>=E7=AD=BE=E5=90=8D=E7=94=B1</span><span =
style=3D'font-size:9.0pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif;=
color:#B5B9BD'> <span lang=3DEN-US><a =
href=3D"https://mail.163.com/dashi/dlpro.html?from=3Dmail81" =
target=3D"_blank"><span lang=3DEN-US =
style=3D'font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91",sans-serif;co=
lor:#4196FF;text-decoration:none'><span =
lang=3DEN-US>=E7=BD=91=E6=98=93=E9=82=AE=E7=AE=B1=E5=A4=A7=E5=B8=88</span=
></span></a> </span></span><span =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif;color:#B5B9BD'>=E5=AE=9A=E5=88=B6</span><span =
style=3D'font-size:9.0pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif;=
color:#B5B9BD'> <span =
lang=3DEN-US><o:p></o:p></span></span></p></div></div></div><div =
style=3D'margin-top:33.75pt;margin-bottom:15.0pt;border-radius:3px'><div =
style=3D'margin-left:7.5pt;margin-right:7.5pt'><p class=3DMsoNormal =
style=3D'background:#F2F2F2;word-break:break-all'><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif;=
color:black'>On 11/5/2019 04:13</span><span =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif;color:black'>=EF=BC=8C</span><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif;=
color:black'><a href=3D"mailto:sam.reiter@ettus.com" =
target=3D"_blank"><span style=3D'color:#2A83F2;text-decoration:none'>Sam =
Reiter&lt;sam.reiter@ettus.com&gt;</span></a> wrote</span><span =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif;color:black'>=EF=BC=9A</span><span =
style=3D'font-size:9.0pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif;=
color:black'> <span =
lang=3DEN-US><o:p></o:p></span></span></p></div></div><blockquote =
id=3D"gmail-m_588403982258394195ntes-pcmail-quote"><div><div><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif=
'>Hey Panny Wang,<o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif=
'><o:p>&nbsp;</o:p></span></p></div><div><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif=
'>You're correct, you should specify a second address with =
addr/second_addr, rather than addr0/addr1 - my bad. =
[1]<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif=
'><o:p>&nbsp;</o:p></span></p></div><div><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif=
'>Assuming you're using both 10GbE links correctly, my next step would =
be to investigate the processor you're using. Something with a higher =
clock speed is generally recommended for higher streaming rates. =
<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif=
'><o:p>&nbsp;</o:p></span></p></div><div><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif=
'>Would you be able to send over the output =
of:<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif=
'><o:p>&nbsp;</o:p></span></p></div><div><p class=3DMsoNormal><b><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif=
'>cpufreq-info &amp;&amp; ifconfig</span></b><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif=
'><o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif=
'><o:p>&nbsp;</o:p></span></p></div><div><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif=
'>Best,<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif=
'><o:p>&nbsp;</o:p></span></p></div><div><div><div><div><div><div><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif=
'>Sam Reiter&nbsp;<o:p></o:p></span></p><div><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif=
'><o:p>&nbsp;</o:p></span></p></div></div></div></div></div></div></div><=
div><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif=
'>[1] <a =
href=3D"https://kb.ettus.com/Using_Dual_10_Gigabit_Ethernet_on_the_USRP_X=
300/X310" =
target=3D"_blank">https://kb.ettus.com/Using_Dual_10_Gigabit_Ethernet_on_=
the_USRP_X300/X310</a><o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif=
'><o:p>&nbsp;</o:p></span></p><div><div><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif=
'>On Sun, Nov 3, 2019 at 8:53 PM </span><span =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>=E7=8E=8B=E7=9B=BC</span><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"_ae=C2=8F6f=C2=96c5=C2=9Ed1",serif=
'> &lt;<a href=3D"mailto:ruoyilei@126.com" =
target=3D"_blank">ruoyilei@126.com</a>&gt; =
wrote:<o:p></o:p></span></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><div><div><div><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>Hello,<o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"Verdana",sans-serif'>Sam =
Reiter.&nbsp;When&nbsp;leveraging<span =
style=3D'color:#31353B'>&nbsp;dual 10GbE =
links,I&nbsp;&nbsp;</span>specify&quot;&nbsp;addr=3D192.168.20.2,second_a=
ddr=3D192.168.10.2&quot;,last email I didn't give the example&nbsp;. The =
result is not much diffrent with use&nbsp;a single 10GbE =
link.</span><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"Verdana",sans-serif'>I think it =
is =
&nbsp;&quot;addr=3D&lt;xxx.xxx.xxx.xxx&gt;,second_addr=3D&lt;xxx.xxx.xxx.=
xxx&gt;&quot; but =
not&nbsp;&quot;addr0=3D&lt;xxx.xxx.xxx.xxx&gt;,addr1=3D&lt;xxx.xxx.xxx.xx=
x&gt;&quot;. when =
use&nbsp;&nbsp;&quot;addr0=3D&lt;xxx.xxx.xxx.xxx&gt;,addr1=3D&lt;xxx.xxx.=
xxx.xxx&gt;&quot;,I get errors:</span><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><div><p =
class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"Verdana",sans-serif'>[INFO] [MPMD] =
Initializing 3 device(s) in parallel with args: =
mgmt_addr0=3D192.168.2.230,type0=3Dn3xx,product0=3Dn310,serial0=3D316645B=
,claimed0=3DFalse,mgmt_addr1=3D192.168.2.230,type1=3Dn3xx,product1=3Dn310=
,serial1=3D316645B,claimed1=3DFalse,mgmt_addr2=3D192.168.2.230,type2=3Dn3=
xx,product2=3Dn310,serial2=3D316645B,claimed2=3DFalse,type=3Dn3xx,mgmt_ad=
dr=3D192.168.2.230,addr1=3D192.168.10.2,addr2=3D192.168.20.2,master_clock=
_rate=3D122.88e6,use_dpdk=3D1</span></i><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"Verdana",sans-serif'>[ERROR] [RPC] =
Someone tried to claim this device again (From: =
192.168.2.254)</span></i><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"Verdana",sans-serif'>[WARNING] =
[MPM.RPCServer] Someone tried to claim this device again (From: =
192.168.2.254)</span></i><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"Verdana",sans-serif'>Error: =
RuntimeError: Error during RPC call to `claim'. Error message: Someone =
tried to claim this device again (From: 192.168.2.254)</span></i><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"Verdana",sans-serif'>root@seu73:/ho=
me/seu#&nbsp;</span></i><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div></div></div><div><div =
style=3D'margin-left:7.5pt;margin-right:7.5pt'><p class=3DMsoNormal =
style=3D'word-break:break-all'><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>On 11/2/2019 02:30</span><span =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>=EF=BC=8C<span lang=3DEN-US><a =
href=3D"mailto:sam.reiter@ettus.com" target=3D"_blank"><span =
style=3D'color:#2A83F2;text-decoration:none'>Sam =
Reiter&lt;sam.reiter@ettus.com&gt;</span></a> wrote</span>=EF=BC=9A<span =
lang=3DEN-US><o:p></o:p></span></span></p></div></div><blockquote =
id=3D"gmail-m_588403982258394195gmail-m_-4323938323390205694ntes-pcmail-q=
uote"><div><div><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"Verdana",sans-serif'>Panny =
Wang,<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"Verdana",sans-serif'><o:p>&nbsp;</=
o:p></span></p></div><div><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"Verdana",sans-serif'>I notice =
that you're only specifying a single streaming address in your call to =
benchmark rate, implying that you're only leveraging a single 10GbE =
link. You can specify =
&quot;addr0=3D&lt;xxx.xxx.xxx.xxx&gt;,addr1=3D&lt;xxx.xxx.xxx.xxx&gt;&quo=
t; in your device args. <o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"Verdana",sans-serif'><o:p>&nbsp;</=
o:p></span></p></div><div><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"Verdana",sans-serif'>Best,<br><br>=
Sam Reiter<br>SDR Applications Engineer<br>Ettus =
Research<o:p></o:p></span></p></div></div><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p>&nbsp;</o:p></span></p><div><div><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>On Wed, Oct 30, 2019 at 3:20 AM </span><span =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>=E7=8E=8B=E7=9B=BC<span lang=3DEN-US> via USRP-users =
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; =
wrote:<o:p></o:p></span></span></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><div><div><div><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>Hello,<o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>&nbsp;Nate.</span><span lang=3DEN-US =
style=3D'font-family:"Times New Roman",serif;color:#31353B'>I want to =
use DPDK in UHD with N310 follow&nbsp;</span><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><a href=3D"https://files.ettus.com/manual/page_dpdk.html." =
target=3D"_blank"><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'>https://files.ettus.com/manual/page_dpdk.html</span></a>,bu=
t the result is not&nbsp;</span><span lang=3DEN-US =
style=3D'font-family:"Times New =
Roman",serif;color:#333333;background:white'>satisfactory.I got you have =
some research about this from the user-list emails(</span><i><span =
lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"Arial",sans-serif;color:black;backg=
round:white'>With an i7-4790k / Intel x520-DA2 and N310, to stream at =
full duplex, over two channels at 125 MS/s, the lowest I can run my CPU =
clock freq at without flow control errors is 3.8 GHz using =
benchmark_rate and the native networking stack. Using DPDK I can run 2x2 =
@ 125 MS/s with my CPU freq locked at 1.5 GHz with no flow control =
errors.&nbsp;</span></i><span lang=3DEN-US style=3D'font-family:"Times =
New Roman",serif;color:#333333;background:white'>).</span><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Times New =
Roman",serif;color:#333333;background:white'>May be you can do me a =
favor and have some idea about my quesion.</span><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Times New =
Roman",serif;color:#333333;background:white'>(1) I use benchmark_rate to =
test the&nbsp;</span><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"Verdana",sans-serif;color:#31353B'=
>streaming performance, I only got 122.88MS/s for 1channel, or 61.44MS/s =
for 2x2. run with <a href=3D"mailto:2x2@122.88MS" =
target=3D"_blank">2x2@122.88MS</a>/s , a lot of samples =
dropped.&nbsp;</span><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"Verdana",sans-serif;color:#31353B'=
>Unfortuately, my destination is <a href=3D"mailto:4x4@122.88MS" =
target=3D"_blank">4x4@122.88MS</a>/s. I don't know is it possible for my =
present&nbsp;host machine, or what configuration of host machine should =
have?</span><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"Verdana",sans-serif;color:#31353B'=
>ubuntu server 18.04 &nbsp; &nbsp;uhd:3.14.1.1 &nbsp;dpdk 17.11.6 =
&nbsp;&nbsp;dual 10GbE links (XG image loaded)</span><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>host machine: 4 node, 8 cores in each node, tota 32 cores, =
cpu:&nbsp;Intel(R) Xeon(R) CPU E5-4650 0 @ =
2.70GHz<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>more informations about my host machine is in the =
attchachment.(hypethread closed, cpufrequtils =
GOVERNOR=3D&quot;perfomance&quot;)<o:p></o:p></span></p></div><div><div><=
p class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>&nbsp; &nbsp;--args =
&quot;type=3Dn3xx,mgmt_addr=3D192.168.1.104,addr=3D192.168.20.2,master_cl=
ock_rate=3D122.88e6,use_dpdk=3D1&quot; \</span></i><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>&nbsp; &nbsp;--duration 60 \</span></i><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>&nbsp; &nbsp;--channels &quot;0,1&quot; \</span></i><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>&nbsp; &nbsp;--rx_rate 122.88e6 \</span></i><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>&nbsp; &nbsp;--rx_subdev &quot;A:0 A:1&quot; =
\</span></i><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>&nbsp; &nbsp;--tx_rate 122.88e6 \</span></i><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>&nbsp; &nbsp;--tx_subdev &quot;A:0 =
A:1&quot;&nbsp;</span></i><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>&nbsp; &nbsp;Benchmark rate summary:</span></i><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>&nbsp; &nbsp; &nbsp;Num received samples: &nbsp; &nbsp; =
2744145668</span></i><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>&nbsp; Num dropped samples: &nbsp; &nbsp; =
&nbsp;6030320380</span></i><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>&nbsp; Num overruns detected: &nbsp; =
&nbsp;921</span></i><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>&nbsp; Num transmitted samples: =
&nbsp;14684137560</span></i><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>&nbsp; Num sequence errors (Tx): 0</span></i><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>&nbsp; Num sequence errors (Rx): 0</span></i><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>&nbsp; Num underruns detected: &nbsp; =
67231</span></i><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>&nbsp; Num late commands: &nbsp; &nbsp; &nbsp; =
&nbsp;0</span></i><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>&nbsp; Num timeouts (Tx): &nbsp; &nbsp; &nbsp; =
&nbsp;0</span></i><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>&nbsp; Num timeouts (Rx): &nbsp; &nbsp; &nbsp; =
&nbsp;0</span></i><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div></div><h1><span lang=3DEN-US =
style=3D'font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91",sans-serif'><=
o:p>&nbsp;</o:p></span></h1><div><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>(2) In the &nbsp;txrx_loopback_to_file test ,when I use =
the default --setting for 4*4channels, there is a error <i>UUUUError: =
Receiver error =
ERROR_CODE_LATE_COMMAND</i>&nbsp;.<o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>I change it to&nbsp;--setting 1 ,it =
works.<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>I want to know the influence to my streaming or sample =
datas if 1 =
increase&nbsp;&nbsp;--setting?<o:p></o:p></span></p></div><div><div><p =
class=3DMsoNormal><i><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>(--settling arg (=3D0.20000000000000001) settling time =
(seconds) before&nbsp;receiving)</span></i><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div><div><p class=3DMsoNormal =
style=3D'line-height:16.8pt'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p>&nbsp;</o:p></span></p></div><div><p =
class=3DMsoNormal style=3D'line-height:16.8pt'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Verdana",sans-serif;color:black;ba=
ckground:white'>Much appreciated.</span><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p></o:p></span></p></div></div><div><p =
class=3DMsoNormal style=3D'line-height:16.8pt'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p>&nbsp;</o:p></span></p></div><div><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>Regards,<o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>Panny Wang<o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>&nbsp;<o:p></o:p></span></p></div><div =
id=3D"gmail-m_588403982258394195gmail-m_-4323938323390205694gmail-m_70264=
44473092057810ntes-pcmac-signature"><div><p class=3DMsoNormal =
style=3D'line-height:10.5pt'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'><o:p>&nbsp;</o:p></span></p></div></div></div></div></div><=
p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
",sans-serif'>_______________________________________________<br>USRP-use=
rs mailing list<br><a href=3D"mailto:USRP-users@lists.ettus.com" =
target=3D"_blank">USRP-users@lists.ettus.com</a><br><a =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" =
target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com</a><o:p></o:p></span></p></blockquote></div></blockquote></di=
v></div></blockquote></div></blockquote></div></div></blockquote></div></=
div></body></html>
------=_NextPart_001_0039_01D59618.34A07490--

------=_NextPart_000_0038_01D59618.34A07490
Content-Type: application/octet-stream;
	name="cpufreqinfo.log"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="cpufreqinfo.log"

[BEGIN] 2019/11/5 9:13:05
root@seu:/home/seu# cpufreq-info && ifconfig
cpufrequtils 008: cpufreq-info (C) Dominik Brodowski 2004-2009
Report errors and bugs to cpufreq@vger.kernel.org, please.
analyzing CPU 0:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 0
  CPUs which need to have their frequency coordinated by software: 0
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.00%, 1.20 GHz:0.30%  (8)
analyzing CPU 1:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 1
  CPUs which need to have their frequency coordinated by software: 1
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.00%, 1.20 GHz:0.30%  (3)
analyzing CPU 2:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 2
  CPUs which need to have their frequency coordinated by software: 2
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.00%, 1.20 GHz:0.30%  (3)
analyzing CPU 3:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 3
  CPUs which need to have their frequency coordinated by software: 3
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.00%, 1.20 GHz:0.30%  (3)
analyzing CPU 4:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 4
  CPUs which need to have their frequency coordinated by software: 4
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.00%, 1.20 GHz:0.30%  (3)
analyzing CPU 5:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 5
  CPUs which need to have their frequency coordinated by software: 5
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.00%, 1.20 GHz:0.30%  (62)
analyzing CPU 6:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 6
  CPUs which need to have their frequency coordinated by software: 6
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.00%, 1.20 GHz:0.30%  (86)
analyzing CPU 7:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 7
  CPUs which need to have their frequency coordinated by software: 7
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.00%, 1.20 GHz:0.30%  (53)
analyzing CPU 8:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 8
  CPUs which need to have their frequency coordinated by software: 8
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.00%, 1.20 GHz:0.30%  (24)
analyzing CPU 9:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 9
  CPUs which need to have their frequency coordinated by software: 9
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.00%, 1.20 GHz:0.30%  (29)
analyzing CPU 10:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 10
  CPUs which need to have their frequency coordinated by software: 10
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.00%, 1.20 GHz:0.30%  (31)
analyzing CPU 11:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 11
  CPUs which need to have their frequency coordinated by software: 11
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.00%, 1.20 GHz:0.30%  (45)
analyzing CPU 12:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 12
  CPUs which need to have their frequency coordinated by software: 12
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.00%, 1.20 GHz:0.30%  (38)
analyzing CPU 13:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 13
  CPUs which need to have their frequency coordinated by software: 13
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.01%, 1.20 GHz:0.29%  (51)
analyzing CPU 14:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 14
  CPUs which need to have their frequency coordinated by software: 14
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.02%, 1.60 GHz:0.00%, 1.40 =
GHz:0.00%, 1.20 GHz:0.28%  (88)
analyzing CPU 15:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 15
  CPUs which need to have their frequency coordinated by software: 15
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.00%, 1.20 GHz:0.30%  (45)
analyzing CPU 16:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 16
  CPUs which need to have their frequency coordinated by software: 16
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.02%, 1.20 GHz:0.28%  (48)
analyzing CPU 17:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 17
  CPUs which need to have their frequency coordinated by software: 17
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.01%, 1.20 GHz:0.29%  (45)
analyzing CPU 18:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 18
  CPUs which need to have their frequency coordinated by software: 18
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.01%, 1.20 GHz:0.30%  (35)
analyzing CPU 19:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 19
  CPUs which need to have their frequency coordinated by software: 19
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.01%, 1.20 GHz:0.29%  (45)
analyzing CPU 20:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 20
  CPUs which need to have their frequency coordinated by software: 20
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.01%, 1.20 GHz:0.29%  (48)
analyzing CPU 21:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 21
  CPUs which need to have their frequency coordinated by software: 21
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.01%, 1.40 =
GHz:0.00%, 1.20 GHz:0.29%  (51)
analyzing CPU 22:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 22
  CPUs which need to have their frequency coordinated by software: 22
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.01%, 1.20 GHz:0.29%  (50)
analyzing CPU 23:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 23
  CPUs which need to have their frequency coordinated by software: 23
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.01%, 1.20 GHz:0.29%  (31)
analyzing CPU 24:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 24
  CPUs which need to have their frequency coordinated by software: 24
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.00%, 1.20 GHz:0.30%  (44)
analyzing CPU 25:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 25
  CPUs which need to have their frequency coordinated by software: 25
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.00%, 1.20 GHz:0.30%  (51)
analyzing CPU 26:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 26
  CPUs which need to have their frequency coordinated by software: 26
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.01%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.00%, 1.20 GHz:0.29%  (48)
analyzing CPU 27:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 27
  CPUs which need to have their frequency coordinated by software: 27
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.01%, 1.20 GHz:0.29%  (53)
analyzing CPU 28:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 28
  CPUs which need to have their frequency coordinated by software: 28
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.01%, 1.40 =
GHz:0.00%, 1.20 GHz:0.30%  (38)
analyzing CPU 29:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 29
  CPUs which need to have their frequency coordinated by software: 29
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.01%, 1.20 GHz:0.29%  (39)
analyzing CPU 30:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 30
  CPUs which need to have their frequency coordinated by software: 30
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.01%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.01%, 1.20 GHz:0.28%  (44)
analyzing CPU 31:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: 31
  CPUs which need to have their frequency coordinated by software: 31
  maximum transition latency: 10.0 us.
  hardware limits: 1.20 GHz - 2.70 GHz
  available frequency steps: 2.70 GHz, 2.70 GHz, 2.40 GHz, 2.20 GHz, =
2.00 GHz, 1.80 GHz, 1.60 GHz, 1.40 GHz, 1.20 GHz
  available cpufreq governors: conservative, ondemand, userspace, =
powersave, performance, schedutil
  current policy: frequency should be within 1.20 GHz and 2.70 GHz.
                  The governor "performance" may decide which speed to =
use
                  within this range.
  current CPU frequency is 2.70 GHz (asserted by call to hardware).
  cpufreq stats: 2.70 GHz:99.70%, 2.70 GHz:0.00%, 2.40 GHz:0.00%, 2.20 =
GHz:0.00%, 2.00 GHz:0.00%, 1.80 GHz:0.00%, 1.60 GHz:0.00%, 1.40 =
GHz:0.01%, 1.20 GHz:0.30%  (46)
enp7s0f0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.1.73  netmask 255.255.255.0  broadcast =
192.168.1.255
        inet6 fe80::9604:9cff:fed2:b1a3  prefixlen 64  scopeid =
0x20<link>
        ether 94:04:9c:d2:b1:a3  txqueuelen 1000  (Ethernet)
        RX packets 114457  bytes 8586410 (8.5 MB)
        RX errors 0  dropped 3  overruns 0  frame 0
        TX packets 179513  bytes 37029298 (37.0 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device memory 0x95e80000-95efffff =20

enp7s0f1: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 8000
        inet 192.168.2.254  netmask 255.255.255.0  broadcast =
192.168.2.255
        inet6 fe80::9604:9cff:fed2:b1a4  prefixlen 64  scopeid =
0x20<link>
        ether 94:04:9c:d2:b1:a4  txqueuelen 1000  (Ethernet)
        RX packets 3404  bytes 296849 (296.8 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 2196  bytes 243446 (243.4 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device memory 0x95e00000-95e7ffff =20

lo: flags=3D73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 63270  bytes 4016936 (4.0 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 63270  bytes 4016936 (4.0 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0


[END] 2019/11/5 9:14:17

------=_NextPart_000_0038_01D59618.34A07490
Content-Type: application/octet-stream;
	name="benchmark.log"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="benchmark.log"

[BEGIN] 2019/11/8 9:14:39
root@seu73:/home/seu# uhd_find_devices=20
Error opening log file: basic_ios::clear: iostream error
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; =
UHD_3.14.1.HEAD-0-g0347a6d8
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: 316645B
    claimed: False
    mgmt_addr: 192.168.2.230
    product: n310
    reachable: No
    type: n3xx


root@seu73:/home/seu# dpdk-devbind -s

Network devices using DPDK-compatible driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
0000:01:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb' =
drv=3Dvfio-pci unused=3Dixgbe
0000:01:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb' =
drv=3Dvfio-pci unused=3Dixgbe

Network devices using kernel driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
0000:02:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb' =
if=3Dens6f0 drv=3Dixgbe unused=3Dvfio-pci=20
0000:02:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb' =
if=3Dens6f1 drv=3Dixgbe unused=3Dvfio-pci=20
0000:07:00.0 '82580 Gigabit Network Connection 150e' if=3Denp7s0f0 =
drv=3Digb unused=3Dvfio-pci *Active*
0000:07:00.1 '82580 Gigabit Network Connection 150e' if=3Denp7s0f1 =
drv=3Digb unused=3Dvfio-pci *Active*
0000:07:00.2 '82580 Gigabit Network Connection 150e' if=3Denp7s0f2 =
drv=3Digb unused=3Dvfio-pci=20
0000:07:00.3 '82580 Gigabit Network Connection 150e' if=3Denp7s0f3 =
drv=3Digb unused=3Dvfio-pci=20

Other Network devices
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
<none>

Crypto devices using DPDK-compatible driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
<none>

Crypto devices using kernel driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
<none>

Other Crypto devices
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
<none>

Eventdev devices using DPDK-compatible driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
<none>

Eventdev devices using kernel driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
<none>

Other Eventdev devices
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
<none>

Mempool devices using DPDK-compatible driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
<none>

Mempool devices using kernel driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
<none>

Other Mempool devices
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
<none>

root@seu73:/home/seu#      /usr/local/lib/uhd/examples/benchmark_rate  \
>     --args =
"type=3Dn3xx,mgmt_addr=3D192.168.2.230,addr=3D192.168.10.2,second_addr=3D=
192.168.20.2,master_clock_rate=3D122.88e6,use_dpdk=3D1" \
>     --duration 60 \
>     --channels "0,1,2" \
>     --rx_rate 122.88e6 \
>     --rx_subdev "A:0 A:1 B:0" \
>     --tx_rate 122.88e6 \
>     --tx_subdev "A:0 A:1 B:0"

Error opening log file: basic_ios::clear: iostream error
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; =
UHD_3.14.1.HEAD-0-g0347a6d8
EAL: Detected lcore 0 as core 0 on socket 0
EAL: Detected lcore 1 as core 1 on socket 0
EAL: Detected lcore 2 as core 2 on socket 0
EAL: Detected lcore 3 as core 3 on socket 0
EAL: Detected lcore 4 as core 4 on socket 0
EAL: Detected lcore 5 as core 5 on socket 0
EAL: Detected lcore 6 as core 6 on socket 0
EAL: Detected lcore 7 as core 7 on socket 0
EAL: Detected lcore 8 as core 0 on socket 1
EAL: Detected lcore 9 as core 1 on socket 1
EAL: Detected lcore 10 as core 2 on socket 1
EAL: Detected lcore 11 as core 3 on socket 1
EAL: Detected lcore 12 as core 4 on socket 1
EAL: Detected lcore 13 as core 5 on socket 1
EAL: Detected lcore 14 as core 6 on socket 1
EAL: Detected lcore 15 as core 7 on socket 1
EAL: Detected lcore 16 as core 0 on socket 2
EAL: Detected lcore 17 as core 1 on socket 2
EAL: Detected lcore 18 as core 2 on socket 2
EAL: Detected lcore 19 as core 3 on socket 2
EAL: Detected lcore 20 as core 4 on socket 2
EAL: Detected lcore 21 as core 5 on socket 2
EAL: Detected lcore 22 as core 6 on socket 2
EAL: Detected lcore 23 as core 7 on socket 2
EAL: Detected lcore 24 as core 0 on socket 3
EAL: Detected lcore 25 as core 1 on socket 3
EAL: Detected lcore 26 as core 2 on socket 3
EAL: Detected lcore 27 as core 3 on socket 3
EAL: Detected lcore 28 as core 4 on socket 3
EAL: Detected lcore 29 as core 5 on socket 3
EAL: Detected lcore 30 as core 6 on socket 3
EAL: Detected lcore 31 as core 7 on socket 3
EAL: Support maximum 128 logical core(s) by configuration.
EAL: Detected 32 lcore(s)
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_ark.so
EAL: Registered [pci] bus.
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_sfc_efx.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_octeontx.so
EAL: Registered [vdev] bus.
EAL: open shared lib =
/usr/local/lib/dpdk-pmds//librte_pmd_softnic.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_virtio.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_vhost.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_e1000.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_qede.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_lio.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_fm10k.so
EAL: open shared lib =
/usr/local/lib/dpdk-pmds//librte_mempool_octeontx.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_ixgbe.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_mempool_ring.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_fm10k.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_ring.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_vhost.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_enic.so
EAL: open shared lib =
/usr/local/lib/dpdk-pmds//librte_pmd_octeontx_ssovf.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_null_crypto.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_mempool_stack.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_null.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_ena.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_i40e.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_sw_event.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_tap.so.17.11
EAL: open shared lib =
/usr/local/lib/dpdk-pmds//librte_pmd_virtio.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_bond.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_ark.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_mlx5.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_softnic.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_pcap.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_ixgbe.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_cxgbe.so.17.11
EAL: open shared lib =
/usr/local/lib/dpdk-pmds//librte_pmd_crypto_scheduler.so.17.11
EAL: open shared lib =
/usr/local/lib/dpdk-pmds//librte_pmd_thunderx_nicvf.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_af_packet.so
EAL: open shared lib =
/usr/local/lib/dpdk-pmds//librte_pmd_null_crypto.so.17.11
EAL: open shared lib =
/usr/local/lib/dpdk-pmds//librte_pmd_vmxnet3_uio.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_kni.so.17.11
EAL: open shared lib =
/usr/local/lib/dpdk-pmds//librte_pmd_skeleton_event.so
EAL: open shared lib =
/usr/local/lib/dpdk-pmds//librte_pmd_sfc_efx.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_ena.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_null.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_qede.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_mlx5.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_nfp.so
EAL: open shared lib =
/usr/local/lib/dpdk-pmds//librte_mempool_stack.so.17.11
EAL: open shared lib =
/usr/local/lib/dpdk-pmds//librte_pmd_sw_event.so.17.11
EAL: open shared lib =
/usr/local/lib/dpdk-pmds//librte_pmd_failsafe.so.17.11
EAL: open shared lib =
/usr/local/lib/dpdk-pmds//librte_pmd_thunderx_nicvf.so
EAL: open shared lib =
/usr/local/lib/dpdk-pmds//librte_pmd_octeontx_ssovf.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_lio.so.17.11
EAL: open shared lib =
/usr/local/lib/dpdk-pmds//librte_mempool_octeontx.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_i40e.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_pcap.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_bnxt.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_mlx4.so.17.11
EAL: open shared lib =
/usr/local/lib/dpdk-pmds//librte_pmd_af_packet.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_avp.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_avp.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_bond.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_enic.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_bnxt.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_kni.so
EAL: open shared lib =
/usr/local/lib/dpdk-pmds//librte_pmd_octeontx.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_failsafe.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_mlx4.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_ring.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_vmxnet3_uio.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_e1000.so.17.11
EAL: open shared lib =
/usr/local/lib/dpdk-pmds//librte_pmd_crypto_scheduler.so
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_tap.so
EAL: open shared lib =
/usr/local/lib/dpdk-pmds//librte_mempool_ring.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_cxgbe.so
EAL: open shared lib =
/usr/local/lib/dpdk-pmds//librte_pmd_skeleton_event.so.17.11
EAL: open shared lib /usr/local/lib/dpdk-pmds//librte_pmd_nfp.so.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_softnic.so.17.11=

EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_qede.so.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_fm10k.so.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_vhost.so.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_null.so.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_ena.so.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_tap.so.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_virtio.so.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_bond.so.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_ark.so.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_mlx5.so.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_ixgbe.so.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_cxgbe.so.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_crypto_scheduler=
.so.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_thunderx_nicvf.s=
o.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_null_crypto.so.1=
7.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_vmxnet3_uio.so.1=
7.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_kni.so.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_sfc_efx.so.17.11=

EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_mempool_stack.so.17.=
11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_sw_event.so.17.1=
1
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_failsafe.so.17.1=
1
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_octeontx_ssovf.s=
o.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_lio.so.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_mempool_octeontx.so.=
17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_i40e.so.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_pcap.so.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_bnxt.so.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_mlx4.so.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_af_packet.so.17.=
11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_avp.so.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_enic.so.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_octeontx.so.17.1=
1
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_ring.so.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_e1000.so.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_mempool_ring.so.17.1=
1
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_skeleton_event.s=
o.17.11
EAL: open shared lib =
/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers//librte_pmd_nfp.so.17.11
EAL: VFIO PCI modules not loaded
EAL: Module /sys/module/rte_kni not found! error 2 (No such file or =
directory)
EAL: Probing VFIO support...
EAL:   IOMMU type 1 (Type 1) is supported
EAL:   IOMMU type 7 (sPAPR) is not supported
EAL:   IOMMU type 8 (No-IOMMU) is not supported
EAL: VFIO support initialized
EAL: Setting up physically contiguous memory...
EAL: Trying to obtain current memory policy.
EAL: Hugepage /dev/hugepages/rtemap_0 is on socket 1
EAL: Hugepage /dev/hugepages/rtemap_1 is on socket 1
EAL: Hugepage /dev/hugepages/rtemap_2 is on socket 2
EAL: Hugepage /dev/hugepages/rtemap_3 is on socket 2
EAL: Hugepage /dev/hugepages/rtemap_4 is on socket 0
EAL: Hugepage /dev/hugepages/rtemap_5 is on socket 0
EAL: Hugepage /dev/hugepages/rtemap_6 is on socket 3
EAL: Hugepage /dev/hugepages/rtemap_7 is on socket 3
EAL: Ask a virtual area of 0x200000000 bytes
EAL: Virtual area found at 0x100000000 (size =3D 0x200000000)
EAL: Requesting 2 pages of size 1024MB from socket 0
EAL: Requesting 2 pages of size 1024MB from socket 1
EAL: Requesting 2 pages of size 1024MB from socket 2
EAL: Requesting 2 pages of size 1024MB from socket 3
EAL: TSC frequency is ~2700017 KHz
EAL: Master lcore 0 is ready (tid=3Dd355d700;cpuset=3D[0])
EAL: lcore 1 is ready (tid=3Dba594700;cpuset=3D[1])
EAL: lcore 2 is ready (tid=3Db9d93700;cpuset=3D[2])
EAL: lcore 4 is ready (tid=3Db8d91700;cpuset=3D[4])
EAL: lcore 3 is ready (tid=3Db9592700;cpuset=3D[3])
EAL: PCI device 0000:01:00.0 on NUMA socket 0
EAL:   probe driver: 8086:10fb net_ixgbe
EAL:   using IOMMU type 1 (Type 1)
EAL:   PCI memory mapped at 0x300000000
EAL: Ignore mapping IO port bar(2)
EAL: Trying to map BAR4 that contains the MSI-X table. Trying offsets: =
0x40000000000:0x0000, 0x40000001000:0x3000
EAL:   PCI memory mapped at 0x300401000
PMD: eth_ixgbe_dev_init(): MAC: 2, PHY: 17, SFP+: 5
PMD: eth_ixgbe_dev_init(): port 0 vendorID=3D0x8086 deviceID=3D0x10fb
EAL: PCI device 0000:01:00.1 on NUMA socket 0
EAL:   probe driver: 8086:10fb net_ixgbe
EAL:   PCI memory mapped at 0x300404000
EAL: Ignore mapping IO port bar(2)
EAL: Trying to map BAR4 that contains the MSI-X table. Trying offsets: =
0x40000000000:0x0000, 0x40000001000:0x3000
EAL:   PCI memory mapped at 0x300805000
PMD: eth_ixgbe_dev_init(): MAC: 2, PHY: 17, SFP+: 6
PMD: eth_ixgbe_dev_init(): port 1 vendorID=3D0x8086 deviceID=3D0x10fb
EAL: PCI device 0000:02:00.0 on NUMA socket 0
EAL:   probe driver: 8086:10fb net_ixgbe
EAL:   Not managed by a supported kernel driver, skipped
EAL: PCI device 0000:02:00.1 on NUMA socket 0
EAL:   probe driver: 8086:10fb net_ixgbe
EAL:   Not managed by a supported kernel driver, skipped
EAL: PCI device 0000:07:00.0 on NUMA socket 0
EAL:   probe driver: 8086:150e net_e1000_igb
EAL:   Not managed by a supported kernel driver, skipped
EAL: PCI device 0000:07:00.1 on NUMA socket 0
EAL:   probe driver: 8086:150e net_e1000_igb
EAL:   Not managed by a supported kernel driver, skipped
EAL: PCI device 0000:07:00.2 on NUMA socket 0
EAL:   probe driver: 8086:150e net_e1000_igb
EAL:   Not managed by a supported kernel driver, skipped
EAL: PCI device 0000:07:00.3 on NUMA socket 0
EAL:   probe driver: 8086:150e net_e1000_igb
EAL:   Not managed by a supported kernel driver, skipped
PMD: ixgbe_dev_rx_queue_setup(): sw_ring=3D0x268f258c0 =
sw_sc_ring=3D0x268f24780 hw_ring=3D0x268f26a00 dma_addr=3D0x268f26a00
PMD: ixgbe_dev_tx_queue_setup(): sw_ring=3D0x268f125c0 =
hw_ring=3D0x268f14600 dma_addr=3D0x268f14600
PMD: ixgbe_set_tx_function(): Using full-featured tx code path
PMD: ixgbe_set_tx_function():  - txq_flags =3D 0 =
[IXGBE_SIMPLE_FLAGS=3Df01]
PMD: ixgbe_set_tx_function():  - tx_rs_thresh =3D 32 =
[RTE_PMD_IXGBE_TX_MAX_BURST=3D32]
PMD: ixgbe_set_rx_function(): Vector rx enabled, please make sure RX =
burst size no less than 4 (port=3D0).
PMD: ixgbe_dev_link_status_print(): Port 0: Link Up - speed 0 Mbps - =
half-duplex
PMD: ixgbe_dev_link_status_print(): PCI Address: 0000:01:00.0
EAL: Port 0 MAC: 54 39 df d3 f4 16
PMD: ixgbe_dev_rx_queue_setup(): sw_ring=3D0x268ee34c0 =
sw_sc_ring=3D0x268ee2380 hw_ring=3D0x268ee4600 dma_addr=3D0x268ee4600
PMD: ixgbe_dev_tx_queue_setup(): sw_ring=3D0x268ed01c0 =
hw_ring=3D0x268ed2200 dma_addr=3D0x268ed2200
PMD: ixgbe_set_tx_function(): Using full-featured tx code path
PMD: ixgbe_set_tx_function():  - txq_flags =3D 0 =
[IXGBE_SIMPLE_FLAGS=3Df01]
PMD: ixgbe_set_tx_function():  - tx_rs_thresh =3D 32 =
[RTE_PMD_IXGBE_TX_MAX_BURST=3D32]
PMD: ixgbe_set_rx_function(): Vector rx enabled, please make sure RX =
burst size no less than 4 (port=3D1).
PMD: ixgbe_dev_link_status_print(): Port 1: Link Up - speed 0 Mbps - =
half-duplex
PMD: ixgbe_dev_link_status_print(): PCI Address: 0000:01:00.1
EAL: Port 1 MAC: 54 39 df d3 f4 17
EAL: Waiting for links to come up...
EAL: Port 0 UP: 1, 10000 Mbps
EAL: Port 1 UP: 1, 10000 Mbps
EAL: Init DONE!
EAL: Starting I/O threads!
USER2: Thread 1 started
USER2: Thread 2 started
[00:00:00.000006] Creating the usrp device with: =
type=3Dn3xx,mgmt_addr=3D192.168.2.230,addr=3D192.168.10.2,second_addr=3D1=
92.168.20.2,master_clock_rate=3D122.88e6,use_dpdk=3D1...
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: =
mgmt_addr=3D192.168.2.230,type=3Dn3xx,product=3Dn310,serial=3D316645B,cla=
imed=3DFalse,addr=3D192.168.10.2,second_addr=3D192.168.20.2,master_clock_=
rate=3D122.88e6,use_dpdk=3D1
[INFO] [MPM.PeriphManager] init() called with device args =
`second_addr=3D192.168.20.2,clock_source=3Dinternal,product=3Dn310,time_s=
ource=3Dinternal,mgmt_addr=3D192.168.2.230,use_dpdk=3D1,master_clock_rate=
=3D122.88e6'.
[INFO] [0/Replay_0] Initializing block control (NOC ID: =
0x4E91A00000000004)
[INFO] [0/Radio_0] Initializing block control (NOC ID: =
0x12AD100000011312)
[INFO] [0/Radio_1] Initializing block control (NOC ID: =
0x12AD100000011312)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002)
[INFO] [0/FIFO_0] Initializing block control (NOC ID: =
0xF1F0000000000000)
[INFO] [0/FIFO_1] Initializing block control (NOC ID: =
0xF1F0000000000000)
[INFO] [0/FIFO_2] Initializing block control (NOC ID: =
0xF1F0000000000000)
[INFO] [0/FIFO_3] Initializing block control (NOC ID: =
0xF1F0000000000000)
Using Device: Single USRP:
  Device: N300-Series Device
  Mboard 0: ni-n3xx-316645B
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: Magnesium
  RX Channel: 1
    RX DSP: 1
    RX Dboard: A
    RX Subdev: Magnesium
  RX Channel: 2
    RX DSP: 0
    RX Dboard: B
    RX Subdev: Magnesium
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: Magnesium
  TX Channel: 1
    TX DSP: 1
    TX Dboard: A
    TX Subdev: Magnesium
  TX Channel: 2
    TX DSP: 0
    TX Dboard: B
    TX Subdev: Magnesium

[00:00:03.641809] Setting device timestamp to 0...
[INFO] [MULTI_USRP]     1) catch time transition at pps edge
[INFO] [MULTI_USRP]     2) set times next pps (synchronously)
[00:00:04.879486] Testing receive rate 122.880000 Msps on 3 channels
OOOOOO[00:00:05.312709] Testing transmit rate 122.880000 Msps on 3 =
channels
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUU[00:01:05.613803] Benchmark complete.


Benchmark rate summary:
  Num received samples:     1040587281
  Num dropped samples:      7066851409
  Num overruns detected:    1055
  Num transmitted samples:  21018419676
  Num sequence errors (Tx): 0
  Num sequence errors (Rx): 0
  Num underruns detected:   3580878
  Num late commands:        0
  Num timeouts (Tx):        0
  Num timeouts (Rx):        0


Done!


------=_NextPart_000_0038_01D59618.34A07490
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

------=_NextPart_000_0038_01D59618.34A07490--


