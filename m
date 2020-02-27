Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF5517101C
	for <lists+usrp-users@lfdr.de>; Thu, 27 Feb 2020 06:22:46 +0100 (CET)
Received: from [::1] (port=38152 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j7BdC-0000vN-RB; Thu, 27 Feb 2020 00:22:42 -0500
Received: from sonic310-15.consmr.mail.bf2.yahoo.com ([74.6.135.125]:33519)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dspspouse@aol.com>) id 1j7Bd9-0000q4-7g
 for usrp-users@lists.ettus.com; Thu, 27 Feb 2020 00:22:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1582780918; bh=G+OdFnr/UqlMkpwzVL807SH/JCP7XMM9Vb9HcKqjIUU=;
 h=Date:From:To:Subject:References:From:Subject;
 b=hGW8oHBFhch5XNTNSlhCQSHK0c32AO2BF0+uKjiFH6rJuCHQHqS6XNZLEqk5p1EVSpteKbyVAPKBUg9T7OtMy2HdOq+I75cw9fuTLIuaE1Jn6lpPKbuIvnc4PEc74qgwKZSwiAgfBlhR+sETPXFBDeTvPLhmwU9TSwlo3Y3HMAvYr69CgLvcFYmVaL5Ug6OBYazGLAVXs8CKLjXHi2G+uTBUnUoWTVKBIf44jmuoVQxpfbqOsBo1KDyGoPaOcOVpPojq57Fmxu/ccdZkb5lghTlVFOWekWfhMov/EKfmf8Tk19RzzxhlAfaGKsMjneNqvzbZb5Q9gmSMsos2xTUdNg==
X-YMail-OSG: yoWAMVwVM1k0HC3dct5GJUjcIaHM0w1ZR2PZE2oWOlMo_9SrTlbxEbRhvHA_mS3
 gNTI6JKOC3XkLqNXzvGKu44QlrRKgGTLI7tF80qeZUmLHicfHytPSX6nVkv2ea2YxcYhbCXpi6aH
 rHX_.g5xNtYlnGKIIsYCltS.kVnTdAyXbo7PC.HZdu_JrGZixAkl2AHZUjb7A2Ph8xHv.l7cOMY.
 676K5pUrvsaAVhEXl1zv2f.WCL5QomKkUCAGYBO3zNCldbAxKirXA3FY2qmQsZDQve0TBCAkWhzW
 dkNsnMAUfqDOUr3p1GRhuVasSgCyvrNTGoIox9gNb.6baSQPExDQjLCBVQ0rzM9FGtXygMA9lD_U
 LDNmR6g4ul9ERn_wa1k7pI1KJMu57GgtnG164MsUQMQF_qA6H.2R7yyqx1e1iQBg7YwKYrGpiPlD
 g2ghAAyra.8tnFmQckh1RQd53C8cXJypPIF7wIqaL5bl3j12GA_9QMrIv5kvjk2sjRMy1Wy68Ukh
 tdZ2YFr1k0p0yCNY6n0tzITOyvmEKdGNgx7HhjQm01RfekXoc5y9TvsjprFdc9qDA0t03DOkohMg
 e8PzPPJ.CBSeXoNm8ulxiEd.Do1T2zI.GwMbqnQ_.GxVoqKYLO9N6sOKrq4iZFH0HeNICuxHYCH5
 qeVOrBfuVJjvZMl5psnnvSmF4vkfpQzLrvjgNvrLn4YFUTmBCFXbB3hy0gF5nUmp2KYiZehondkd
 k77Ya6LmiQNh89f5CLlyn4v5lCh3Wbu3i2KQc.Nd8sZPAkrVn4K.OwYYMYJMLF.A6NgXOlVfI6Xg
 2Yl0yR1VyKbMlTbcS9NjiqsproQskw.aJAXV7udWUdGeriDPfgVIkiKYDd9PGDasVZc15e97tp3B
 ZUwg17VnP8FOrq8QzKMJYUvIze6r7w.jAU._2qv74H5KnDAV3gHMfQUldyh0B5k9z3_O7Dq3r3My
 p2NMAXwUQuS.mvchxNIjkmI6KJYyeSddIugYjGUuVAP.MfRoHtDeVt6ZpfEnWBNmUnsRIuCBfYeS
 0Al28hRKlbOFgAjYP5w3XNLw2Lhd_JSiZmj0_dKG3WH55LfLspnzgjY8VjGZouQHtsRBS9Hy6pdW
 Qc_hdg1P5Po3AF4c__Q8AbFVvuLvhge27jQRY4KRN1NoviKl7_qn.wMfMXEZtrL5dpguBpR6MgVs
 mgUwmyopaASD31MAYqNOzmz0Qcx5ZteiKuLXXiGcqB3YTbguO2ISSFYX.k4DElLcVGriwo1UQy7g
 5Wk_gwCEEx0Lq.ELBQ6TvDz8_jiK6wTjZEaYGEcTLM98L7Wv5wAPqnt1ttDAMc5zCa5Y3FKvykG0
 pFxXyKmGRhShBLRU_Oz8-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic310.consmr.mail.bf2.yahoo.com with HTTP; Thu, 27 Feb 2020 05:21:58 +0000
Date: Thu, 27 Feb 2020 05:21:57 +0000 (UTC)
To: usrp-users@lists.ettus.com
Message-ID: <1994044559.834986.1582780917804@mail.yahoo.com>
MIME-Version: 1.0
References: <1994044559.834986.1582780917804.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15302 aolwebmail Mozilla/5.0 (Windows NT 6.1; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122
 Safari/537.36
Subject: [USRP-users] USRP N310
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
From: Len via USRP-users <usrp-users@lists.ettus.com>
Reply-To: dspspouse@aol.com
Content-Type: multipart/mixed; boundary="===============6181649222960091774=="
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

--===============6181649222960091774==
Content-Type: multipart/alternative; 
	boundary="----=_Part_834985_1147019901.1582780917803"
Content-Length: 1890

------=_Part_834985_1147019901.1582780917803
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Folks,I'm looking for information from any subscriber(s) to this forum that=
 have successfully used the USRP N310 to provide 4 Rx channels which are bo=
th coherent and synchronized.=C2=A0 I've heard this could be challenging an=
d I know people have been able to do this successfully so I was wondering w=
here I might find some detailed information/instructions on how best to acc=
omplish this.=C2=A0 I was told this forum would be a good place to start.=
=C2=A0 So any block diagrams illustrating the Master LO and Master Clock ho=
okups needed along with any available calibration procedure(s) describing h=
ow to actually check/verify coherence and synchronization between the 4 cha=
nnels would be great.

Thanks,Len=C2=A0 =C2=A0 =C2=A0
------=_Part_834985_1147019901.1582780917803
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit


<div style="color:black;font: 10pt arial;">Folks,
<div>I'm looking for information from any subscriber(s) to this forum that have successfully used the USRP N310 to provide 4 Rx channels which are both coherent and synchronized.&nbsp; I've heard this could be challenging and I know people have been able to do this successfully so I was wondering where I might find some detailed information/instructions on how best to accomplish this.&nbsp; I was told this forum would be a good place to start.&nbsp; So any block diagrams illustrating the Master LO and Master Clock hookups needed along with any available calibration procedure(s) describing how to actually check/verify coherence and synchronization between the 4 channels would be great.</div>

<div><br>
</div>

<div><br>
</div>

<div>Thanks,</div>

<div>Len&nbsp; &nbsp; &nbsp;</div>
</div>

------=_Part_834985_1147019901.1582780917803--


--===============6181649222960091774==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6181649222960091774==--

