Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6856D22B5C2
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jul 2020 20:34:14 +0200 (CEST)
Received: from [::1] (port=36048 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyg2m-00031F-Qj; Thu, 23 Jul 2020 14:34:12 -0400
Received: from exedge04.gtri.gatech.edu ([130.207.193.244]:2748)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Jeff.Hodges@gtri.gatech.edu>)
 id 1jyg2i-0002nT-Gf
 for usrp-users@lists.ettus.com; Thu, 23 Jul 2020 14:34:08 -0400
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=exedge04;
 c=simple/simple; t=1595529207; h=from:subject:to:date:message-id;
 bh=iYktPZ8kn36JXTxS/Bx1bBef7LbtgeUEILEDIlZ44Tk=;
 b=Gx628j22XL6ftPNlHKNDoDWMOeuY+6LACHR/N7UyGiBZnPFa5woIkSal3Y0ZRYgOIUX1ST7+9qD
 HHdOgElVmVuAPvoZrjNx1ksU7kWzgozcMgVhSdafn6/kWl+xTJuw2POKoLydCdcNA5HFGrh9qDT0y
 Q1z4jjXhrk6YAGsl64Y=
Received: from hatteras.core.gtri.org (10.41.22.72) by exedge04.gtri.org
 (130.207.193.244) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Thu, 23 Jul
 2020 14:33:26 -0400
Received: from ocracoke.core.gtri.org (2610:148:610:2916::71) by
 hatteras.core.gtri.org (2610:148:610:2916::72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1913.5; Thu, 23 Jul 2020 14:33:26 -0400
Received: from ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf]) by
 ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf%13]) with mapi id
 15.01.1913.007; Thu, 23 Jul 2020 14:33:26 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X310 RFNoC Basic Transmit Signal Source Flowgraph Not Working
Thread-Index: AQHWYIm+tP/GOwzg/kGLyn+jjDex+qkVfTfG
Date: Thu, 23 Jul 2020 18:33:26 +0000
Message-ID: <16b71d7c13fe4059b9b7c3ad660eef87@gtri.gatech.edu>
References: <b2ae131056ae4db29b51cfcb63f13284@gtri.gatech.edu>
In-Reply-To: <b2ae131056ae4db29b51cfcb63f13284@gtri.gatech.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Subject: Re: [USRP-users] X310 RFNoC Basic Transmit Signal Source Flowgraph
 Not Working
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
Content-Type: multipart/mixed; boundary="===============8635318995025763245=="
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

--===============8635318995025763245==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_16b71d7c13fe4059b9b7c3ad660eef87gtrigatechedu_"

--_000_16b71d7c13fe4059b9b7c3ad660eef87gtrigatechedu_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Has anyone been able to transmit with RFNoC Radio using the standard FPGA i=
mage from UHD.3.15.LTS?


I have a clean installation and ran SigGen --> RFNoC: DmaFIFO --> RFNoC: DU=
C --> RFNoC: Radio


Most basic flow graph ever. It does not work. I get a run-time error.


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




Jeff

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Hodges, =
Jeff via USRP-users <usrp-users@lists.ettus.com>
Sent: Wednesday, July 22, 2020 8:49:05 PM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] X310 RFNoC Basic Transmit Signal Source Flowgraph Not=
 Working


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


--_000_16b71d7c13fe4059b9b7c3ad660eef87gtrigatechedu_
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
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Has anyone been able to transmit with RFNoC Radio using the standard FPG=
A image from UHD.3.15.LTS?</p>
<p><br>
</p>
<p>I have a clean installation and ran SigGen --&gt; RFNoC: DmaFIFO --&gt; =
RFNoC: DUC --&gt; RFNoC: Radio</p>
<p><br>
</p>
<p>Most basic flow graph ever. It does not work. I get a run-time error.&nb=
sp;</p>
<p><br>
</p>
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
</div>
<br>
<p></p>
<p><br>
</p>
<p><br>
</p>
<p>Jeff<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Hodges, Jeff via USRP-users &=
lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Wednesday, July 22, 2020 8:49:05 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] X310 RFNoC Basic Transmit Signal Source Flowgr=
aph Not Working</font>
<div>&nbsp;</div>
</div>
<div>
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
</div>
</body>
</html>

--_000_16b71d7c13fe4059b9b7c3ad660eef87gtrigatechedu_--


--===============8635318995025763245==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8635318995025763245==--

