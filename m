Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 076AF3016C
	for <lists+usrp-users@lfdr.de>; Thu, 30 May 2019 20:02:22 +0200 (CEST)
Received: from [::1] (port=33976 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hWPNc-0001g3-AY; Thu, 30 May 2019 14:02:20 -0400
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:35055)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1hWPNY-0001Y7-C8
 for usrp-users@lists.ettus.com; Thu, 30 May 2019 14:02:16 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 4F29229D;
 Thu, 30 May 2019 14:01:35 -0400 (EDT)
Received: from imap8 ([10.202.2.58])
 by compute3.internal (MEProxy); Thu, 30 May 2019 14:01:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=7z/Aqt
 SAfuZZDzqCbDvfG62OQj5RTLsUtYRGEq0U/tA=; b=y2+92j/X1iESzHnlCNtFWn
 stRsySJQddwljMmuTyGA45xmDBaEizBUFD+TNrw2f3GxDkDfc3/wZ+3X41Mh5pez
 tYv+aq7I3CowbtW8i4dR9TzJ4eoSPr4Vr2lnoMH9eCBaL+/dZf9g3IR3XGGiFVsS
 mQySPUcqw8YOiemncsWADZLJF9Q4vOEmdY7vdTcP2ES58Mcw8IkimO97Awako8f8
 +ZePEiD0fUFHuKQ3+cIZ4Fda9HdPUAGk718NEDHZ5zO1f/N44PdEmO3TR8Q+av2O
 VJwk0zxck1q1HMIpFpMaUaNVuDtH8pf2eXjeIhYybR2NDyE3uQuVUbd7rhlUh3Ug
 ==
X-ME-Sender: <xms:fhrwXFiIcc6lgeoW2xBc36GmJOj4PAS_IHOv5RO6U2ndT8EZ9Y2gZg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddruddvledguddvudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefofgggkfgjfhffhffvufgtsegrtderreerredtnecuhfhrohhmpedfofhi
 tghhrggvlhcuffhitghkvghnshdfuceomhhitghhrggvlhdrughitghkvghnshesvghtth
 hushdrtghomheqnecuffhomhgrihhnpegvthhtuhhsrdgtohhmnecurfgrrhgrmhepmhgr
 ihhlfhhrohhmpehmihgthhgrvghlrdguihgtkhgvnhhssegvthhtuhhsrdgtohhmnecuve
 hluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:fhrwXDMnpzfEbcc7frTh6RCIPznzFFpbYmyis47zHfyjvgdql0hxNQ>
 <xmx:fhrwXPNjFTqGmLCx0XBIOqAKjhh8-0WzGadpRiCVNrdgZJHg6FsexQ>
 <xmx:fhrwXLIzDw78GkGIfEJQp8owLZMnqTht8wV7CujtBiadIi5EGhVFrg>
 <xmx:fhrwXKHLiwLGl-gns9RmG3KalyvkxPtQkz0jeAOte6YKo1-dasY4jA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 6C292520094; Thu, 30 May 2019 14:01:34 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-555-g49357e1-fmstable-20190528v2
Mime-Version: 1.0
Message-Id: <e64cb298-b69f-4235-b842-e487a7fd30a1@www.fastmail.com>
In-Reply-To: <CY4PR02MB2647FF653200BAACB6D1102CAA180@CY4PR02MB2647.namprd02.prod.outlook.com>
References: <CY4PR02MB2647FF653200BAACB6D1102CAA180@CY4PR02MB2647.namprd02.prod.outlook.com>
Date: Thu, 30 May 2019 14:01:28 -0400
To: "Fengyang Jiang" <fzj28@psu.edu>, "USRP Users" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] A problem on transmitting data using 5GHz
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
Content-Type: multipart/mixed; boundary="===============2012366167004258137=="
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

--===============2012366167004258137==
Content-Type: multipart/alternative;
 boundary=a2fcc15fc3064d7983bf864c17831fa6

--a2fcc15fc3064d7983bf864c17831fa6
Content-Type: text/plain

Hi Fengyang - Since we don't know what exactly you're transmitting (meaning: the Tx flowgraph or code), there could be all sorts of issues or settings affecting the system to make it work at some frequencies and not at others. If you could share the actual Tx & Rx flowgraph or code that would be best for getting assistance. - MLD

On Thu, May 30, 2019, at 1:51 PM, Jiang, Fengyang via USRP-users wrote:
> Hi All,
> 
> I'm using two usrps to transmit a preamble from one to the other. When I use 2.437GHz, 2.45GHz and 2.5GHz, it works, but if I use 5GHz, 5.3GHz, 5.8GHz, I will get nothing at the receiver side. What could be the problem?
> 
> Devices being used:
> USRP N210. https://www.ettus.com/all-products/UN210-KIT/
> CBX USRP Daughterboard (1.2GHz - 6GHz) https://www.ettus.com/all-products/CBX/
> VERT2450 Antenna (2.4 - 2.5GHz & 4.9 - 5.9GHz)  https://www.ettus.com/all-products/VERT2450/
> 
> Really thanks for your help!
> 
> Best regards,
> Fengyang

--a2fcc15fc3064d7983bf864c17831fa6
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">
p.MsoNormal,p.MsoNoSpacing{margin:0}
p.MsoNormal,p.MsoNoSpacing{margin:0}</style></head><body><div style=3D"f=
ont-family:Arial;">Hi&nbsp;Fengyang - Since we don't know what exactly y=
ou're transmitting (meaning: the Tx flowgraph or code), there could be a=
ll sorts of issues or settings affecting the system to make it work at s=
ome frequencies and not at others. If you could share the actual Tx &amp=
; Rx flowgraph or code that would be best for getting assistance. - MLD<=
br></div><div style=3D"font-family:Arial;"><br></div><div>On Thu, May 30=
, 2019, at 1:51 PM, Jiang, Fengyang via USRP-users wrote:<br></div><bloc=
kquote id=3D"qt" type=3D"cite"><div style=3D"font-family:Calibri, Arial,=
 Helvetica, sans-serif;font-size:12pt;color:rgb(0, 0, 0);">Hi All,<br></=
div><div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font=
-size:12pt;color:rgb(0, 0, 0);"><br></div><div style=3D"font-family:Cali=
bri, Arial, Helvetica, sans-serif;font-size:12pt;color:rgb(0, 0, 0);">I'=
m using two usrps to transmit a preamble from one to the other. When I u=
se 2.437GHz, 2.45GHz and 2.5GHz, it works, but if I use 5GHz, 5.3GHz, 5.=
8GHz, I will get nothing at the receiver side. What could be the problem=
?<br></div><div style=3D"font-family:Calibri, Arial, Helvetica, sans-ser=
if;font-size:12pt;color:rgb(0, 0, 0);"><br></div><div style=3D"font-fami=
ly:Calibri, Arial, Helvetica, sans-serif;font-size:12pt;color:rgb(0, 0, =
0);">Devices being used:<br></div><div style=3D"font-family:Calibri, Ari=
al, Helvetica, sans-serif;font-size:12pt;color:rgb(0, 0, 0);">USRP N210.=
&nbsp;<a href=3D"https://www.ettus.com/all-products/UN210-KIT/" id=3D"qt=
-LPNoLP858021">https://www.ettus.com/all-products/UN210-KIT/</a><br></di=
v><div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-s=
ize:12pt;color:rgb(0, 0, 0);">CBX USRP Daughterboard (1.2GHz - 6GHz)&nbs=
p;<a href=3D"https://www.ettus.com/all-products/CBX/" id=3D"qt-LPNoLP477=
081">https://www.ettus.com/all-products/CBX/</a><br></div><div style=3D"=
font-family:Calibri, Arial, Helvetica, sans-serif;font-size:12pt;color:r=
gb(0, 0, 0);">VERT2450 Antenna (2.4 - 2.5GHz &amp; 4.9 - 5.9GHz) <a href=
=3D"https://www.ettus.com/all-products/VERT2450/" id=3D"qt-LPNoLP644247"=
> https://www.ettus.com/all-products/VERT2450/</a><br></div><div style=3D=
"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:12pt;color:=
rgb(0, 0, 0);"><br></div><div style=3D"font-family:Calibri, Arial, Helve=
tica, sans-serif;font-size:12pt;color:rgb(0, 0, 0);">Really thanks for y=
our help!<br></div><div style=3D"font-family:Calibri, Arial, Helvetica, =
sans-serif;font-size:12pt;color:rgb(0, 0, 0);"><br></div><div style=3D"f=
ont-family:Calibri, Arial, Helvetica, sans-serif;font-size:12pt;color:rg=
b(0, 0, 0);">Best regards,<br></div><div style=3D"font-family:Calibri, A=
rial, Helvetica, sans-serif;font-size:12pt;color:rgb(0, 0, 0);">Fengyang=
<br></div></blockquote><div style=3D"font-family:Arial;"><br></div></bod=
y></html>
--a2fcc15fc3064d7983bf864c17831fa6--


--===============2012366167004258137==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2012366167004258137==--

