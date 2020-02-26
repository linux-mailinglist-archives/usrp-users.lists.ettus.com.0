Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C5716FA14
	for <lists+usrp-users@lfdr.de>; Wed, 26 Feb 2020 09:58:25 +0100 (CET)
Received: from [::1] (port=57902 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6sWL-00029F-6z; Wed, 26 Feb 2020 03:58:21 -0500
Received: from relais-inet.orange.com ([80.12.66.40]:17477)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <louisadrien.dufrene@orange.com>)
 id 1j6sWG-00022d-Ol
 for usrp-users@lists.ettus.com; Wed, 26 Feb 2020 03:58:16 -0500
Received: from opfedar01.francetelecom.fr (unknown [xx.xx.xx.2])
 by opfedar21.francetelecom.fr (ESMTP service) with ESMTP id 48S8nq5Kgpz7tqt
 for <usrp-users@lists.ettus.com>; Wed, 26 Feb 2020 09:57:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=orange.com;
 s=ORANGE001; t=1582707455;
 bh=rgSLzzkJO3e5FuD6ZGlTiQtgtSTdv+Uq+2jZYbxPAzw=;
 h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version;
 b=b4FAYkn98p9WeCpw6SliKsbVGQb7CNiwFFJzz0IGFN+X0vWPiPH7NSNp1X+UOjE1E
 hWfSX0x+f7ann5xtlV95YLIB4TJS6gP8kSqkh9WC/J3hHB9b5ls2rorVkkVfhLVXXA
 JRMOpQurizSmwFMD64MilA8CFCDYucSjL59edGu7YgQ0s5CTWOrGJ6NENeuKsf+1+s
 ageMVHTG3bv7rUDZwUvbjQNSrsDM6iCcetU/0c2QNtfXiHLXkUj62nG8USdWmf4a9e
 3I4Nh13cmtPpVrbt6BrKJYEta5nJhDl38a0GVpG3tAnLsPfeL9y/o4R5EXYCmNsSL5
 gdq0Vk8jc3Aow==
Received: from Exchangemail-eme6.itn.ftgroup (unknown [xx.xx.13.92])
 by opfedar01.francetelecom.fr (ESMTP service) with ESMTP id 48S8nq4WjfzBrLM
 for <usrp-users@lists.ettus.com>; Wed, 26 Feb 2020 09:57:35 +0100 (CET)
Received: from OPEXCAUBM21.corporate.adroot.infra.ftgroup
 ([fe80::d42b:2e80:86c2:5905]) by OPEXCAUBM34.corporate.adroot.infra.ftgroup
 ([::1]) with mapi id 14.03.0468.000; Wed, 26 Feb 2020 09:57:35 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Strange noise floor at "high" SNR
Thread-Index: AdXsgswNczUFLv/cRsKFYVmkhMmEYg==
Date: Wed, 26 Feb 2020 08:57:34 +0000
Message-ID: <14812_1582707455_5E5632FF_14812_320_1_AD065CF42EAFA14D8B2A641BCA414A3550EB3094@OPEXCAUBM21.corporate.adroot.infra.ftgroup>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.114.13.245]
MIME-Version: 1.0
Subject: [USRP-users] Strange noise floor at "high" SNR
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
From: Louis-Adrien DUFRENE via USRP-users <usrp-users@lists.ettus.com>
Reply-To: louisadrien.dufrene@orange.com
Content-Type: multipart/mixed; boundary="===============3899143307687096024=="
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


--===============3899143307687096024==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AD065CF42EAFA14D8B2A641BCA414A3550EB3094OPEXCAUBM21corp_"


--_000_AD065CF42EAFA14D8B2A641BCA414A3550EB3094OPEXCAUBM21corp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I am using a USRP B210 with the Python (3.7.6) API with UHD 3.15 (from cond=
a-forge).

RF setup is as follow: one USRP, one TX/RX connected with a SMA cable, 60 d=
B attenuator, central freq is 1GHz, sampling rate is 1,6 MHz (oversampling =
value is 4) and RX gain is fixed to 50 dB.
I send burst of data composed of a zadoff-chu 256 followed by a payload mod=
ulated with M-QAM and Gray mapping. This is a wideband transmission, there =
is no additional filtering, nor OFDM modulation.

I use a 1031-long ZC sequence to locate the frame.
In reception, I use the 256-long ZC sequence to fine synch (select the righ=
t sample version to go back to symbol rate), to estimate the channel (1-tap=
) and more especially the phase shift, and to estimate the SNR.

I could confirm the performance for 4-QAM and 16-QAM. BER vs SNR performanc=
e curves obtained in experimentation follow perfectly the theoretical curve=
s for AWGN.

However not in the case of the 64-QAM. Actually, I can't obtain a SNR above=
 22 / 23 dB, independently of the QAM order used.
To increase the SNR and draw the performance curves, I simply increase the =
TX gain. I start getting some problem from 45/50 dB.

I observe a noise floor which looks like classic AWGN, but which is increas=
ing with the TX gain, since the estimated SNR is constant at 22.5 dB.

I have also confirm the performances of the 4-QAM, 16-QAM and 64-QAM in sim=
ulation on AWGN channel.

At the moment I have no clue of what is happening. I have manually activate=
d dc offset and iq imbalance correction based on UHD API to be sure.

What do I miss? I can provide more information if needed.

Best regards,
Louis-Adrien

___________________________________________________________________________=
______________________________________________

Ce message et ses pieces jointes peuvent contenir des informations confiden=
tielles ou privilegiees et ne doivent donc
pas etre diffuses, exploites ou copies sans autorisation. Si vous avez recu=
 ce message par erreur, veuillez le signaler
a l'expediteur et le detruire ainsi que les pieces jointes. Les messages el=
ectroniques etant susceptibles d'alteration,
Orange decline toute responsabilite si ce message a ete altere, deforme ou =
falsifie. Merci.

This message and its attachments may contain confidential or privileged inf=
ormation that may be protected by law;
they should not be distributed, used or copied without authorisation.
If you have received this email in error, please notify the sender and dele=
te this message and its attachments.
As emails may be altered, Orange is not liable for messages that have been =
modified, changed or falsified.
Thank you.


--_000_AD065CF42EAFA14D8B2A641BCA414A3550EB3094OPEXCAUBM21corp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:p=3D"urn:schemas-m=
icrosoft-com:office:powerpoint" xmlns:a=3D"urn:schemas-microsoft-com:office=
:access" xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:s=3D"=
uuid:BDC6E3F0-6DA3-11d1-A2A3-00AA00C14882" xmlns:rs=3D"urn:schemas-microsof=
t-com:rowset" xmlns:z=3D"#RowsetSchema" xmlns:b=3D"urn:schemas-microsoft-co=
m:office:publisher" xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadshee=
t" xmlns:c=3D"urn:schemas-microsoft-com:office:component:spreadsheet" xmlns=
:odc=3D"urn:schemas-microsoft-com:office:odc" xmlns:oa=3D"urn:schemas-micro=
soft-com:office:activation" xmlns:html=3D"http://www.w3.org/TR/REC-html40" =
xmlns:q=3D"http://schemas.xmlsoap.org/soap/envelope/" xmlns:rtc=3D"http://m=
icrosoft.com/officenet/conferencing" xmlns:D=3D"DAV:" xmlns:Repl=3D"http://=
schemas.microsoft.com/repl/" xmlns:mt=3D"http://schemas.microsoft.com/share=
point/soap/meetings/" xmlns:x2=3D"http://schemas.microsoft.com/office/excel=
/2003/xml" xmlns:ppda=3D"http://www.passport.com/NameSpace.xsd" xmlns:ois=
=3D"http://schemas.microsoft.com/sharepoint/soap/ois/" xmlns:dir=3D"http://=
schemas.microsoft.com/sharepoint/soap/directory/" xmlns:ds=3D"http://www.w3=
.org/2000/09/xmldsig#" xmlns:dsp=3D"http://schemas.microsoft.com/sharepoint=
/dsp" xmlns:udc=3D"http://schemas.microsoft.com/data/udc" xmlns:xsd=3D"http=
://www.w3.org/2001/XMLSchema" xmlns:sub=3D"http://schemas.microsoft.com/sha=
repoint/soap/2002/1/alerts/" xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#"=
 xmlns:sp=3D"http://schemas.microsoft.com/sharepoint/" xmlns:sps=3D"http://=
schemas.microsoft.com/sharepoint/soap/" xmlns:xsi=3D"http://www.w3.org/2001=
/XMLSchema-instance" xmlns:udcs=3D"http://schemas.microsoft.com/data/udc/so=
ap" xmlns:udcxf=3D"http://schemas.microsoft.com/data/udc/xmlfile" xmlns:udc=
p2p=3D"http://schemas.microsoft.com/data/udc/parttopart" xmlns:wf=3D"http:/=
/schemas.microsoft.com/sharepoint/soap/workflow/" xmlns:dsss=3D"http://sche=
mas.microsoft.com/office/2006/digsig-setup" xmlns:dssi=3D"http://schemas.mi=
crosoft.com/office/2006/digsig" xmlns:mdssi=3D"http://schemas.openxmlformat=
s.org/package/2006/digital-signature" xmlns:mver=3D"http://schemas.openxmlf=
ormats.org/markup-compatibility/2006" xmlns:m=3D"http://schemas.microsoft.c=
om/office/2004/12/omml" xmlns:mrels=3D"http://schemas.openxmlformats.org/pa=
ckage/2006/relationships" xmlns:spwp=3D"http://microsoft.com/sharepoint/web=
partpages" xmlns:ex12t=3D"http://schemas.microsoft.com/exchange/services/20=
06/types" xmlns:ex12m=3D"http://schemas.microsoft.com/exchange/services/200=
6/messages" xmlns:pptsl=3D"http://schemas.microsoft.com/sharepoint/soap/Sli=
deLibrary/" xmlns:spsl=3D"http://microsoft.com/webservices/SharePointPortal=
Server/PublishedLinksService" xmlns:Z=3D"urn:schemas-microsoft-com:" xmlns:=
tax=3D"http://schemas.microsoft.com/sharepoint/taxonomy/soap/" xmlns:tns=3D=
"http://schemas.microsoft.com/sharepoint/soap/recordsrepository/" xmlns:sps=
up=3D"http://microsoft.com/webservices/SharePointPortalServer/UserProfileSe=
rvice" xmlns:mml=3D"http://www.w3.org/1998/Math/MathML" xmlns:st=3D"&#1;" x=
mlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FR" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello everyone,<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am using a USRP B210 with the=
 Python (3.7.6) API with UHD 3.15 (from conda-forge).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">RF setup is as follow: one USRP=
, one TX/RX connected with a SMA cable, 60 dB attenuator, central freq is 1=
GHz, sampling rate is 1,6 MHz (oversampling value is 4) and RX gain is fixe=
d to 50 dB.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I send burst of data composed o=
f a zadoff-chu 256 followed by a payload modulated with M-QAM and Gray mapp=
ing. This is a wideband transmission, there is no additional filtering, nor=
 OFDM modulation.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I use a 1031-long ZC sequence t=
o locate the frame.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">In reception, I use the 256-lon=
g ZC sequence to fine synch (select the right sample version to go back to =
symbol rate), to estimate the channel (1-tap) and more especially the phase=
 shift, and to estimate the SNR.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I could confirm the performance=
 for 4-QAM and 16-QAM. BER vs SNR performance curves obtained in experiment=
ation follow perfectly the theoretical curves for AWGN.<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">However not in the case of the =
64-QAM. Actually, I can&#8217;t obtain a SNR above 22 / 23 dB, independentl=
y of the QAM order used.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">To increase the SNR and draw th=
e performance curves, I simply increase the TX gain. I start getting some p=
roblem from 45/50 dB.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I observe a noise floor which l=
ooks like classic AWGN, but which is increasing with the TX gain, since the=
 estimated SNR is constant at 22.5 dB.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have also confirm the perform=
ances of the 4-QAM, 16-QAM and 64-QAM in simulation on AWGN channel.<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">At the moment I have no clue of=
 what is happening. I have manually activated dc offset and iq imbalance co=
rrection based on UHD API to be sure.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">What do I miss? I can provide m=
ore information if needed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Louis-Adrien<o:p></o:p></span><=
/p>
</div>
<PRE>______________________________________________________________________=
___________________________________________________

Ce message et ses pieces jointes peuvent contenir des informations confiden=
tielles ou privilegiees et ne doivent donc
pas etre diffuses, exploites ou copies sans autorisation. Si vous avez recu=
 ce message par erreur, veuillez le signaler
a l'expediteur et le detruire ainsi que les pieces jointes. Les messages el=
ectroniques etant susceptibles d'alteration,
Orange decline toute responsabilite si ce message a ete altere, deforme ou =
falsifie. Merci.

This message and its attachments may contain confidential or privileged inf=
ormation that may be protected by law;
they should not be distributed, used or copied without authorisation.
If you have received this email in error, please notify the sender and dele=
te this message and its attachments.
As emails may be altered, Orange is not liable for messages that have been =
modified, changed or falsified.
Thank you.
</PRE></body>
</html>

--_000_AD065CF42EAFA14D8B2A641BCA414A3550EB3094OPEXCAUBM21corp_--


--===============3899143307687096024==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3899143307687096024==--

