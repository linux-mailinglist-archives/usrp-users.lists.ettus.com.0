Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 964493CF5E
	for <lists+usrp-users@lfdr.de>; Tue, 11 Jun 2019 16:45:55 +0200 (CEST)
Received: from [::1] (port=56400 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hai26-0007jA-FT; Tue, 11 Jun 2019 10:45:54 -0400
Received: from sonic312-26.consmr.mail.gq1.yahoo.com ([98.137.69.207]:38260)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1hai22-0007YW-EG
 for usrp-users@lists.ettus.com; Tue, 11 Jun 2019 10:45:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1560264309; bh=YU6YGzyFhwtyeoaMMdqmPjicuHieWyv7CDANHJ50hXE=;
 h=Subject:From:To:Date:From:Subject;
 b=GZp9FKdNOdJVmnspffymEGVJ4GhuoePiq5G0ToBBLtvrqExfuAE5IXfooJnCCQHwlEghedG3tA9RTiYgls1wPVPOhp1RO+TsrmXv1B+U6+NSB67KfOYOpnWGdR9BTaLyL6mPF0BHcu/z2e1VY++Qzuav7DX9tuioXEpRNiA5d8Uwc5B2V+R76358xatxukQ0ZUYdcsQJmSPjnWGvykwclj2SoylKc9DVAf5/2sxa0fg1Agf1Y82xEMYwTjbpqcQsTNq9ks7946B3JTJ76gHaK69+K7RzcETH9lnrrqPt5ah4vNL9VNFpR6sOyzIrHrZx+2Gp8yMIyE5H1DXWBfV39Q==
X-YMail-OSG: 05ENjXcVM1n4GHqIBgaZGDgQ7Niwhv6F_uzYbvxNxpnNZjn8WehxiLTZvTQaS99
 GDgfyBN9cjqNYf8oz_YYpvRtvH1eMVQknK6cvzGpTr3etR9O8_GgEDoAouFqmvNV36L9LHXQItma
 ef3RctWn9jlOIA62YykU8Agy26FN4t1I_L0GcHA6V5cEjHMadf5iojjioP1M5l498Djt4C4Njx7a
 AF1ozNo6jQrHBWTDBtVAPnIoZTCmvt3AJWdW7qHTSo2lrA_gDceUSTcprL2oUP6PUEmNJYthAy99
 JjZPIUlY8ErHAaB1VZkN59aI6X8hfBUn6fgVzPS7F.OvskGDPfOXGSIDm2rphR3mE0g6XM09tDOc
 eThxm1gsUrSLnvHTCBYL3pn_g5N5YeDVY4GDJuqNcDRdDjF0O60lXM_TYAbTD9nbsyiG91YrilY0
 509qlfISott0MXVXFe3CI_DyOaRr6jrQvlVbUtDtz10wQjBs6lml7xDE_DzgQLozHp45e33a9ZeD
 s.5yaRBiOky8UWxNlmGaQXHEwulxBfQXLP6iNdfiqkRjKaqFirc76cqYEnG7qG0m4Jj4MLjf3__L
 nVhlhzSlE7fm8SkFm0aNdUBEEYFWumGVF41v7TG.G3dUiOE15N6BQPh7AKroqY7tcNC73oUE22G2
 CePyajasVgMFoM95RUJggU7tClMk0JDkfANdPAzeBZKgeIdayLWcHwxBP43pVbX9N2oh.lFkA1Qv
 fLkJTYHOv3JJtxHP5u1vaFneqmnDyvVgGtc8sswDYycinbKiE16EPoBBiNs9oXVnM3rzcvWj1Qxc
 8XDjzTStHBxB1.T1K9yF1lKVuYGxiDEqLoV44lCvE3Xv26Qyt5eVgFQK2grlyRJrniUQk1L32kbO
 rSXHhMH22ImMPzskDVrR8g0j0vQRwexHAO.PB1FXTPhJPZWTdlhBBO5ZYKc.6_mjstK0sR3Uqmbs
 kki_8iPTmW9VwLhO1BGQO4W.vB7hm4rRHjMiYLOB.vD8lwFIW5jD0jpVP5NsVxeFMONIDkD70OpV
 Hd5iqSRni7zG3At_minHgo2qAOtguaQA_h_X1vFFvU8M6QanTgHh446TzdgKBOrigqUh3AzHWkuA
 8s4LqkB6tRqiNeQ3j_tL17FiNBxBI_.unu0GtsyhK1gFanlgbz86bQlxQk8EBRSEoOMnV2cpkZaP
 2LtuRLKcqLyy3qeZajd725N7tKqogotqva5X7Nzzuw6EcnPSSsBZj.Rlx_w--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic312.consmr.mail.gq1.yahoo.com with HTTP; Tue, 11 Jun 2019 14:45:09 +0000
Received: from mobile-166-173-62-239.mycingular.net (EHLO Serenity2)
 ([166.173.62.239])
 by smtp402.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID
 526ca4b6f68319ebe09886df7f72fd5a for <usrp-users@lists.ettus.com>;
 Tue, 11 Jun 2019 14:45:06 +0000 (UTC)
Message-ID: <2d2b8c3c89cc726250ce85d83724f6f69c5652eb.camel@sbcglobal.net>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Tue, 11 Jun 2019 14:45:04 +0000
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
Subject: [USRP-users] RFNoC on E310 -- which uhd version has pre-build FPGA
 modules?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "d.des via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "d.des" <d.des@sbcglobal.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

I'm still trying to re-create the situation which existed back when
https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source
 
was written but am not having any luck. Following those insructions I
can't get access to any pre-build modules other than radio, ddc, and
duc. I'm looking for the: 

|   |   |   * Radio_0
|   |   |   * FIFO_0
|   |   |   * Window_0
|   |   |   * FFT_0
|   |   |   * fosphor_0
|   |   |   * FIFO_1
|   |   |   * FIR_0

modules shown in the tutorial.

My latest attempt was to git and cross-compile UHD_4.0.0.4.0.0.rfnoc-
devel-238-g39a41476-702-geec24d7b
since it seems to match the latest RFNoC-labeled images at
files.ettus.com that look the most like:

http://files.ettus.com/binaries/images/uhd-images_4.0.0.rfnoc-devel-xxx-xxxxxxxxx.zip

but I get:

ERROR] [0/Radio_0] Major compat number mismatch for noc_shell:
Expecting 2, got 195936478

It HAS TO BE POSSIBLE to back to the situation that existed when that
document was written. Can someone point to the right combination that
existed back then? Should I keep randomly walk back versions until it
works, or is there some other modernization (maybe the sd card image)
that is breaking pre-build RFNoC images? I want to try to make my own
but want something that works to start from.

tnx


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
