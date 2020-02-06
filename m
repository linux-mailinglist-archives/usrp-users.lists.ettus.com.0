Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B311546DE
	for <lists+usrp-users@lfdr.de>; Thu,  6 Feb 2020 15:54:39 +0100 (CET)
Received: from [::1] (port=46360 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iziY5-0005Hs-8I; Thu, 06 Feb 2020 09:54:33 -0500
Received: from sainfoin-smtp-out.extra.cea.fr ([132.167.192.228]:48085)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <rodolphe.bertolini@cea.fr>)
 id 1iziY1-0005Dt-Nf
 for usrp-users@lists.ettus.com; Thu, 06 Feb 2020 09:54:29 -0500
Received: from pisaure.intra.cea.fr (pisaure.intra.cea.fr [132.166.88.21])
 by sainfoin-sys.extra.cea.fr (8.14.7/8.14.7/CEAnet-Internet-out-4.0) with
 ESMTP id 016Erl4C022256
 for <usrp-users@lists.ettus.com>; Thu, 6 Feb 2020 15:53:47 +0100
Received: from pisaure.intra.cea.fr (localhost [127.0.0.1])
 by localhost (Postfix) with SMTP id D120B201B9F
 for <usrp-users@lists.ettus.com>; Thu,  6 Feb 2020 15:53:47 +0100 (CET)
Received: from muguet1-smtp-out.intra.cea.fr (muguet1-smtp-out.intra.cea.fr
 [132.166.192.12])
 by pisaure.intra.cea.fr (Postfix) with ESMTP id B90F5204D76
 for <usrp-users@lists.ettus.com>; Thu,  6 Feb 2020 15:53:47 +0100 (CET)
Received: from EXCAH-A2.intra.cea.fr (excah-a2.intra.cea.fr [132.166.88.76])
 by muguet1-sys.intra.cea.fr (8.14.7/8.14.7/CEAnet-Internet-out-4.0) with ESMTP
 id 016ErlwQ014613
 for <usrp-users@lists.ettus.com>; Thu, 6 Feb 2020 15:53:47 +0100
Received: from EXDAG0-B2.intra.cea.fr ([fe80::d079:8496:6c6c:9b1f]) by
 EXCAH-A2.intra.cea.fr ([fe80::1424:a20d:95ab:8077%10]) with mapi id
 14.03.0468.000; Thu, 6 Feb 2020 15:53:47 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] DPDK runtime error
Thread-Index: AQHV3Npj3RPgjgI/YkyB6ztO59GGxagOMO38
Date: Thu, 6 Feb 2020 14:53:47 +0000
Message-ID: <F479266F97CCAE47854721C82406934E1D04F1A8@EXDAG0-B2.intra.cea.fr>
References: <F479266F97CCAE47854721C82406934E1D04F16D@EXDAG0-B2.intra.cea.fr>
In-Reply-To: <F479266F97CCAE47854721C82406934E1D04F16D@EXDAG0-B2.intra.cea.fr>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [132.166.88.109]
x-tm-as-product-ver: SMEX-11.0.0.4179-8.100.1062-23234.003
x-tm-as-result: No--22.454300-0.000000-31
x-tm-as-user-approved-sender: Yes
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Re: [USRP-users] DPDK runtime error
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
From: BERTOLINI Rodolphe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: BERTOLINI Rodolphe <rodolphe.bertolini@cea.fr>
Content-Type: multipart/mixed; boundary="===============6138688303536818542=="
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

--===============6138688303536818542==
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_F479266F97CCAE47854721C82406934E1D04F1A8EXDAG0B2intrace_"

--_000_F479266F97CCAE47854721C82406934E1D04F1A8EXDAG0B2intrace_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello again,

There seemed to have wrong rights on file, because after changing rights an=
d editing the file I had this error:


[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.15.0.HEAD-0-=
gaea0e2de
EAL: Detected 28 lcore(s)
EAL: No free hugepages reported in hugepages-1048576kB
EAL: Probing VFIO support...
EAL: VFIO support initialized
EAL: PCI device 0000:00:1f.6 on NUMA socket 0
EAL:   probe driver: 8086:15b9 net_e1000_em
EAL: PCI device 0000:17:00.0 on NUMA socket 0
EAL:   probe driver: 8086:10fb net_ixgbe
EAL:   using IOMMU type 1 (Type 1)
EAL: Ignore mapping IO port bar(2)
EAL: PCI device 0000:17:00.1 on NUMA socket 0
EAL:   probe driver: 8086:10fb net_ixgbe
EAL: Ignore mapping IO port bar(2)
EAL: PCI device 0000:45:00.0 on NUMA socket 0
EAL:   probe driver: 8086:1563 net_ixgbe
EAL: PCI device 0000:45:00.1 on NUMA socket 0
EAL:   probe driver: 8086:1563 net_ixgbe
EAL: Error - exiting with code: 1
  Cause: Requested inactive lcore 3 for port 0


I solved this error by editing again the conf file (it seems that I had to =
remove dpdk-io-core lines)

Now I have again the IPv4 assignement error, with the following configurati=
on :

[use-dpdk=3D1]
dpdk-mtu=3D9000
;dpdk-driver=3D/usr/local/lib/dpdk-pmds/
dpdk-driver=3D/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers/
dpdk-corelist=3D2-4
dpdk-num-mbufs=3D4096
dpdk-mbuf-cache-size=3D316
[dpdk-mac=3Df8:f2:1e:29:c5:14]
dpdk-lcore =3D 3
;dpdk-io-cpu =3D 3
dpdk-ipv4 =3D 192.168.30.2/24
[dpdk-mac=3Df8:f2:1e:29:c5:15]
dpdk-lcore =3D 4
;dpdk-io-cpu =3D 4
dpdk-ipv4 =3D 192.168.40.2/24
;dpdk-num-desc=3D4096

It tells me :

EAL: Please set IPv4 address for port 0 before opening socket

I don't get what is wrong. Must both SFP ports of the USRP be plugged, to t=
he host?

Regards,
Rodolphe

________________________________
De : USRP-users [usrp-users-bounces@lists.ettus.com] de la part de BERTOLIN=
I Rodolphe via USRP-users [usrp-users@lists.ettus.com]
Envoy=E9 : jeudi 6 f=E9vrier 2020 11:47
=C0 : usrp-users@lists.ettus.com
Objet : Re: [USRP-users] DPDK runtime error

Hello,
Sorry if I had better to create an other thread.

I am trying also to reach better stability in OpenAirInterface, and to use =
USRP through DPDK.
I face the exact same error, however I don't have /etc/uhd folder :

$ locate uhd.conf
/etc/security/limits.d/uhd.conf
/etc/security/limits.d/uhd.conf.dpkg-new

The content of those files is :
@usrp            -       rtprio          99

I manually created folder ~/.uhd/, and put a uhd.conf file here (I have rea=
d somewhere that there are different places where uhd conf file can be loca=
ted depending on system wide or user wide configuration). No success.
Later I also created /etc/uhd folder and copy-pasted the conf file there, s=
till no success.

The word separator I used is "-" as you suggested to Florian.

Any thought ?

Also @Florian, do you see any improvement in OAI stability using DPDK with =
UHD 3.15?

Thank you.
Regards,
Rodolphe
________________________________

Hi Aaron,

thanks for spotting this! Indeed that was a mistake. I also had to
adjust the dpdk-num-mbufs=3D4059 and dpdk-mbuf-cache-size=3D315 like in the
example configuration file for uhd 3.15.0 and then it worked! Yay!

Now lets see if OpenAirInterface runs more stable with this! :)

Florian.

On 1/8/2020 17:31, Aaron Rossetto via USRP-users wrote:

> Hello Florian,
>
> I believe in UHD 3.15, the keys in the uhd.conf file use dashes (-), not =
underscores between words, e.g.:
>
> [dpdk-mac=3D00:11:22:33:44:55]
> dpdk-io-cpu =3D 1
> dpdk-ipv4 =3D 192.168.10.1/24
>
> Hope that helps,
> Aaron
>
>
>
> From: USRP-users <usrp-users-bounces at lists.ettus.com<http://lists.ettu=
s.com/mailman/listinfo/usrp-users_lists.ettus.com>> On Behalf Of Florian Ka=
ltenberger via USRP-users
> Sent: Wednesday, January 8, 2020 10:10 AM
> Subject: [EXTERNAL] Re:    DPDK runtime error
>
> Hi,
> we now installed DPDK 17.11 but I still have exactly the same problem.
> I have a feeling the problem is that I am not addressing the device corre=
ctly. Here is what I did:
> The USRP is connected to ethernet interfaces "p1p2" (mac_addr 64:9d:99:b1=
:1e:8d) and "p1p4" (mac_addr 64:9d:99:b1:1e:8f) which are originally config=
ured with IP addresses 192.168.10.1 and inet_addr 192.168.20.1. This config=
uration works fine without dpdk.
> Then I deactivate these two interfaces using "ifconfig p1p2 down" "ifconf=
ig p1p4 down"and do "dpdk-devbind --bind=3Dvfio-pci 01:00.1" and "dpdk-devb=
ind --bind=3Dvfio-pci 01:00.3". The status of "dpdk-devbind -s" is below.
> In the file /etc/uhd/uhd.conf I specify
> [dpdk_mac=3D64:9d:99:b1:1e:8d]
> dpdk_io_cpu =3D 1
> dpdk_ipv4 =3D 192.168.10.1/24
>
> [dpdk_mac=3D64:9d:99:b1:1e:8f]
> dpdk_io_cpu =3D 2
> dpdk_ipv4 =3D 192.168.20.1/24
> Is this the correct way of specifying it? What surprises me is that DPDK =
requires to address the device by its PCI address while UHD still requires =
to set the IP addresses.
> Florian.
>
> _______________________________________________
> USRP-users mailing list
> USRP-users at lists.ettus.com<http://lists.ettus.com/mailman/listinfo/usr=
p-users_lists.ettus.com>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
--
Follow us on Google+ <https://plus.google.com/+OpenairinterfaceOrg>,
LinkedIn <https://www.linkedin.com/company/openairinterface>, or Twitter
<https://twitter.com/osalliance5g>!
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachmen=
ts/20200109/4fa5e5a7/attachment.html>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: florian_kaltenberger.vcf
Type: text/x-vcard
Size: 274 bytes
Desc: not available
URL: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachmen=
ts/20200109/4fa5e5a7/attachment.vcf>

--_000_F479266F97CCAE47854721C82406934E1D04F1A8EXDAG0B2intrace_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"">=0A=
<!--=0A=
p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}=0A=
-->=0A=
</style><style type=3D"text/css" id=3D"owaParaStyle">=0A=
<!--=0A=
-->=0A=
</style>
</head>
<body dir=3D"ltr" fpstyle=3D"1" ocsi=3D"0">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">
<div style=3D"direction:ltr; font-family:Tahoma; color:#000000; font-size:1=
0pt">
<div>Hello again, <br>
</div>
<div><br>
</div>
<div>There seemed to have wrong rights on file, because after changing righ=
ts and editing the file I had this error:</div>
<div><br>
</div>
<div><br>
</div>
<div>[INFO] [UHD] linux; GNU C&#43;&#43; version 7.4.0; Boost_106501; UHD_3=
.15.0.HEAD-0-gaea0e2de<br>
EAL: Detected 28 lcore(s)<br>
EAL: No free hugepages reported in hugepages-1048576kB<br>
EAL: Probing VFIO support...<br>
EAL: VFIO support initialized<br>
EAL: PCI device 0000:00:1f.6 on NUMA socket 0<br>
EAL:&nbsp;&nbsp; probe driver: 8086:15b9 net_e1000_em<br>
EAL: PCI device 0000:17:00.0 on NUMA socket 0<br>
EAL:&nbsp;&nbsp; probe driver: 8086:10fb net_ixgbe<br>
EAL:&nbsp;&nbsp; using IOMMU type 1 (Type 1)<br>
EAL: Ignore mapping IO port bar(2)<br>
EAL: PCI device 0000:17:00.1 on NUMA socket 0<br>
EAL:&nbsp;&nbsp; probe driver: 8086:10fb net_ixgbe<br>
EAL: Ignore mapping IO port bar(2)<br>
EAL: PCI device 0000:45:00.0 on NUMA socket 0<br>
EAL:&nbsp;&nbsp; probe driver: 8086:1563 net_ixgbe<br>
EAL: PCI device 0000:45:00.1 on NUMA socket 0<br>
EAL:&nbsp;&nbsp; probe driver: 8086:1563 net_ixgbe<br>
</div>
<div>EAL: Error - exiting with code: 1<br>
&nbsp; Cause: Requested inactive lcore 3 for port 0</div>
<div><br>
</div>
<div><br>
</div>
I solved this error by editing again the conf file (it seems that I had to =
remove dpdk-io-core lines)</div>
<div style=3D"direction:ltr; font-family:Tahoma; color:#000000; font-size:1=
0pt"><br>
</div>
<div style=3D"direction:ltr; font-family:Tahoma; color:#000000; font-size:1=
0pt">Now I have again the IPv4 assignement error, with the following config=
uration :</div>
<div style=3D"direction:ltr; font-family:Tahoma; color:#000000; font-size:1=
0pt"><br>
</div>
<div style=3D"direction:ltr; font-family:Tahoma; color:#000000; font-size:1=
0pt">[use-dpdk=3D1]<br>
dpdk-mtu=3D9000<br>
;dpdk-driver=3D/usr/local/lib/dpdk-pmds/<br>
dpdk-driver=3D/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers/<br>
dpdk-corelist=3D2-4<br>
dpdk-num-mbufs=3D4096<br>
dpdk-mbuf-cache-size=3D316<br>
[dpdk-mac=3Df8:f2:1e:29:c5:14]<br>
dpdk-lcore =3D 3<br>
;dpdk-io-cpu =3D 3<br>
dpdk-ipv4 =3D 192.168.30.2/24<br>
[dpdk-mac=3Df8:f2:1e:29:c5:15]<br>
dpdk-lcore =3D 4<br>
;dpdk-io-cpu =3D 4<br>
dpdk-ipv4 =3D 192.168.40.2/24<br>
;dpdk-num-desc=3D4096<br>
</div>
<div style=3D"direction:ltr; font-family:Tahoma; color:#000000; font-size:1=
0pt"><br>
</div>
<div style=3D"direction:ltr; font-family:Tahoma; color:#000000; font-size:1=
0pt">It tells me :</div>
<div style=3D"direction:ltr; font-family:Tahoma; color:#000000; font-size:1=
0pt"><br>
</div>
<div style=3D"direction:ltr; font-family:Tahoma; color:#000000; font-size:1=
0pt">EAL: Please set IPv4 address for port 0 before opening socket<br>
</div>
<div style=3D"direction:ltr; font-family:Tahoma; color:#000000; font-size:1=
0pt"><br>
</div>
<div style=3D"direction:ltr; font-family:Tahoma; color:#000000; font-size:1=
0pt">I don't get what is wrong. Must both SFP ports of the USRP be plugged,=
 to the host?</div>
<div style=3D"direction:ltr; font-family:Tahoma; color:#000000; font-size:1=
0pt">
<div><br>
</div>
<div>Regards,</div>
<div>Rodolphe<br>
</div>
<div><br>
</div>
<div style=3D"font-family:Times New Roman; color:#000000; font-size:16px">
<hr tabindex=3D"-1">
<div id=3D"divRpF480553" style=3D"direction:ltr"><font size=3D"2" face=3D"T=
ahoma" color=3D"#000000"><b>De :</b> USRP-users [usrp-users-bounces@lists.e=
ttus.com] de la part de BERTOLINI Rodolphe via USRP-users [usrp-users@lists=
.ettus.com]<br>
<b>Envoy=E9 :</b> jeudi 6 f=E9vrier 2020 11:47<br>
<b>=C0 :</b> usrp-users@lists.ettus.com<br>
<b>Objet :</b> Re: [USRP-users] DPDK runtime error<br>
</font><br>
</div>
<div></div>
<div>
<div style=3D"direction:ltr; font-family:Tahoma; color:#000000; font-size:1=
0pt">
<div>Hello,</div>
<div>Sorry if I had better to create an other thread.</div>
<div><br>
</div>
<div>I am trying also to reach better stability in OpenAirInterface, and to=
 use USRP through DPDK.</div>
<div>I face the exact same error, however I don't have /etc/uhd folder :</d=
iv>
<div><br>
</div>
<div>$ locate uhd.conf<br>
/etc/security/limits.d/uhd.conf<br>
/etc/security/limits.d/uhd.conf.dpkg-new<br>
</div>
<div><br>
</div>
<div>The content of those files is : <br>
</div>
<div>@usrp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rtprio&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; 99<br>
<br>
</div>
<div>I manually created folder ~/.uhd/, and put a uhd.conf file here (I hav=
e read somewhere that there are different places where uhd conf file can be=
 located depending on system wide or user wide configuration). No success.<=
/div>
<div>Later I also created /etc/uhd folder and copy-pasted the conf file the=
re, still no success.<br>
</div>
<div><br>
</div>
<div>The word separator I used is &quot;-&quot; as you suggested to Florian=
.</div>
<div><br>
</div>
<div>Any thought ?</div>
<div><br>
</div>
<div>Also @Florian, do you see any improvement in OAI stability using DPDK =
with UHD 3.15?<br>
</div>
<div><br>
</div>
<div>Thank you.</div>
<div>Regards,</div>
<div>Rodolphe<br>
</div>
<div style=3D"font-family:Times New Roman; color:#000000; font-size:16px">
<hr tabindex=3D"-1">
<pre>Hi Aaron,=0A=
=0A=
thanks for spotting this! Indeed that was a mistake. I also had to =0A=
adjust the dpdk-num-mbufs=3D4059 and dpdk-mbuf-cache-size=3D315 like in the=
 =0A=
example configuration file for uhd 3.15.0 and then it worked! Yay!=0A=
=0A=
Now lets see if OpenAirInterface runs more stable with this! :)=0A=
=0A=
Florian.=0A=
=0A=
On 1/8/2020 17:31, Aaron Rossetto via USRP-users wrote:=0A=
=0A=
&gt;<i> Hello Florian,=0A=
</i>&gt;<i>=0A=
</i>&gt;<i> I believe in UHD 3.15, the keys in the uhd.conf file use dashes=
 (-), not underscores between words, e.g.:=0A=
</i>&gt;<i>=0A=
</i>&gt;<i> [dpdk-mac=3D00:11:22:33:44:55]=0A=
</i>&gt;<i> dpdk-io-cpu =3D 1=0A=
</i>&gt;<i> dpdk-ipv4 =3D 192.168.10.1/24=0A=
</i>&gt;<i>=0A=
</i>&gt;<i> Hope that helps,=0A=
</i>&gt;<i> Aaron=0A=
</i>&gt;<i>=0A=
</i>&gt;<i>=0A=
</i>&gt;<i>=0A=
</i>&gt;<i> From: USRP-users &lt;<a href=3D"http://lists.ettus.com/mailman/=
listinfo/usrp-users_lists.ettus.com" rel=3D"noopener noreferrer" target=3D"=
_blank">usrp-users-bounces at lists.ettus.com</a>&gt; On Behalf Of Florian =
Kaltenberger via USRP-users=0A=
</i>&gt;<i> Sent: Wednesday, January 8, 2020 10:10 AM=0A=
</i>&gt;<i> Subject: [EXTERNAL] Re:&nbsp;&nbsp;&nbsp; DPDK runtime error=0A=
</i>&gt;<i>=0A=
</i>&gt;<i> Hi,=0A=
</i>&gt;<i> we now installed DPDK 17.11 but I still have exactly the same p=
roblem.=0A=
</i>&gt;<i> I have a feeling the problem is that I am not addressing the de=
vice correctly. Here is what I did:=0A=
</i>&gt;<i> The USRP is connected to ethernet interfaces &quot;p1p2&quot; (=
mac_addr 64:9d:99:b1:1e:8d) and &quot;p1p4&quot; (mac_addr 64:9d:99:b1:1e:8=
f) which are originally configured with IP addresses 192.168.10.1 and inet_=
addr 192.168.20.1. This configuration works fine without dpdk.=0A=
</i>&gt;<i> Then I deactivate these two interfaces using &quot;ifconfig p1p=
2 down&quot; &quot;ifconfig p1p4 down&quot;and do &quot;dpdk-devbind --bind=
=3Dvfio-pci 01:00.1&quot; and &quot;dpdk-devbind --bind=3Dvfio-pci 01:00.3&=
quot;. The status of &quot;dpdk-devbind -s&quot; is below.=0A=
</i>&gt;<i> In the file /etc/uhd/uhd.conf I specify=0A=
</i>&gt;<i> [dpdk_mac=3D64:9d:99:b1:1e:8d]=0A=
</i>&gt;<i> dpdk_io_cpu =3D 1=0A=
</i>&gt;<i> dpdk_ipv4 =3D 192.168.10.1/24=0A=
</i>&gt;<i>=0A=
</i>&gt;<i> [dpdk_mac=3D64:9d:99:b1:1e:8f]=0A=
</i>&gt;<i> dpdk_io_cpu =3D 2=0A=
</i>&gt;<i> dpdk_ipv4 =3D 192.168.20.1/24=0A=
</i>&gt;<i> Is this the correct way of specifying it? What surprises me is =
that DPDK requires to address the device by its PCI address while UHD still=
 requires to set the IP addresses.=0A=
</i>&gt;<i> Florian.=0A=
</i>&gt;<i>=0A=
</i>&gt;<i> _______________________________________________=0A=
</i>&gt;<i> USRP-users mailing list=0A=
</i>&gt;<i> <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_l=
ists.ettus.com" rel=3D"noopener noreferrer" target=3D"_blank">USRP-users at=
 lists.ettus.com</a>=0A=
</i>&gt;<i> <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_l=
ists.ettus.com" rel=3D"noopener noreferrer" target=3D"_blank">http://lists.=
ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>=0A=
</i>-- =0A=
Follow us on Google&#43; &lt;<a href=3D"https://plus.google.com/&#43;Openai=
rinterfaceOrg" rel=3D"noopener noreferrer" target=3D"_blank">https://plus.g=
oogle.com/&#43;OpenairinterfaceOrg</a>&gt;, =0A=
LinkedIn &lt;<a href=3D"https://www.linkedin.com/company/openairinterface" =
rel=3D"noopener noreferrer" target=3D"_blank">https://www.linkedin.com/comp=
any/openairinterface</a>&gt;, or Twitter =0A=
&lt;<a href=3D"https://twitter.com/osalliance5g" rel=3D"noopener noreferrer=
" target=3D"_blank">https://twitter.com/osalliance5g</a>&gt;!=0A=
-------------- next part --------------=0A=
An HTML attachment was scrubbed...=0A=
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20200109/4fa5e5a7/attachment.html" rel=3D"noopener norefer=
rer" target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.et=
tus.com/attachments/20200109/4fa5e5a7/attachment.html</a>&gt;=0A=
-------------- next part --------------=0A=
A non-text attachment was scrubbed...=0A=
Name: florian_kaltenberger.vcf=0A=
Type: text/x-vcard=0A=
Size: 274 bytes=0A=
Desc: not available=0A=
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20200109/4fa5e5a7/attachment.vcf" rel=3D"noopener noreferr=
er" target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ett=
us.com/attachments/20200109/4fa5e5a7/attachment.vcf</a>&gt;</pre>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_F479266F97CCAE47854721C82406934E1D04F1A8EXDAG0B2intrace_--


--===============6138688303536818542==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6138688303536818542==--

