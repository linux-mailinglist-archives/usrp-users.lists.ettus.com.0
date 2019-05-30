Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C78BA2FCE5
	for <lists+usrp-users@lfdr.de>; Thu, 30 May 2019 16:08:50 +0200 (CEST)
Received: from [::1] (port=42272 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hWLjd-00081Y-N2; Thu, 30 May 2019 10:08:49 -0400
Received: from wout5-smtp.messagingengine.com ([64.147.123.21]:43765)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1hWLjZ-0007r7-Us
 for usrp-users@lists.ettus.com; Thu, 30 May 2019 10:08:46 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id E9DDC45B;
 Thu, 30 May 2019 10:08:04 -0400 (EDT)
Received: from imap8 ([10.202.2.58])
 by compute3.internal (MEProxy); Thu, 30 May 2019 10:08:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=6k2EqC
 z2TaTWW6g33KjSunjoRRX3sR2PT+RrRL0emhE=; b=Q0V1dPzWUmiOqALHF0qQ4W
 ZImHWjp2IQKy11F7z2zpWtQxUVmK83O1y/l/qk181Y5dU8/tcxdxS9+dzWf/x3+f
 0cvQ2VQhklGANUl0Dm6y5xnTFynT27ntMSDk7qlmp7USvzzGGLzeKKWKaCsxrRDP
 R5Qfmefx3ATz1OAGpWawScAxaIp/RrphwHHOEKPSqCN9pY3+JO4SoDn9LjgmTjPw
 AtErOp2Tnacll29rX7vTg7xHGPO2iMADz2wwdZQxqqhPaGgvY5Km7u0epWRD9A7t
 Ws8nBylLlEPEuV7xY99mH50ANkiGva4QmqX5GgyGXywp3E8C2/VsJIr/iecCPNfQ
 ==
X-ME-Sender: <xms:xOPvXOaB6bmgS4EQCsnJvaPRhHx6CO2VGLp3YaxYgXNNb_VciTm3Dw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddruddvledgjedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesrgdtreerreerjeenucfhrhhomhepfdfoihgt
 hhgrvghlucffihgtkhgvnhhsfdcuoehmihgthhgrvghlrdguihgtkhgvnhhssegvthhtuh
 hsrdgtohhmqeenucffohhmrghinhepvghtthhushdrtghomhdpghhrvggrthhstghothht
 ghgrughgvghtshdrtghomhenucfrrghrrghmpehmrghilhhfrhhomhepmhhitghhrggvlh
 drughitghkvghnshesvghtthhushdrtghomhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:xOPvXDf52VMHVp1kPgyB90ToOW3bccdgHXwkbU7mO3tyO2auTKnpSA>
 <xmx:xOPvXDDO1W1v2BmaIs1tjqhePi1laxK2jPFsuAAAOFSWUc5zgh0YIQ>
 <xmx:xOPvXLXVMJVNEVGesg0EDMBKupzpqiO5dZ6deSgzOmlhHGeM-aBFLA>
 <xmx:xOPvXDbiJRJhPYq799qyb5utsk6U63R2czVKDiKWhJeu0uJPonKIBA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 15234520093; Thu, 30 May 2019 10:08:04 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-555-g49357e1-fmstable-20190528v2
Mime-Version: 1.0
Message-Id: <57c5f3c4-3ae5-4ff6-ac4f-e2283b0296bb@www.fastmail.com>
In-Reply-To: <CAOV5X-V_zQoxTruu5z8t4mbxKF6obDOShp9V4bCNkuWwi8tmfg@mail.gmail.com>
References: <CAOV5X-V_zQoxTruu5z8t4mbxKF6obDOShp9V4bCNkuWwi8tmfg@mail.gmail.com>
Date: Thu, 30 May 2019 10:07:54 -0400
To: "Dylan Feron" <ferondylan@gmail.com>,
 "USRP Users" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] 
 =?utf-8?q?Error_message_when_trying_to_send_signals?=
 =?utf-8?q?_with_HackRF_One_on_GRC?=
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
Content-Type: multipart/mixed; boundary="===============8616155296573394896=="
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

--===============8616155296573394896==
Content-Type: multipart/alternative;
 boundary=e972419bde304cba9f56cd04c4f40411

--e972419bde304cba9f56cd04c4f40411
Content-Type: text/plain

Hi Dylan - From what you've posted, it sounds like you have an issue with the HackRF One, not the NI USRP; could be configuring it, or some runtime issue; really not clear. Given that this is the -USRP- users list, I'd advise you to look to GSG about what's going on; this website provides some good options for someone looking for such help: < https://greatscottgadgets.com/hackrf/ >. Hope this is useful! - MLD

On Thu, May 30, 2019, at 9:59 AM, Dylan Feron via USRP-users wrote:
> Hello,
> 
> I am using a HackRF One to transmit signals to an USRP NI 2921 which receives the signal. Whatever the signal I am sending (sine, cosine, triangle,...) and whatever the frequency of the signal sent, I always obtain the same peak located at the same frequency (around the frequency carrier shifted of 50 kHz) in the FFT received on the NI 2921. 
> I am using GNURadio Companion as the software processing the signals. Here is the message I obtain in the console of the transmitting signal on GRC : 
> 
> *Warning: failed to XInitThreads() linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown gr-osmosdr 0.1.4 (0.1.4) gnuradio 3.7.11 built-in sink types: uhd hackrf bladerf soapy redpitaya freesrp file Cannot connect to server socket err = No such file or directory Cannot connect to server request channel jack server is not running or cannot be started JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, skipping unlock JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, skipping unlock Using HackRF One with firmware 2018.01.1*
> **
> Can somebody enlighten me? 
> 
> Thank you in advance,
> Dylan
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> 

--e972419bde304cba9f56cd04c4f40411
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div style=3D"font-f=
amily:Arial;">Hi&nbsp;Dylan - From what you've posted, it sounds like yo=
u have an issue with the HackRF One, not the NI USRP; could be configuri=
ng it, or some runtime issue; really not clear. Given that this is the -=
USRP- users list, I'd advise you to look to GSG about what's going on; t=
his website provides some good options for someone looking for such help=
: &lt;&nbsp;<a href=3D"https://greatscottgadgets.com/hackrf/">https://gr=
eatscottgadgets.com/hackrf/</a>&nbsp;&gt;. Hope this is useful! - MLD</d=
iv><div style=3D"font-family:Arial;"><br></div><div style=3D"font-family=
:Arial;"><span style=3D"font-family: &quot;Source Sans Pro&quot;, sans-s=
erif;">On Thu, May 30, 2019, at 9:59 AM, Dylan Feron via USRP-users wrot=
e:</span><br></div><blockquote type=3D"cite" id=3D"qt"><div dir=3D"ltr">=
<div><span style=3D"font-family:Arial, Helvetica Neue, Helvetica, sans-s=
erif" class=3D"font"><span style=3D"color:#242729" class=3D"colour"><spa=
n style=3D"font-size:15px" class=3D"size">Hello,</span></span></span><br=
></div><div><span style=3D"font-family:Arial, Helvetica Neue, Helvetica,=
 sans-serif" class=3D"font"><span style=3D"color:#242729" class=3D"colou=
r"><span style=3D"font-size:15px" class=3D"size"></span></span></span><b=
r></div><div><span style=3D"font-family:Arial, Helvetica Neue, Helvetica=
, sans-serif" class=3D"font"><span style=3D"color:#242729" class=3D"colo=
ur"><span style=3D"font-size:15px" class=3D"size">I am using a HackRF On=
e to transmit signals to an USRP NI 2921 which receives the signal. What=
ever the signal I am sending (sine, cosine, triangle,...) and whatever t=
he frequency of the signal sent, I always obtain the same peak located a=
t the same frequency (around the frequency carrier shifted of 50 kHz) in=
 the FFT received on the NI 2921.&nbsp;</span></span></span><br></div><s=
pan style=3D"color:rgb(36, 39, 41)" class=3D"colour"><span style=3D"font=
-family:Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif" class=3D=
"font"><span style=3D"font-size:15px" class=3D"size"><div style=3D""><sp=
an style=3D"color:rgb(36, 39, 41)" class=3D"colour"><span style=3D"font-=
family:Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif" class=3D=
"font"><span style=3D"font-size:15px" class=3D"size">I am using GNURadio=
 Companion as the software processing the signals. Here is the message I=
 obtain in the console of the transmitting signal on GRC :&nbsp;</span><=
/span></span><br></div><div style=3D""><br></div><div style=3D"font-fami=
ly:Arial;"><i>Warning: failed to XInitThreads() linux; GNU C++ version 7=
.3.0; Boost_106501; UHD_003.010.003.000-0-unknown gr-osmosdr 0.1.4 (0.1.=
4) gnuradio 3.7.11 built-in sink types: uhd hackrf bladerf soapy redpita=
ya freesrp file Cannot connect to server socket err =3D No such file or =
directory Cannot connect to server request channel jack server is not ru=
nning or cannot be started JackShmReadWritePtr::~JackShmReadWritePtr - I=
nit not done for -1, skipping unlock JackShmReadWritePtr::~JackShmReadWr=
itePtr - Init not done for -1, skipping unlock Using HackRF One with fir=
mware 2018.01.1</i><br></div></span></span></span><div><span style=3D"co=
lor:rgb(36, 39, 41)" class=3D"colour"><span style=3D"font-family:Arial, =
&quot;Helvetica Neue&quot;, Helvetica, sans-serif" class=3D"font"><span =
style=3D"font-size:15px" class=3D"size"><i></i></span></span></span><br>=
</div><div><span style=3D"color:rgb(36, 39, 41)" class=3D"colour"><span =
style=3D"font-family:Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-=
serif" class=3D"font"><span style=3D"font-size:15px" class=3D"size">Can =
somebody enlighten me?&nbsp;</span></span></span><br></div><div><span st=
yle=3D"color:rgb(36, 39, 41)" class=3D"colour"><span style=3D"font-famil=
y:Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif" class=3D"fon=
t"><span style=3D"font-size:15px" class=3D"size"></span></span></span><b=
r></div><div><span style=3D"color:rgb(36, 39, 41)" class=3D"colour"><spa=
n style=3D"font-family:Arial, &quot;Helvetica Neue&quot;, Helvetica, san=
s-serif" class=3D"font"><span style=3D"font-size:15px" class=3D"size">Th=
ank you in advance,</span></span></span><br></div><div><span style=3D"co=
lor:rgb(36, 39, 41)" class=3D"colour"><span style=3D"font-family:Arial, =
&quot;Helvetica Neue&quot;, Helvetica, sans-serif" class=3D"font"><span =
style=3D"font-size:15px" class=3D"size">Dylan</span></span></span><br></=
div></div><div>_______________________________________________<br></div>=
<div>USRP-users mailing list<br></div><div>USRP-users@lists.ettus.com<br=
></div><div>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ett=
us.com<br></div><div><br></div></blockquote><div style=3D"font-family:Ar=
ial;"><br></div></body></html>
--e972419bde304cba9f56cd04c4f40411--


--===============8616155296573394896==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8616155296573394896==--

