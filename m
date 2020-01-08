Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 81626134A5A
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2020 19:18:17 +0100 (CET)
Received: from [::1] (port=56854 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipFuK-00014A-Ab; Wed, 08 Jan 2020 13:18:16 -0500
Received: from sonic304-21.consmr.mail.ne1.yahoo.com ([66.163.191.147]:40361)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <santu_voonna@yahoo.com>)
 id 1ipFuG-0000t2-Qs
 for usrp-users@lists.ettus.com; Wed, 08 Jan 2020 13:18:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1578507451; bh=LtJVYnpX6sc6MLCaAOLMyTbF7y3Q+vWeOxNRcmmG6Ts=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject;
 b=JLxcLMg6glI+W+CZ4O+j2hxdatanTKusWF2Kf2HidS6n1xMbujL/PIkCUJDcxNl+NU5dqkhZYeuiEUujkXgduJokm1h87iXmURlIZZGRhsCRMc3z647ahUSB0JMDt9FMs1zYU+5aAVWAoVShLI93gkB2xnRqfQCfgPrBdaDF7iGIYaagZdces5HIU+gMt3GZHvdJ8g9W7tn06okkj6MvEtOq0d+WIiajaLDBTVItJSMpIIO+xthYBb0HQBxaJqiJrWxE2itH/xjQr2xKiQ6KdbQOaTyVy2Jejy/ee//GPiBiiY0EeCkut6i2UQ7Hu0nKKyTaHieQMmB22hyz/eqYmw==
X-YMail-OSG: wYe6soMVM1mFosvVwoxuoc9Cat.ImhYxiUnDCuCexoAkoNGaOMAnFA9SuB.SVak
 _c2SqBt7bfTXz9H4WsEoJt35CmZqe2EZBXpCfb1jgKx3xrISNhUjCRsOkc3KsFHcRqiVH6AF9h8E
 eo9GloJXK3ogIKqaUW4knzNWBoJZU2ZDxfuSOH6jDW8TAyLEtDvOZLr6QLYMOkgJsU3RsAOmUrDE
 Iq.DdjCd1T3LH_nlnTHvDwyzotPC8VhiM6eZMZBZD8UFQ6OTA7pkApFlvZQLBrmOf69EVjkMlnQQ
 tkL_ZGGmpF1JJZVo3dpsXCbD7X5PLz.fRivtZVDvIRlgjXnRUa1oyHmAInlPSVaSFeJiNo3ZEqwl
 y0WhLIGtAf0Al23vmaxC7EjT1u5QV_ZJkZ_RwvGBqYvedGdlk40YiHd0CXLQZHQPnpTgCnsZ9TbY
 JZ1UozfPHdaL4PBoyePIAWLJhnGRcfe0fJyJG.aq7Cfw4VAJa_giw8d97q8Ma9d7Ik4PiOMHuAlw
 OZ.439ArlQMn6AT_VGNF.2mAYoNFbrqmdaPo..dT5DDUfdnQZRZJ8sG.IV0wyVbJUsl5nPGENgce
 ZU3tIuA..Xn0cGkN0wj_xJQSjhKuymmrJZwWFFqvEaKY2_KVBcIEPxpBCz9B.lcSF2fZGMfA2EJ.
 OmCEx2kTTSm4X_MaWbOMvmWT61_0uajjnV5wJMM08po5hoipm9UvYtphxUDIZzoTQg0kP2eV7oxn
 B2ZQpdM8lOwrbxTYkiBTrYj_t7jGrQRKfyLkUB6bfMGEsbBuZm5nGUuz8qgd_9E3AKo2.MU9F1Qr
 nwzNGePgt5Jf0LR8Fe9HnnBnOHoATcdnuvh31FjlhTCWPj2u._.ESxp3GNvhvEmMUt9ldYaN0SN.
 _aaWQAumvkf12S11rk1A_Fx.bCZIVl69Jht6s0r4hG6NmQccUlRrw0oi0v32FDLBU45_NE4sYpA7
 60Z9VMsPlWhSOOhe4f.DNfjV9gn3N80uERDkRetETuDWtbcAyb2kpECPAE11jsfwiX5bglEZctaX
 aMFegSNHet9O5uOF0z.xrz88ldHX0gDNf_U0kQkIJC.LUHn3fqtlnZZZp069ROLCFELDZAusr77m
 fGaaofBIu05wo4w0mS5inqlR4M8K1TdmG5fAHW2e2U5gSv6lLAN_F._JxpRkdEQrJs6kWvkLQVxA
 EyOWXvSS72qKSpFYVM4FlFV2MOjD2KWcvtyWFxH85aAfwG6fLNIrsmD70d7YEzqsW9jMMB.sNqr4
 jh8WjD1Yohu26JuB58HWzlLsTMSEcUocoSOhZej_qJgtVBVZgkIWYHBQ51XWlbnua5SrJ8gSQUIR
 4guRAkf_ZGed9e8sG2ZYEMv5FH47fk0Vk2WlzXciy
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.ne1.yahoo.com with HTTP; Wed, 8 Jan 2020 18:17:31 +0000
Date: Wed, 8 Jan 2020 18:17:28 +0000 (UTC)
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID: <900064020.8665629.1578507448504@mail.yahoo.com>
In-Reply-To: <12EB7A0E-F5F7-4FC8-A6CD-92A42E52F6B0@gmail.com>
References: <1258262887.8487449.1578490158766@mail.yahoo.com>
 <12EB7A0E-F5F7-4FC8-A6CD-92A42E52F6B0@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.14873 YMailNorrin Mozilla/5.0 (X11; Linux x86_64;
 rv:68.0) Gecko/20100101 Firefox/68.0
Subject: Re: [USRP-users] tx_samples_from_file : Issue with repeat option
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
Content-Type: multipart/mixed; boundary="===============2560409052979840355=="
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

--===============2560409052979840355==
Content-Type: multipart/alternative; 
	boundary="----=_Part_8665628_397706787.1578507448502"
Content-Length: 4834

------=_Part_8665628_397706787.1578507448502
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Marcus,I am using USRP X300

    On Wednesday, January 8, 2020, 6:13:26 PM GMT, Marcus D Leech <patchvon=
braun@gmail.com> wrote: =20
=20
 Are you able to use a more recent UHD?
What device type?

Sent from my iPhone

On Jan 8, 2020, at 8:30 AM, voonna santosh via USRP-users <usrp-users@lists=
.ettus.com> wrote:



=EF=BB=BFHi There,=C2=A0=C2=A0 Good morning. I am experiencing an issue wit=
h tx_samples_from_file when using option "--repeat". Everything looks alrig=
ht when it TX the file, but once it reaches the end of the file, it prints =
S and nothing appears on analyzer soon after that.=20

The command I am using: ./tx_samples_from_file --args addr=3D192.168.40.2=
=C2=A0 --file /home/santoshvoonna/repo/test_files/test_file_SW_Samples_28G.=
bin=C2=A0=C2=A0 --type short --spb 3640 --rate 50e6 --freq 60e6=C2=A0 --gai=
n 0 --ant TX/RX --subdev A:0 --bw 40 --ref internal --delay 0 --repeat=20

Git tag: release_003_010_001_000


Thanks and Regards,Santosh

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

 =20
------=_Part_8665628_397706787.1578507448502
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpf519db33yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,</div><div dir=3D"=
ltr" data-setdir=3D"false">I am using USRP X300<br></div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_9326676555" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Wednesday, January 8, 2020, 6:13:26 PM GMT, Marcus D=
 Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv2196727461"><div>Are you able to use a m=
ore recent UHD?<div><br clear=3D"none"></div><div>What device type?<br clea=
r=3D"none"><br clear=3D"none"><div dir=3D"ltr">Sent from my iPhone</div><di=
v dir=3D"ltr"><div class=3D"yiv2196727461yqt5783188279" id=3D"yiv2196727461=
yqtfd89129"><br clear=3D"none"><blockquote type=3D"cite">On Jan 8, 2020, at=
 8:30 AM, voonna santosh via USRP-users &lt;usrp-users@lists.ettus.com&gt; =
wrote:<br clear=3D"none"><br clear=3D"none"></blockquote></div></div><block=
quote type=3D"cite"><div dir=3D"ltr"><div class=3D"yiv2196727461yqt57831882=
79" id=3D"yiv2196727461yqtfd57626">=EF=BB=BF</div><div class=3D"yiv21967274=
61yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helvetica, Arial, =
sans-serif;font-size:16px;"><div class=3D"yiv2196727461yqt5783188279" id=3D=
"yiv2196727461yqtfd09113"><div dir=3D"ltr">Hi There,</div><div dir=3D"ltr">=
&nbsp;&nbsp; Good morning. I am experiencing an issue with <span>tx_samples=
_from_file when using option "--repeat". Everything looks alright when it T=
X the file, but once it reaches the end of the file, it prints S and nothin=
g appears on analyzer soon after that. <br clear=3D"none"></span></div><div=
 dir=3D"ltr"><span><br clear=3D"none"></span></div></div><div dir=3D"ltr"><=
div class=3D"yiv2196727461yqt5783188279" id=3D"yiv2196727461yqtfd19957"><sp=
an>The command I am using: <span>./tx_samples_from_file --args addr=3D192.1=
68.40.2&nbsp; --file /home/santoshvoonna/repo/test_files/test_file_SW_Sampl=
es_28G.bin&nbsp;&nbsp; --type short --spb 3640 --rate 50e6 --freq 60e6&nbsp=
; --gain 0 --ant TX/RX --subdev A:0 --bw 40 --ref internal --delay 0 --repe=
at <br clear=3D"none"></span></span><div><br clear=3D"none"></div><div dir=
=3D"ltr">Git tag: <span>release_003_010_001_000</span><br clear=3D"none"></=
div><div><br clear=3D"none"></div><div><br clear=3D"none"></div><div dir=3D=
"ltr">Thanks and Regards,</div></div><div dir=3D"ltr"><div class=3D"yiv2196=
727461yqt5783188279" id=3D"yiv2196727461yqtfd28993">Santosh</div><br clear=
=3D"none"></div><span></span><br clear=3D"none"></div></div><span>_________=
______________________________________</span><br clear=3D"none"><span>USRP-=
users mailing list</span><br clear=3D"none"><span>USRP-users@lists.ettus.co=
m</span><br clear=3D"none"><span>http://lists.ettus.com/mailman/listinfo/us=
rp-users_lists.ettus.com</span><div class=3D"yiv2196727461yqt5783188279" id=
=3D"yiv2196727461yqtfd34122"><br clear=3D"none"></div></div></blockquote></=
div></div></div></div>
            </div>
        </div></body></html>
------=_Part_8665628_397706787.1578507448502--


--===============2560409052979840355==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2560409052979840355==--

