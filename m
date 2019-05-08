Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5234F181EC
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 00:08:22 +0200 (CEST)
Received: from [::1] (port=44734 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOUjd-0006cs-BG; Wed, 08 May 2019 18:08:21 -0400
Received: from web-atmail1.tpgi.com.au ([203.12.160.53]:46860)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.91) (envelope-from <gobbo@tpg.com.au>) id 1hOUj4-0006Um-CJ
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 18:08:16 -0400
Received: from localhost (localhost [127.0.0.1])
 by web-atmail1.tpgi.com.au (8.14.4/8.14.4) with ESMTP id x48M73K8009039
 for <usrp-users@lists.ettus.com>; Thu, 9 May 2019 08:07:03 +1000
Message-Id: <099f9e9d14dc45b0f458a2c3c83d1be17177c9d2@new-postoffice.tpg.com.au>
To: usrp-users@lists.ettus.com
X-Mailer: Atmail 7.2.0.14467
X-Originating-IP: 203.6.69.2
in-reply-to: <BL0PR12MB2340D4EC35F3885332A766A8AF320@BL0PR12MB2340.namprd12.prod.outlook.com>
Date: Thu, 09 May 2019 08:07:03 +1000
MIME-Version: 1.0
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Running E310 in Network Mode
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
From: Chris Gobbett via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Chris Gobbett <gobbo@tpg.com.au>
Content-Type: multipart/mixed; boundary="===============3098158438537026025=="
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

--===============3098158438537026025==
Content-Type: multipart/alternative;
 boundary="=_7066bdfde7e62d1043f64372caa67193"

--=_7066bdfde7e62d1043f64372caa67193
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Also Ramazan note that even then you will still get far reduced=0Abandwi=
dth as compared to N210/B210 over ethernet or USB:=0Ahttp://lists.ettus.=
com/pipermail/usrp-users_lists.ettus.com/2015-April/041697.html=0A[1]=0A=
If cutting FPGA code isn't an option but you wish to have a larger=0Aban=
dwidth with the small form-factor, perhaps something like the B200=0Amin=
i might suffice?----- Original Message -----From: "Jason Matusiak" =0ATo=
:"usrp-users@lists.ettus.com" , "Ramazan =C3=87etin" =0ACc:=0ASent:Wed,=
 8 May 2019 14:14:46 +0000=0ASubject:Re: [USRP-users] Running E310 in Ne=
twork Mode=0A=0A See=0Ahere:=C2=A0https://files.ettus.com/manual/page_us=
rp_e3x0.html#e3x0_network_mode=0A[2] =0A=0A-------------------------=0AF=
ROM: USRP-users  on behalf of Ramazan =C3=87etin via USRP-users =0ASENT:=
 Wednesday, May 8, 2019 8:02 AM=0ATO: Ettus Research Support; usrp-users=
@lists.ettus.com=0ASUBJECT: [USRP-users] Running E310 in Network Mode=
 =C2=A0   Hello,=0A=0A We want to run USRP E310 in network mode. I think=
 the samples coming =0A from FPGA passing through CPU before sending to=
 network. This=0Adecreases =0A bandwidth because of CPU limitations.=0A=
=0A So, is there any ettus image or suggestions that we can run E310 =0A=
 directly from FPGA to network without speed limitations? (like N210=0Ao=
r B210)=0A=0A Best regards.=0A=0A Ramazan=0A=0A ________________________=
_______________________=0A USRP-users mailing list=0A USRP-users@lists.e=
ttus.com=0Ahttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettu=
s.com [3]=0A    =0A=0ALinks:=0A------=0A[1]=0Ahttp://lists.ettus.com/pip=
ermail/usrp-users_lists.ettus.com/2015-April/041697.html=0A[2]=0Ahttps:/=
/files.ettus.com/manual/page_usrp_e3x0.html#e3x0_network_mode=0A[3] http=
://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=0A

--=_7066bdfde7e62d1043f64372caa67193
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body style=3D"font-family: 'Helvetica Neue',Helvetica,Arial,sans-=
serif; font-size: 12px;">Also Ramazan note that even then you will still=
 get far reduced bandwidth as compared to N210/B210 over ethernet or USB=
:<div><br /></div><div><a href=3D"http://lists.ettus.com/pipermail/usrp-=
users_lists.ettus.com/2015-April/041697.html">http://lists.ettus.com/pip=
ermail/usrp-users_lists.ettus.com/2015-April/041697.html</a></div><div><=
br /></div><div>If cutting FPGA code isn't an option but you wish to hav=
e a larger bandwidth with the small form-factor, perhaps something like=
 the B200 mini might suffice?</div><div><blockquote>----- Original Messa=
ge -----</blockquote><blockquote><div style=3D"width:100%;background:rgb=
(228,228,228);"><div style=3D"font-weight:bold;">From:</div> "Jason Matu=
siak" &lt;jason@gardettoengineering.com&gt;</div><br /><div style=3D"fon=
t-weight:bold;">To:</div>"usrp-users@lists.ettus.com" &lt;usrp-users@lis=
ts.ettus.com&gt;, "Ramazan =C3=87etin" &lt;ramazan.cetin@gohm.com.tr&gt;=
<br /><div style=3D"font-weight:bold;">Cc:</div><br /><div style=3D"font=
-weight:bold;">Sent:</div>Wed, 8 May 2019 14:14:46 +0000<br /><div style=
=3D"font-weight:bold;">Subject:</div>Re: [USRP-users] Running E310 in Ne=
twork Mode<br /><br /><br /><div style=3D"font-family:Calibri, Arial, He=
lvetica, sans-serif;font-size:12pt;color:rgb(0,0,0);">=0ASee here:=C2=A0=
<a href=3D"https://files.ettus.com/manual/page_usrp_e3x0.html#e3x0_netwo=
rk_mode">https://files.ettus.com/manual/page_usrp_e3x0.html#e3x0_network=
_mode</a></div>=0A<br /><div>=0A<div>=0A<div></div>=0A<div style=3D"font=
-family:Calibri, Arial, Helvetica, sans-serif;font-size:12pt;color:rgb(0=
,0,0);">=0A<br /></div>=0A<hr style=3D"width:98%;" /><div dir=3D"ltr"><f=
ont face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11=
pt;"><b>From:</b> USRP-users &lt;usrp-users-bounces@lists.ettus.com&gt;=
 on behalf of Ramazan =C3=87etin via USRP-users &lt;usrp-users@lists.ett=
us.com&gt;<br /><b>Sent:</b> Wednesday, May 8, 2019 8:02 AM<br /><b>To:<=
/b> Ettus Research Support; usrp-users@lists.ettus.com<br /><b>Subject:<=
/b> [USRP-users] Running E310 in Network Mode</font>=0A<div>=C2=A0</div>=
=0A</div>=0A<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"=
font-size:11pt;">=0A</span></font><div class=3D"PlainText">Hello,<br /><=
br />=0AWe want to run USRP E310 in network mode. I think the samples co=
ming <br />=0Afrom FPGA passing through CPU before sending to network. T=
his decreases <br />=0Abandwidth because of CPU limitations.<br /><br />=
<br />=0ASo, is there any ettus image or suggestions that we can run E31=
0 <br />=0Adirectly from FPGA to network without speed limitations? (lik=
e N210 or B210)<br /><br />=0ABest regards.<br /><br />=0ARamazan<br /><=
br /><br />=0A_______________________________________________<br />=0AUS=
RP-users mailing list<br />=0AUSRP-users@lists.ettus.com<br /><a href=3D=
"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">htt=
p://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br /=
></div>=0A</div>=0A</div>=0A</div>=0A</blockquote></div></body></html>

--=_7066bdfde7e62d1043f64372caa67193--



--===============3098158438537026025==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3098158438537026025==--


