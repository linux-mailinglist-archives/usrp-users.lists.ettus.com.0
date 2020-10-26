Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A8D29940C
	for <lists+usrp-users@lfdr.de>; Mon, 26 Oct 2020 18:40:32 +0100 (CET)
Received: from [::1] (port=41894 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kX6Tt-0001cq-RT; Mon, 26 Oct 2020 13:40:29 -0400
Received: from exedge04.gtri.gatech.edu ([130.207.193.244]:3253)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Jeff.Hodges@gtri.gatech.edu>)
 id 1kX6Tq-0001TV-Di
 for usrp-users@lists.ettus.com; Mon, 26 Oct 2020 13:40:26 -0400
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=exedge04;
 c=simple/simple; t=1603733985; h=from:subject:to:date:message-id;
 bh=ymZkleDsj01JdeWhAN3n7XvNBc5ycKe3dp4ALlByxw8=;
 b=WT0vm293DCbdHcX1tThPEdbFcugbNmluo8vC3KnqQUm4ZnGygZPupd4+OoNddM/9NIakA7CwKQn
 vIE27p5uH9KRQQ3KVwyj3rpxRZN2nxH6GOZNBPV0vETrp6NX5Jhvu1ShMmadgX+Jk/k3AS3Mkoqsf
 ZjLw4nibaCpx6NTEvIw=
Received: from tybee.core.gtri.org (10.41.1.49) by exedge04.gtri.org
 (130.207.193.244) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Mon, 26 Oct
 2020 13:39:45 -0400
Received: from ocracoke.core.gtri.org (10.41.22.71) by tybee.core.gtri.org
 (10.41.1.49) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2106.2; Mon, 26
 Oct 2020 13:39:45 -0400
Received: from ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf]) by
 ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf%13]) with mapi id
 15.01.2106.003; Mon, 26 Oct 2020 13:39:45 -0400
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: uhd tuning with tagged stream commands
Thread-Index: AQHWq7s4nCPWJPKpdkaD7mR0jQ9wXQ==
Date: Mon, 26 Oct 2020 17:39:45 +0000
Message-ID: <2e4c47914caf465a8818487b821abf0d@gtri.gatech.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Subject: [USRP-users] uhd tuning with tagged stream commands
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
Content-Type: multipart/mixed; boundary="===============7768526819287399217=="
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

--===============7768526819287399217==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_2e4c47914caf465a8818487b821abf0dgtrigatechedu_"

--_000_2e4c47914caf465a8818487b821abf0dgtrigatechedu_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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

--_000_2e4c47914caf465a8818487b821abf0dgtrigatechedu_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p><span>I'm thinking that timed tune commands will not work on tagged stre=
ams in burst mode. Is that correct? I've been looking at the USRP sink bloc=
k code and it supports the timed commands on the stream, but from reading a=
 recent thread, it seems like this
 will not work because of how the DUC derives it's time:</span></p>
<p><br>
</p>
<p><a href=3D"https://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/=
2020-March/061611.html" class=3D"OWAAutoLink" id=3D"LPlnk705789" previewrem=
oved=3D"true">https://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/=
2020-March/061611.html</a><br>
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
</body>
</html>

--_000_2e4c47914caf465a8818487b821abf0dgtrigatechedu_--


--===============7768526819287399217==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7768526819287399217==--

