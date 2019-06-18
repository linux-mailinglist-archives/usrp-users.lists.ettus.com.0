Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 640CA4A258
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jun 2019 15:35:36 +0200 (CEST)
Received: from [::1] (port=43080 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdEGo-0002Vx-6V; Tue, 18 Jun 2019 09:35:30 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:54833)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1hdEGk-0002MB-Lr
 for usrp-users@lists.ettus.com; Tue, 18 Jun 2019 09:35:26 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 5E2532220A;
 Tue, 18 Jun 2019 09:34:46 -0400 (EDT)
Received: from imap8 ([10.202.2.58])
 by compute3.internal (MEProxy); Tue, 18 Jun 2019 09:34:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=pGV4qv
 Ivhi1L75vpt0WaXgxUSeZvM+o0FMzVsYH1iOo=; b=ZwXHyGdSdkptRo6fxuCSYg
 pBG21kfNmv3NoNtD4LkiSA1jwSdNP8X0suVcM9eCtup6DXlL1TGea7QAyAKXZTKu
 yBhC4QBsAMeo27ooYPMrIFYgNERwf3QhgRo3jhrPt4hKEFTtRaNSt05wXouOmtRX
 t4qFOpqZFmqHirLVl6dG7csS7pvcKMR7r5mGTWq65CFbpqgHFy0U8WStjmbmjwZS
 IU4SaTESYnVZYUDqOuL1SgUJ8iZPlT4TwcGdWuiykPsnktec5YnA+K9rOMceIxo8
 WmMH1saXIw2FG0X9Bb0Xixpp8oNlfngPgrCRK2crHVh+A+uPKL0PWWPaLMhkOxMg
 ==
X-ME-Sender: <xms:degIXUeOfkbNrsm3d0AZhRUWx467ZzNHYUtATJ55JJ3bAgs-DkvCqQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrtddtgdefhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsegrtderreerredtnecuhfhrohhmpedfofhitghh
 rggvlhcuffhitghkvghnshdfuceomhhitghhrggvlhdrughitghkvghnshesvghtthhush
 drtghomheqnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmihgthhgrvghlrdguihgtkhgv
 nhhssegvthhtuhhsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:degIXeF4_8VOOR3NjHJUlOEj_0jP9p-oI0MhQn9Uy6iKgX89T8d8bw>
 <xmx:degIXUUI4i7yxwXgEADzjcF0_m_7HdFxIW3lDgsubFUvC03oktvCog>
 <xmx:degIXQDRHbyPJrLurs6Sf2xr68dqNepTVMTHLn6NXi4ncBspYJd6FA>
 <xmx:dugIXRTZBNmNEJ73ybsaArn1_c_6pUEl9fil6Z_uDpm6kadXbLYYUQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id D2224520096; Tue, 18 Jun 2019 09:34:45 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-666-gb2312fa-fmstable-20190614v4
Mime-Version: 1.0
Message-Id: <c0667c6a-e02c-46da-87f6-48519f4836f3@www.fastmail.com>
In-Reply-To: <CALSxwQFTeiix0DqsfcQSdeHVrtnakjNkjB=rANMHb-rmXK2OQg@mail.gmail.com>
References: <mailman.55.1560787202.16100.usrp-users_lists.ettus.com@lists.ettus.com>
 <CALSxwQFTeiix0DqsfcQSdeHVrtnakjNkjB=rANMHb-rmXK2OQg@mail.gmail.com>
Date: Tue, 18 Jun 2019 09:34:45 -0400
To: "Simona Sibio" <ssibio2@gmail.com>,
 "USRP Users" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Waveform Shape Not Accurate
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
Content-Type: multipart/mixed; boundary="===============1597298055769386775=="
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

--===============1597298055769386775==
Content-Type: multipart/alternative;
 boundary=de1f72d2a4314dfb836ca39183ca04e7

--de1f72d2a4314dfb836ca39183ca04e7
Content-Type: text/plain

Hi Simona - Can you please educate us as to a few items?

* your setup: you have an N200 + some daughterboard (which one) + some spectrum analyzer (which one), connected ?somehow? -> are you doing actual wireless Tx -> Rx, or do you have a cable hooked up between the N200 & spectrum analyzer?

* what waveform you're trying to generate, and what is the actual flowgraph you're using for GNU Radio? how are you generating the waveform in MATLAB?

* which version of GNU Radio and UHD are you trying to use?

* which version of MATLAB and it's UHD are you trying to use?

The above might help someone to diagnose your issue ... without it, we can make some guesses but not much in the way of specifics.

Please remember to "reply all", so that others can see your response and be able to chime in to provide help. - MLD

On Tue, Jun 18, 2019, at 8:42 AM, Simona Sibio via USRP-users wrote:
> Dear Sir/Madam,
> 
> I am Simona Sibio, a student in Heriot Watt University. 
> I am working with USRPs both on Matlab and on Gnuradio, and with both softwares I have the same problem: the shape (generated by N200+daughterboard 10 MHz to 6 GHz) is not accurate, in attacched some photos.
> At 1 GHz, the shape is worst than when the carrier frequency is 3GHz.
> It is not possible to measure the amplitude and frequency because, also at 3 GHz, it is not stable.
> Could you help me?
> 
> Thank you in advance.
> 
> Best Regards,
> 
> Simona

--de1f72d2a4314dfb836ca39183ca04e7
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div style=3D"font-f=
amily:Arial;">Hi&nbsp;Simona - Can you please educate us as to a few ite=
ms?<br></div><div style=3D"font-family:Arial;"><br></div><div style=3D"f=
ont-family:Arial;">* your setup: you have an N200 + some daughterboard (=
which one) + some spectrum analyzer (which one), connected ?somehow? -&g=
t; are you doing actual wireless Tx -&gt; Rx, or do you have a cable hoo=
ked up between the N200 &amp; spectrum analyzer?<br></div><div style=3D"=
font-family:Arial;"><br></div><div style=3D"font-family:Arial;">* what w=
aveform you're trying to generate, and what is the actual flowgraph you'=
re using for GNU Radio? how are you generating the waveform in MATLAB?<b=
r></div><div style=3D"font-family:Arial;"><br></div><div style=3D"font-f=
amily:Arial;">* which version of GNU Radio and UHD are you trying to use=
?<br></div><div style=3D"font-family:Arial;"><br></div><div style=3D"fon=
t-family:Arial;">* which version of MATLAB and it's UHD are you trying t=
o use?<br></div><div style=3D"font-family:Arial;"><br></div><div style=3D=
"font-family:Arial;">The above might help someone to diagnose your issue=
 ... without it, we can make some guesses but not much in the way of spe=
cifics.<br></div><div style=3D"font-family:Arial;"><br></div><div style=3D=
"font-family:Arial;">Please remember to "reply all", so that others can =
see your response and be able to chime in to provide help. - MLD</div><d=
iv style=3D"font-family:Arial;"><br></div><div>On Tue, Jun 18, 2019, at =
8:42 AM, Simona Sibio via USRP-users wrote:<br></div><blockquote type=3D=
"cite" id=3D"qt"><div dir=3D"ltr"><div dir=3D"ltr"><div style=3D"font-st=
yle:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-v=
ariant-numeric:normal;font-variant-east-asian:normal;font-weight:400;fon=
t-size:13.33px;line-height:19.99px;font-family:Arial, Helvetica, sans-se=
rif;text-align:left;color:rgb(34, 34, 34);text-transform:none;text-inden=
t:0px;letter-spacing:normal;overflow-x:visible;overflow-y:visible;text-d=
ecoration-line:none;text-decoration-style:initial;text-decoration-color:=
initial;word-spacing:0px;white-space:normal;font-stretch:100%;background=
-color:transparent;">Dear Sir/Madam,<br></div><div style=3D"font-style:n=
ormal;font-variant-caps:normal;font-variant-ligatures:normal;font-varian=
t-numeric:normal;font-variant-east-asian:normal;font-weight:400;font-siz=
e:13.33px;line-height:19.99px;font-family:Arial, Helvetica, sans-serif;t=
ext-align:left;color:rgb(34, 34, 34);text-transform:none;text-indent:0px=
;letter-spacing:normal;overflow-x:visible;overflow-y:visible;text-decora=
tion-line:none;text-decoration-style:initial;text-decoration-color:initi=
al;word-spacing:0px;white-space:normal;font-stretch:100%;background-colo=
r:transparent;"><br></div><div style=3D"font-style:normal;font-variant-c=
aps:normal;font-variant-ligatures:normal;font-variant-numeric:normal;fon=
t-variant-east-asian:normal;font-weight:400;font-size:13.33px;line-heigh=
t:19.99px;font-family:Arial, Helvetica, sans-serif;text-align:left;color=
:rgb(34, 34, 34);text-transform:none;text-indent:0px;letter-spacing:norm=
al;overflow-x:visible;overflow-y:visible;text-decoration-line:none;text-=
decoration-style:initial;text-decoration-color:initial;word-spacing:0px;=
white-space:normal;font-stretch:100%;background-color:transparent;">I am=
 Simona Sibio, a student in Heriot Watt University.&nbsp;<br></div><div =
style=3D"font-style:normal;font-variant-caps:normal;font-variant-ligatur=
es:normal;font-variant-numeric:normal;font-variant-east-asian:normal;fon=
t-weight:400;font-size:13.33px;line-height:19.99px;font-family:Arial, He=
lvetica, sans-serif;text-align:left;color:rgb(34, 34, 34);text-transform=
:none;text-indent:0px;letter-spacing:normal;overflow-x:visible;overflow-=
y:visible;text-decoration-line:none;text-decoration-style:initial;text-d=
ecoration-color:initial;word-spacing:0px;white-space:normal;font-stretch=
:100%;background-color:transparent;">I am working with USRPs both on Mat=
lab and on Gnuradio, and with both softwares I have the same problem: th=
e shape (generated by N200+daughterboard 10 MHz to 6 GHz) is not accurat=
e, in attacched some photos.<br></div><div style=3D"font-style:normal;fo=
nt-variant-caps:normal;font-variant-ligatures:normal;font-variant-numeri=
c:normal;font-variant-east-asian:normal;font-weight:400;font-size:13.33p=
x;line-height:19.99px;font-family:Arial, Helvetica, sans-serif;text-alig=
n:left;color:rgb(34, 34, 34);text-transform:none;text-indent:0px;letter-=
spacing:normal;overflow-x:visible;overflow-y:visible;text-decoration-lin=
e:none;text-decoration-style:initial;text-decoration-color:initial;word-=
spacing:0px;white-space:normal;font-stretch:100%;background-color:transp=
arent;">At 1 GHz, the shape is worst than when the carrier frequency is =
3GHz.<br></div><div style=3D"font-style:normal;font-variant-caps:normal;=
font-variant-ligatures:normal;font-variant-numeric:normal;font-variant-e=
ast-asian:normal;font-weight:400;font-size:13.33px;line-height:19.99px;f=
ont-family:Arial, Helvetica, sans-serif;text-align:left;color:rgb(34, 34=
, 34);text-transform:none;text-indent:0px;letter-spacing:normal;overflow=
-x:visible;overflow-y:visible;text-decoration-line:none;text-decoration-=
style:initial;text-decoration-color:initial;word-spacing:0px;white-space=
:normal;font-stretch:100%;background-color:transparent;">It is not possi=
ble to measure the amplitude and frequency because, also at 3 GHz, it is=
 not stable.<br></div><div style=3D"font-style:normal;font-variant-caps:=
normal;font-variant-ligatures:normal;font-variant-numeric:normal;font-va=
riant-east-asian:normal;font-weight:400;font-size:13.33px;line-height:19=
.99px;font-family:Arial, Helvetica, sans-serif;text-align:left;color:rgb=
(34, 34, 34);text-transform:none;text-indent:0px;letter-spacing:normal;o=
verflow-x:visible;overflow-y:visible;text-decoration-line:none;text-deco=
ration-style:initial;text-decoration-color:initial;word-spacing:0px;whit=
e-space:normal;font-stretch:100%;background-color:transparent;">Could yo=
u help me?<br></div><div style=3D"font-style:normal;font-variant-caps:no=
rmal;font-variant-ligatures:normal;font-variant-numeric:normal;font-vari=
ant-east-asian:normal;font-weight:400;font-size:13.33px;line-height:19.9=
9px;font-family:Arial, Helvetica, sans-serif;text-align:left;color:rgb(3=
4, 34, 34);text-transform:none;text-indent:0px;letter-spacing:normal;ove=
rflow-x:visible;overflow-y:visible;text-decoration-line:none;text-decora=
tion-style:initial;text-decoration-color:initial;word-spacing:0px;white-=
space:normal;font-stretch:100%;background-color:transparent;"><br></div>=
<div style=3D"font-style:normal;font-variant-caps:normal;font-variant-li=
gatures:normal;font-variant-numeric:normal;font-variant-east-asian:norma=
l;font-weight:400;font-size:13.33px;line-height:19.99px;font-family:Aria=
l, Helvetica, sans-serif;text-align:left;color:rgb(34, 34, 34);text-tran=
sform:none;text-indent:0px;letter-spacing:normal;overflow-x:visible;over=
flow-y:visible;text-decoration-line:none;text-decoration-style:initial;t=
ext-decoration-color:initial;word-spacing:0px;white-space:normal;font-st=
retch:100%;background-color:transparent;">Thank you in advance.<br></div=
><div style=3D"font-style:normal;font-variant-caps:normal;font-variant-l=
igatures:normal;font-variant-numeric:normal;font-variant-east-asian:norm=
al;font-weight:400;font-size:13.33px;line-height:19.99px;font-family:Ari=
al, Helvetica, sans-serif;text-align:left;color:rgb(34, 34, 34);text-tra=
nsform:none;text-indent:0px;letter-spacing:normal;overflow-x:visible;ove=
rflow-y:visible;text-decoration-line:none;text-decoration-style:initial;=
text-decoration-color:initial;word-spacing:0px;white-space:normal;font-s=
tretch:100%;background-color:transparent;"><br></div><div style=3D"font-=
style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font=
-variant-numeric:normal;font-variant-east-asian:normal;font-weight:400;f=
ont-size:13.33px;line-height:19.99px;font-family:Arial, Helvetica, sans-=
serif;text-align:left;color:rgb(34, 34, 34);text-transform:none;text-ind=
ent:0px;letter-spacing:normal;overflow-x:visible;overflow-y:visible;text=
-decoration-line:none;text-decoration-style:initial;text-decoration-colo=
r:initial;word-spacing:0px;white-space:normal;font-stretch:100%;backgrou=
nd-color:transparent;">Best Regards,<br></div><div style=3D"font-style:n=
ormal;font-variant-caps:normal;font-variant-ligatures:normal;font-varian=
t-numeric:normal;font-variant-east-asian:normal;font-weight:400;font-siz=
e:13.33px;line-height:19.99px;font-family:Arial, Helvetica, sans-serif;t=
ext-align:left;color:rgb(34, 34, 34);text-transform:none;text-indent:0px=
;letter-spacing:normal;overflow-x:visible;overflow-y:visible;text-decora=
tion-line:none;text-decoration-style:initial;text-decoration-color:initi=
al;word-spacing:0px;white-space:normal;font-stretch:100%;background-colo=
r:transparent;"><br></div><div style=3D"font-style:normal;font-variant-c=
aps:normal;font-variant-ligatures:normal;font-variant-numeric:normal;fon=
t-variant-east-asian:normal;font-weight:400;font-size:13.33px;line-heigh=
t:19.99px;font-family:Arial, Helvetica, sans-serif;text-align:left;color=
:rgb(34, 34, 34);text-transform:none;text-indent:0px;letter-spacing:norm=
al;overflow-x:visible;overflow-y:visible;text-decoration-line:none;text-=
decoration-style:initial;text-decoration-color:initial;word-spacing:0px;=
white-space:normal;font-stretch:100%;background-color:transparent;">Simo=
na<br></div></div></div></blockquote><div style=3D"font-family:Arial;"><=
br></div></body></html>
--de1f72d2a4314dfb836ca39183ca04e7--


--===============1597298055769386775==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1597298055769386775==--

