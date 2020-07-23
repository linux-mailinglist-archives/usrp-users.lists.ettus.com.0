Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FAB22A3DB
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jul 2020 02:49:51 +0200 (CEST)
Received: from [::1] (port=56136 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyPQk-0006IB-5t; Wed, 22 Jul 2020 20:49:50 -0400
Received: from exedge04.gtri.gatech.edu ([130.207.193.244]:28712)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Jeff.Hodges@gtri.gatech.edu>)
 id 1jyPQg-00066s-O7
 for usrp-users@lists.ettus.com; Wed, 22 Jul 2020 20:49:46 -0400
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=exedge04;
 c=simple/simple; t=1595465346; h=from:subject:to:date:message-id;
 bh=xqmnaqBd/4Ms5uA7cOQe1I5LfmjHLVt5wb6OxlTnMHg=;
 b=Ca/Nd2J3xIEA0G+i/OhM5TMMMIXkqFcgBxA3sEkYxYFRAbPwZ8HjDFh4tAPux0NNk0E2vJofRPL
 Og4PDM9QySffz6r7jDVj2JXySfNoVLSWPkwrfGjv3UGShBADP7+1pgkOKVa+qPakqs7Ys3e35XOsI
 8psLHUN+9DdgahC8BeM=
Received: from tybee.core.gtri.org (10.41.1.49) by exedge04.gtri.org
 (130.207.193.244) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Wed, 22 Jul
 2020 20:49:06 -0400
Received: from ocracoke.core.gtri.org (10.41.22.71) by tybee.core.gtri.org
 (10.41.1.49) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 22
 Jul 2020 20:49:06 -0400
Received: from ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf]) by
 ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf%13]) with mapi id
 15.01.1913.007; Wed, 22 Jul 2020 20:49:05 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X310 RFNoC Basic Transmit Signal Source Flowgraph Not Working
Thread-Index: AQHWYIm+tP/GOwzg/kGLyn+jjDex+g==
Date: Thu, 23 Jul 2020 00:49:05 +0000
Message-ID: <b2ae131056ae4db29b51cfcb63f13284@gtri.gatech.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Subject: [USRP-users] X310 RFNoC Basic Transmit Signal Source Flowgraph Not
 Working
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
Content-Type: multipart/mixed; boundary="===============8274598095999503364=="
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

--===============8274598095999503364==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_b2ae131056ae4db29b51cfcb63f13284gtrigatechedu_"

--_000_b2ae131056ae4db29b51cfcb63f13284gtrigatechedu_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I get a set_tx_gain error running a basic signal generator through RFNoC Ra=
dio:

Signal Source -> DMA FIFO -> DUC -> Radio  (See image below)


This is equivalent to:

Signal Source --> USRP Sink    (Works fine)


https://kb.ettus.com/File:dma_fifo_v02.png


<https://kb.ettus.com/File:dma_fifo_v02.png>

Traceback (most recent call last):
  File "/home/nvd/Documents/top_block.py", line 169, in <module>
    main()
  File "/home/nvd/Documents/top_block.py", line 157, in main
    tb =3D top_block_cls()
  File "/home/nvd/Documents/top_block.py", line 84, in __init__
    self.uhd_rfnoc_streamer_radio_0.set_tx_gain(0, 0)
  File "/usr/local/lib/python2.7/dist-packages/ettus/ettus_swig.py", line 3=
235, in set_tx_gain
    return _ettus_swig.rfnoc_radio_sptr_set_tx_gain(self, gain, chan)
RuntimeError: _Map_base::at



I am using 3.15.LTS.


Any ideas?

Thanks,


Jeff


--_000_b2ae131056ae4db29b51cfcb63f13284gtrigatechedu_
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
<p>I get a set_tx_gain error running a basic signal generator through RFNoC=
 Radio:
<br>
<br>
Signal Source -&gt; DMA FIFO -&gt; DUC -&gt; Radio&nbsp; (See image below)<=
/p>
<p><br>
</p>
<p></p>
<div>
<p>This is equivalent to:</p>
Signal Source --&gt; USRP Sink&nbsp;&nbsp;&nbsp; (Works fine)</div>
<br>
<br>
<a href=3D"https://kb.ettus.com/File:dma_fifo_v02.png" class=3D"OWAAutoLink=
" id=3D"LPlnk387264" previewremoved=3D"true">https://kb.ettus.com/File:dma_=
fifo_v02.png</a>
<p></p>
<p><a href=3D"https://kb.ettus.com/File:dma_fifo_v02.png" class=3D"OWAAutoL=
ink" id=3D"LPlnk387264" previewremoved=3D"true"><br>
</a></p>
<p></p>
<div>Traceback (most recent call last):<br>
&nbsp; File &quot;/home/nvd/Documents/top_block.py&quot;, line 169, in &lt;=
module&gt;<br>
&nbsp;&nbsp;&nbsp; main()<br>
&nbsp; File &quot;/home/nvd/Documents/top_block.py&quot;, line 157, in main=
<br>
&nbsp;&nbsp;&nbsp; tb =3D top_block_cls()<br>
&nbsp; File &quot;/home/nvd/Documents/top_block.py&quot;, line 84, in __ini=
t__<br>
&nbsp;&nbsp;&nbsp; self.uhd_rfnoc_streamer_radio_0.set_tx_gain(0, 0)<br>
&nbsp; File &quot;/usr/local/lib/python2.7/dist-packages/ettus/ettus_swig.p=
y&quot;, line 3235, in set_tx_gain<br>
&nbsp;&nbsp;&nbsp; return _ettus_swig.rfnoc_radio_sptr_set_tx_gain(self, ga=
in, chan)<br>
RuntimeError: _Map_base::at<br>
<br>
</div>
<p></p>
<p><br>
</p>
<p>I am using 3.15.LTS.</p>
<p><br>
</p>
Any ideas?
<p><br>
Thanks,<br>
</p>
<p><br>
</p>
<p>Jeff<br>
</p>
<br>
<p></p>
</div>
</body>
</html>

--_000_b2ae131056ae4db29b51cfcb63f13284gtrigatechedu_--


--===============8274598095999503364==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8274598095999503364==--

