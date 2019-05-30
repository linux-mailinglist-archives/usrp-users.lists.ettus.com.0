Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7718F30298
	for <lists+usrp-users@lfdr.de>; Thu, 30 May 2019 21:09:21 +0200 (CEST)
Received: from [::1] (port=48866 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hWQQS-0005kp-C0; Thu, 30 May 2019 15:09:20 -0400
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:43769)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1hWQQO-0005cu-MA
 for usrp-users@lists.ettus.com; Thu, 30 May 2019 15:09:16 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 74EC550C;
 Thu, 30 May 2019 15:08:35 -0400 (EDT)
Received: from imap8 ([10.202.2.58])
 by compute3.internal (MEProxy); Thu, 30 May 2019 15:08:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=4Q5yOt
 0zH5aU0AnKRxSNyp7HXCT2ee3U8yZG9dw7mVI=; b=HfIpyv69cjxEthqeAJfCfl
 ShPQWndBqQvhnZe8fnLNd61arnAzKl4qFgenEYdHZmxfCrPqqIUjeGwJERaiMB7a
 i2rwY56Nrmws4prNWUw2krW8XStM/21BrX6Z5kwjPS2VWiyYRBm64qCPixGEsE5a
 nSvi4qIl/UtcJgUC0m9XANAvLg5GLl7tbyNFiDaa5YQdXWSzyPT/Kxa/Ob72+TbM
 55YdzULLC4ail2hvBXNT8di42XgqOxeYWeANAMIYlMsc1/ZtyrHARInmDoMVLppM
 mMmnMgHc6neEFpMUGMmbBLgX1F+LQ45wGEfhnyYWOAVjjUspuZAEwKYnyilqNTqg
 ==
X-ME-Sender: <xms:MirwXPg43IN5DpIUXxZ7Sw5E7R_1QHg_AdLcBdKr1gvktdLr0CGgeA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddruddvledgudefhecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefofgggkfgjfhffhffvufgtsegrtderreerreejnecuhfhrohhmpedfofhi
 tghhrggvlhcuffhitghkvghnshdfuceomhhitghhrggvlhdrughitghkvghnshesvghtth
 hushdrtghomheqnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmihgthhgrvghlrdguihgt
 khgvnhhssegvthhtuhhsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:MirwXGLjY_fZogkRYa9t53tVbCZR3Iz5sx_0Ku8yq_7_EN-klJg4nQ>
 <xmx:MirwXEFmfMBaj4crajfyD4qKOv1ae_n1xZJjerVkIWrcG-J0hLy1aw>
 <xmx:MirwXAb7BmLJvPKHhmP9D9HD5qTutatpMrum1Y2ETulxeMp5fDQq1g>
 <xmx:MyrwXNbDHRKmYuQhB3ojuuDwpNxY6b6E7TTYkyP8eC-yCjzUgeY5ZQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id AAF09520093; Thu, 30 May 2019 15:08:34 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-555-g49357e1-fmstable-20190528v2
Mime-Version: 1.0
Message-Id: <d2b04014-954e-4113-86eb-81ea00dbb47e@www.fastmail.com>
In-Reply-To: <79af66b8-8e50-4fbd-ab46-2678bf13081f@www.fastmail.com>
References: <79af66b8-8e50-4fbd-ab46-2678bf13081f@www.fastmail.com>
Date: Thu, 30 May 2019 15:08:29 -0400
To: "Fengyang Jiang" <fzj28@psu.edu>
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
Content-Type: multipart/mixed; boundary="===============9202161396433509447=="
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

--===============9202161396433509447==
Content-Type: multipart/alternative;
 boundary=f3ff434f62ba43bda67addccda549972

--f3ff434f62ba43bda67addccda549972
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable

Could you also provide the files that do these Python commands?
{{{
from receive_path import receive_path
from transmit_path import transmit_path
from uhd_interface import uhd_receiver
}}}
Those really are the heart of your Tx and Rx ! - MLD

----- Original message -----
> From: "Jiang, Fengyang" <fzj28@psu.edu>
> To: Michael Dickens <michael.dickens@ettus.com>
> Subject: =E5=9B=9E=E5=A4=8D: [USRP-users] A problem on transmitting da=
ta using 5GHz
> Date: Thursday, May 30, 2019 2:24 PM
>=20
> Hi Michael,
>=20
> Thanks for your response! I'll attach the codes for transmitter and re=
ceiver, and here are the commands:
>=20
> python3 benchmark_tx_copied_from_ins.py -f x.xxG --args=3D"addr=3D192.=
168.10.3" --tx-gain=3D20 (for transmitter)
> python3 benchmark_rx_copied_from_ins.py -f x.xxG --args=3D"addr=3D192.=
168.10.2" (for receiver)
> (x.xxG is the frequency)
>=20
> Thank you for your help!
>=20
> Best regards,
> Fengyang
>=20
> *Attachments:*
>  * benchmark_rx_copied_from_ins.py
>  * benchmark_tx_copied_from_ins.py

--f3ff434f62ba43bda67addccda549972
Content-Type: text/html;charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">
p.MsoNormal,p.MsoNoSpacing{margin:0}
p.MsoNormal,p.MsoNoSpacing{margin:0}</style></head><body><div style=3D"f=
ont-family:Arial;">Could you also provide the files that do these Python=
 commands?<br></div><div style=3D"font-family:Arial;">{{{<br></div><div =
style=3D"font-family:Arial;">from receive_path import receive_path<br></=
div><div style=3D"font-family:Arial;">from transmit_path import transmit=
_path<br></div><div style=3D"font-family:Arial;">from uhd_interface impo=
rt uhd_receiver<br></div><div style=3D"font-family:Arial;">}}}<br></div>=
<div style=3D"font-family:Arial;">Those really are the heart of your Tx =
and Rx ! - MLD<br></div><div style=3D"font-family:Arial;"><br></div><div=
>----- Original message -----<br></div><blockquote id=3D"qt" type=3D"cit=
e"><div>From: "Jiang, Fengyang" &lt;fzj28@psu.edu&gt;<br></div><div>To: =
Michael Dickens &lt;michael.dickens@ettus.com&gt;<br></div><div>Subject:=
 =E5=9B=9E=E5=A4=8D: [USRP-users] A problem on transmitting data using 5=
GHz<br></div><div>Date: Thursday, May 30, 2019 2:24 PM<br></div><div><br=
></div><div id=3D"qt-qt" type=3D"cite"><div style=3D"font-family:Calibri=
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
</div><div style=3D"font-family:Arial;"><br></div><div style=3D"font-fam=
ily:Arial;"><b>Attachments:</b><br></div></div><ul><li>benchmark_rx_copi=
ed_from_ins.py<br></li><li>benchmark_tx_copied_from_ins.py<br></li></ul>=
</blockquote><div style=3D"font-family:Arial;"><br></div></body></html>
--f3ff434f62ba43bda67addccda549972--


--===============9202161396433509447==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9202161396433509447==--

