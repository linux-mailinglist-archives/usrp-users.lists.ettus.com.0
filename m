Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBD612092F
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2019 16:01:23 +0100 (CET)
Received: from [::1] (port=42864 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1igrsA-0004im-Gv; Mon, 16 Dec 2019 10:01:22 -0500
Received: from sonic302-21.consmr.mail.ne1.yahoo.com ([66.163.186.147]:35565)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <santu_voonna@yahoo.com>)
 id 1igrs5-0004Yq-LB
 for usrp-users@lists.ettus.com; Mon, 16 Dec 2019 10:01:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1576508436; bh=UqId7ByZ4W+0lwckWaQxqOGiBkjzUZWqfn0PSWgSAXo=;
 h=Date:From:To:Subject:References:From:Subject;
 b=CLJNAcYQ9KSixWTEnjeJdrdJ7Oa7J52smFrOMqlGZDvqdnfCRoCsF7Bdxylyp1UHl8wFBOfPq6lFEjttkNoqkOqQ+6IxwqWH+zqPNBdQUXUHPAHcys02xFppc7YGW5sxI0TS05zlL0Xbvf//e8PcnlIDT8PSMXitrxFithi+gpFCiTfkDJtvmX+dEeZ0CJoOLaQCD6/9rtghVP968duZWfqhi8bjF6csArsecYVgwJJRSA8jzyqM5JlaYRpz9keRKU5J/xrtgj1MhcN0TAnNNTF5q/EQsXkjNlL2I2QvPbhFUexmoKrL7JDR8UOoTJP1lAO/nLQBywIc5Qa4PYpv2w==
X-YMail-OSG: ZMW1yLQVM1nuHOjeF0F8Ywc37AEDIiqawk6Dw7jZFDY7yghPKlpmmD53NIqi_CL
 TDSVhvGN5.CKyT3zOxB5iYKJBIYiOlRYEIx3UYAiqSZUC2dP2uwSpiJFvZcvU4brXVaJKb6b1IvL
 c6Xw5QU5.2Ye08gePhmN46hiZcN8Pfl9B5QGKZVt395tog0PEPTVQbMmiwL9MBncrPbR9aNOyuls
 vXw0SR8MIl64BVgkKwapDzDheN4lie9HRfNFoZhulvacKl2BTpyDSR7FsiV7NC3F.WohQZ0QZBVQ
 tATO3JeQ.0SlKPmTMUWWEUs8udolRokSTb._nJsi2U8SnqU76QVMGsdkU2LGmFqVFhWpy.hEWZnf
 ut_OpSkBDuKTZ7oM8yP88Enf5o_8N.ruAXRWhOBVJaAq1ypAyhTRlMGUEaSyhYPLUt0HbVwn48Pv
 s66mdr2F_xKvz6pnJTKamz0idXaJMUVfdVRAGBDsnXIGzai_ibQdDACSSZSy_QXZdtm7pbeYW4qJ
 WxIfueLdFDpgA0_oRimmbDI7XXJPXgc_aD1zCi5Gy5jbHbtmGXy6o9tZcRf5VPi0r2xBT2oH9iu.
 m953WthCG6PAy8p.eFO.lsH1Tizh_3hAfO27w3tprIsvf0hJ91gSaVlkUsyUyMj.Xob6ir85FTcO
 r2hWjAtjfO87Fr2TxJ8e6RR0R0r6jj8chuALgvGOL4JHCwJeysiyJMWD1.mgL0jUfAs8TSQtuDq1
 oCppO_KYUgq6Zb.v_AcEfzoUNySGWh_P7Gsnd59dwDKrFCV8_iJ7yo.3NtxpgCDCKOXyWYVqlduV
 2pQyc9vScdycd.chKbX65dfde6Oc7.Hmhioooi57.8WvosgpOsznrCN0k9YQ1juloEh3Qy3YgNOm
 8D0vG6hiTFgtPbwvHb9LOMoPXz8NVLpyeyHgDuSSmK02Sfr4xhqiORjxHsgOM3gksGsGeOcLCE1h
 ODDiqPQ1UzLp_s5iN7ELcTwrEnRYeag6SpLE6aIAHOQg5VOgDIu_q57j094ikLeE0Pt1QaMviXFV
 KxFxbiKf8jwefgAUk1FkcRcgLPlslIBdxESiLofto.0ydTidTOUgRjrjFk6L1ix5A5RAqPWG5Kkw
 IXDlPLrHguAQRBlnENv.aK4AG5du_ZcNANxSbQoEk30sfhEBqiNtw8qklEGyekZGqUZKjC7XAdyc
 6n.n2fHe5O2Wj5aWJ0DTBOM6vaa4Fwt5ODV9A8G7T6FiPg1DrjVuA.2z8jMZ2qC6pWyVtoNXj6zh
 uFgDWcrqjhPHlPhXAh5a3KYWKGoMxqRHxFRelxc07sVeelAkogon12znMNWtZdfoI1Z6RMaY_I9L
 j9KfeV5Y8BONf5SVMnmgmAwa7HoRz7Pii
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic302.consmr.mail.ne1.yahoo.com with HTTP; Mon, 16 Dec 2019 15:00:36 +0000
Date: Mon, 16 Dec 2019 15:00:32 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1273926885.14075492.1576508432546@mail.yahoo.com>
MIME-Version: 1.0
References: <1273926885.14075492.1576508432546.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14728 YMailNorrin Mozilla/5.0 (X11; Linux x86_64;
 rv:68.0) Gecko/20100101 Firefox/68.0
Subject: [USRP-users] set_tx_freq is not functioning properly
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
Content-Type: multipart/mixed; boundary="===============6671317846338689174=="
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

--===============6671317846338689174==
Content-Type: multipart/alternative; 
	boundary="----=_Part_14075491_1309873985.1576508432545"
Content-Length: 2579

------=_Part_14075491_1309873985.1576508432545
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi There,=C2=A0=C2=A0 I have bench marked X300 against my development PC. T=
hen I took benchmark_rate code and modified a bit. Everything works fine ex=
cept setting the center freq.=C2=A0=C2=A0 When ever I set the center freque=
ncy, there is no error returned by the call. But when I transmit the data, =
it doesn't appear in scope. Whenever I remove the code to set the center fr=
equency, things work fine and I cann see a spike at 10Mhz which is default =
frequency I guess. Any clues?
std::cout << boost::format("Setting TX Freq: %f MHz...") % (freq/1e6) << st=
d::endl;
uhd::tune_request_t tune_request(freq);
//usrp->set_tx_freq(tune_request, 0); - This line also doesn't work
usrp->set_tx_freq(freq, 0);
std::cout << boost::format("Actual TX Freq: %f MHz...") % (usrp->get_tx_fre=
q(0)/1e6) << std::endl << std::endl;

Thanks and Regards

------=_Part_14075491_1309873985.1576508432545
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div dir=
=3D"ltr" data-setdir=3D"false">Hi There,</div><div dir=3D"ltr" data-setdir=
=3D"false">&nbsp;&nbsp; I have bench marked X300 against my development PC.=
 Then I took benchmark_rate code and modified a bit. Everything works fine =
except setting the center freq.</div><div dir=3D"ltr" data-setdir=3D"false"=
>&nbsp;&nbsp; When ever I set the center frequency, there is no error retur=
ned by the call. But when I transmit the data, it doesn't appear in scope. =
Whenever I remove the code to set the center frequency, things work fine an=
d I cann see a spike at 10Mhz which is default frequency I guess. Any clues=
?</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" da=
ta-setdir=3D"false"><div dir=3D"ltr" data-setdir=3D"false">std::cout &lt;&l=
t; boost::format("Setting TX Freq: %f MHz...") % (freq/1e6) &lt;&lt; std::e=
ndl;<br>uhd::tune_request_t tune_request(freq);<br><div>//usrp-&gt;set_tx_f=
req(tune_request, 0); - This line also doesn't work<br></div>usrp-&gt;set_t=
x_freq(freq, 0);<br>std::cout &lt;&lt; boost::format("Actual TX Freq: %f MH=
z...") % (usrp-&gt;get_tx_freq(0)/1e6) &lt;&lt; std::endl &lt;&lt; std::end=
l;<br><br></div><div dir=3D"ltr" data-setdir=3D"false">Thanks and Regards<b=
r></div></div></div></body></html>
------=_Part_14075491_1309873985.1576508432545--


--===============6671317846338689174==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6671317846338689174==--

