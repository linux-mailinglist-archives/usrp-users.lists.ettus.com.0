Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A593299547
	for <lists+usrp-users@lfdr.de>; Mon, 26 Oct 2020 19:27:44 +0100 (CET)
Received: from [::1] (port=42432 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kX7Db-0005Ms-6O; Mon, 26 Oct 2020 14:27:43 -0400
Received: from exedge04.gtri.gatech.edu ([130.207.193.244]:3862)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Jeff.Hodges@gtri.gatech.edu>)
 id 1kX7DX-0005Gg-Ls
 for usrp-users@lists.ettus.com; Mon, 26 Oct 2020 14:27:39 -0400
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=exedge04;
 c=simple/simple; t=1603736819; h=from:subject:to:date:message-id;
 bh=U2mRm+3wnPjM52swPMC8QtS6ujGQH7fcfTNqoQGv6nU=;
 b=IvE/4aZpaSGxq+Y14ejJawFxZnC1qeDZjotI71nyaw9Aj54DxzejWPsWHZdY9oDM+2vFISwGn51
 xeZ/Zc/q5+izCsv4iLwl5n0iOhCYXXtk3Qn/L2s0KTtSVFmUvSd450KKUdMc9TqyNu/4pY518UW95
 GODoJTl+syL+7TU61fU=
Received: from parris.core.gtri.org (10.41.31.72) by exedge04.gtri.org
 (130.207.193.244) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Mon, 26 Oct
 2020 14:26:59 -0400
Received: from ocracoke.core.gtri.org (10.41.22.71) by parris.core.gtri.org
 (10.41.31.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2106.2; Mon, 26
 Oct 2020 14:26:58 -0400
Received: from ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf]) by
 ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf%13]) with mapi id
 15.01.2106.003; Mon, 26 Oct 2020 14:26:58 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] uhd tuning with tagged stream commands
Thread-Index: AQHWq7s4nCPWJPKpdkaD7mR0jQ9wXamqazWA///DLF0=
Date: Mon, 26 Oct 2020 18:26:58 +0000
Message-ID: <f13da5fcd69e4c8cbf69798ca4f1975f@gtri.gatech.edu>
References: <2e4c47914caf465a8818487b821abf0d@gtri.gatech.edu>,
 <5F970B3F.8030604@gmail.com>
In-Reply-To: <5F970B3F.8030604@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Subject: Re: [USRP-users] uhd tuning with tagged stream commands
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Hodges, Jeff via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============2205068025372230511=="
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

--===============2205068025372230511==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_f13da5fcd69e4c8cbf69798ca4f1975fgtrigatechedu_"

--_000_f13da5fcd69e4c8cbf69798ca4f1975fgtrigatechedu_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

That's how I read the email as well, but not the behavior I'm seeing. The D=
EBUG strings (from the USRP_Sink_Block) are informing me that the time comm=
and is being processed, but the tune time is really way off:


[INFO] [B200] Asking for clock rate 32.000000 MHz...
[INFO] [B200] Actually got clock rate 32.000000 MHz.

----------------------------------------------------------------------
Tag Debug:
Input Stream: 00
  Offset: 0  Source: n/a     Key: tx_time   Value: {1 0.5}
  Offset: 0  Source: n/a     Key: packet_len   Value: 100000

----------------------------------------------------------------------
Tag Debug:
Input Stream: 00
  Offset: 99999  Source: n/a     Key: tx_command   Value: ((time 1 . 0.6) (=
freq . 2e+08))
  Offset: 100000  Source: n/a     Key: tx_time   Value: {1 0.7}
  Offset: 100000  Source: n/a     Key: packet_len   Value: 100000
----------------------------------------------------------------------
DEBUG: Setting command time on mboard
DEBUG: Processing command message ((time 1 . 0.6) (freq . 2e+08))

----------------------------------------------------------------------
Tag Debug:
Input Stream: 00
  Offset: 199999  Source: n/a     Key: tx_command   Value: ((time 1 . 0.8) =
(freq . 2.01e+08))
  Offset: 200000  Source: n/a     Key: tx_time   Value: {1 0.9}
  Offset: 200000  Source: n/a     Key: packet_len   Value: 100000
----------------------------------------------------------------------
DEBUG: Setting command time on mboard
DEBUG: Processing command message ((time 1 . 0.8) (freq . 2.01e+08))

----------------------------------------------------------------------
Tag Debug:
Input Stream: 00
  Offset: 299999  Source: n/a     Key: tx_command   Value: ((time 2 . 7.450=
58e-09) (freq . 2.02e+08))
  Offset: 300000  Source: n/a     Key: tx_time   Value: {2 0.1}
  Offset: 300000  Source: n/a     Key: packet_len   Value: 100000
----------------------------------------------------------------------
DEBUG: Setting command time on mboard
DEBUG: Processing command message ((time 2 . 7.45058e-09) (freq . 2.02e+08)=
)





In this case, I'm doing 100 ms bursts + 100 ms dead time. Frequency is shif=
ting 1 MHz at a time. Tuning is approximately 57 ms from the start of each =
txburst (in the middle of the burst). Somehow the tx_time commands must be =
interfering with my timed commands. Although, being placed in the same queu=
e in the proper order, they shouldn't affect each other.


Jeff

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Marcus D=
. Leech via USRP-users <usrp-users@lists.ettus.com>
Sent: Monday, October 26, 2020 1:45:35 PM
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] uhd tuning with tagged stream commands

On 10/26/2020 01:39 PM, Hodges, Jeff via USRP-users wrote:

I'm thinking that timed tune commands will not work on tagged streams in bu=
rst mode. Is that correct? I've been looking at the USRP sink block code an=
d it supports the timed commands on the stream, but from reading a recent t=
hread, it seems like this will not work because of how the DUC derives it's=
 time:


https://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2020-March/061=
611.html


This thread says DUC derives it's sense of time from the samples, and if th=
e samples are not streaming, the DUC will not keep track of time. Therefore=
, the timed command will not be executed.


For example, I set the tx_time tag to 1.0 second and the burst is 0.05 sec =
long. Then I place the tuning command tag on the last sample of the burst w=
ith a tune time of 1.05.  The radio does not actually tune until I transmit=
 the next burst at 1.1 sec (0.05 sec dead time) and then it tunes at approx=
imately 0.007 sec into the middle of that burst.


I can try to implement tuning during the dead time by making calls directly=
 to the C++ api at the appropriate time in a separate thread, but before I =
do that I just want to confirm that this burst time-tag method will not wor=
k.


Thanks in advance,


Jeff

From the quoted thread, it seems that the *radio* part of the timing will w=
ork fine, but the DUC won't be able to do its part of the deal--so
  if your tuning requires "mop up" action on the part of the DUC, it won't =
work properly.




--_000_f13da5fcd69e4c8cbf69798ca4f1975fgtrigatechedu_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body bgcolor=3D"#FFFFFF" text=3D"#000000">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>That's how I read the email as well, but not the behavior I'm seeing. Th=
e DEBUG strings (from the USRP_Sink_Block) are informing me that the time c=
ommand is being processed, but the tune time is really way off:</p>
<p><br>
</p>
<p></p>
<div>
<div><br>
[INFO] [B200] Asking for clock rate 32.000000 MHz... <br>
[INFO] [B200] Actually got clock rate 32.000000 MHz.<br>
<br>
<div>----------------------------------------------------------------------=
<br>
Tag Debug: <br>
Input Stream: 00<br>
&nbsp; Offset: 0&nbsp; Source: n/a&nbsp;&nbsp;&nbsp;&nbsp; Key: tx_time&nbs=
p;&nbsp; Value: {1 0.5}<br>
&nbsp; Offset: 0&nbsp; Source: n/a&nbsp;&nbsp;&nbsp;&nbsp; Key: packet_len&=
nbsp;&nbsp; Value: 100000<br>
<br>
----------------------------------------------------------------------<br>
Tag Debug: <br>
Input Stream: 00<br>
&nbsp; Offset: 99999&nbsp; Source: n/a&nbsp;&nbsp;&nbsp;&nbsp; Key: tx_comm=
and&nbsp;&nbsp; Value: ((time 1 . 0.6) (freq . 2e&#43;08))<br>
&nbsp; Offset: 100000&nbsp; Source: n/a&nbsp;&nbsp;&nbsp;&nbsp; Key: tx_tim=
e&nbsp;&nbsp; Value: {1 0.7}<br>
&nbsp; Offset: 100000&nbsp; Source: n/a&nbsp;&nbsp;&nbsp;&nbsp; Key: packet=
_len&nbsp;&nbsp; Value: 100000<br>
----------------------------------------------------------------------<br>
DEBUG: Setting command time on mboard <br>
DEBUG: Processing command message ((time 1 . 0.6) (freq . 2e&#43;08))<br>
<br>
----------------------------------------------------------------------<br>
Tag Debug: <br>
Input Stream: 00<br>
&nbsp; Offset: 199999&nbsp; Source: n/a&nbsp;&nbsp;&nbsp;&nbsp; Key: tx_com=
mand&nbsp;&nbsp; Value: ((time 1 . 0.8) (freq . 2.01e&#43;08))<br>
&nbsp; Offset: 200000&nbsp; Source: n/a&nbsp;&nbsp;&nbsp;&nbsp; Key: tx_tim=
e&nbsp;&nbsp; Value: {1 0.9}<br>
&nbsp; Offset: 200000&nbsp; Source: n/a&nbsp;&nbsp;&nbsp;&nbsp; Key: packet=
_len&nbsp;&nbsp; Value: 100000<br>
----------------------------------------------------------------------<br>
DEBUG: Setting command time on mboard <br>
DEBUG: Processing command message ((time 1 . 0.8) (freq . 2.01e&#43;08))<br=
>
<br>
----------------------------------------------------------------------<br>
Tag Debug: <br>
Input Stream: 00<br>
&nbsp; Offset: 299999&nbsp; Source: n/a&nbsp;&nbsp;&nbsp;&nbsp; Key: tx_com=
mand&nbsp;&nbsp; Value: ((time 2 . 7.45058e-09) (freq . 2.02e&#43;08))<br>
&nbsp; Offset: 300000&nbsp; Source: n/a&nbsp;&nbsp;&nbsp;&nbsp; Key: tx_tim=
e&nbsp;&nbsp; Value: {2 0.1}<br>
&nbsp; Offset: 300000&nbsp; Source: n/a&nbsp;&nbsp;&nbsp;&nbsp; Key: packet=
_len&nbsp;&nbsp; Value: 100000<br>
----------------------------------------------------------------------<br>
DEBUG: Setting command time on mboard<br>
DEBUG: Processing command message ((time 2 . 7.45058e-09) (freq . 2.02e&#43=
;08))<br>
<br>
</div>
<br>
<br>
</div>
</div>
<p></p>
<p><br>
</p>
<p>In this case, I'm doing 100 ms bursts &#43; 100 ms dead time. Frequency =
is shifting 1 MHz at a time. Tuning is approximately 57 ms from the start o=
f each txburst (in the middle of the burst). Somehow the tx_time commands m=
ust be interfering with my timed commands.
 Although, being placed in the same queue in the proper order, they shouldn=
't affect each other.<br>
</p>
<p><br>
</p>
<p>Jeff<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Marcus D. Leech via USRP-user=
s &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Monday, October 26, 2020 1:45:35 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] uhd tuning with tagged stream commands</fo=
nt>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"moz-cite-prefix">On 10/26/2020 01:39 PM, Hodges, Jeff via USR=
P-users wrote:<br>
</div>
<blockquote cite=3D"mid:2e4c47914caf465a8818487b821abf0d@gtri.gatech.edu" t=
ype=3D"cite">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p><span>I'm thinking that timed tune commands will not work on tagged stre=
ams in burst mode. Is that correct? I've been looking at the USRP sink bloc=
k code and it supports the timed commands on the stream, but from reading a=
 recent thread, it seems like this
 will not work because of how the DUC derives it's time:</span></p>
<p><br>
</p>
<p><a moz-do-not-send=3D"true" href=3D"https://lists.ettus.com/pipermail/us=
rp-users_lists.ettus.com/2020-March/061611.html" class=3D"OWAAutoLink" id=
=3D"LPlnk705789" previewremoved=3D"true">https://lists.ettus.com/pipermail/=
usrp-users_lists.ettus.com/2020-March/061611.html</a><br>
</p>
<p><br>
</p>
<p><span><span>This thread says DUC derives it's sense of time from the sam=
ples, and if the samples are not streaming, the DUC will not keep track of =
time. Therefore, the timed command will not be executed.</span><br>
</span></p>
<p><span><br>
</span></p>
<p>For example, I set the tx_time tag to 1.0 second and the burst is 0.05 s=
ec long. Then I place the tuning command tag on the last sample of the burs=
t with a tune time of 1.05.&nbsp; The radio does not actually tune until I =
transmit the next burst at 1.1 sec (0.05
 sec dead time) and then it tunes at approximately 0.007 sec into the middl=
e of that burst.</p>
<p><br>
</p>
<p>I can try to implement tuning during the dead time by making calls direc=
tly to the C&#43;&#43; api at the appropriate time in a separate thread, bu=
t before I do that I just want to confirm that this burst time-tag method w=
ill not work.<br>
</p>
<p><br>
</p>
<p>Thanks in advance,<br>
</p>
<p><br>
</p>
<p>Jeff<br>
</p>
</div>
<br>
</blockquote>
From the quoted thread, it seems that the *radio* part of the timing will w=
ork fine, but the DUC won't be able to do its part of the deal--so<br>
&nbsp; if your tuning requires &quot;mop up&quot; action on the part of the=
 DUC, it won't work properly.<br>
<br>
<br>
<br>
</div>
</body>
</html>

--_000_f13da5fcd69e4c8cbf69798ca4f1975fgtrigatechedu_--


--===============2205068025372230511==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2205068025372230511==--

