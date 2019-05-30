Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F08A53022D
	for <lists+usrp-users@lfdr.de>; Thu, 30 May 2019 20:47:35 +0200 (CEST)
Received: from [::1] (port=44198 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hWQ5N-0004OW-3Q; Thu, 30 May 2019 14:47:33 -0400
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:60729)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1hWQ5I-0004F1-Lf
 for usrp-users@lists.ettus.com; Thu, 30 May 2019 14:47:28 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id B35B64CF;
 Thu, 30 May 2019 14:46:47 -0400 (EDT)
Received: from imap8 ([10.202.2.58])
 by compute3.internal (MEProxy); Thu, 30 May 2019 14:46:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; bh=GNgjf9TxJT4eojfL7mXi41mJl2rlJ
 +QYkvAHx2QD6Tk=; b=PChQ64jQleqLZNe7NW4w3AQlNljKzEDg5sXk4/8Dc7DVx
 5pHGgoy+NPY7avwQtIKGoo6Pg8rFaocmQ/UGpn2OvlgL0tQMq+oYUeYKo/eAwvVn
 NlbZ5z3Xr/TD3Ru2co1tVbmWnRQw2s49hM4y82bDT3bXZgUmNFUM7n79X0nodRFx
 ZnoI0qRU8zevcskcSNBeOKFEgymeb8QpshVgWS0C4FUBhGESFQ69C3Zoc/arSnPi
 tH3JX2KhO0I1n0U5FtLXDQBPgjRp94+vmuQq7111xlyBHR/6lu0rsJpXD1fFoGN7
 VRUOvYuEUUuQ3zVnVaHdFY7vl0gi0w/PddQT5dp7g==
X-ME-Sender: <xms:FiXwXKp4XMZxNuiVOxQ9MpdJLubwUZbS17an7eXFNjZ9uq_rXcYH_Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddruddvledgudefudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefofgggkfffhffvufgtsehmtderreerreejnecuhfhrohhmpedfofhitghh
 rggvlhcuffhitghkvghnshdfuceomhhitghhrggvlhdrughitghkvghnshesvghtthhush
 drtghomheqnecuffhomhgrihhnpegvthhtuhhsrdgtohhmpdhouhhtlhhoohhkrdgtohhm
 necurfgrrhgrmhepmhgrihhlfhhrohhmpehmihgthhgrvghlrdguihgtkhgvnhhssegvth
 htuhhsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:FyXwXNwyJLxhbfLoWMl_spjHEweo8gRvfxR4Sqoz70MX8C7Vt2llQQ>
 <xmx:FyXwXGdZnJtZAmj4H88DXzOW1EA41_WXtupx0ILIKcj12wXm1Jl3Ug>
 <xmx:FyXwXBd8hnSPZ_Ch0q4jVBxw7aPOeBc4VhvCY5JDBLI8cyT-LQiBmQ>
 <xmx:FyXwXJUDNLAtVV7xEi1PFdxnHeJT_P44sIoiuW-q9BrYCWtGbMWqZg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id DF048520093; Thu, 30 May 2019 14:46:46 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-555-g49357e1-fmstable-20190528v2
Mime-Version: 1.0
x-forwarded-message-id: <CY4PR02MB2647081FDAE951008DC5DB9EAA180@CY4PR02MB2647.namprd02.prod.outlook.com>
Message-Id: <79af66b8-8e50-4fbd-ab46-2678bf13081f@www.fastmail.com>
Date: Thu, 30 May 2019 14:46:41 -0400
To: "Fengyang Jiang" <fzj28@psu.edu>
Content-Type: multipart/mixed;
 boundary=2b1a2eb54e0a4e5c901737cab5de34e4
Subject: Re: [USRP-users] 
 =?utf-8?b?5Zue5aSNOiAgQSBwcm9ibGVtIG9uIHRyYW5zbWl0?=
 =?utf-8?q?ting_data_using_5GHz?=
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: USRP Users <usrp-users@lists.ettus.com>
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

--2b1a2eb54e0a4e5c901737cab5de34e4
Content-Type: multipart/alternative;
 boundary=335f646040624f7083d877ef30f6c946

--335f646040624f7083d877ef30f6c946
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Fengyang - Please "reply all" to stay on the list: more eyes reading =
increases the chances of someone helping! I'm forwarding your email alon=
g with its attachments just for this reason. Thanks for providing those =
scripts & your commandlines: those will really help us in knowing what y=
ou're trying to do! - MLD

----- Original message -----
From: "Jiang, Fengyang" <fzj28@psu.edu>
To: Michael Dickens <michael.dickens@ettus.com>
Subject: =E5=9B=9E=E5=A4=8D: [USRP-users] A problem on transmitting data=
 using 5GHz
Date: Thursday, May 30, 2019 2:24 PM

Hi Michael,

Thanks for your response! I'll attach the codes for transmitter and rece=
iver, and here are the commands:

python3 benchmark_tx_copied_from_ins.py -f x.xxG --args=3D"addr=3D192.16=
8.10.3" --tx-gain=3D20 (for transmitter)
python3 benchmark_rx_copied_from_ins.py -f x.xxG --args=3D"addr=3D192.16=
8.10.2" (for receiver)
(x.xxG is the frequency)

Thank you for your help!

Best regards,
Fengyang


*=E5=8F=91=E4=BB=B6=E4=BA=BA:* Michael Dickens <michael.dickens@ettus.co=
m>
*=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4:* 2019=E5=B9=B45=E6=9C=8830=E6=97=A5=
 14:01
*=E6=94=B6=E4=BB=B6=E4=BA=BA:* Jiang, Fengyang; USRP Users
*=E4=B8=BB=E9=A2=98:* Re: [USRP-users] A problem on transmitting data us=
ing 5GHz

Hi Fengyang - Since we don't know what exactly you're transmitting (mean=
ing: the Tx flowgraph or code), there could be all sorts of issues or se=
ttings affecting the system to make it work at some frequencies and not =
at others. If you could share the actual Tx & Rx flowgraph or code that =
would be best for getting assistance. - MLD

On Thu, May 30, 2019, at 1:51 PM, Jiang, Fengyang via USRP-users wrote:
> Hi All,
>=20
> I'm using two usrps to transmit a preamble from one to the other. When=
 I use 2.437GHz, 2.45GHz and 2.5GHz, it works, but if I use 5GHz, 5.3GHz=
, 5.8GHz, I will get nothing at the receiver side. What could be the pro=
blem?
>=20
> Devices being used:
> USRP N210. https://www.ettus.com/all-products/UN210-KIT/ <https://nam0=
1.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fwww.ettus.com%2F=
all-products%2FUN210-KIT%2F&data=3D02%7C01%7Cfzj28%40psu.edu%7Cf15c94fe2=
b234c1b7b2e08d6e528dda4%7C7cf48d453ddb4389a9c1c115526eb52e%7C0%7C0%7C636=
948361008778666&sdata=3DL35wGg1m1PQVjZb72WO7k8Sr%2B%2Fy1B%2B8foueEXvQ6p5=
c%3D&reserved=3D0>
> CBX USRP Daughterboard (1.2GHz - 6GHz) https://www.ettus.com/all-produ=
cts/CBX/ <https://nam01.safelinks.protection.outlook.com/?url=3Dhttps%3A=
%2F%2Fwww.ettus.com%2Fall-products%2FCBX%2F&data=3D02%7C01%7Cfzj28%40psu=
.edu%7Cf15c94fe2b234c1b7b2e08d6e528dda4%7C7cf48d453ddb4389a9c1c115526eb5=
2e%7C0%7C0%7C636948361008788670&sdata=3D8jAfCmLS%2BJqFHjdtfED90FoHAb%2B8=
mGuRTiZVyb%2B7OrE%3D&reserved=3D0>
> VERT2450 Antenna (2.4 - 2.5GHz & 4.9 - 5.9GHz)  https://www.ettus.com/=
all-products/VERT2450/ <https://nam01.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fwww.ettus.com%2Fall-products%2FVERT2450%2F&data=3D02=
%7C01%7Cfzj28%40psu.edu%7Cf15c94fe2b234c1b7b2e08d6e528dda4%7C7cf48d453dd=
b4389a9c1c115526eb52e%7C0%7C0%7C636948361008788670&sdata=3D%2Fi5HbPcb7FM=
2NUzny4%2FBgYFQlI45J7RmpiTYg%2FsA0PQ%3D&reserved=3D0>
>=20
> Really thanks for your help!
>=20
> Best regards,
> Fengyang


--335f646040624f7083d877ef30f6c946
Content-Type: text/html;charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">

p.MsoNormal,p.MsoNoSpacing{margin:0}
p.MsoNormal,p.MsoNoSpacing{margin:0}</style></head><body><div style=3D"f=
ont-family:Arial;">Hi&nbsp;Fengyang - Please "reply all" to stay on the =
list: more eyes reading increases the chances of someone helping! I'm fo=
rwarding your email along with its attachments just for this reason. Tha=
nks for providing those scripts &amp; your commandlines: those will real=
ly help us in knowing what you're trying to do! - MLD<br></div><div styl=
e=3D"font-family:Arial;"><br></div><div>----- Original message -----<br>=
</div><div>From: "Jiang, Fengyang" &lt;fzj28@psu.edu&gt;<br></div><div>T=
o: Michael Dickens &lt;michael.dickens@ettus.com&gt;<br></div><div>Subje=
ct: =E5=9B=9E=E5=A4=8D: [USRP-users] A problem on transmitting data usin=
g 5GHz<br></div><div>Date: Thursday, May 30, 2019 2:24 PM<br></div><div>=
<br></div><div id=3D"qt" type=3D"cite"><div style=3D"font-family:Calibri=
, Arial, Helvetica, sans-serif;font-size:12pt;color:rgb(0, 0, 0);">Hi Mi=
chael,<br></div><div style=3D"font-family:Calibri, Arial, Helvetica, san=
s-serif;font-size:12pt;color:rgb(0, 0, 0);"><br></div><div style=3D"font=
-family:Calibri, Arial, Helvetica, sans-serif;font-size:12pt;color:rgb(0=
, 0, 0);">Thanks for your response! I'll attach the codes for transmitte=
r and receiver, and here are the commands:<br></div><div style=3D"font-f=
amily:Calibri, Arial, Helvetica, sans-serif;font-size:12pt;color:rgb(0, =
0, 0);"><br></div><div style=3D"font-family:Calibri, Arial, Helvetica, s=
ans-serif;font-size:12pt;color:rgb(0, 0, 0);">python3 benchmark_tx_copie=
d_from_ins.py -f x.xxG --args=3D"addr=3D192.168.10.3" --tx-gain=3D20 &nb=
sp; &nbsp; &nbsp;(for transmitter)<br></div><div style=3D"font-family:Ca=
libri, Arial, Helvetica, sans-serif;font-size:12pt;color:rgb(0, 0, 0);">=
<span style=3D"background-color:rgb(255, 255, 255)" class=3D"highlight">=
<span style=3D"font-family:Calibri, Arial, Helvetica, sans-serif" class=3D=
"font">python3 benchmark_rx_copied_from_ins.py -f x.xxG --args=3D"addr=3D=
192.168.10.2" &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp;(for receiver)</span></span><br></div><d=
iv style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:=
12pt;color:rgb(0, 0, 0);">(x.xxG is the frequency)<br></div><div style=3D=
"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:12pt;color:=
rgb(0, 0, 0);"><br></div><div style=3D"font-family:Calibri, Arial, Helve=
tica, sans-serif;font-size:12pt;color:rgb(0, 0, 0);">Thank you for your =
help!<br></div><div style=3D"font-family:Calibri, Arial, Helvetica, sans=
-serif;font-size:12pt;color:rgb(0, 0, 0);"><br></div><div style=3D"font-=
family:Calibri, Arial, Helvetica, sans-serif;font-size:12pt;color:rgb(0,=
 0, 0);">Best regards,<br></div><div style=3D"font-family:Calibri, Arial=
, Helvetica, sans-serif;font-size:12pt;color:rgb(0, 0, 0);">Fengyang<br>=
</div><div id=3D"qt-appendonsend"><br></div><div style=3D"font-family:Ar=
ial;"><hr style=3D"display:inline-block;width:98%;"><br></div><div id=3D=
"qt-divRplyFwdMsg" dir=3D"ltr"><div style=3D"font-family:Arial;"><span s=
tyle=3D"font-family:Calibri, sans-serif" class=3D"font"><span style=3D"c=
olor:rgb(0, 0, 0)" class=3D"colour"><b>=E5=8F=91=E4=BB=B6=E4=BA=BA:</b> =
Michael Dickens &lt;michael.dickens@ettus.com&gt;<br> <b>=E5=8F=91=E9=80=
=81=E6=97=B6=E9=97=B4:</b> 2019=E5=B9=B45=E6=9C=8830=E6=97=A5 14:01<br> =
<b>=E6=94=B6=E4=BB=B6=E4=BA=BA:</b> Jiang, Fengyang; USRP Users<br> <b>=E4=
=B8=BB=E9=A2=98:</b> Re: [USRP-users] A problem on transmitting data usi=
ng 5GHz</span></span></div><div>&nbsp;<br></div></div><div><div style=3D=
"font-family:Arial;">Hi&nbsp;Fengyang - Since we don't know what exactly=
 you're transmitting (meaning: the Tx flowgraph or code), there could be=
 all sorts of issues or settings affecting the system to make it work at=
 some frequencies and not at others.
 If you could share the actual Tx &amp; Rx flowgraph or code that would =
be best for getting assistance. - MLD<br></div><div style=3D"font-family=
:Arial;"><br></div><div>On Thu, May 30, 2019, at 1:51 PM, Jiang, Fengyan=
g via USRP-users wrote:<br></div><blockquote id=3D"qt-x_qt" type=3D"cite=
"><div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-s=
ize:12pt;color:rgb(0, 0, 0);">Hi All,<br></div><div style=3D"font-family=
:Calibri, Arial, Helvetica, sans-serif;font-size:12pt;color:rgb(0, 0, 0)=
;"><br></div><div style=3D"font-family:Calibri, Arial, Helvetica, sans-s=
erif;font-size:12pt;color:rgb(0, 0, 0);">I'm using two usrps to transmit=
 a preamble from one to the other. When I use 2.437GHz, 2.45GHz and 2.5G=
Hz, it works, but if I use 5GHz, 5.3GHz, 5.8GHz, I will get nothing at t=
he receiver side. What could be the problem?<br></div><div style=3D"font=
-family:Calibri, Arial, Helvetica, sans-serif;font-size:12pt;color:rgb(0=
, 0, 0);"><br></div><div style=3D"font-family:Calibri, Arial, Helvetica,=
 sans-serif;font-size:12pt;color:rgb(0, 0, 0);">Devices being used:<br><=
/div><div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;fon=
t-size:12pt;color:rgb(0, 0, 0);">USRP N210.&nbsp;<a href=3D"https://nam0=
1.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fwww.ettus.com%2F=
all-products%2FUN210-KIT%2F&amp;data=3D02%7C01%7Cfzj28%40psu.edu%7Cf15c9=
4fe2b234c1b7b2e08d6e528dda4%7C7cf48d453ddb4389a9c1c115526eb52e%7C0%7C0%7=
C636948361008778666&amp;sdata=3DL35wGg1m1PQVjZb72WO7k8Sr%2B%2Fy1B%2B8fou=
eEXvQ6p5c%3D&amp;reserved=3D0" id=3D"qt-x_qt-LPNoLP858021">https://www.e=
ttus.com/all-products/UN210-KIT/</a><br></div><div style=3D"font-family:=
Calibri, Arial, Helvetica, sans-serif;font-size:12pt;color:rgb(0, 0, 0);=
">CBX USRP Daughterboard (1.2GHz - 6GHz)&nbsp;<a href=3D"https://nam01.s=
afelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fwww.ettus.com%2Fall=
-products%2FCBX%2F&amp;data=3D02%7C01%7Cfzj28%40psu.edu%7Cf15c94fe2b234c=
1b7b2e08d6e528dda4%7C7cf48d453ddb4389a9c1c115526eb52e%7C0%7C0%7C63694836=
1008788670&amp;sdata=3D8jAfCmLS%2BJqFHjdtfED90FoHAb%2B8mGuRTiZVyb%2B7OrE=
%3D&amp;reserved=3D0" id=3D"qt-x_qt-LPNoLP477081">https://www.ettus.com/=
all-products/CBX/</a><br></div><div style=3D"font-family:Calibri, Arial,=
 Helvetica, sans-serif;font-size:12pt;color:rgb(0, 0, 0);">VERT2450 Ante=
nna (2.4 - 2.5GHz &amp; 4.9 - 5.9GHz) <a href=3D"https://nam01.safelinks=
.protection.outlook.com/?url=3Dhttps%3A%2F%2Fwww.ettus.com%2Fall-product=
s%2FVERT2450%2F&amp;data=3D02%7C01%7Cfzj28%40psu.edu%7Cf15c94fe2b234c1b7=
b2e08d6e528dda4%7C7cf48d453ddb4389a9c1c115526eb52e%7C0%7C0%7C63694836100=
8788670&amp;sdata=3D%2Fi5HbPcb7FM2NUzny4%2FBgYFQlI45J7RmpiTYg%2FsA0PQ%3D=
&amp;reserved=3D0" id=3D"qt-x_qt-LPNoLP644247"> https://www.ettus.com/al=
l-products/VERT2450/</a><br></div><div style=3D"font-family:Calibri, Ari=
al, Helvetica, sans-serif;font-size:12pt;color:rgb(0, 0, 0);"><br></div>=
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-siz=
e:12pt;color:rgb(0, 0, 0);">Really thanks for your help!<br></div><div s=
tyle=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:12pt=
;color:rgb(0, 0, 0);"><br></div><div style=3D"font-family:Calibri, Arial=
, Helvetica, sans-serif;font-size:12pt;color:rgb(0, 0, 0);">Best regards=
,<br></div><div style=3D"font-family:Calibri, Arial, Helvetica, sans-ser=
if;font-size:12pt;color:rgb(0, 0, 0);">Fengyang<br></div></blockquote><d=
iv style=3D"font-family:Arial;"><br></div></div></div><div style=3D"font=
-family:Arial;"><br></div></body></html>
--335f646040624f7083d877ef30f6c946--

--2b1a2eb54e0a4e5c901737cab5de34e4
Content-Disposition: attachment;filename="benchmark_rx_copied_from_ins.py"
Content-Type: text/plain; name="benchmark_rx_copied_from_ins.py"
Content-Transfer-Encoding: BASE64

IyEvdXNyL2Jpbi9weXRob24yCiMKIyBDb3B5cmlnaHQgMjAwNiwyMDA3LDIwMTEsMjAxMyBGcmVl
IFNvZnR3YXJlIEZvdW5kYXRpb24sIEluYy4KIyAKIyBUaGlzIGZpbGUgaXMgcGFydCBvZiBHTlUg
UmFkaW8KIyAKIyBHTlUgUmFkaW8gaXMgZnJlZSBzb2Z0d2FyZTsgeW91IGNhbiByZWRpc3RyaWJ1
dGUgaXQgYW5kL29yIG1vZGlmeQojIGl0IHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgR05VIEdlbmVy
YWwgUHVibGljIExpY2Vuc2UgYXMgcHVibGlzaGVkIGJ5CiMgdGhlIEZyZWUgU29mdHdhcmUgRm91
bmRhdGlvbjsgZWl0aGVyIHZlcnNpb24gMywgb3IgKGF0IHlvdXIgb3B0aW9uKQojIGFueSBsYXRl
ciB2ZXJzaW9uLgojIAojIEdOVSBSYWRpbyBpcyBkaXN0cmlidXRlZCBpbiB0aGUgaG9wZSB0aGF0
IGl0IHdpbGwgYmUgdXNlZnVsLAojIGJ1dCBXSVRIT1VUIEFOWSBXQVJSQU5UWTsgd2l0aG91dCBl
dmVuIHRoZSBpbXBsaWVkIHdhcnJhbnR5IG9mCiMgTUVSQ0hBTlRBQklMSVRZIG9yIEZJVE5FU1Mg
Rk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgU2VlIHRoZQojIEdOVSBHZW5lcmFsIFB1YmxpYyBM
aWNlbnNlIGZvciBtb3JlIGRldGFpbHMuCiMgCiMgWW91IHNob3VsZCBoYXZlIHJlY2VpdmVkIGEg
Y29weSBvZiB0aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UKIyBhbG9uZyB3aXRoIEdOVSBS
YWRpbzsgc2VlIHRoZSBmaWxlIENPUFlJTkcuICBJZiBub3QsIHdyaXRlIHRvCiMgdGhlIEZyZWUg
U29mdHdhcmUgRm91bmRhdGlvbiwgSW5jLiwgNTEgRnJhbmtsaW4gU3RyZWV0LAojIEJvc3Rvbiwg
TUEgMDIxMTAtMTMwMSwgVVNBLgojIAoKZnJvbSBnbnVyYWRpbyBpbXBvcnQgZ3IKZnJvbSBnbnVy
YWRpbyBpbXBvcnQgZW5nX25vdGF0aW9uCmZyb20gZ251cmFkaW8uZW5nX29wdGlvbiBpbXBvcnQg
ZW5nX29wdGlvbgpmcm9tIG9wdHBhcnNlIGltcG9ydCBPcHRpb25QYXJzZXIKCmZyb20gZ251cmFk
aW8gaW1wb3J0IGJsb2Nrcwpmcm9tIGdudXJhZGlvIGltcG9ydCBkaWdpdGFsCgojIGZyb20gY3Vy
cmVudCBkaXIKZnJvbSByZWNlaXZlX3BhdGggaW1wb3J0IHJlY2VpdmVfcGF0aApmcm9tIHVoZF9p
bnRlcmZhY2UgaW1wb3J0IHVoZF9yZWNlaXZlcgoKaW1wb3J0IHN0cnVjdCwgc3lzCgpjbGFzcyBt
eV90b3BfYmxvY2soZ3IudG9wX2Jsb2NrKToKICAgIGRlZiBfX2luaXRfXyhzZWxmLCBjYWxsYmFj
aywgb3B0aW9ucyk6CiAgICAgICAgZ3IudG9wX2Jsb2NrLl9faW5pdF9fKHNlbGYpCgogICAgICAg
IGlmKG9wdGlvbnMucnhfZnJlcSBpcyBub3QgTm9uZSk6CiAgICAgICAgICAgIHNlbGYuc291cmNl
ID0gdWhkX3JlY2VpdmVyKG9wdGlvbnMuYXJncywKICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgb3B0aW9ucy5iYW5kd2lkdGgsIG9wdGlvbnMucnhfZnJlcSwgCiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG9wdGlvbnMubG9fb2Zmc2V0LCBvcHRpb25z
LnJ4X2dhaW4sCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG9wdGlvbnMu
c3BlYywgb3B0aW9ucy5hbnRlbm5hLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBvcHRpb25zLmNsb2NrX3NvdXJjZSwgb3B0aW9ucy52ZXJib3NlKQogICAgICAgIGVsaWYo
b3B0aW9ucy5mcm9tX2ZpbGUgaXMgbm90IE5vbmUpOgogICAgICAgICAgICBzZWxmLnNvdXJjZSA9
IGJsb2Nrcy5maWxlX3NvdXJjZShnci5zaXplb2ZfZ3JfY29tcGxleCwgb3B0aW9ucy5mcm9tX2Zp
bGUpCiAgICAgICAgZWxzZToKICAgICAgICAgICAgc2VsZi5zb3VyY2UgPSBibG9ja3MubnVsbF9z
b3VyY2UoZ3Iuc2l6ZW9mX2dyX2NvbXBsZXgpCgogICAgICAgICMgU2V0IHVwIHJlY2VpdmUgcGF0
aAogICAgICAgICMgZG8gdGhpcyBhZnRlciBmb3IgYW55IGFkanVzdG1lbnRzIHRvIHRoZSBvcHRp
b25zIHRoYXQgbWF5CiAgICAgICAgIyBvY2N1ciBpbiB0aGUgc2lua3MgKHNwZWNpZmljYWxseSB0
aGUgVUhEIHNpbmspCiAgICAgICAgI3NlbGYucnhwYXRoID0gcmVjZWl2ZV9wYXRoKGNhbGxiYWNr
LCBvcHRpb25zKSAuIC4gbWtnIGNvbW1lbnRlZAoKICAgICAgICAjc2VsZi5jb25uZWN0KHNlbGYu
c291cmNlLCBzZWxmLnJ4cGF0aCkgI21rZyBjb21tZW50ZWQgc2luY2Ugb2ZkbV9zYW1wbGVyIHdh
cyBub3QgcmVjb2duaXplZAogICAgICAgIHNlbGYuY29ubmVjdChzZWxmLnNvdXJjZSwgYmxvY2tz
LmZpbGVfc2luayhnci5zaXplb2ZfZ3JfY29tcGxleCwgInJlY2VpdmVkX2RhdGEuZGF0IikpCiAg
ICAgICAgCgojIC8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vCiMgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIG1haW4KIyAvLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLwoKZGVmIG1haW4oKToKCiAgICBn
bG9iYWwgbl9yY3ZkLCBuX3JpZ2h0CiAgICAgICAgCiAgICBuX3JjdmQgPSAwCiAgICBuX3JpZ2h0
ID0gMAoKICAgIGRlZiByeF9jYWxsYmFjayhvaywgcGF5bG9hZCk6CiAgICAgICAgZ2xvYmFsIG5f
cmN2ZCwgbl9yaWdodAogICAgICAgIG5fcmN2ZCArPSAxCiAgICAgICAgKHBrdG5vLCkgPSBzdHJ1
Y3QudW5wYWNrKCchSCcsIHBheWxvYWRbMDoyXSkKICAgICAgICBpZiBvazoKICAgICAgICAgICAg
bl9yaWdodCArPSAxCiAgICAgICAgI3ByaW50ICJvazogJXIgXHQgcGt0bm86ICVkIFx0IG5fcmN2
ZDogJWQgXHQgbl9yaWdodDogJWQiICUgKG9rLCBwa3Rubywgbl9yY3ZkLCBuX3JpZ2h0KSAgIC4u
IG1rZyBjb21tZW50ZWQgZHVlIHRvIHB5MyBtaXNtYXRjaCBzeW50YXgKCiAgICAgICAgaWYgMDoK
ICAgICAgICAgICAgcHJpbnRsc3QgPSBsaXN0KCkKICAgICAgICAgICAgZm9yIHggaW4gcGF5bG9h
ZFsyOl06CiAgICAgICAgICAgICAgICB0ID0gaGV4KG9yZCh4KSkucmVwbGFjZSgnMHgnLCAnJykK
ICAgICAgICAgICAgICAgIGlmKGxlbih0KSA9PSAxKToKICAgICAgICAgICAgICAgICAgICB0ID0g
JzAnICsgdAogICAgICAgICAgICAgICAgcHJpbnRsc3QuYXBwZW5kKHQpCiAgICAgICAgICAgIHBy
aW50YWJsZSA9ICcnLmpvaW4ocHJpbnRsc3QpCgogICAgICAgICAgICBwcmludChwcmludGFibGUp
CiAgICAgICAgICAgIHByaW50KCJcbiIpCgogICAgcGFyc2VyID0gT3B0aW9uUGFyc2VyKG9wdGlv
bl9jbGFzcz1lbmdfb3B0aW9uLCBjb25mbGljdF9oYW5kbGVyPSJyZXNvbHZlIikKICAgIGV4cGVy
dF9ncnAgPSBwYXJzZXIuYWRkX29wdGlvbl9ncm91cCgiRXhwZXJ0IikKICAgIHBhcnNlci5hZGRf
b3B0aW9uKCIiLCItLWRpc2NvbnRpbnVvdXMiLCBhY3Rpb249InN0b3JlX3RydWUiLCBkZWZhdWx0
PUZhbHNlLAogICAgICAgICAgICAgICAgICAgICAgaGVscD0iZW5hYmxlIGRpc2NvbnRpbnVvdXMi
KQogICAgcGFyc2VyLmFkZF9vcHRpb24oIiIsIi0tZnJvbS1maWxlIiwgZGVmYXVsdD1Ob25lLAog
ICAgICAgICAgICAgICAgICAgICAgaGVscD0iaW5wdXQgZmlsZSBvZiBzYW1wbGVzIHRvIGRlbW9k
IikKCiAgICByZWNlaXZlX3BhdGguYWRkX29wdGlvbnMocGFyc2VyLCBleHBlcnRfZ3JwKQogICAg
dWhkX3JlY2VpdmVyLmFkZF9vcHRpb25zKHBhcnNlcikKICAgIGRpZ2l0YWwub2ZkbV9kZW1vZC5h
ZGRfb3B0aW9ucyhwYXJzZXIsIGV4cGVydF9ncnApCgogICAgKG9wdGlvbnMsIGFyZ3MpID0gcGFy
c2VyLnBhcnNlX2FyZ3MgKCkKCiAgICBpZiBvcHRpb25zLmZyb21fZmlsZSBpcyBOb25lOgogICAg
ICAgIGlmIG9wdGlvbnMucnhfZnJlcSBpcyBOb25lOgogICAgICAgICAgICBzeXMuc3RkZXJyLndy
aXRlKCJZb3UgbXVzdCBzcGVjaWZ5IC1mIEZSRVEgb3IgLS1mcmVxIEZSRVFcbiIpCiAgICAgICAg
ICAgIHBhcnNlci5wcmludF9oZWxwKHN5cy5zdGRlcnIpCiAgICAgICAgICAgIHN5cy5leGl0KDEp
CgogICAgIyBidWlsZCB0aGUgZ3JhcGgKICAgIHRiID0gbXlfdG9wX2Jsb2NrKHJ4X2NhbGxiYWNr
LCBvcHRpb25zKQoKICAgIHIgPSBnci5lbmFibGVfcmVhbHRpbWVfc2NoZWR1bGluZygpCiAgICBp
ZiByICE9IGdyLlJUX09LOgogICAgICAgIHByaW50KCJXYXJuaW5nOiBmYWlsZWQgdG8gZW5hYmxl
IHJlYWx0aW1lIHNjaGVkdWxpbmciKQoKICAgIHRiLnN0YXJ0KCkgICAgICAgICAgICAgICAgICAg
ICAgIyBzdGFydCBmbG93IGdyYXBoCiAgICB0Yi53YWl0KCkgICAgICAgICAgICAgICAgICAgICAg
ICMgd2FpdCBmb3IgaXQgdG8gZmluaXNoCgppZiBfX25hbWVfXyA9PSAnX19tYWluX18nOgogICAg
dHJ5OgogICAgICAgIG1haW4oKQogICAgZXhjZXB0IEtleWJvYXJkSW50ZXJydXB0OgogICAgICAg
IHBhc3MK

--2b1a2eb54e0a4e5c901737cab5de34e4
Content-Disposition: attachment;filename="benchmark_tx_copied_from_ins.py"
Content-Type: text/plain; name="benchmark_tx_copied_from_ins.py"
Content-Transfer-Encoding: BASE64

IyEvdXNyL2Jpbi9weXRob24yCiMKIyBDb3B5cmlnaHQgMjAwNSwyMDA2LDIwMTEsMjAxMyBGcmVl
IFNvZnR3YXJlIEZvdW5kYXRpb24sIEluYy4KIyAKIyBUaGlzIGZpbGUgaXMgcGFydCBvZiBHTlUg
UmFkaW8KIyAKIyBHTlUgUmFkaW8gaXMgZnJlZSBzb2Z0d2FyZTsgeW91IGNhbiByZWRpc3RyaWJ1
dGUgaXQgYW5kL29yIG1vZGlmeQojIGl0IHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgR05VIEdlbmVy
YWwgUHVibGljIExpY2Vuc2UgYXMgcHVibGlzaGVkIGJ5CiMgdGhlIEZyZWUgU29mdHdhcmUgRm91
bmRhdGlvbjsgZWl0aGVyIHZlcnNpb24gMywgb3IgKGF0IHlvdXIgb3B0aW9uKQojIGFueSBsYXRl
ciB2ZXJzaW9uLgojIAojIEdOVSBSYWRpbyBpcyBkaXN0cmlidXRlZCBpbiB0aGUgaG9wZSB0aGF0
IGl0IHdpbGwgYmUgdXNlZnVsLAojIGJ1dCBXSVRIT1VUIEFOWSBXQVJSQU5UWTsgd2l0aG91dCBl
dmVuIHRoZSBpbXBsaWVkIHdhcnJhbnR5IG9mCiMgTUVSQ0hBTlRBQklMSVRZIG9yIEZJVE5FU1Mg
Rk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgU2VlIHRoZQojIEdOVSBHZW5lcmFsIFB1YmxpYyBM
aWNlbnNlIGZvciBtb3JlIGRldGFpbHMuCiMgCiMgWW91IHNob3VsZCBoYXZlIHJlY2VpdmVkIGEg
Y29weSBvZiB0aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UKIyBhbG9uZyB3aXRoIEdOVSBS
YWRpbzsgc2VlIHRoZSBmaWxlIENPUFlJTkcuICBJZiBub3QsIHdyaXRlIHRvCiMgdGhlIEZyZWUg
U29mdHdhcmUgRm91bmRhdGlvbiwgSW5jLiwgNTEgRnJhbmtsaW4gU3RyZWV0LAojIEJvc3Rvbiwg
TUEgMDIxMTAtMTMwMSwgVVNBLgojIAoKZnJvbSBnbnVyYWRpbyBpbXBvcnQgZ3IKZnJvbSBnbnVy
YWRpbyBpbXBvcnQgZW5nX25vdGF0aW9uCmZyb20gZ251cmFkaW8uZW5nX29wdGlvbiBpbXBvcnQg
ZW5nX29wdGlvbgpmcm9tIG9wdHBhcnNlIGltcG9ydCBPcHRpb25QYXJzZXIKaW1wb3J0IHRpbWUs
IHN0cnVjdCwgc3lzCgpmcm9tIGdudXJhZGlvIGltcG9ydCBkaWdpdGFsCmZyb20gZ251cmFkaW8g
aW1wb3J0IGJsb2NrcwoKIyBmcm9tIGN1cnJlbnQgZGlyCmZyb20gdHJhbnNtaXRfcGF0aCBpbXBv
cnQgdHJhbnNtaXRfcGF0aApmcm9tIHVoZF9pbnRlcmZhY2UgaW1wb3J0IHVoZF90cmFuc21pdHRl
cgoKY2xhc3MgbXlfdG9wX2Jsb2NrKGdyLnRvcF9ibG9jayk6CiAgICBkZWYgX19pbml0X18oc2Vs
Ziwgb3B0aW9ucyk6CiAgICAgICAgZ3IudG9wX2Jsb2NrLl9faW5pdF9fKHNlbGYpCgogICAgICAg
IGlmKG9wdGlvbnMudHhfZnJlcSBpcyBub3QgTm9uZSk6CiAgICAgICAgICAgIHNlbGYuc2luayA9
IHVoZF90cmFuc21pdHRlcihvcHRpb25zLmFyZ3MsCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBvcHRpb25zLmJhbmR3aWR0aCwgb3B0aW9ucy50eF9mcmVxLCAKICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG9wdGlvbnMubG9fb2Zmc2V0LCBvcHRp
b25zLnR4X2dhaW4sCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcHRp
b25zLnNwZWMsIG9wdGlvbnMuYW50ZW5uYSwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIG9wdGlvbnMuY2xvY2tfc291cmNlLCBvcHRpb25zLnZlcmJvc2UpCiAgICAgICAg
ZWxpZihvcHRpb25zLnRvX2ZpbGUgaXMgbm90IE5vbmUpOgogICAgICAgICAgICBzZWxmLnNpbmsg
PSBibG9ja3MuZmlsZV9zaW5rKGdyLnNpemVvZl9ncl9jb21wbGV4LCBvcHRpb25zLnRvX2ZpbGUp
CiAgICAgICAgZWxzZToKICAgICAgICAgICAgc2VsZi5zaW5rID0gYmxvY2tzLm51bGxfc2luayhn
ci5zaXplb2ZfZ3JfY29tcGxleCkKCiAgICAgICAgIyBkbyB0aGlzIGFmdGVyIGZvciBhbnkgYWRq
dXN0bWVudHMgdG8gdGhlIG9wdGlvbnMgdGhhdCBtYXkKICAgICAgICAjIG9jY3VyIGluIHRoZSBz
aW5rcyAoc3BlY2lmaWNhbGx5IHRoZSBVSEQgc2luaykKICAgICAgICAjc2VsZi50eHBhdGggPSB0
cmFuc21pdF9wYXRoKG9wdGlvbnMpICNta2cKICAgICAgICBzZWxmLnR4cGF0aCA9IGJsb2Nrcy5m
aWxlX3NvdXJjZShnci5zaXplb2ZfZ3JfY29tcGxleCwgInJhd19kYXRhLmRhdCIpICNta2cKCiAg
ICAgICAgc2VsZi5jb25uZWN0KHNlbGYudHhwYXRoLCBzZWxmLnNpbmspCiAgICAgICAgCiMgLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8KIyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbWFp
bgojIC8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vCgpkZWYgbWFpbigpOgoKICAgIGRlZiBzZW5kX3BrdChw
YXlsb2FkPScnLCBlb2Y9RmFsc2UpOgogICAgICAgIHJldHVybiAwICMgdGIudHhwYXRoLnNlbmRf
cGt0KHBheWxvYWQsIGVvZikgbWtnCgogICAgcGFyc2VyID0gT3B0aW9uUGFyc2VyKG9wdGlvbl9j
bGFzcz1lbmdfb3B0aW9uLCBjb25mbGljdF9oYW5kbGVyPSJyZXNvbHZlIikKICAgIGV4cGVydF9n
cnAgPSBwYXJzZXIuYWRkX29wdGlvbl9ncm91cCgiRXhwZXJ0IikKICAgIHBhcnNlci5hZGRfb3B0
aW9uKCItcyIsICItLXNpemUiLCB0eXBlPSJlbmdfZmxvYXQiLCBkZWZhdWx0PTQwMCwKICAgICAg
ICAgICAgICAgICAgICAgIGhlbHA9InNldCBwYWNrZXQgc2l6ZSBbZGVmYXVsdD0lZGVmYXVsdF0i
KQogICAgcGFyc2VyLmFkZF9vcHRpb24oIi1NIiwgIi0tbWVnYWJ5dGVzIiwgdHlwZT0iZW5nX2Zs
b2F0IiwgZGVmYXVsdD0xLjAsCiAgICAgICAgICAgICAgICAgICAgICBoZWxwPSJzZXQgbWVnYWJ5
dGVzIHRvIHRyYW5zbWl0IFtkZWZhdWx0PSVkZWZhdWx0XSIpCiAgICBwYXJzZXIuYWRkX29wdGlv
bigiIiwiLS1kaXNjb250aW51b3VzIiwgYWN0aW9uPSJzdG9yZV90cnVlIiwgZGVmYXVsdD1GYWxz
ZSwKICAgICAgICAgICAgICAgICAgICAgIGhlbHA9ImVuYWJsZSBkaXNjb250aW51b3VzIG1vZGUi
KQogICAgcGFyc2VyLmFkZF9vcHRpb24oIiIsIi0tZnJvbS1maWxlIiwgZGVmYXVsdD1Ob25lLAog
ICAgICAgICAgICAgICAgICAgICAgaGVscD0idXNlIGludHB1dCBmaWxlIGZvciBwYWNrZXQgY29u
dGVudHMiKQogICAgcGFyc2VyLmFkZF9vcHRpb24oIiIsIi0tdG8tZmlsZSIsIGRlZmF1bHQ9Tm9u
ZSwKICAgICAgICAgICAgICAgICAgICAgIGhlbHA9Ik91dHB1dCBmaWxlIGZvciBtb2R1bGF0ZWQg
c2FtcGxlcyIpCgogICAgdHJhbnNtaXRfcGF0aC5hZGRfb3B0aW9ucyhwYXJzZXIsIGV4cGVydF9n
cnApCiAgICBkaWdpdGFsLm9mZG1fbW9kLmFkZF9vcHRpb25zKHBhcnNlciwgZXhwZXJ0X2dycCkK
ICAgIHVoZF90cmFuc21pdHRlci5hZGRfb3B0aW9ucyhwYXJzZXIpCgogICAgKG9wdGlvbnMsIGFy
Z3MpID0gcGFyc2VyLnBhcnNlX2FyZ3MgKCkKCiAgICAjIGJ1aWxkIHRoZSBncmFwaAogICAgdGIg
PSBteV90b3BfYmxvY2sob3B0aW9ucykKICAgIAogICAgciA9IGdyLmVuYWJsZV9yZWFsdGltZV9z
Y2hlZHVsaW5nKCkKICAgIGlmIHIgIT0gZ3IuUlRfT0s6CiAgICAgICAgcHJpbnQoIldhcm5pbmc6
IGZhaWxlZCB0byBlbmFibGUgcmVhbHRpbWUgc2NoZWR1bGluZyIpCgogICAgdGIuc3RhcnQoKSAg
ICAgICAgICAgICAgICAgICAgICAgIyBzdGFydCBmbG93IGdyYXBoCiAgICAKICAgICMgZ2VuZXJh
dGUgYW5kIHNlbmQgcGFja2V0cwogICAgbmJ5dGVzID0gMCAjaW50KDFlNiAqIG9wdGlvbnMubWVn
YWJ5dGVzKSBta2cKICAgIG4gPSAwCiAgICBwa3RubyA9IDAKICAgIHBrdF9zaXplID0gaW50KG9w
dGlvbnMuc2l6ZSkKCiAgICB3aGlsZSBuIDwgbmJ5dGVzOgogICAgICAgIGlmIG9wdGlvbnMuZnJv
bV9maWxlIGlzIE5vbmU6CiAgICAgICAgICAgIGRhdGEgPSAocGt0X3NpemUgLSAyKSAqIGNocihw
a3RubyAmIDB4ZmYpIAogICAgICAgIGVsc2U6CiAgICAgICAgICAgIGRhdGEgPSBzb3VyY2VfZmls
ZS5yZWFkKHBrdF9zaXplIC0gMikKICAgICAgICAgICAgaWYgZGF0YSA9PSAnJzoKICAgICAgICAg
ICAgICAgIGJyZWFrOwoKICAgICAgICBwYXlsb2FkID0gc3RydWN0LnBhY2soJyFIJywgcGt0bm8g
JiAweGZmZmYpICsgZGF0YQogICAgICAgIHNlbmRfcGt0KHBheWxvYWQpCiAgICAgICAgbiArPSBs
ZW4ocGF5bG9hZCkKICAgICAgICBzeXMuc3RkZXJyLndyaXRlKCcuJykKICAgICAgICBpZiBvcHRp
b25zLmRpc2NvbnRpbnVvdXMgYW5kIHBrdG5vICUgNSA9PSA0OgogICAgICAgICAgICB0aW1lLnNs
ZWVwKDEpCiAgICAgICAgcGt0bm8gKz0gMQogICAgICAgIAogICAgc2VuZF9wa3QoZW9mPVRydWUp
CiAgICB0aW1lLnNsZWVwKDIpICAgICAgICAgICAgICAgIyBhbGxvdyB0aW1lIGZvciBxdWV1ZWQg
cGFja2V0cyB0byBiZSBzZW50CiAgICB0Yi53YWl0KCkgICAgICAgICAgICAgICAgICAgIyB3YWl0
IGZvciBpdCB0byBmaW5pc2gKCmlmIF9fbmFtZV9fID09ICdfX21haW5fXyc6CiAgICB0cnk6CiAg
ICAgICAgbWFpbigpCiAgICBleGNlcHQgS2V5Ym9hcmRJbnRlcnJ1cHQ6CiAgICAgICAgcGFzcwo=

--2b1a2eb54e0a4e5c901737cab5de34e4
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--2b1a2eb54e0a4e5c901737cab5de34e4--

