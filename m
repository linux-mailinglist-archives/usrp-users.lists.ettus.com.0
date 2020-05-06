Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7191C7978
	for <lists+usrp-users@lfdr.de>; Wed,  6 May 2020 20:34:15 +0200 (CEST)
Received: from [::1] (port=35850 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jWOry-0002F9-B5; Wed, 06 May 2020 14:34:10 -0400
Received: from mail-qv1-f41.google.com ([209.85.219.41]:33717)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jWOru-00029w-SU
 for USRP-users@lists.ettus.com; Wed, 06 May 2020 14:34:06 -0400
Received: by mail-qv1-f41.google.com with SMTP id ep1so1307293qvb.0
 for <USRP-users@lists.ettus.com>; Wed, 06 May 2020 11:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=s8fEflj88Hmn4PtaHKx9ZoM9RhLexJLPGU6Xz9OTugw=;
 b=RSr6R4jCVV5YyGC9Pa9Q4Q7bL83+17+gxOGxt1QQ2u9oNlYMAzqTlz/c5/ISqTzoqp
 O7PWazsNZB93y/4ByVlzEGfhtAc3vHYVpB8ef/DDZsHSaalEwWOQA0rpRxhsfwCJRZNn
 DOEvVNuELIAEo9gsXJwlIdKEGE9N9/T1LFiZ8VUqlS0IDpVfeqDxX9O4+cH8DP53vfLL
 6sGTSpY6jaShmLSExo6MerEWAUdHrqhSfUBBZ1NU2vcOXKIKPBIiqL4bsoV5qKceKpCu
 LpXZ4fCrJ1gWxm7JsLjFWsAEglLuZx5DVeTVIcCDEpRRcg/NCsBtXb2NphOAohU3ZOmz
 59uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=s8fEflj88Hmn4PtaHKx9ZoM9RhLexJLPGU6Xz9OTugw=;
 b=JLgQ9fUNhf0Fbz6XI8aUK0V0G2zhTgOhTUw/WyjQ73LXwouSZOEfjR6FqDopr28ONg
 fXcx5LZrBxLBxT9k1e+IkWN+6nGa+0tOFFrfbHRt0K5K+reSlOF1T/XotXig4fl8Ik6A
 j3li+94G45GLL9CmZ3ZOsaTB1UN7IQlYt5s+2RaZj1aJvpz1f5XtGyhtbymnPge9uTBE
 bUlXd8NaMN+o2HGYY9IdXCxiLafTonc+CFRgrN7Hzc6BQn3xWImi+YSx4ek3OZiZ8Y7j
 +40tZ/pfL5ZhOpH30n6vbUwmJTea8UUighralhw3wMYzesXqhEC61Xkm35sNALIHqv22
 QwlA==
X-Gm-Message-State: AGi0PuaxyAReErE4E5Um9kp+wH3eQifpoJKFeOaR//PfQyoriUKyKQXO
 57Sh2OJ01W4W2mTqqSR40+mQB+katpw=
X-Google-Smtp-Source: APiQypKm6HlU5TkjlSUARwArkRVsvq9SUCkCpaZjjkl9iLsdHWRyHewNMvtBzTaT6R78Ezcyrc0Eag==
X-Received: by 2002:a0c:efc8:: with SMTP id a8mr9070476qvt.153.1588790006154; 
 Wed, 06 May 2020 11:33:26 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-12-103.dsl.bell.ca.
 [174.95.12.103])
 by smtp.gmail.com with ESMTPSA id r128sm2423436qke.109.2020.05.06.11.33.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 May 2020 11:33:25 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Wed, 6 May 2020 14:33:25 -0400
Message-Id: <0658B589-5C72-42E6-AFE1-687F7103DDD3@gmail.com>
References: <25698_1588745513_5EB25529_25698_118_1_AD065CF42EAFA14D8B2A641BCA414A3550F0A8CE@OPEXCAUBM21.corporate.adroot.infra.ftgroup>
In-Reply-To: <25698_1588745513_5EB25529_25698_118_1_AD065CF42EAFA14D8B2A641BCA414A3550F0A8CE@OPEXCAUBM21.corporate.adroot.infra.ftgroup>
To: louisadrien.dufrene@orange.com
X-Mailer: iPhone Mail (17E262)
Subject: Re: [USRP-users] Power consomption of B20Xmini series
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8398103077982873767=="
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


--===============8398103077982873767==
Content-Type: multipart/alternative; boundary=Apple-Mail-F5B631EA-87EF-43BA-8D2B-0B3F42A95208
Content-Transfer-Encoding: 7bit


--Apple-Mail-F5B631EA-87EF-43BA-8D2B-0B3F42A95208
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

There=E2=80=99s a table showing power consumption=20
https://kb.ettus.com/index.php?title=3DB200/B210/B200mini/B205mini&action=3D=
pdfbook&format=3Dsingle

The FPGA code for the mini series is almost identical. The filter/ddc compon=
ents are shared in the code base.=20


Sent from my iPhone

> On May 6, 2020, at 2:12 AM, Louis-Adrien DUFRENE via USRP-users <usrp-user=
s@lists.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hello everyone,
> =20
> We would like to know what is the max power consumption of USRP B200mini, B=
200mini-i and B205mini-i? Under 5V USB, what is the max input current value n=
eeded?
> =20
> Also, is there a difference in the digital processing (filtering) done on t=
he FPGAs, since the B20Xmini series have different FPGAs? Or is it just for u=
ser purpose?
> =20
> Have a nice day,
> LA
> =20
> <image001.png>
> =20
> DUFRENE Louis-Adrien
> Ing=C3=A9nieur Recherche
> ORANGE/TGI/OLS/BIZZ/MIS/CITY
> =20
> Phone: +33 4 38 42 82 51
> Mobile: +33 6 42 37 65 31
> louisadrien.dufrene@orange.com
>=20
> =20
> __________________________________________________________________________=
_______________________________________________
>=20
> Ce message et ses pieces jointes peuvent contenir des informations confide=
ntielles ou privilegiees et ne doivent donc
> pas etre diffuses, exploites ou copies sans autorisation. Si vous avez rec=
u ce message par erreur, veuillez le signaler
> a l'expediteur et le detruire ainsi que les pieces jointes. Les messages e=
lectroniques etant susceptibles d'alteration,
> Orange decline toute responsabilite si ce message a ete altere, deforme ou=
 falsifie. Merci.
>=20
> This message and its attachments may contain confidential or privileged in=
formation that may be protected by law;
> they should not be distributed, used or copied without authorisation.
> If you have received this email in error, please notify the sender and del=
ete this message and its attachments.
> As emails may be altered, Orange is not liable for messages that have been=
 modified, changed or falsified.
> Thank you.
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-F5B631EA-87EF-43BA-8D2B-0B3F42A95208
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">There=E2=80=99s a table showing power consu=
mption&nbsp;<div><a href=3D"https://kb.ettus.com/index.php?title=3DB200/B210=
/B200mini/B205mini&amp;action=3Dpdfbook&amp;format=3Dsingle">https://kb.ettu=
s.com/index.php?title=3DB200/B210/B200mini/B205mini&amp;action=3Dpdfbook&amp=
;format=3Dsingle</a><div><br>The FPGA code for the mini series is almost ide=
ntical. The filter/ddc components are shared in the code base.&nbsp;</div><d=
iv><br></div><div><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"=
ltr"><br><blockquote type=3D"cite">On May 6, 2020, at 2:12 AM, Louis-Adrien D=
UFRENE via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></blo=
ckquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:HelveticaNeueRegular;}
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
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle19
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
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


<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello everyone,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">We would like to know what is th=
e max power consumption of USRP B200mini, B200mini-i and B205mini-i? Under 5=
V USB, what is the max input current value needed?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Also, is there a difference in t=
he digital processing (filtering) done on the FPGAs, since the B20Xmini seri=
es have different FPGAs? Or is it just for user purpose?<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Have a nice day,<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">LA<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><a href=3D"http://www.orange.com/"><span style=3D"fon=
t-size:12.5pt;font-family:HelveticaNeueRegular;color:black;mso-fareast-langu=
age:FR;text-decoration:none"><div>&lt;image001.png&gt;</div></span></a><span=
 style=3D"mso-fareast-language:FR"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:15.0pt"><span style=3D"font-size=
:12.5pt;font-family:HelveticaNeueRegular;color:black;mso-fareast-language:FR=
"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black;mso-fareast-language:FR">DUFR=
ENE Louis-Adrien</span></b><span style=3D"font-size:12.5pt;font-family:Helve=
ticaNeueRegular;color:black;mso-fareast-language:FR"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black;mso-fareast-language:FR">Ing=C3=A9nieur Recherch=
e</span><span style=3D"font-size:12.5pt;font-family:HelveticaNeueRegular;col=
or:black;mso-fareast-language:FR"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black;mso-fareast-language:FR">ORANGE/TGI/OLS/BIZZ/MIS=
/CITY</span><span style=3D"mso-fareast-language:FR"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:15.0pt"><span style=3D"font-size=
:12.5pt;font-family:HelveticaNeueRegular;color:black;mso-fareast-language:FR=
">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;m=
so-fareast-language:FR">Phone:&nbsp;+33 4 38 42 82 51</span><span style=3D"f=
ont-size:12.5pt;font-family:HelveticaNeueRegular;color:black;mso-fareast-lan=
guage:FR"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black;mso-fareast-language:FR">Mobile:&nbsp;+33 6 42 3=
7 65 31</span><span style=3D"font-size:12.5pt;font-family:HelveticaNeueRegul=
ar;color:black;mso-fareast-language:FR"><br>
</span><a href=3D"mailto:louisadrien.dufrene@orange.com"><span style=3D"font=
-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#056=
3C1;mso-fareast-language:FR">louisadrien.dufrene@orange.com</span></a><span s=
tyle=3D"mso-fareast-language:FR"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<pre>_______________________________________________________________________=
__________________________________________________

Ce message et ses pieces jointes peuvent contenir des informations confident=
ielles ou privilegiees et ne doivent donc
pas etre diffuses, exploites ou copies sans autorisation. Si vous avez recu c=
e message par erreur, veuillez le signaler
a l'expediteur et le detruire ainsi que les pieces jointes. Les messages ele=
ctroniques etant susceptibles d'alteration,
Orange decline toute responsabilite si ce message a ete altere, deforme ou f=
alsifie. Merci.

This message and its attachments may contain confidential or privileged info=
rmation that may be protected by law;
they should not be distributed, used or copied without authorisation.
If you have received this email in error, please notify the sender and delet=
e this message and its attachments.
As emails may be altered, Orange is not liable for messages that have been m=
odified, changed or falsified.
Thank you.
</pre>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></div></body></html>=

--Apple-Mail-F5B631EA-87EF-43BA-8D2B-0B3F42A95208--


--===============8398103077982873767==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8398103077982873767==--

