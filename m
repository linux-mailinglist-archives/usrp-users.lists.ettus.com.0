Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 680D015488D
	for <lists+usrp-users@lfdr.de>; Thu,  6 Feb 2020 16:53:52 +0100 (CET)
Received: from [::1] (port=51146 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1izjTR-0007Q2-O7; Thu, 06 Feb 2020 10:53:49 -0500
Received: from sonic314-20.consmr.mail.ne1.yahoo.com ([66.163.189.146]:46738)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <santu_voonna@yahoo.com>)
 id 1izjTO-0007Kj-Tk
 for usrp-users@lists.ettus.com; Thu, 06 Feb 2020 10:53:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1581004385; bh=GU3lb8aoUUBrR9yAmfH08bHB8Mo8HVtRR2qPIQuPwSc=;
 h=Date:From:To:Subject:References:From:Subject;
 b=Wrzuw8ggRnvu+XeM0a/x/bY7uouYaqb4N8yRaKxqblye/g1hgIv2yancrQc+xCVGfgOTrpyys0jl3kTUTw4jvZzrol1mFdaCfVA5zGIO/EF29FNspubIojKWPpyQfv2sZd6z7tugWWY/VkYa+nB4cyUyWVIoBpiy+gC2iy3ySif53rVYHOzrEoDqvTMO58skUKTMvBmbnxyOIyQE7TRhz63OKhynGnU8qnDzeyAgyyOEeB1hc9GfXGdohUqqLD3cfUy96FhvEgaPuZZ1VQ0Ib3bLB2mH3xm+T4B3bX0oN6jV1VnYa3UFO6zhQYyPxDQ7r7M6zWHgcWVxVjj6m+k7dQ==
X-YMail-OSG: Y36Ucd0VM1l9v8KFP2If6Vo8.769j.9YDUkpi1FX74MTW7TFP0lrDoGVPoI2R7r
 6.65WYR02986mCa1aMogN_VlJQbUQNu2Kx0OzPurZUeyOhgvuYXE2uG.SUKUhPP0cSr8DEnyXPUs
 deRQN9wSMjXOpcRjRMq.GmjOzhTLpzGJzaPvFDyrfbON8RRW35sDem52nybHnVwBln62hGFx7vQ_
 4dG9zjokozxsYOHNNuUSzzGU_IB01GrInJ0QC4bpRGEuAwd4fKpNmeYWPkf4ZwvEh3.a62wKE2ti
 BomK8JTX3yeB.J.vfL.5bOSaf1kvXT2dS7uC70O3VnTGBr9yX1RA3kW_xPz6f6cq1nkXZd1tNAH.
 2.6cV..PhdDr4LppwVx2tSXzzzXmiYqNYAxIu.KgmSb70QXzf3q71mKRGykLYhF0yw5pmGCRehMw
 0EBwaYP1retZexWweK8P1B2d74TQXDYIO5PLtgXFC5EJMNasu97kQnuivNXivZTjcyo97bM2sbbQ
 IEVqZHApUgZtHN5KVSbpwp3o_7aLTLMdELsjbRUvIymgMQTX4SvBuLkkqgbIdR6Az8pbTaJX1I.t
 cFNNQxdK1idyeeXreY7X7q1YM5zF4iJ2yIGA5pabffHd2DAr_sL1rF49t7PSMfh4LPJwcZG.G0D.
 mOgsz8fiKrm2Xfo9LGKf8PNv9ensvHwTgXD3aMQPdODbuhjzm50JLH1m7OX2QQSPy7v69Ueujd7A
 hJIeUTc.AqgTY7vnxJ.16kcoNJM5KzrHJ1syQ9YX0_.OFqEE1nAze1GLzbuU3jCXJRV6gZHQk3pA
 k9PMEvBIbNfGavg1eQiUBqoDlo8epnUy0SsSI6HfLUVr9t.Sm6pzFIS9hi5kmHDN3GCDXBB8V7Fn
 uyoM_a7noDY2fqKN3yN.EU0pcVWk.qX.0M.bMY0yMpgCj0j107xe4t8IZghImuyTxibPJnoIgalB
 dtX9cupDLRV0kUOIstETBDVqiBPJu8WVcSiQ6UJ2S8RitnfuiNV1l_xGMjsSVru174gqm1Wxlko.
 uphd8UAXuaZIOWo5bhYLZNoAfEwXWGy0z2BGjZDqmMEhzJEbSI3NhYlWIKOlMD45iVph3QwnKcDX
 HvqV9l8ljH42smGerJ1xD.F8_CRCQ_OdW_dQeutsrFbrAFcMCdgQjzOURxCbE2iUGR3HAqgYPg5x
 mNCL7FVwklKhpb.r_ahwxNCa800oHGA8WhPkC8ceE.ftqcmVDklmRQMvqeBvQhO5fmybuhPwnhZM
 Y1mraEYHOrWFpvbnb3OefqsPaLT88FXzY31pDqd.m62n.QSo.QovxxEtPl1vvYKuqcPiWThEtjA2
 wUD1y8jy2tkXonOSuIFxu
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic314.consmr.mail.ne1.yahoo.com with HTTP; Thu, 6 Feb 2020 15:53:05 +0000
Date: Thu, 6 Feb 2020 15:53:03 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <86368074.393649.1581004383613@mail.yahoo.com>
MIME-Version: 1.0
References: <86368074.393649.1581004383613.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15185 YMailNorrin Mozilla/5.0 (Windows NT 10.0; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117
 Safari/537.36
Subject: [USRP-users] Getting time from USRP X300
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
Content-Type: multipart/mixed; boundary="===============9176918137674536740=="
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

--===============9176918137674536740==
Content-Type: multipart/alternative; 
	boundary="----=_Part_393648_95928067.1581004383612"
Content-Length: 1706

------=_Part_393648_95928067.1581004383612
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi There,=C2=A0 =C2=A0I would like to connect external GPS antenna to X300 =
and get the time once GPS is locked. Can you please throw pointers on follo=
wing things:  =20
   - Does X300 support specific GPS antennas? If so can you please let me k=
now ?
   - How do I know that X300's GPS is locked? Is there any API to query for=
 GPS lock status?
   - Once GPS is locked what is the API to get the time?=C2=A0
   - Is it possible to use X300 as NTP server? If so how could I achieve it=
?

BR,Santosh
------=_Part_393648_95928067.1581004383612
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div dir="ltr" data-setdir="false">Hi There,</div><div dir="ltr" data-setdir="false">&nbsp; &nbsp;I would like to connect external GPS antenna to X300 and get the time once GPS is locked. Can you please throw pointers on following things:</div><div dir="ltr" data-setdir="false"><ul><li>Does X300 support specific GPS antennas? If so can you please let me know ?</li><li>How do I know that X300's GPS is locked? Is there any API to query for GPS lock status?</li><li>Once GPS is locked what is the API to get the time?&nbsp;</li><li>Is it possible to use X300 as NTP server? If so how could I achieve it?</li></ul></div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">BR,</div><div dir="ltr" data-setdir="false">Santosh</div></div></body></html>
------=_Part_393648_95928067.1581004383612--


--===============9176918137674536740==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9176918137674536740==--

