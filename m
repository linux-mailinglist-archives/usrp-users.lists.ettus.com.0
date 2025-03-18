Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A5059A66F76
	for <lists+usrp-users@lfdr.de>; Tue, 18 Mar 2025 10:14:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 900E8384E7A
	for <lists+usrp-users@lfdr.de>; Tue, 18 Mar 2025 05:14:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1742289281; bh=BUALpzwaRVkS3nUQkUPVkG6tbG39i4w1AkAFhblSj0c=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=SXSO6b5IiuTYzuYs7pSg4h9EMu891gaBEWeiJYJVy8clHvn3DY0INucQaINhJdkFy
	 +sXvzLx+I1PDjjgj93fnP/7vdNOLiFu8Zps+9etHhyLBpXEg650FQQe1HBNmAXliRp
	 oZSVaX9/gCSd2ClU89N+Kp62PAKk7fpKq+FFgLEb5IVLFI95JdXwtFx6MGS36GpKX2
	 iKg5oei47NvLh8AY5h2DB1kUaWKsbU2yTf/NkLZJqdUkJ//fzjCGVj+3z9CgC2tmch
	 7xI2Beqjg4P3mCwq8JBb3MVDCkTr32Bq+HCwwVUiexWs9NVE4fpOhr2VNpa8CK/8Hb
	 d0SGLgPRNp4mQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4CA16384E7A
	for <usrp-users@lists.ettus.com>; Tue, 18 Mar 2025 05:14:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1742289245; bh=LeBR8kBEqlV9I4k8Ry/kBHUtKj5ulY5tv5T59I+ccI4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=qtEu5NIhmHfIQK/ZtSgp1LcX9wI/Zyfp9l20ul3apNfb+X8x7nwJ9WPyZ8EKeh9hU
	 QZNPHAgRzCStkDDFlLjylicEvoti1pGMa8w+eyTa+Iwc0g3q7ZcDDosca1ZJnlwS/1
	 e4KLm3pofz8VVwxM4pSzpOxHfK+SGoEovVq2iT+IXGtgFODvRMViCZq7ba4nECfHgW
	 OSxcCI4FzV9MZjHeqLbuEt9eTmeM9gVqL/8+7sfmNeoni7lWQDjNXCVQ8us6vl2UlK
	 22Ma/JGc8VZOP0UUFVuWVBRtanSPZox0iOEnJVvADLiHIvvspwDn2G00SRD80uptcg
	 v1rkd+t5XXPxQ==
Date: Tue, 18 Mar 2025 09:14:05 +0000
To: usrp-users@lists.ettus.com
Message-ID: <qrUvsDp0QKVaUCGS8mwdFGsjRKaAWXpQz2NThoX1Vo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 6e84ce2318ea47b19cb7d1100ee4d36a@vastech.co.za
MIME-Version: 1.0
Message-ID-Hash: ABXK4WBXVAAGGC7T3POMBRFSBSMGYO3E
X-Message-ID-Hash: ABXK4WBXVAAGGC7T3POMBRFSBSMGYO3E
X-MailFrom: niels.steffen.garibaldi@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: "Cannot create route from device" error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ABXK4WBXVAAGGC7T3POMBRFSBSMGYO3E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "niels.steffen.garibaldi--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: niels.steffen.garibaldi@emerson.com
Content-Type: multipart/mixed; boundary="===============7480307621690146526=="

This is a multi-part message in MIME format.

--===============7480307621690146526==
Content-Type: multipart/alternative;
 boundary="b1_qrUvsDp0QKVaUCGS8mwdFGsjRKaAWXpQz2NThoX1Vo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_qrUvsDp0QKVaUCGS8mwdFGsjRKaAWXpQz2NThoX1Vo
Content-Type: text/plain; charset=us-ascii

Hello Kevin,

\
Are you using one of the default bitfiles?\
It looks to me like the issue might be caused by the fact that your Radio and your PolConverter are connected to the Same SEP, namely SEP3.\
\
The RFNoC crossbar might not be able to find a valid route if source and destination are the same.\
The error seems to be thrown [here](https://github.com/EttusResearch/uhd/blob/master/host/lib/rfnoc/topo_graph.cpp#L310), and and it seems to me that in the for loop right above, the path from a node to itself will not be added to the route list as a node being its own predecessor for routing is seen as no route available

It is usually ok to connect in and output ports of a stream endpoint to different blocks in general, but in most cases they are connected to the same block, so they will not be routing to themselves, [see the n300 image_core yaml as an example](https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/n3xx/n300_rfnoc_image_core.yml#L64).\
\
Have you tried rebuilding the bitfile and using separate SEPs for the Radio0 output and PolConverter0 input? Does the issue still appear then?\
\
Regards,\
Niels.

---

\
Kevin Williams wrote:

> Hi Everyone,
>
> I am getting an error "RuntimeError: Cannot create route from device:1/sep:3
> and device:1/sep:3, no route was found!" when trying to connect routes in an
> rfnoc graph on an N300. (UHD 4.8)
>
> The image shows the following static routes:
>
> |   |       Static connections on this device:
> |   |
> |   |   \* 0/SEP#0:0==>0/Radio#0:0
> |   |   \* 0/SEP#1:0==>0/Radio#0:1
> |   |   \* 0/Radio#0:0==>0/SEP#3:0
> |   |   \* 0/Radio#0:1==>0/SEP#4:0
> |   |   \* 0/SEP#3:0==>0/PolConverter#0:0
> |   |   \* 0/SEP#4:0==>0/PolConverter#0:1
> |   |   \* 0/PolConverter#0:0==>0/SEP#2:0
>
> But if I try and connect the radio to my rfnoc block with:
>
> g_graph.connect("0/Radio#0",   0, "0/PolConverter#0",  0)
>
> but get the error above.
>
> I have tried:
>
> uhd.rfnoc.connect_through_blocks(
> g_graph,
> "0/Radio#0",
> 0,
> "0/PolConverter#0",
> 0,
> skip_property_propagation = True)
>
> But this also fails with the same error (with skip true or false).
>
> I also see there are some recent issues on github regarding this.
>
> Is there perhaps any further information?
>
> Many thanks, Kevin

--b1_qrUvsDp0QKVaUCGS8mwdFGsjRKaAWXpQz2NThoX1Vo
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello Kevin,</p><p><br>Are you using one of the default bitfiles?<br>It =
looks to me like the issue might be caused by the fact that your Radio and =
your PolConverter are connected to the Same SEP, namely SEP3.<br><br>The RF=
NoC crossbar might not be able to find a valid route if source and destinat=
ion are the same.<br>The error seems to be thrown <a href=3D"https://github=
.com/EttusResearch/uhd/blob/master/host/lib/rfnoc/topo_graph.cpp#L310" titl=
e=3D"">here</a>, and and it seems to me that in the for loop right above, t=
he path from a node to itself will not be added to the route list as a node=
 being its own predecessor for routing is seen as no route available</p><p>=
It is usually ok to connect in and output ports of a stream endpoint to dif=
ferent blocks in general, but in most cases they are connected to the same =
block, so they will not be routing to themselves, <a href=3D"https://github=
.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/n3xx/n300_rfnoc_image_cor=
e.yml#L64" title=3D"">see the n300 image_core yaml as an example</a>.<br><b=
r>Have you tried rebuilding the bitfile and using separate SEPs for the Rad=
io0 output and PolConverter0 input? Does the issue still appear then?<br><b=
r>Regards,<br>Niels.<br><br></p><div contenteditable=3D"false" class=3D""><=
hr></div><p><br>Kevin Williams wrote:</p><blockquote><p>Hi Everyone,</p><p>=
I am getting an error "RuntimeError: Cannot create route from device:1/sep:=
3
and device:1/sep:3, no route was found!" when trying to connect routes in a=
n
rfnoc graph on an N300. (UHD 4.8)</p><p>The image shows the following stati=
c routes:</p><p>|   |       Static connections on this device:
|   |
|   |   * 0/SEP#0:0=3D=3D&gt;0/Radio#0:0
|   |   * 0/SEP#1:0=3D=3D&gt;0/Radio#0:1
|   |   * 0/Radio#0:0=3D=3D&gt;0/SEP#3:0
|   |   * 0/Radio#0:1=3D=3D&gt;0/SEP#4:0
|   |   * 0/SEP#3:0=3D=3D&gt;0/PolConverter#0:0
|   |   * 0/SEP#4:0=3D=3D&gt;0/PolConverter#0:1
|   |   * 0/PolConverter#0:0=3D=3D&gt;0/SEP#2:0</p><p>But if I try and conn=
ect the radio to my rfnoc block with:</p><p>g_graph.connect("0/Radio#0",   =
0, "0/PolConverter#0",  0)</p><p>but get the error above.</p><p>I have trie=
d:</p><p>uhd.rfnoc.connect_through_blocks(
g_graph,
"0/Radio#0",
0,
"0/PolConverter#0",
0,
skip_property_propagation =3D True)</p><p>But this also fails with the same=
 error (with skip true or false).</p><p>I also see there are some recent is=
sues on github regarding this.</p><p>Is there perhaps any further informati=
on?</p><p>Many thanks, Kevin</p></blockquote><p><br></p>

--b1_qrUvsDp0QKVaUCGS8mwdFGsjRKaAWXpQz2NThoX1Vo--

--===============7480307621690146526==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7480307621690146526==--
