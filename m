Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 974E513A9BD
	for <lists+usrp-users@lfdr.de>; Tue, 14 Jan 2020 13:53:50 +0100 (CET)
Received: from [::1] (port=46640 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1irLha-0004xg-Q5; Tue, 14 Jan 2020 07:53:46 -0500
Received: from sonic304-21.consmr.mail.ne1.yahoo.com ([66.163.191.147]:37932)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <santu_voonna@yahoo.com>)
 id 1irLhW-0004tw-M2
 for usrp-users@lists.ettus.com; Tue, 14 Jan 2020 07:53:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1579006381; bh=/JjhbwCQg82Ali49dDNyl50mcV9FkkYWmmK8hmg6Muc=;
 h=Date:From:To:Subject:References:From:Subject;
 b=aUzToXP/p4HaAOgaQ1GG9HcSCuT3yiDHWl94GvQOffRrg//eHsdx4byJm1NZIh+9VGRTY87CigGGTnqR35NDFUWKPJG1L92mOOFyAXZ3Ld/FCG/rxda97IDTR2GNCayVAPAlq5UGnva0UcxG94KRQycmUtxM2qYGObkqqltyDX7dD5LQlnqQWYQGuBCm7DJiLTw3y7KKmHF7t6e2QXx/745aviun/x2o65+F7SRIK07xJIl4phAnZom+xcJ4VFH4da2fmhJ2OWfmTj+JT647Mu5ZkF0snbXkgp5KCA6JnicGT0yQqm7LqToaSeCzAWiqAzaBxb4yvTav/qtsOtMMww==
X-YMail-OSG: .ii77r0VM1lIY4MPv0zQq8p09TN7i86BcSRoFw_aouFkwuZVuxhN01hbedx930R
 x5JLi3tiSiSrwW5OnCFQpVUVg5IuDoBBjmRJxAdZbEbouf7tElgyYE3DehKzrZA1r.cnF5fJkvRl
 tbeDchQq.W14LVss2OFHBPAlkzUPW0HfBIZ4q4UJBCRhuLvk8PYI4.XwO7nDq3BB17DPqKaeX3s_
 Fm5CfnhzELxhAxeHEL8sFt6yL_K3ZB7_RZfxDxrowkHnVeNZo1aIU547EW4M5T8iyubcq9ToAUGJ
 sG529SXmOB_qlQLgtMBAWIJtgbcPiQfpeYU8D1C0WwaLg47zeMFqzCZPXufJepwaqN0QKYlsj9Yn
 4aakmAeKuYGHo5HqthoBnpEYlTgxBFFV7CEqGEiKIGCZ7AV_9.6r4TWay3iT.Y4vvWj0SU1lGjob
 1thtCOM_bXuZekKDqhSlszK._HHo2xlbZuDd8TtVgrNbVdR_SddGgDa7jzPLbcpcyOXidZdEdiia
 0gSFQjsu4vFERNM9FI4_QWGzSJngjYly6sdmgLFVC0uTYMg3bo_6xjuki335VxTlgp0cj2_A37Et
 lhXtrSuyGsUMII7T9LtAl_92qfwfqeHCbtPgyMJgZew3ok4h2EgODz.brwND2UmO2XpFm0AxFjDC
 HeiVdhsm7Iutc8OGgzr4LA8X2XoGijpVx95Azkkb6jKwKbLfHLH7r8X.RO.7NCniNNY09H2HNmfh
 sQeh2g0cHgIFPFaokQwkA9C3ogt5EcUqKj9t.9z0FvBbTrwHBV.to_jALWsoZJkN.vAhbkbkzQh5
 pjAzyXK4JSCJQRthd.R9Bv7sjK2CmZ_yuKzxY0cc5llaFp1JCqVDkMZwiRu8RWhLUmRYhIV3WllT
 DXd8efZ3Wg.3tvjKHd5bN.cHxi1yU12CkOwzDvNXli8fSh3ECnc7a48NgAcs10RrVMGiB1m1JBOc
 SFuKzMZ.sQZHQ3PQOcrWGK4hkYnANwKfwqH8GLTD0c5f7edJhbCDJzZeLnw0yyDf3w3UH3rv_fz4
 otbk3HjJsHKBm72qcVgzoyDy4Tc8Hg5gar6jW9JciEQaE7gDxwFPxPZxd5E3jC7tdru5fROt_p2M
 d2jMa.ndVwuGfKB.tC.oq3iyyfKszZ3SPHz8_oBAfeRM5bDiSX4CRKK3oqy9T3PfMh7JB0PUtPkw
 D4g_WvM8vZMA07HEZxvmDLG_WSrbqTU1_Wr.mYoVgfmVpjnnGtXt2Bq86SfqNuZ7Gw9Y2QZjcvEH
 tOtZSIk3ZaUEsXciG4DzoBHH3o.06Qcc5ADNSoykPQYEbljcH_jPKKxzg0mpY9RKFdMrmnuVYzJq
 OVP80Cx1JbQMC2aDLZqw-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.ne1.yahoo.com with HTTP; Tue, 14 Jan 2020 12:53:01 +0000
Date: Tue, 14 Jan 2020 12:52:58 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1258007910.11247090.1579006378862@mail.yahoo.com>
MIME-Version: 1.0
References: <1258007910.11247090.1579006378862.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14873 YMailNorrin Mozilla/5.0 (Windows NT 10.0; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117
 Safari/537.36
Subject: [USRP-users] Transmitting at required sampling rate than supported
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
Content-Type: multipart/mixed; boundary="===============7486381140320449149=="
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

--===============7486381140320449149==
Content-Type: multipart/alternative; 
	boundary="----=_Part_11247089_1701622894.1579006378862"
Content-Length: 1136

------=_Part_11247089_1701622894.1579006378862
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi There,=C2=A0 =C2=A0Good morning. I am trying to transmit a file which is=
 sampled at 62.5MHz, which I couldn't. I know since SDR supports 200MHz, be=
cause of which we can only achieve divisible sampling rate. Is it possible =
to support 62.5MHz?BR,Santosh
------=_Part_11247089_1701622894.1579006378862
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div dir="ltr" data-setdir="false">Hi There,</div><div dir="ltr" data-setdir="false">&nbsp; &nbsp;Good morning. I am trying to transmit a file which is sampled at 62.5MHz, which I couldn't. I know since SDR supports 200MHz, because of which we can only achieve divisible sampling rate. Is it possible to support 62.5MHz?</div><div dir="ltr" data-setdir="false">BR,</div><div dir="ltr" data-setdir="false">Santosh</div></div></body></html>
------=_Part_11247089_1701622894.1579006378862--


--===============7486381140320449149==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7486381140320449149==--

