Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB1C349853
	for <lists+usrp-users@lfdr.de>; Thu, 25 Mar 2021 18:39:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1ED733839FE
	for <lists+usrp-users@lfdr.de>; Thu, 25 Mar 2021 13:39:00 -0400 (EDT)
Received: from unifiededge.gtri.gatech.edu (unifiededge.gtri.gatech.edu [130.207.205.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 7B20A3839DE
	for <usrp-users@lists.ettus.com>; Thu, 25 Mar 2021 13:38:51 -0400 (EDT)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=unifiededge;
	c=simple/simple; t=1616693930; h=from:subject:to:date:message-id;
	bh=2nGILLrXIFSyZIdWe2I7Us0bFIFh5ZJ8mz09nCspYuQ=;
	b=m2nzqo/i1vzxfE8Vew53Ykio3v57dSdMHjW5zkxkQR92VlZAtqIFukQ4n7k0lni3zlCY6ILO9jN
	zN8btGLV5O0thGVUwbH3jXwo2YE6fpxFoHHI5r/pQ2Dl971kyXsZNuRqb/LKR7fhMp/0dU/WuIW52
	Rq0SgIH6Uv+aLcabMHRbOY3Rugri8gxAaI+5JEoyaxB0D4dUwGl2uECLR1Vwt10ZK2aUtQ92c71ZB
	F4gFOYOhoi1R5MJg5P+ft6I28mGqKhy19SoSwViG8ANxWxkZFZ2KgGzWYDgV+n1pg1WX7AS2YyplL
	hoehriiydTToMzm/b6TXfDbmDDd8xNm28obg==
Received: from ocracoke.core.gtri.org (10.41.22.71) by exedge06.gtri.dmz
 (10.41.104.63) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.2.721.2; Thu, 25 Mar 2021
 13:38:50 -0400
Received: from ocracoke.core.gtri.org (2610:148:610:2916::71) by
 ocracoke.core.gtri.org (2610:148:610:2916::71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2106.2; Thu, 25 Mar 2021 13:38:50 -0400
Received: from ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf]) by
 ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf%13]) with mapi id
 15.01.2106.013; Thu, 25 Mar 2021 13:38:50 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNOC dma_FIFO freezes
Thread-Index: AQHXIZzxU6WMjHiohkiANdFjUetZXg==
Date: Thu, 25 Mar 2021 17:38:50 +0000
Message-ID: <fe2b7993932540aaaa122abdcb5e5265@gtri.gatech.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Message-ID-Hash: P5EYJPX7V73T3VEDTZNTXFMZ7H63X2UM
X-Message-ID-Hash: P5EYJPX7V73T3VEDTZNTXFMZ7H63X2UM
X-MailFrom: Jeff.Hodges@gtri.gatech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNOC dma_FIFO freezes
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P5EYJPX7V73T3VEDTZNTXFMZ7H63X2UM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Hodges, Jeff via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============9120910502167942624=="

--===============9120910502167942624==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_fe2b7993932540aaaa122abdcb5e5265gtrigatechedu_"

--_000_fe2b7993932540aaaa122abdcb5e5265gtrigatechedu_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I am using the standard X310 HG image running  a simple flow graph with one=
 dma_FIFO as follows, and the flowgraph freezes after approximately 800,000=
 samples:


signal_source --> throttle --> dma_fifo --> timesink


However, if I put an RFNOC block in, it works:


signal_source --> throttle --> dma_fifo --> RFNOC_Block --> timesink


Does the dma_fifo require a succeeding RFNOC block, or otherwise, why is it=
 not working?


Using UHD-3.15.LTS


Could it be related to this error: https://github.com/EttusResearch/uhd/iss=
ues/203


Thanks,

Jeff

--_000_fe2b7993932540aaaa122abdcb5e5265gtrigatechedu_
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
<p>I am using the standard X310 HG image running&nbsp; <span>a simple flow =
graph with one dma_FIFO as follows, and the flowgraph freezes after approxi=
mately 800,000 samples:</span></p>
<p><span><br>
</span></p>
<p><span>signal_source --&gt; throttle --&gt; dma_fifo --&gt; timesink<br>
</span></p>
<p><span><br>
</span></p>
<p><span>However, if I put an RFNOC block in, it works:</span></p>
<p><span></p>
<p><span><br>
</span></p>
<span>signal_source --&gt; throttle --&gt; dma_fifo --&gt; RFNOC_Block --&g=
t; timesink</span><br>
</span>
<p></p>
<p><span><br>
</span></p>
<p>Does the dma_fifo require a succeeding RFNOC block, or otherwise, why is=
 it not working?</p>
<p><br>
</p>
<p><span>Using UHD-3.15.LTS</span></p>
<p><span><br>
</span></p>
<p><span>Could it be related to this error: <a href=3D"https://github.com/E=
ttusResearch/uhd/issues/203" class=3D"OWAAutoLink" id=3D"LPlnk498330" previ=
ewremoved=3D"true">
https://github.com/EttusResearch/uhd/issues/203</a></span><br>
</p>
<p><br>
</p>
<p>Thanks,<br>
</p>
<p><br>
Jeff<br>
</p>
</div>
</body>
</html>

--_000_fe2b7993932540aaaa122abdcb5e5265gtrigatechedu_--

--===============9120910502167942624==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9120910502167942624==--
