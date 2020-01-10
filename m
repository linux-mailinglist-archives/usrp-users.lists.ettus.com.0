Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 17DE81374AA
	for <lists+usrp-users@lfdr.de>; Fri, 10 Jan 2020 18:23:13 +0100 (CET)
Received: from [::1] (port=41378 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipy05-0000oj-HV; Fri, 10 Jan 2020 12:23:09 -0500
Received: from sonic304-21.consmr.mail.ne1.yahoo.com ([66.163.191.147]:40704)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <santu_voonna@yahoo.com>)
 id 1ipy01-0000kG-Ka
 for usrp-users@lists.ettus.com; Fri, 10 Jan 2020 12:23:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1578676943; bh=D8vf0D1BweaalXPbIiRNPuEDS4+vorhAv4Y74qYSGrg=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject;
 b=Yl1HPGnB9YPe+Np8lXVzGrs8OARUyRnrqw0CIubUmtqKTzi13Nwe6D2btEDUM/QRydoWWeJ+p0+aAJO23TXWNVwoq0GmLWn0z+4bvJUQxdMc4tjHtAvTGMbEVkLmhUlQe7UBAUc3xgn5C+S8d31lecinWjnrOjsawHzD4r2zmpksE2FyESMeErjSFSHJfj7sa8acyx532gfGW+zOTpT6u155Mtl/JioP103iTUh8mzpRZWkNn3QS6fXfV8cyxhHWqTeCFiJLzBfBK5Xk4dSQkiJ1BTn/h7mmWnKBe/JnixesZIH2U+DfAOzC2pJkc/KKfFyb94pHhxrEeUsdbnjW2w==
X-YMail-OSG: f98C9H8VM1kPt6GET3veIfdCw8OD1bCC1wpWJ.e05neZ5qTtV0z7ZcjbDeYtALO
 WRtsBWQkG3.Amohbtx2Ra6J1w1SQ3j9uYs67C0GnuHJYcFK.tHrAXIuKG5O6NpgeUZMIvjgeTwWG
 nFHT._Pl7bJm6hOUul.ZQMQIHvwfU1tNM5M9SOwHq8OzMFdJsVeSDsCWfebB3ROJaHrEzd4gEiSy
 9W1p2r49ry8MFtW1lLZkYfjwTi5rhx7j5iURwCWpLjQoBNRD9N5kl7eDGBrF6.QnZ3pq0n1oQ1IJ
 a7P4tDqdYkkZ5mVPvJzpeXaZCxkopxM1V.72DOLYYVESXubjhxCasWOiNQVdld78IgN6WQFXmxhf
 2Nt2atp0XTwkj.itZGl0shCf4vSwCYgZ3MfqyxcfacPu2fQFBs4OeLnygQtqIksdZEFBCOzAstDb
 ZjYJRqIKsS9TUrKxug4NV7rXPSGUJumPGkJn5xgVHkicF7iZlq3T5uqXKQ1jYdTVI8mGlXCjVLB6
 6cpOBrn7wQicv3cyfqeKPzff4GsLrbYU.27SmeQP6maBOqB.zsWUkMRThSJwpfKqEfG2Ob0GAaxE
 3uUryz5Tph9TS45OtadjUZA718n.Hz.s0SAzoDi10QT6pB9Uao5VWLwtv1eB5guMctpX_Ea80XOf
 FTVel.8N23WBQZBp1638VpjcpDwELn3YXF5PBF0kKi4tdJUHZqlnpLFIFqwMUG0TU_SmujchGIWi
 humMZfN7bDCPGLxo3SUj5J0AM63_z1CyccAdSzOMPEshWGrS9voqOQ1nAbNMkCyuqCLE8La50k.A
 KldESy8kzm6suj0H2bGE3zgpYupNjJqm0WfokuJi2tf93WLa4UzxJd8CTZ7xSEsAMI6YFJ5r5I9t
 E9sRqYNeg9ootyQSqwDUlv5sRhCu.ZHobY9heY04slNKE_e_wiTnIo7CtlGZQbJGeSJUFsPTLZls
 tHmnGN9f4WFomEwaGkO1C9G0vUO54StxaoxtNS4CEg499.K4ieFrmEJaeDvycpN_CsxAiDjaoZJB
 Sy24Tqn6goaU6dGKxAGqfFyjhCH4QqgqFnezJPEOmXmYnFnnq3SdbXUB.ysJs8WZRxumGh0pH6hw
 Uv90mGEecHAmX4fjFvD9_Z_rvilyxiAWBYlLhdaddk0YXbHCqDwlLLTqiXQWLos7VtZXTi2s0Vwp
 GQNGhJq2jiIn_VXlPhJWTDWvdd9IfGHOPiF1tjNNI54TUs0CNnOJloQjRpgOeFirhm5Ut.fQ4mKd
 LxJTXplt_ADPZbvYKeJ5NaxfV9bSR6HXFjshMQ5LXaJnrdqPKwHrFMuY3oUxr68X6nmCambII6tq
 Nw0Vwk1FrWPbcL40geVh2ZRNOr93bto80
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.ne1.yahoo.com with HTTP; Fri, 10 Jan 2020 17:22:23 +0000
Date: Fri, 10 Jan 2020 17:22:18 +0000 (UTC)
To: Sam Reiter <sam.reiter@ettus.com>
Message-ID: <155074570.9720577.1578676938651@mail.yahoo.com>
In-Reply-To: <CANf970bnEtmcTCOkYseriRLnXLc668Q1Krq9EvseYxrpnrTUSQ@mail.gmail.com>
References: <826572958.9669290.1578669344799.ref@mail.yahoo.com>
 <826572958.9669290.1578669344799@mail.yahoo.com>
 <CANf970bnEtmcTCOkYseriRLnXLc668Q1Krq9EvseYxrpnrTUSQ@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.14873 YMailNorrin Mozilla/5.0 (X11; Linux x86_64;
 rv:68.0) Gecko/20100101 Firefox/68.0
Subject: Re: [USRP-users] Run time issue with 3.14.1.1 (X300 with UBX)
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
From: voonna santosh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: voonna santosh <santu_voonna@yahoo.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5574944937971823726=="
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

--===============5574944937971823726==
Content-Type: multipart/alternative; 
	boundary="----=_Part_9720576_511511568.1578676938649"
Content-Length: 5998

------=_Part_9720576_511511568.1578676938649
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Sam,=C2=A0 Since I have rebooted my machine and SDR, issue not seen. I =
will try to reproduce and share you the results.BR,Santosh

    On Friday, January 10, 2020, 3:46:19 PM GMT, Sam Reiter <sam.reiter@ett=
us.com> wrote: =20
=20
 Santosh,
Could you send the output of=20

ip a
On you machine with the X300 connected?

Sam

On Fri, Jan 10, 2020 at 9:16 AM voonna santosh via USRP-users <usrp-users@l=
ists.ettus.com> wrote:

Hi There,=C2=A0=C2=A0 I have just updated to 3.14.1 and experiencing the fo=
llowing issue. The system starts well, then there would be couple of underf=
lows (even at less sampling rates) and the following error is shown. In thi=
s case I don't see anything on the scope.
=C2=A0=C2=A0 I have restarted SDR and my PC, then it is working well.=20

Command used:=20
./tx_samples_from_file --args addr=3D192.168.40.2=C2=A0 --file /home/svoonn=
a/repo/test_files/test_file_SW_Samples_1MHz_28G.bin=C2=A0=C2=A0 --type shor=
t --spb 3640 --rate 50e6 --freq 60e6=C2=A0 --gain 0 --ant TX/RX --subdev A:=
0 --bw 40 --ref internal --repeat --lo_off 80000000
[ERROR] [X300] 192.168.40.2: x300 fw communication failure #1EnvironmentErr=
or: IOError: x300 fw poke32 - reply timed out

BR,Santosh

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

 =20
------=_Part_9720576_511511568.1578676938649
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpea2f055cyahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Sam,</div><div dir=3D"ltr=
" data-setdir=3D"false">&nbsp; Since I have rebooted my machine and SDR, is=
sue not seen. I will try to reproduce and share you the results.</div><div =
dir=3D"ltr" data-setdir=3D"false">BR,</div><div dir=3D"ltr" data-setdir=3D"=
false">Santosh<br></div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_8971263758" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Friday, January 10, 2020, 3:46:19 PM GMT, Sam Reiter=
 &lt;sam.reiter@ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv5790723539"><div><div dir=3D"ltr"><div>S=
antosh,</div><div><br clear=3D"none"></div><div>Could you send the output o=
f <br clear=3D"none"></div><div><br clear=3D"none"></div><div><b>ip a</b></=
div><div><b><br clear=3D"none"></b></div><div>On you machine with the X300 =
connected?<br clear=3D"none"></div><div><b></b></div><div><br clear=3D"none=
"></div><div><div><div class=3D"yiv5790723539gmail_signature" dir=3D"ltr"><=
div dir=3D"ltr"><div><div dir=3D"ltr">Sam</div></div></div></div></div><br =
clear=3D"none"></div></div><br clear=3D"none"><div class=3D"yiv5790723539gm=
ail_quote"><div class=3D"yiv5790723539yqt7509426695" id=3D"yiv5790723539yqt=
76124"><div class=3D"yiv5790723539gmail_attr" dir=3D"ltr">On Fri, Jan 10, 2=
020 at 9:16 AM voonna santosh via USRP-users &lt;<a rel=3D"nofollow" shape=
=3D"rect" ymailto=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" h=
ref=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt=
; wrote:<br clear=3D"none"></div><blockquote class=3D"yiv5790723539gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex;"><div><div style=3D"font-family:Helvetica Neue, Helvet=
ica, Arial, sans-serif;font-size:16px;"><div dir=3D"ltr"><div><div dir=3D"l=
tr">Hi There,</div><div dir=3D"ltr">&nbsp;&nbsp; I have just updated to 3.1=
4.1 and experiencing the following issue. The system starts well, then ther=
e would be couple of underflows (even at less sampling rates) and the follo=
wing error is shown. In this case I don't see anything on the scope.</div><=
div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr">&nbsp;&nbsp; I ha=
ve restarted SDR and my PC, then it is working well. <br clear=3D"none"></d=
iv><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr">Command used:=
 <span><br clear=3D"none"></span></div><div dir=3D"ltr"><span>./tx_samples_=
from_file --args addr=3D192.168.40.2&nbsp; --file /home/svoonna/repo/test_f=
iles/test_file_SW_Samples_1MHz_28G.bin&nbsp;&nbsp; --type short --spb 3640 =
--rate 50e6 --freq 60e6&nbsp; --gain 0 --ant TX/RX --subdev A:0 --bw 40 --r=
ef internal --repeat --lo_off 80000000</span></div><div><br clear=3D"none">=
</div><div><b>[ERROR] [X300] <a rel=3D"nofollow" shape=3D"rect" target=3D"_=
blank" onclick=3D"return window.theMainWindow.showLinkWarning(this)" href=
=3D"http://192.168.40.2">192.168.40.2</a>: x300 fw communication failure #1=
</b></div><b>EnvironmentError: IOError: x300 fw poke32 - reply timed out</b=
><br clear=3D"none"><div><br clear=3D"none"></div><div dir=3D"ltr">BR,</div=
><div dir=3D"ltr">Santosh<br clear=3D"none"></div></div><div><br clear=3D"n=
one"></div></div></div></div>______________________________________________=
_<br clear=3D"none">
USRP-users mailing list<br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank" href=3D"mailto:USRP-users@lists.ettus.com">USRP-use=
rs@lists.ettus.com</a><br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"http://lists.e=
ttus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br clear=3D"none">
</blockquote></div></div></div></div></div>
            </div>
        </div></body></html>
------=_Part_9720576_511511568.1578676938649--


--===============5574944937971823726==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5574944937971823726==--

