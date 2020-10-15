Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C04328F7AE
	for <lists+usrp-users@lfdr.de>; Thu, 15 Oct 2020 19:35:59 +0200 (CEST)
Received: from [::1] (port=41772 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kT7AT-0006nJ-3b; Thu, 15 Oct 2020 13:35:57 -0400
Received: from exedge04.gtri.gatech.edu ([130.207.193.244]:22155)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Jeff.Hodges@gtri.gatech.edu>)
 id 1kT7AO-0006dw-RE
 for usrp-users@lists.ettus.com; Thu, 15 Oct 2020 13:35:52 -0400
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=exedge04;
 c=simple/simple; t=1602783310; h=from:subject:to:date:message-id;
 bh=Nn504fJP2OzuIn2Nzy+i091iIddgj3s5ZLtpU6OIFUo=;
 b=bbwXV7xM7oect8MTKIxkfVsqVzvCm2QFJ/xxe6zlc4UJnqEN0b89HWpCF3qYE4oy2Sj1gbQAeac
 PiysRWHg1Z3uakOrbr9qselVU7+h1ZD/GNWiutgGlBkr8iRuMj0Pl0NiJwhvHrbGe9vS+pDQ+43II
 s9JwABoWhRhv0kZl3qw=
Received: from kiawah.core.gtri.org (10.41.31.71) by exedge04.gtri.org
 (130.207.193.244) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Thu, 15 Oct
 2020 13:35:10 -0400
Received: from ocracoke.core.gtri.org (10.41.22.71) by kiawah.core.gtri.org
 (10.41.31.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2044.4; Thu, 15
 Oct 2020 13:35:10 -0400
Received: from ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf]) by
 ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf%13]) with mapi id
 15.01.2044.004; Thu, 15 Oct 2020 13:35:10 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Error RFNoC X310 uhd_cal_tx_dc_offset
Thread-Index: AQHWoxiSkHBUDqPnuU+0nsziSRmztQ==
Date: Thu, 15 Oct 2020 17:35:10 +0000
Message-ID: <3a0cb273ddd2434db40042cfc8af37a8@gtri.gatech.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Subject: [USRP-users] Error RFNoC X310 uhd_cal_tx_dc_offset
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
Content-Type: multipart/mixed; boundary="===============7678137042796785970=="
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

--===============7678137042796785970==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3a0cb273ddd2434db40042cfc8af37a8gtrigatechedu_"

--_000_3a0cb273ddd2434db40042cfc8af37a8gtrigatechedu_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi, I've built my own RFNoC block and everything works fine, except the tx_=
dc_offset is -40 dBc at all times, which seems pretty high.  I tried to fol=
low the example from another user, since I have the same setup with my UBX =
in the second slot (B) but I get the error:


>> uhd_cal_tx_dc_offset  --args=3D"addr=3D192.168.10.2" --subdev "B:0"
Error: RuntimeError: For legacy APIs, all devices require the same number o=
f radios, DDCs and DUCs.

I am using UHD 3.15-LTS with gr-ettus.

In addition, I see the gr-ettus code appears to be commented out from gr-et=
tus/lib/rfnoc_radio_impl.cc  lines 144-158:

    // FIXME everything down from here needs to be mapped on to the block A=
PI
    void rfnoc_radio_impl::set_tx_dc_offset(bool enable, const size_t chan)
    {
      //get_device()->set_tx_dc_offset(enable, chan);
    }

    void rfnoc_radio_impl::set_tx_dc_offset(const std::complex< double > &o=
ffset, const size_t chan)
    {
      //get_device()->set_tx_dc_offset(offset, chan);
    }


Any advice on how to reduce the dc_offset?

Thanks,

Jeff



--_000_3a0cb273ddd2434db40042cfc8af37a8gtrigatechedu_
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
<p>Hi, I've built my own RFNoC block and everything works fine, except the =
tx_dc_offset is -40 dBc at all times, which seems pretty high.&nbsp; I trie=
d to follow the example from another user, since I have the same setup with=
 my UBX in the second slot (B) but I
 get the error:</p>
<p><br>
</p>
<div>&gt;&gt; uhd_cal_tx_dc_offset&nbsp; --args=3D&quot;addr=3D192.168.10.2=
&quot; --subdev &quot;B:0&quot; <br>
</div>
<div><span>Error: RuntimeError: For legacy APIs, all devices require the sa=
me number of radios, DDCs and DUCs.<br>
</span></div>
<div><br>
</div>
<div>I am using UHD 3.15-LTS with gr-ettus.</div>
<div><br>
</div>
<div>In addition, I see the gr-ettus code appears to be commented out from =
gr-ettus/lib/rfnoc_radio_impl.cc&nbsp; lines 144-158:</div>
<div><br>
</div>
<div>
<div>&nbsp;&nbsp;&nbsp; // FIXME everything down from here needs to be mapp=
ed on to the block API<br>
&nbsp;&nbsp;&nbsp; void rfnoc_radio_impl::set_tx_dc_offset(bool enable, con=
st size_t chan)<br>
&nbsp;&nbsp;&nbsp; {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //get_device()-&gt;set_tx_dc_offset(enable, =
chan);<br>
&nbsp;&nbsp;&nbsp; }<br>
<br>
&nbsp;&nbsp;&nbsp; void rfnoc_radio_impl::set_tx_dc_offset(const std::compl=
ex&lt; double &gt; &amp;offset, const size_t chan)<br>
&nbsp;&nbsp;&nbsp; {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //get_device()-&gt;set_tx_dc_offset(offset, =
chan);<br>
&nbsp;&nbsp;&nbsp; }<br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>Any advice on how to reduce the dc_offset?</div>
<div><br>
</div>
<div>Thanks,<br>
</div>
<div><br>
</div>
<div>Jeff<br>
</div>
<br>
<span></span></div>
<br>
</div>
</body>
</html>

--_000_3a0cb273ddd2434db40042cfc8af37a8gtrigatechedu_--


--===============7678137042796785970==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7678137042796785970==--

