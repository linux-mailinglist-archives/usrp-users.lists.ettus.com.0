Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EC5138EF3
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jan 2020 11:23:14 +0100 (CET)
Received: from [::1] (port=40330 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iqwsG-0006Fm-MP; Mon, 13 Jan 2020 05:23:08 -0500
Received: from sonic311-23.consmr.mail.ne1.yahoo.com ([66.163.188.204]:32990)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <santu_voonna@yahoo.com>)
 id 1iqwsC-000685-Me
 for usrp-users@lists.ettus.com; Mon, 13 Jan 2020 05:23:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1578910943; bh=ybsV5VmRldnLgnZ2OadJ18WShIq1KUiFmHCvQ7y14Yg=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject;
 b=NjN4mCPiACW+iShFS1rgWps8VpdyMAlXeaZvUr+/BkNjw1JQIXuhdbP74Kp94L8v/6wVPTXgj8bySOOS0++9JCg4V8z8at/avLM0FY8YNrs4ONHtsK0zPmIE+5r8PGngoTMhuS2siYuM588e602HAdtLbnPYbARjgsxSyg+93hoOdAP6jT+unBIg5LtaY1fmh+5xsz7T/o+e7F9EexRwYUW6q+UmY9cp6paVjwT7tHWdau7tK5fsZq4I6xXDGu3oJl2cWkQGH0XjRAucdUXSMn87AVv7mWP75ah+GuE51YIMU8eSQTqrD5VQdwTkHT0bhcgtznwhipqltNTFJM5kjw==
X-YMail-OSG: eO4M3.MVM1lmFN9d_7KhtLaEsYZTcElXtVZ1i6.18409aWClhPGIHFeE.Q.6yDo
 6FN1H4_M4VXMd6mQuM9TBA3VkaG1rvvFeTYEesqEvnfgU6dCfr0Q_uXwfHlxWULNt3Q30PMje6gQ
 Ryp0R4_eBemQbWJ.8Ab2al1RXzt_xlweha_rdjTxIyzq81fDLOrZetoJuNkpoXMF3ZjnJE2nqBB7
 RfLrBxgE5Xg3sVsKWGyLk9LUuN8UUhHo3_X7fVzmPGAGQwo9NjF_qAfaC3piQk77jUrzJ9hK64Tu
 NnQvSFPEVc4LFZjdaRdpJ0cL2hhVW6WZkV8xtjiZ.JRh4qlzsOUUkA9PgWTgyOeJ1ZQmCiFrKOTE
 mG1rqgy6c4kU0z4lXcCXUWsNnLm4o3yhFpsM29opG_tLwEGPFSAw7FGfQV5RmaK7HqaUvNDUcrzq
 AapsD7T_o0LaZ60V1ECXM4tDxT0giAksY7xgpyqTx5OQB.oCu3HJt7jTnv24I0RTxTSjYzI64WCg
 4EUsOgUQWjtyi76.rt23.CPyfZRASzrC5XHPsAsobH10qD8QebQ6m27JCBDpFoWPDStLt..LKZTP
 uRRQwapanAtI91qtWycfMnCm2GJ7BgnZJCLG6qJZvfV5cJq8s8UzSspD5RlD0d2BsLjB7BphcaQC
 ASWSNtVfve3c_w2sIpxJmdDBsdafBDffCiUKcKklvQVquGhNzf3nz4v1KG6xwu3KHTB7mm0Tmiw5
 O8k2mHX.pJx7zx4emNwECixpGlZiNXbWq9COTJbwGZVkNtMhgTWtL.Lro1q0vayyRt792tS68DwU
 Zmes_8lVOnYtUM2m4HVc4Uj_OA5EBbDsyALcka_I7qYMscmp_m_UTTomGhIEijx6zncZpCorci9x
 xjrool3wkU9NnnZn1v.t.sJiKaggUllhJSspVnopmn6Wbg.eQt6wzwRidLwJDN_z4tL8xYIph2Vd
 KdY4t038NUdD_TgazoRwjAMtPHPEfboThsJRBJTqZbxz.IXUC3nunnfM8YeMJDxs6nyX4VfcBlJj
 0W4yroX1Y2xqX308aDGJ5YtPA2jy9OzBW0dzRHBcEwo3a9LuKsTpkCKaw3cvqRdPixyNwysTnWMm
 xtmMN_Vdr1aXCySCdEb4ywj4_YRSKhjQEbMqIX9vMbzGJjDqAGe1todNyulag15hhiFGUJldsCaL
 .g8SDock3IqGRMcdvzvaG5L0L1PLsR16woj1XS6r9RPcaVDrennq1hmLI1rJuTFQuUE0MZALYCDA
 e8UwWbsghsewc1ymsDgL.HVa90Qo5JYtPBqI8PHRJgEEPwK7uIJd1YSOi1VYpYkXsEFk52UwS7Il
 Tg.BI5DGkLHaRd1rgJTx5Aeq5kOml9z2d6kdV1Fk-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic311.consmr.mail.ne1.yahoo.com with HTTP; Mon, 13 Jan 2020 10:22:23 +0000
Date: Mon, 13 Jan 2020 10:22:20 +0000 (UTC)
To: Sam Reiter <sam.reiter@ettus.com>
Message-ID: <740862592.10631399.1578910940117@mail.yahoo.com>
In-Reply-To: <155074570.9720577.1578676938651@mail.yahoo.com>
References: <826572958.9669290.1578669344799.ref@mail.yahoo.com>
 <826572958.9669290.1578669344799@mail.yahoo.com>
 <CANf970bnEtmcTCOkYseriRLnXLc668Q1Krq9EvseYxrpnrTUSQ@mail.gmail.com>
 <155074570.9720577.1578676938651@mail.yahoo.com>
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
Content-Type: multipart/mixed; boundary="===============3939430170558195799=="
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

--===============3939430170558195799==
Content-Type: multipart/alternative; 
	boundary="----=_Part_10631398_2089064108.1578910940115"
Content-Length: 12257

------=_Part_10631398_2089064108.1578910940115
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Sam,=C2=A0=C2=A0 I have managed to reproduce this issue and when it hap=
pens, here is the info you have asked for:

1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group d=
efault qlen 1000
=C2=A0=C2=A0=C2=A0 link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
=C2=A0=C2=A0=C2=A0 inet 127.0.0.1/8 scope host lo
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft foreve=
r
=C2=A0=C2=A0=C2=A0 inet6 ::1/128 scope host=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft foreve=
r
2: enp3s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc mq state UP g=
roup default qlen 1000
=C2=A0=C2=A0=C2=A0 link/ether 00:e0:4b:6b:0c:41 brd ff:ff:ff:ff:ff:ff
=C2=A0=C2=A0=C2=A0 inet 192.168.40.20/24 brd 192.168.40.255 scope global no=
prefixroute enp3s0f0
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft foreve=
r
=C2=A0=C2=A0=C2=A0 inet6 fe80::2e0:4bff:fe6b:c41/64 scope link=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft foreve=
r
3: enp3s0f1: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DO=
WN group default qlen 1000
=C2=A0=C2=A0=C2=A0 link/ether 00:e0:4b:6b:0c:42 brd ff:ff:ff:ff:ff:ff
4: enp8s0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DOWN=
 group default qlen 1000
=C2=A0=C2=A0=C2=A0 link/ether 00:0c:8b:71:75:78 brd ff:ff:ff:ff:ff:ff
5: enp15s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP gr=
oup default qlen 1000
=C2=A0=C2=A0=C2=A0 link/ether 00:e0:4b:6b:0c:43 brd ff:ff:ff:ff:ff:ff
=C2=A0=C2=A0=C2=A0 inet 192.168.10.20/24 brd 192.168.10.255 scope global no=
prefixroute enp15s0
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft foreve=
r
=C2=A0=C2=A0=C2=A0 inet6 fe80::2e0:4bff:fe6b:c43/64 scope link=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft foreve=
r
6: virbr0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state=
 DOWN group default qlen 1000
=C2=A0=C2=A0=C2=A0 link/ether 52:54:00:07:9b:55 brd ff:ff:ff:ff:ff:ff
=C2=A0=C2=A0=C2=A0 inet 192.168.122.1/24 brd 192.168.122.255 scope global v=
irbr0
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft foreve=
r
7: virbr0-nic: <BROADCAST,MULTICAST> mtu 1500 qdisc pfifo_fast master virbr=
0 state DOWN group default qlen 1000
=C2=A0=C2=A0=C2=A0 link/ether 52:54:00:07:9b:55 brd ff:ff:ff:ff:ff:ff

BR,Santosh

    On Friday, January 10, 2020, 5:22:18 PM GMT, voonna santosh <santu_voon=
na@yahoo.com> wrote: =20
=20
  Hi Sam,=C2=A0 Since I have rebooted my machine and SDR, issue not seen. I=
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
------=_Part_10631398_2089064108.1578910940115
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp96ea2f5byahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Sam,</div><div dir=3D"ltr=
" data-setdir=3D"false">&nbsp;&nbsp; I have managed to reproduce this issue=
 and when it happens, here is the info you have asked for:</div><div dir=3D=
"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false=
"><br></div><div dir=3D"ltr" data-setdir=3D"false"><div>1: lo: &lt;LOOPBACK=
,UP,LOWER_UP&gt; mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1=
000<br>&nbsp;&nbsp;&nbsp; link/loopback 00:00:00:00:00:00 brd 00:00:00:00:0=
0:00<br>&nbsp;&nbsp;&nbsp; inet 127.0.0.1/8 scope host lo<br>&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; valid_lft forever preferred_lft forever<br>&nbsp;&nb=
sp;&nbsp; inet6 ::1/128 scope host <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 valid_lft forever preferred_lft forever<br>2: enp3s0f0: &lt;BROADCAST,MULT=
ICAST,UP,LOWER_UP&gt; mtu 9000 qdisc mq state UP group default qlen 1000<br=
>&nbsp;&nbsp;&nbsp; link/ether 00:e0:4b:6b:0c:41 brd ff:ff:ff:ff:ff:ff<br>&=
nbsp;&nbsp;&nbsp; inet 192.168.40.20/24 brd 192.168.40.255 scope global nop=
refixroute enp3s0f0<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; valid_lft forev=
er preferred_lft forever<br>&nbsp;&nbsp;&nbsp; inet6 fe80::2e0:4bff:fe6b:c4=
1/64 scope link <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; valid_lft forever =
preferred_lft forever<br>3: enp3s0f1: &lt;NO-CARRIER,BROADCAST,MULTICAST,UP=
&gt; mtu 1500 qdisc mq state DOWN group default qlen 1000<br>&nbsp;&nbsp;&n=
bsp; link/ether 00:e0:4b:6b:0c:42 brd ff:ff:ff:ff:ff:ff<br>4: enp8s0: &lt;N=
O-CARRIER,BROADCAST,MULTICAST,UP&gt; mtu 1500 qdisc mq state DOWN group def=
ault qlen 1000<br>&nbsp;&nbsp;&nbsp; link/ether 00:0c:8b:71:75:78 brd ff:ff=
:ff:ff:ff:ff<br>5: enp15s0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 150=
0 qdisc mq state UP group default qlen 1000<br>&nbsp;&nbsp;&nbsp; link/ethe=
r 00:e0:4b:6b:0c:43 brd ff:ff:ff:ff:ff:ff<br>&nbsp;&nbsp;&nbsp; inet 192.16=
8.10.20/24 brd 192.168.10.255 scope global noprefixroute enp15s0<br>&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; valid_lft forever preferred_lft forever<br>&n=
bsp;&nbsp;&nbsp; inet6 fe80::2e0:4bff:fe6b:c43/64 scope link <br>&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; valid_lft forever preferred_lft forever<br>6: vi=
rbr0: &lt;NO-CARRIER,BROADCAST,MULTICAST,UP&gt; mtu 1500 qdisc noqueue stat=
e DOWN group default qlen 1000<br>&nbsp;&nbsp;&nbsp; link/ether 52:54:00:07=
:9b:55 brd ff:ff:ff:ff:ff:ff<br>&nbsp;&nbsp;&nbsp; inet 192.168.122.1/24 br=
d 192.168.122.255 scope global virbr0<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; valid_lft forever preferred_lft forever<br>7: virbr0-nic: &lt;BROADCAST,=
MULTICAST&gt; mtu 1500 qdisc pfifo_fast master virbr0 state DOWN group defa=
ult qlen 1000<br>&nbsp;&nbsp;&nbsp; link/ether 52:54:00:07:9b:55 brd ff:ff:=
ff:ff:ff:ff</div><div><br></div><div><br></div><div dir=3D"ltr" data-setdir=
=3D"false">BR,</div><div dir=3D"ltr" data-setdir=3D"false">Santosh<br></div=
></div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_9097751347" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Friday, January 10, 2020, 5:22:18 PM GMT, voonna san=
tosh &lt;santu_voonna@yahoo.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv2417742129"><div><div class=3D"yiv241774=
2129ydpea2f055cyahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helve=
tica, Arial, sans-serif;font-size:16px;"><div></div>
        <div dir=3D"ltr">Hi Sam,</div><div dir=3D"ltr">&nbsp; Since I have =
rebooted my machine and SDR, issue not seen. I will try to reproduce and sh=
are you the results.</div><div dir=3D"ltr">BR,</div><div dir=3D"ltr">Santos=
h<br clear=3D"none"></div><div><br clear=3D"none"></div>
       =20
        </div><div class=3D"yiv2417742129yqt1360149814" id=3D"yiv2417742129=
yqt42620"><div class=3D"yiv2417742129yahoo_quoted" id=3D"yiv2417742129yahoo=
_quoted_8971263758">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Friday, January 10, 2020, 3:46:19 PM GMT, Sam Reiter=
 &lt;sam.reiter@ettus.com&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div id=3D"yiv2417742129"><div><div dir=3D"ltr"><div>S=
antosh,</div><div><br clear=3D"none"></div><div>Could you send the output o=
f <br clear=3D"none"></div><div><br clear=3D"none"></div><div><b>ip a</b></=
div><div><b><br clear=3D"none"></b></div><div>On you machine with the X300 =
connected?<br clear=3D"none"></div><div><b></b></div><div><br clear=3D"none=
"></div><div><div><div class=3D"yiv2417742129gmail_signature" dir=3D"ltr"><=
div dir=3D"ltr"><div><div dir=3D"ltr">Sam</div></div></div></div></div><br =
clear=3D"none"></div></div><br clear=3D"none"><div class=3D"yiv2417742129gm=
ail_quote"><div class=3D"yiv2417742129yqt7509426695" id=3D"yiv2417742129yqt=
76124"><div class=3D"yiv2417742129gmail_attr" dir=3D"ltr">On Fri, Jan 10, 2=
020 at 9:16 AM voonna santosh via USRP-users &lt;<a rel=3D"nofollow" shape=
=3D"rect" ymailto=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" h=
ref=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt=
; wrote:<br clear=3D"none"></div><blockquote class=3D"yiv2417742129gmail_qu=
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
        </div></div></div></div></div>
            </div>
        </div></body></html>
------=_Part_10631398_2089064108.1578910940115--


--===============3939430170558195799==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3939430170558195799==--

