Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C51AAD65
	for <lists+usrp-users@lfdr.de>; Thu,  5 Sep 2019 22:52:27 +0200 (CEST)
Received: from [::1] (port=34128 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i5yjv-0005UP-Im; Thu, 05 Sep 2019 16:52:23 -0400
Received: from sun60.bham.ac.uk ([147.188.128.137]:59981)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <J.Subash@bham.ac.uk>) id 1i5yjs-0005Np-6z
 for usrp-users@lists.ettus.com; Thu, 05 Sep 2019 16:52:20 -0400
Received: from [147.188.128.54] (helo=mailer3)
 by sun60.bham.ac.uk with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <J.Subash@bham.ac.uk>) id 1i5yjD-0003Y2-NA
 for usrp-users@lists.ettus.com; Thu, 05 Sep 2019 21:51:39 +0100
Received: from em7.bham.ac.uk ([147.188.216.207]
 helo=ITS-P-EX16-07.adf.bham.ac.uk) by bham.ac.uk (envelope-from
 <J.Subash@bham.ac.uk>) with esmtp (Exim 4.92) id 1i5yjD-00089f-DF
 for usrp-users@lists.ettus.com 
 using interface smart2.bham.ac.uk; Thu, 05 Sep 2019 21:51:39 +0100
Received: from ITS-P-EX16-02.adf.bham.ac.uk (147.188.216.202) by
 ITS-P-EX16-07.adf.bham.ac.uk (147.188.216.207) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Thu, 5 Sep 2019 21:51:38 +0100
Received: from ITS-P-EX16-02.adf.bham.ac.uk ([147.188.216.202]) by
 ITS-P-EX16-02.adf.bham.ac.uk ([147.188.216.202]) with mapi id 15.01.1713.008; 
 Thu, 5 Sep 2019 21:51:38 +0100
CC: USRP list <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] sc16 - complex<int16_t> to numpy float
Thread-Index: AQHVY/u2j9LpKZjR2kCZZxDTifsyiKcdWCwAgAA18o8=
Date: Thu, 5 Sep 2019 20:51:38 +0000
Message-ID: <41f739d3442449bd983706ba42de6405@bham.ac.uk>
References: <5b42d964-619f-3034-5b9a-44f464afe630@bham.ac.uk>,
 <CAGNhwTOr8=U6fwpw9psPH0DeBaDevjXCnBedCBfgnbxE_M4XAw@mail.gmail.com>
In-Reply-To: <CAGNhwTOr8=U6fwpw9psPH0DeBaDevjXCnBedCBfgnbxE_M4XAw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [90.221.132.18]
MIME-Version: 1.0
X-BHAM-SendViaRouter: yes
Subject: Re: [USRP-users] sc16 - complex<int16_t> to numpy float
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
From: Joeal Subash via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Joeal Subash <J.Subash@bham.ac.uk>
Content-Type: multipart/mixed; boundary="===============1412121234923764532=="
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

--===============1412121234923764532==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_41f739d3442449bd983706ba42de6405bhamacuk_"

--_000_41f739d3442449bd983706ba42de6405bhamacuk_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Michael,


I am having to save as ' sc16' because of storage restrictions using a C++ =
program. I specifically need details on how to convert 'sc16' to float. Tha=
nks.

________________________________
From: michael.dickens@ettus.com <michael.dickens@ettus.com>
Sent: 05 September 2019 19:33:46
To: Joeal Subash (Electronic, Electrical and Systems Engineering)
Cc: USRP list
Subject: Re: [USRP-users] sc16 - complex<int16_t> to numpy float

Hi JS - Maybe check out this Python example from UHD < https://github.com/E=
ttusResearch/uhd/blob/master/host/examples/python/rx_to_file.py > ... it do=
es Rx to file, and can save as NumPy format ... which could then presumably=
 be easily read back into NumPy. - MLD

On Thu, Sep 5, 2019 at 11:08 AM J Subash via USRP-users <usrp-users@lists.e=
ttus.com<mailto:usrp-users@lists.ettus.com>> wrote:

Hi,

I am using a B200 to save samples on the host as 'short' (as described in t=
he uhd<https://github.com/EttusResearch/uhd>/host<https://github.com/EttusR=
esearch/uhd/tree/master/host>/examples<https://github.com/EttusResearch/uhd=
/tree/master/host/examples>/rx_samples_to_file.cpp), which I believe is com=
plex<int16_t>.

I'd like to import this data into numpy and then convert it into floating p=
oint values. Is sc16 a fixed point representation, if yes what is the scali=
ng factor. If no, how do I convert it into a numpy float in Python. Any hel=
p would be much appreciated. Thanks.

BW

JS

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--
Michael Dickens, Mac OS X Programmer

Ettus Research Technical Support

Email: support@ettus.com<mailto:support@ettus.com>

Web: http://www.ettus.com

--_000_41f739d3442449bd983706ba42de6405bhamacuk_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hi Michael,</p>
<p><br>
</p>
<p>I am having to save as '&nbsp;sc16' because of storage restrictions usin=
g a C&#43;&#43; program. I specifically need details on how to convert 'sc1=
6' to float. Thanks.</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> michael.dickens@ettus=
.com &lt;michael.dickens@ettus.com&gt;<br>
<b>Sent:</b> 05 September 2019 19:33:46<br>
<b>To:</b> Joeal Subash (Electronic, Electrical and Systems Engineering)<br=
>
<b>Cc:</b> USRP list<br>
<b>Subject:</b> Re: [USRP-users] sc16 - complex&lt;int16_t&gt; to numpy flo=
at</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi JS - Maybe check out this Python example from UHD &lt;&=
nbsp;<a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/examp=
les/python/rx_to_file.py">https://github.com/EttusResearch/uhd/blob/master/=
host/examples/python/rx_to_file.py</a>&nbsp;&gt; ...
 it does Rx to file, and can save as NumPy format ... which could then pres=
umably&nbsp;be easily read back into NumPy. - MLD</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 5, 2019 at 11:08 AM J Sub=
ash via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div bgcolor=3D"#FFFFFF">
<p>Hi,</p>
<p>I am using a B200 to save samples on the host as 'short' (as described i=
n the <tt>
<span class=3D"gmail-m_-7136052441403100718js-repo-root gmail-m_-7136052441=
403100718text-bold"><span class=3D"gmail-m_-7136052441403100718js-path-segm=
ent"><a href=3D"https://github.com/EttusResearch/uhd" target=3D"_blank"><sp=
an>uhd</span></a></span></span></tt><tt><span class=3D"gmail-m_-71360524414=
03100718separator">/</span></tt><tt><span class=3D"gmail-m_-713605244140310=
0718js-path-segment"><a href=3D"https://github.com/EttusResearch/uhd/tree/m=
aster/host" target=3D"_blank"><span>host</span></a></span></tt><tt><span cl=
ass=3D"gmail-m_-7136052441403100718separator">/</span></tt><tt><span class=
=3D"gmail-m_-7136052441403100718js-path-segment"><a href=3D"https://github.=
com/EttusResearch/uhd/tree/master/host/examples" target=3D"_blank"><span>ex=
amples</span></a></span></tt><tt><span class=3D"gmail-m_-713605244140310071=
8separator">/</span></tt><tt><span class=3D"gmail-m_-7136052441403100718fin=
al-path">rx_samples_to_file.cpp),</span></tt>
 which I believe is complex&lt;int16_t&gt;.&nbsp; <br>
</p>
<p>I'd like to import this data into numpy and then convert it into floatin=
g point values. Is sc16 a fixed point representation, if yes what is the sc=
aling factor. If no, how do I convert it into a numpy float in Python. Any =
help would be much appreciated.
 Thanks.<br>
</p>
<p>BW</p>
<p>JS<br>
</p>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
<br clear=3D"all">
<div><br>
</div>
-- <br>
<div dir=3D"ltr" class=3D"gmail_signature">
<div dir=3D"ltr">Michael Dickens, Mac OS X Programmer<br>
<br>
Ettus Research Technical Support<br>
<br>
Email: <a href=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus=
.com</a><br>
<br>
Web: <a href=3D"http://www.ettus.com" target=3D"_blank">http://www.ettus.co=
m</a></div>
</div>
</div>
</body>
</html>

--_000_41f739d3442449bd983706ba42de6405bhamacuk_--


--===============1412121234923764532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1412121234923764532==--

