Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4656B124B61
	for <lists+usrp-users@lfdr.de>; Wed, 18 Dec 2019 16:16:45 +0100 (CET)
Received: from [::1] (port=59824 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ihb47-00020F-CH; Wed, 18 Dec 2019 10:16:43 -0500
Received: from sonic308-55.consmr.mail.gq1.yahoo.com ([98.137.68.31]:40466)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <angilberto@yahoo.com>)
 id 1ihb3Z-0006Ub-Jb
 for usrp-users@lists.ettus.com; Wed, 18 Dec 2019 10:16:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1576682128; bh=NWg6I3xBLXPF8+nLrBoHsmcGIYcMdwv7p1462IyQrLo=;
 h=Date:From:To:Subject:References:From:Subject;
 b=X4aVxyJRCasUOvIhsEpJ/F6mnbHYFGadKGujigjH4BwYQhc+qTHcFtgsS2uuWCDpW3tL9H/6KqflCRmjO87O6Wit5vgEKoybUUPJigmPZX8pB/A6bedCjgTKyk0tbzIOW1qPtuyBZ3qOuKsTGzd92df0GRNticbgHfFc2Agp6f9K35yuIoeSQ+Id6OsDo2WQEXZXH0i+vbDnjgNLe6rTvWIvE0+ks37Hb7errOWlJHWKsL92WpglO8zw66PtmrfVQXi6NuqkTbiJRUrvpCFMvMHrAvPoZsHh6wYZ8AdUFGNl9i6RTKxZAEYi/EadCtjxioQcVfnIT4xTsrk01P4nQg==
X-YMail-OSG: _nfI5.cVM1nQNcgOEqBma1tlLxh2A_wvnkkoMZRxUYYaAPxnMAGDq2px12lRW9d
 BATAS.yZwRG1FEHC1aI11kIWJsPpFGcEBZbBMqpx7.Hzc2mUaseWvimZkj7SwZ9Pg7LULNac7G79
 RV3RHXopRipfGmZX.1xu06BcpkG1pshnYCNIDEsR4e6_DkGMFfOf4JOGwgS0jL1nauZ8SI7nA3_S
 hpvnFk0oKi6mBzuMTi1IqdwX_KKwDozCz6X_MAS_iR0TyC9iXDb92qIeu.9qXO7IYfPtD6CCE.YA
 lKlZrJHl7KM3DGMf0KAdARapoyg5XrQlbKW03xrwiMS2VHVThUDnsxtHeTwxlEQjS8qZNc3kJYY1
 MQCEGI5YyXBBoDXHVXB.ahYlgXBx_JYn06IDxKobXvtWJ8WERHcnMjPwUMKnCazkLvU889ZwmKun
 BUosEnUHRLLp1.cmPW9zTswbB18kn9tgj3BBkoOSLz3qUvCWoBsaMOof5KSgA1pGwYXeuqdrkuqA
 mhcNQivFGEX9Bbh3oPKebhG9NtH2qYhEspp.6oEm1ONGsLVHpj_Q_mngH2DbHLesuTjY4HudzCyY
 bH.wVjFuR7tjKy3SI2NNwW7ryXjZxBLT6IfMjluv7nTldIElqBcWiuNwCvKRdQV2IPUpFrisibi8
 r9TZKqEeLFVhK1h_5bKv7nY_igHvteHtKsTmssW9Lu8Deehwa2mSU0bAumPnqoUDnhofzWqgfjPe
 vjS5_ZKliWWv3GIb6MNeCoFDhZWP41HIXGzhEEWzqqaR_n0.iWDVKaVuBndsYDXPKxYjM2pZYz3k
 EpD3qJjXy33jUV_y7L0.HLtzztS9sHrhHyL9jGTfngSlN33cuFX2l6Iokro41KgLJ_ur5cJSfv9L
 BODyn.NZnc.KkVDLJBiratfQogPER3wFQ9n21UysERfg.mBiVxXTYQWHJsI5ySFOXmjPymP2IsJW
 lTdpAEBvm4SGTlfVpNjeskMPxshmAlZEayjh9iS9kuJ7uWtJgIYb7ZTnXkysNhxlzV_tNOB1SIhG
 qFR3WmooGbKlnO4cmHPuazhI_buoLD.ytwBNbXwdLdKx3BtczGRI.8A5wSmdizKhpvQL_pR.VItV
 6ZcB3BX9S84XSXz3JyT.OROQzckHfcdDpTU1N252mrne5iFS.3S0W2qGXyckhoitq4tZkV9_oZNH
 kUKaXRnA8ZvTP0jXB7vRCoH1HL__5nOMjNvibjacZtmOUUnPk42wh64KH97n_m5ZMo7JgLTAFYnO
 0bTEYE5UqqH6kcnTSNCJGv60Ju0t8BH6zICvG2znOuWj58cKJf2pezD0OxzlUDsSHszg.gZpt.vY
 rGOfq
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic308.consmr.mail.gq1.yahoo.com with HTTP; Wed, 18 Dec 2019 15:15:28 +0000
Date: Wed, 18 Dec 2019 15:15:25 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1399630627.948933.1576682125398@mail.yahoo.com>
MIME-Version: 1.0
References: <1399630627.948933.1576682125398.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14873 YMailNorrin Mozilla/5.0 (Windows NT 10.0; Win64;
 x64; rv:71.0) Gecko/20100101 Firefox/71.0
Subject: [USRP-users] Xlating filter delay
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
From: Angilberto Muniz Sb via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Angilberto Muniz Sb <angilberto@yahoo.com>
Content-Type: multipart/mixed; boundary="===============3966753313363634781=="
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

--===============3966753313363634781==
Content-Type: multipart/alternative; 
	boundary="----=_Part_948932_1033948001.1576682125397"
Content-Length: 1651

------=_Part_948932_1033948001.1576682125397
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi all,
I have a dual tone signal that I down converte and split into two signals with a common frequency with the Xlating-fir filter. So far so good. 

However I noticed there is a phase shift between the signals generated (I assume this is due the filter delay). I have to compensate for that.
The question: How to determine or estimate that delay?
Thank you,

Angilberto.
------=_Part_948932_1033948001.1576682125397
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp84ce0584yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div><div dir="ltr" data-setdir="false">Hi all,</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">I have a dual tone signal that I down converte and split into two signals with a common frequency with the Xlating-fir filter. So far so good. <br></div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">However I noticed there is a phase shift between the signals generated (I assume this is due the filter delay). I have to compensate for that.</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">The question: How to determine or estimate that delay?</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">Thank you,<br></div><div><br></div><div class="ydp84ce0584signature">Angilberto.</div></div></div></body></html>
------=_Part_948932_1033948001.1576682125397--


--===============3966753313363634781==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3966753313363634781==--

