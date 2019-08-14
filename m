Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1718C9E4
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2019 05:34:50 +0200 (CEST)
Received: from [::1] (port=40642 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxk3g-0004MC-3p; Tue, 13 Aug 2019 23:34:44 -0400
Received: from sonic305-3.consmr.mail.bf2.yahoo.com ([74.6.133.42]:35780)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <t_whit_87@yahoo.com>) id 1hxk3c-0004I5-58
 for usrp-users@lists.ettus.com; Tue, 13 Aug 2019 23:34:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1565753639; bh=iV4RcDzUl+L6O/x87BbjqJsLddQ3znV4c5+XaiCp4gc=;
 h=Date:From:To:Subject:References:From:Subject;
 b=OivlHK4LMnFxYEruiNPw8+lH5TQ3Km9fINmo729pBneur6Iu/Sw5Zh85HgoTqHf/RO9VHNOuPvsqVDN6Vy5xqIOLGEZg3qlIANmr8B8SnzpoWKIrRlgoFpnVOhcwdIG17rXsvqmV83UOekvW5ZluNHj/F5JMXScGpxXx+cHG+NMUFwKFqH+/xli7Uwz2fLLUeWauuRDnCn52qyB9478J1Rm+gqANYunudImyhxTGNID329I8wtQ1rSYRDSMVWj4AlE1Q4IGWQfM2W2d51mxCvIw/g6jk4q1B/oaunHaiJ2fIQ+HNQcuZBlKM18Paq9q9rCinFqKXWLkb2DfLA7HDpw==
X-YMail-OSG: 65.WqV0VM1lAtvU55fEsH7yN.Moa5q1XypYCxQB91tQTzxa1oDrtmV.YndqtyTq
 ZEjR3REOAtO_IiogJkEuCly_aeAgQyT17vII.VklM6EXkpwbFE07zdw9q_k2Tpk7G2wbU.BkVbaW
 vQOklQGGU8T6mENEvXxr_.WlypwW8VmGDhP.ZeaCGlyJSAgvbGZYzzFX5JtxL4vENsInNOVCB04U
 rsVM72.N6EiDERFxqldPRj_4_yw9HFndCSBh1f5L.ZMWrettRhxZMTp47CvGVWKK4SYWnDVWKAXs
 6Ux3KCa.hQrUBGFDaMFMegbd_YAo2q_A2mOwgqh0BqMoOQaVaihSdJ2lwWf6u_f4UrheGA6Xi5C4
 InT2sKeNHGoTcAxqUKHP8wSW9J0i8OCSPqwVkF4rFBX_bFdRGKs81jh16XWW7rVsodMk5RBurqnG
 wR2qjnY.tVwEnaxSv7vxpGG87tGVr.PUJEsmtzHzIuo8z1SR01Pik298ZX.XCEM1F41uqZrcj_EA
 ZkSSy.IoW_NfEIh9k4lDYfYdYeOsu3BiGhWs2bSycIWDScG7ls3hEzVvf01xKoO197mZaSiA.aOg
 Wn7URRX5CaYwm3HEvQONTeEzqLn6gekqRK.d3r98pRpG7PbgxeB87k9LABF6j6pTglxDu4qvjYT4
 ZpDEYOwTFKpkztiLqlFeS0BOmT.YhITD2_0n0ZYHPt0vCIhZwqka9n.d1xK6Lv_8mC4hpLwNNOom
 sAqReTjzqVEFDzBcr5NrkoWu7TVDuZh6fq0v70f0FcziiFWr5z1ehy7Rf2n_4E.5oUgAI93rRId.
 kmimiBTSWXgYImBqrEvOo3fwD1NlIX9MBL.RMkgeQjJqQ0eyRWBKCB2zCUckHoXyispRI.YOrSFy
 Tptz1AoXIVL_Os9jGcAafnVEf9IFs5Gff27cj.9sGPABt9iyarLvD5VVBPAoa8bDJhH0tHLFQHMQ
 Ua5GCOwA40c_EW4ShFYIe.Tz8r2x9yyEkZshmmVN9ESYT8fCi3yYnZxMsjoasKCN_ZKTtfgpfmWK
 YfKOMWYlIoOiCspAVf0PGINnLrpI_sIallYAuTC8cNIgVXolirQPMqvbHgfYZA.PNpUquQpDvfn9
 YLSERV1eGMeOKb_P7hTMe7odMm6uMNQjMfj5wbOJQFw.7qWT8h8ieINHTg.ENNzbGjyd3VmfvWJw
 txZjr5rzoVuGrpCKGQffhXO.r1HZxuUxoORU6t1lzh8z0yBZ_WsPfolUqO.aRGCXCcZPb4Y9D_pe
 5JLo-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic305.consmr.mail.bf2.yahoo.com with HTTP; Wed, 14 Aug 2019 03:33:59 +0000
Date: Wed, 14 Aug 2019 03:33:54 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1754624003.3660157.1565753634913@mail.yahoo.com>
MIME-Version: 1.0
References: <1754624003.3660157.1565753634913.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14097 YMailNorrin Mozilla/5.0 (Windows NT 10.0; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140
 Safari/537.36 Edge/18.17763
Subject: [USRP-users] UHD Error with X310
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
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============7474203728316329868=="
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

--===============7474203728316329868==
Content-Type: multipart/alternative; 
	boundary="----=_Part_3660156_1480511919.1565753634911"
Content-Length: 8730

------=_Part_3660156_1480511919.1565753634911
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All
I seem to be receiving an a uhd error that is causing flowgraphs to stop wh=
en trying to send and receive using the USRP X310. Now, I'm receiving the s=
ame error shown below when running the "uhd_usrp_probe" command. Not quite =
sure where this error is coming from but I see rfnoc in the last line of th=
e printout below which leads me to believe that rfnoc could have something =
to do with the error. However, I'm not working with the rfnoc branch of uhd=
. I believe someone else who was using the device before me may have been u=
sing rfnoc. So, if this is indeed the issue, is there a way to rid the fpga=
 of rfnoc and use a regular, up to date image?=C2=A0o,=C2=A0
I'm working inside of a VM running Ubuntu 16.04 LTS. I'm using UHD_3.15.0.g=
it-34-g3c8ed1b5 as shown below, with GNU Radio 3.7.7.=C2=A0
mitll@mitll-virtual-machine:~$ uhd_usrp_probe=20
[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.15.=
0.git-34-g3c8ed1b5
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[WARNING] [UDP] The recv buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.rmem_max=3D24266666
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 24266666 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D24266666
[WARNING] [UDP] The current recv_buff_size of 212992 is less than the minim=
um recommended size of 816000 and may result in dropped packets on some NIC=
s
[ERROR] [UHD] Exception caught in safe-call.
=C2=A0 in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with uhd::endia=
nness_t _endianness =3D (uhd::endianness_t)0u]
=C2=A0 at /home/mitll/uhd/host/lib/rfnoc/ctrl_iface.cpp:52
this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl (C=
E_00_Port_30) no response packet - AssertionError: bool(buff)
=C2=A0 in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)=
 [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0u; uint64_t =
=3D long unsigned int]
=C2=A0 at /home/mitll/uhd/host/lib/rfnoc/ctrl_iface.cpp:142Error: Environme=
ntError: IOError: Block ctrl (CE_00_Port_30) no response packet - Assertion=
Error: bool(buff)
=C2=A0 in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)=
 [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0u; uint64_t =
=3D long unsigned int]
=C2=A0 at /home/mitll/uhd/host/lib/rfnoc/ctrl_iface.cpp:142
Regards
Tellrell=C2=A0



------=_Part_3660156_1480511919.1565753634911
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div><div =
class=3D"ydp23622931I_52qC ydp23622931D_FY ydp23622931W_6D6F" style=3D"widt=
h: 100%; text-align: left; color: rgb(29, 34, 40); text-transform: none; te=
xt-indent: 0px; letter-spacing: normal; font-family: Helvetica Neue,Segoe U=
I,Helvetica,Arial,Lucida Grande,sans-serif; font-size: 13px; font-style: no=
rmal; font-variant: normal; font-weight: 400; text-decoration: none; word-s=
pacing: 0px; display: table; white-space: normal; orphans: 2; background-co=
lor: rgb(255, 255, 255);" data-test-id=3D"message-view-body"><div class=3D"=
ydp23622931msg-body ydp23622931P_wpofO ydp23622931iy_A ydp23622931mq_AS" st=
yle=3D"padding: 2px 0px 0px; line-height: normal; font-family: Helvetica Ne=
ue,Helvetica,Arial,sans-serif;" data-test-id=3D"message-view-body-content">=
<div class=3D"ydp23622931jb_0 ydp23622931X_6MGW ydp23622931N_6Fd5" style=3D=
"padding-bottom: 0px; padding-left: 24px; padding-right: 16px;"><div><div i=
d=3D"ydp23622931yiv3276655677"><div><div class=3D"ydp23622931yiv3276655677y=
dpc0dc2ac8yahoo-style-wrap" style=3D"font-family: Helvetica Neue,Helvetica,=
Arial,sans-serif; font-size: 13px;"><div dir=3D"ltr">Hello All</div><div di=
r=3D"ltr"><br></div><div dir=3D"ltr">I seem to be receiving an a uhd error =
that is causing flowgraphs to stop when trying to send and receive using th=
e USRP X310. Now, I'm receiving the same error shown below when running the=
 "uhd_usrp_probe" command. Not quite sure where this error is coming from b=
ut I see rfnoc in the last line of the printout below which leads me to bel=
ieve that rfnoc could have something to do with the error. However, I'm not=
 working with the rfnoc branch of uhd. I believe someone else who was using=
 the device before me may have been using rfnoc. S<font style=3D"background=
-color: rgb(255, 255, 255);">o, if this is indeed the issue, is<span style=
=3D"color: rgb(0, 0, 0); display: inline; float: none; font-family: Helveti=
ca Neue,Helvetica,Arial,sans-serif; font-size: 13px; font-style: normal; fo=
nt-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; t=
ext-align: left; text-decoration: none; text-indent: 0px; text-transform: n=
one; white-space: normal; word-spacing: 0px;"> there a way to rid the fpga =
of rfnoc and use a regular, up to date image?&nbsp;</span></font>o,&nbsp;</=
div><div dir=3D"ltr"><br></div><div dir=3D"ltr">I'm working inside of a VM =
running Ubuntu 16.04 LTS. I'm using <span><span style=3D"background-color: =
rgb(255, 255, 255); color: rgb(0, 0, 0); display: inline; float: none; font=
-family: Helvetica Neue,Helvetica,Arial,sans-serif; font-size: 13px; font-s=
tyle: normal; font-variant: normal; font-weight: 400; letter-spacing: norma=
l; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; t=
ext-transform: none; white-space: normal; word-spacing: 0px;">UHD_3.15.0.gi=
t-34-g3c8ed1b5 as shown below, with GNU Radio 3.7.7.&nbsp;</span></span></d=
iv><div dir=3D"ltr"><b></b><i></i><u></u><sub></sub><sup></sup><strike></st=
rike><br></div><div dir=3D"ltr">mitll@mitll-virtual-machine:~$ uhd_usrp_pro=
be <br>[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UH=
D_3.15.0.git-34-g3c8ed1b5<br>[INFO] [X300] X300 initialization sequence...<=
br>[INFO] [X300] Maximum frame size: 1472 bytes.<br>[INFO] [X300] Radio 1x =
clock: 200 MHz<br>[WARNING] [UDP] The recv buffer could not be resized suff=
iciently.<br>Target sock buff size: 24266666 bytes.<br>Actual sock buff siz=
e: 212992 bytes.<br>See the transport application notes on buffer resizing.=
<br>Please run: sudo sysctl -w net.core.rmem_max=3D24266666<br>[WARNING] [U=
DP] The send buffer could not be resized sufficiently.<br>Target sock buff =
size: 24266666 bytes.<br>Actual sock buff size: 212992 bytes.<br>See the tr=
ansport application notes on buffer resizing.<br>Please run: sudo sysctl -w=
 net.core.wmem_max=3D24266666<br>[WARNING] [UDP] The current recv_buff_size=
 of 212992 is less than the minimum recommended size of 816000 and may resu=
lt in dropped packets on some NICs<br>[ERROR] [UHD] Exception caught in saf=
e-call.<br>&nbsp; in ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl()=
 [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0u]<br>&nbsp; a=
t /home/mitll/uhd/host/lib/rfnoc/ctrl_iface.cpp:52<br>this-&gt;send_cmd_pkt=
(0, 0, true); -&gt; EnvironmentError: IOError: Block ctrl (CE_00_Port_30) n=
o response packet - AssertionError: bool(buff)<br>&nbsp; in uint64_t ctrl_i=
face_impl&lt;_endianness&gt;::wait_for_ack(bool, double) [with uhd::endiann=
ess_t _endianness =3D (uhd::endianness_t)0u; uint64_t =3D long unsigned int=
]<br>&nbsp; at /home/mitll/uhd/host/lib/rfnoc/ctrl_iface.cpp:142</div><div>=
Error: EnvironmentError: IOError: Block ctrl (CE_00_Port_30) no response pa=
cket - AssertionError: bool(buff)<br>&nbsp; in uint64_t ctrl_iface_impl&lt;=
_endianness&gt;::wait_for_ack(bool, double) [with uhd::endianness_t _endian=
ness =3D (uhd::endianness_t)0u; uint64_t =3D long unsigned int]<br>&nbsp; a=
t /home/mitll/uhd/host/lib/rfnoc/ctrl_iface.cpp:142</div><div><br></div><di=
v dir=3D"ltr">Regards<br></div><div dir=3D"ltr">Tellrell&nbsp;</div><b></b>=
<i></i><u></u><sub></sub><sup></sup><strike></strike><div><br></div></div><=
/div></div></div></div></div><div class=3D"ydp23622931jb_0 ydp23622931X_6MG=
W ydp23622931N_6Fd5" style=3D"padding-bottom: 0px; padding-left: 24px; padd=
ing-right: 16px;"><br></div></div></div><b></b><i></i><u></u><sub></sub><su=
p></sup><strike></strike><div><br></div></div></body></html>
------=_Part_3660156_1480511919.1565753634911--


--===============7474203728316329868==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7474203728316329868==--

