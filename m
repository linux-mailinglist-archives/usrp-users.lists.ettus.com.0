Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4439D148F6
	for <lists+usrp-users@lfdr.de>; Mon,  6 May 2019 13:32:19 +0200 (CEST)
Received: from [::1] (port=55732 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hNbqu-00032x-LS; Mon, 06 May 2019 07:32:12 -0400
Received: from sonic305-19.consmr.mail.sg3.yahoo.com ([106.10.241.82]:38811)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <rensisam@yahoo.co.in>)
 id 1hNbqM-0002qS-Hd
 for usrp-users@lists.ettus.com; Mon, 06 May 2019 07:32:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.in; s=s2048;
 t=1557142255; bh=efKBdm8z2EVoxMrdGH+rNnOolkF5YWIYpUf2RiXji9Y=;
 h=Date:From:To:In-Reply-To:References:Subject:From:Subject;
 b=tSykUoE7I2j7VMBwgZwll/JIKODWy3gnBecOFOLbpqVbz/X1L9+/Ib0YpAdXTTkLbO0SYmBQb9kmON37HRpWLM0dyaWRLWJu2kUclMCpHaDxBUtXrgiJ3c3nRyIuFLVTywVftJkHyLI3iW6VSWryYZjgIJpRUNwXNWEakQwgPOytJkyfP+8HCGAvRZpz28IC74pPg7P5l02E6hbZwjoZ08H+04iPbwxKIxPtgn+TTZly+fZ8Ccht52Mc3RMXmX3FucL7YCbJ+jO6jLBebteEe6ExzsQlQqSqN5dd+OtCkT3AoLtnSR91NkeKqdZ72wVYseJJNv16lJuEbvTxy8ksDg==
X-YMail-OSG: ChnnuhcVM1lTLU6gnqx_VyE78UWKRlcKAenDPLE1MnuQYjpx4DuFFGZTz4G9_fs
 UwQGiNDARxczhsbpI6dBPHcWXVmmDThavsNM5DPkERvGiK05iX7FafPTIfyaTn_1J1KuZUnaH.R5
 vBrFFap7oQ.g2e9jJu57xb1y8Na3t7ji.bRaWvQiaNVcaFZSQYQEJ0Kv2EL0GcD8aNDg.FDOsfZZ
 tpIcsmdAUCbGK3_negzEF8ZKiPNx.wm1T0ecZD1poD9uIQyHDKdBfd4an2BqelQosLkuJbardeqY
 5IxYfnevuOcca2bA5y4URzCp.TtjiMI2BUmgKBaFGxZQs4Bw1vYWIVyiiVr6eyaRRnhtCmyl29_X
 38KMdOVRVSqMUpc8KK3NCiZUS0ZzoE548wNmzNM4Dt6z0k1IGyFmbiJzoWN0lSO7hB9QeCeemrR1
 LYiNjUsKEo6NO5gZ5TZuEzrB0M.I04EQFvNiRYmHiKVuUM4x9SWl.rH14gvDRcynvIvJjMsSw_Ld
 uKOaIHeNdIgcC6N7sgL3nJWirAbVZIBNFyPM0EZg0XGtFeCvObAGi6LuDuodsFiGXhONO3wCPOpZ
 X6YO7xpwe6qtXWQ1deziXU1yOf0LTgpbV8B3pfA5vQXEyWyZUaPXdHLrlp9DE5uwtdxDcavnML..
 bmbjNxaEPG0Dg7GpiYl_lbZx.pOVFiV421CPbPoGOHtcewhRFtC2lTPsH.R4Bk.Dlavn_Twu.Geh
 oAy9mTUeiJ5k4ShN3rmLnrDFrTbcHHFAQWPaDeTB0DrewOkAojmbykbVwKY3jvNCOQMuM_t2qRBf
 8gP.qE1ut_7lKQqv6kTScqPFTBSDo6gSHHdrcLPjyrGqv8_9TEnb7mh_1OO5m3U64cSA_V9Te2dJ
 IFAoEL30uhJqCAh_JQGRRZEua4DndZH8tYJWFFteDXpVOdtwOB0bQs88.57mJm3Utanof7tB5n1R
 q_ecg_esMuG0XRkaVVoNBtVXaWZCIXuw8K313UYo7Vni_c4dw1r0CS9IcK7CL2L9YP2SGMsoyjYv
 JC2_.Hqg_JIHHLTONOTYlamnLVfdAaxIVQI0zhdhyTkd.dYnpE.7Hfk6a_bAMXERAsMkiLSwfdjm
 CZcoJ4wSQMHejyA4XZ9p1PK_xaxDxIbdexrbDcT43yuKzENpmUkb2X7D1H47BwdUy5OYP4trQiMY
 EEnIh1LRwg99kkvkG2DN0.1VFelJN7Q--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic305.consmr.mail.sg3.yahoo.com with HTTP; Mon, 6 May 2019 11:30:55 +0000
Date: Mon, 6 May 2019 11:30:48 +0000 (UTC)
To: Vsr Ravi via USRP-users <usrp-users@lists.ettus.com>, 
 Robin Coxe <robin.coxe@ettus.com>, 
 =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Message-ID: <648636693.880876.1557142248877@mail.yahoo.com>
In-Reply-To: <1512147364.461598.1557084229705@mail.yahoo.com>
References: <1432742277.62002.1556943355674.ref@mail.yahoo.com>
 <1432742277.62002.1556943355674@mail.yahoo.com>
 <DM6PR03MB45560C798154B6FD08C115F4F2360@DM6PR03MB4556.namprd03.prod.outlook.com>
 <1512147364.461598.1557084229705@mail.yahoo.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.13583 YMailNorrin Mozilla/5.0 (X11; Ubuntu;
 Linux x86_64; rv:66.0) Gecko/20100101 Firefox/66.0
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] B200 Overrun
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
From: Rensi Mathew via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rensi Mathew <rensisam@yahoo.co.in>
Content-Type: multipart/mixed; boundary="===============2916622444279099906=="
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

--===============2916622444279099906==
Content-Type: multipart/alternative; 
	boundary="----=_Part_880875_1768491373.1557142248874"
Content-Length: 7169

------=_Part_880875_1768491373.1557142248874
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 @Marcus Muller
What are the settings=C2=A0of usrp_spectrum_sense that you use?
Sampling rate :16e6Min_freq 2.4e9max_freq 2.5e9BW 15625 Hz
FFT 1024
    On Monday, 6 May, 2019, 12:53:49 am IST, Rensi Mathew <rensisam@yahoo.c=
o.in> wrote: =20
=20
  Yes USB 3.0.=C2=A0

The OS is Ubuntu 16.04 LTS=C2=A064-bit
Intel=C2=AE Core=E2=84=A2 i5-4570 CPU @ 3.20GHz =C3=97 4=C2=A0
Disk 309.6 GB
Memory=C2=A03.6 GiB
Could it because of memory problem?The yellow/orange light in the system bl=
inks when USRP runs(showing heavily loaded).
Rensi    On Saturday, 4 May, 2019, 10:09:03 am IST, Robin Coxe <robin.coxe@=
ettus.com> wrote: =20
=20
 Are you using USB 3.0? =C2=A0USB 2.0 will max out at about 8 Ms/s. =C2=A0


Robin Coxe | Chief R&D Program Manager, SDR | Santa Clara, CA | 408.610.636=
3=C2=A0From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of R=
ensi Mathew via USRP-users <usrp-users@lists.ettus.com>
Sent: Friday, May 3, 2019 9:17 PM
To: Vsr Ravi via USRP-users
Subject: [USRP-users] B200 Overrun=C2=A0Dear sirI am using B200 SDR to run =
the program usrp_spectrum_sense.py with a sampling frequency of 16e6.I thin=
k I am using a fairly low sampling rate.
Still I am getting some 'OOOO'.
Could someone tell me the possible reasons for the same? And how I can avoi=
d the same?
Thanking youRensi Sam

   =20
------=_Part_880875_1768491373.1557142248874
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp98ec9e5eyahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div id=3D"ydp98ec9e5eyiv1500456675"><div><div class=3D"ydp98ec9e5eyiv15=
00456675ydp6a3c5f1yahoo-style-wrap" style=3D"font-family:Helvetica Neue, He=
lvetica, Arial, sans-serif;font-size:16px;"><div id=3D"ydp98ec9e5eyiv150045=
6675ydp6a3c5f1yiv0880264787"><div><div class=3D"ydp98ec9e5eyiv1500456675ydp=
6a3c5f1yiv0880264787ydpf9cd46d7yahoo-style-wrap" style=3D"font-family:Helve=
tica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div></div>
        <div>@Marcus Muller</div><div><br clear=3D"none"></div><div><div><s=
pan style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;">Wha=
t are the settings&nbsp;</span><span style=3D"font-family:Helvetica Neue, H=
elvetica, Arial, sans-serif;">of usrp_spectrum_sense that you use?</span></=
div><br clear=3D"none"></div><div>Sampling rate :16e6</div><div>Min_freq 2.=
4e9</div><div>max_freq 2.5e9</div><div>BW 15625 Hz<br clear=3D"none"></div>=
<div>FFT 1024</div><div><br clear=3D"none"></div>
       =20
        </div></div></div></div></div></div></div><div class=3D"yiv15004566=
75yqt9004059979" id=3D"yiv1500456675yqt13359"><div class=3D"yiv1500456675yq=
t2667293490" id=3D"yiv1500456675yqt51705"><div class=3D"yiv1500456675yahoo_=
quoted" id=3D"yiv1500456675yahoo_quoted_7560898711">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Monday, 6 May, 2019, 12:53:49 am IST, Rensi Mathew &=
lt;rensisam@yahoo.co.in&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div id=3D"yiv1500456675"><div><div class=3D"yiv150045=
6675ydpefd2b12cyahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helve=
tica, Arial, sans-serif;font-size:16px;"><div></div>
        <div><div><div style=3D"font-family:Helvetica Neue, Helvetica, Aria=
l, sans-serif;font-size:16px;">Yes USB 3.0.&nbsp;<br clear=3D"none"></div><=
div style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-=
size:16px;"><br clear=3D"none"></div><div style=3D"font-family:Helvetica Ne=
ue, Helvetica, Arial, sans-serif;font-size:16px;">The OS is Ubuntu 16.04 LT=
S&nbsp;64-bit<br clear=3D"none"></div><div style=3D"font-family:Helvetica N=
eue, Helvetica, Arial, sans-serif;font-size:16px;">Intel=C2=AE Core=E2=84=
=A2 i5-4570 CPU @ 3.20GHz =C3=97 4&nbsp;<br clear=3D"none"><div>Disk 309.6 =
GB<br clear=3D"none"></div><div><div>Memory&nbsp;3.6 GiB</div><div><br clea=
r=3D"none"></div><div>Could it because of memory problem?</div><div>The yel=
low/orange light in the system blinks when USRP runs(showing heavily loaded=
).</div></div></div></div><br clear=3D"none"></div><div>Rensi</div>
       =20
        </div><div class=3D"yiv1500456675yqt9194775198" id=3D"yiv1500456675=
yqt43148"><div class=3D"yiv1500456675yahoo_quoted" id=3D"yiv1500456675yahoo=
_quoted_7795705303">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Saturday, 4 May, 2019, 10:09:03 am IST, Robin Coxe &=
lt;robin.coxe@ettus.com&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div id=3D"yiv1500456675"><div>
<div>
<div>
<div>
<div style=3D"direction:ltr;">Are you using USB 3.0? &nbsp;USB 2.0 will max=
 out at about 8 Ms/s. &nbsp;</div>
<div><br clear=3D"none">
</div>
<div style=3D"direction:ltr;"></div>
<div><br clear=3D"none">
</div>
</div>
<div><br clear=3D"none">
</div>
<div class=3D"yiv1500456675ms-outlook-ios-signature">
<div style=3D"direction:ltr;">Robin Coxe | Chief R&amp;D Program Manager, S=
DR | Santa Clara, CA | 408.610.6363</div>
</div>
</div>
<div>&nbsp;</div>
<hr style=3D"display:inline-block;width:98%;" tabindex=3D"-1">
<div class=3D"yiv1500456675yqt0926039493" id=3D"yiv1500456675yqt92703"><div=
 id=3D"yiv1500456675divRplyFwdMsg"><font style=3D"font-size:11pt;" face=3D"=
Calibri, sans-serif" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-use=
rs-bounces@lists.ettus.com&gt; on behalf of Rensi Mathew via USRP-users &lt=
;usrp-users@lists.ettus.com&gt;<br clear=3D"none">
<b>Sent:</b> Friday, May 3, 2019 9:17 PM<br clear=3D"none">
<b>To:</b> Vsr Ravi via USRP-users<br clear=3D"none">
<b>Subject:</b> [USRP-users] B200 Overrun
</font><div>&nbsp;</div>
</div></div>
</div></div><div class=3D"yiv1500456675yqt0926039493" id=3D"yiv1500456675yq=
t51987"><div><div class=3D"yiv1500456675yahoo-style-wrap" style=3D"font-fam=
ily:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;">
<div>
<div>
<div>Dear sir</div>
<div>I am using B200 SDR to run the program usrp_spectrum_sense.py with a s=
ampling frequency of 16e6.</div>
<div>I think I am using a fairly low sampling rate.<br clear=3D"none">
</div>
<div>Still I am getting some 'OOOO'.</div>
<div><br clear=3D"none">
</div>
<div>Could someone tell me the possible reasons for the same? And how I can=
 avoid the same?</div>
<div><br clear=3D"none">
</div>
<div>Thanking you</div>
<div>Rensi Sam<br clear=3D"none">
</div>
</div>
<br clear=3D"none">
</div>
</div>

</div></div></div></div>
            </div>
        </div></div></div></div></div>
            </div>
        </div></div></div></body></html>
------=_Part_880875_1768491373.1557142248874--


--===============2916622444279099906==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2916622444279099906==--

