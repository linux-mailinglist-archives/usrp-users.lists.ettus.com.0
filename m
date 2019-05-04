Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 052001373F
	for <lists+usrp-users@lfdr.de>; Sat,  4 May 2019 06:17:23 +0200 (CEST)
Received: from [::1] (port=55584 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hMm6u-00056C-Nn; Sat, 04 May 2019 00:17:16 -0400
Received: from sonic303-20.consmr.mail.sg3.yahoo.com ([106.10.242.37]:41171)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <rensisam@yahoo.co.in>)
 id 1hMm6M-0004zZ-Eo
 for usrp-users@lists.ettus.com; Sat, 04 May 2019 00:17:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.in; s=s2048;
 t=1556943359; bh=dcUr1oV+b5kIc3SKA3XFJY+Q1OyodNcsBmYMdt3DWaI=;
 h=Date:From:To:Subject:References:From:Subject;
 b=cag7WSNi8+DPhzfb/B35E/2+JpR7VUUWboFtPoPx5UXfMyOb07wW8Q49lGAlN4hw2waU9d+jiZE3Y4W72sZaVZgSjUv8IVCdYuK/FOn+dM7+DoetZH8dYfbiz2Tc05aYtBDMqZAWtG9dl12CdB9xFx2c5uotQF4mz1UwqT0ukrrf/1b16prsaP2roOH9blm90AVbFjp6M+gM7+BEaqHnQr/r0CToBEI+muxE7Jx1ef8DlGG3Skd5V/fUWOPiAZVMMhXMDMTZsltGz7e27/Bf2neqCOA0V5cNTEZfYdruRWnWkJ+Mtuycdzbjgfy2GjuJjSoHAidaexoLGm0i5FdIZw==
X-YMail-OSG: zvMU55cVM1lgfAMi.Bpf9qjqC80A14Cs_f0SHPpbDc2ETL8D07P2OQ9VLaFAkmx
 YsW4TP2RatHAFi0uUOSF1NhJpo.v8Jd6gA9aByBe0OfHaYEuq2wA.fl3z04sMz_C7b51YAosVS2U
 zWup9gRYmxuyO_NvC2RzS3b8Yxxb7EuW7YmQTGMMmLaHsz1tREwmg5T2e.ReUXbNRZ1qR9FOju3U
 WrK5rwagmbrYJGvcHPh3RuKCRJMmB3x7HBtotCFk_uANMKJC12KIxwtnCwU61S0RgdQAiuMUCLa5
 fLaKOzyMv3EnU_.iTMHCwRkXJJCLUnJBAWlqZI4A12_CjOmYjqdUi3pIAb9jRgV9wnBakSkkrd2e
 MWNxRnYuxZfV_D8HeUePIRpA2qorY0KPWfeTGW92NG4j68HIJeBvwjPn6Z.gCMG4BXMf4hYo48zO
 nBc4nMgwVvDb0jFhMcXxMZy6fjJrHpZujDgrRM9K9DSZb3vnCxPTjfEtPQkgFwkuShQiEhHheRCm
 bSx9deprwJ92MtkftTlQRwPIebMP0LOV9q_UiwaQgvXRH.S8dfXxpMiI47DRf.RNHdbiJAvcbXin
 QAqQU1inKC7K6guXm8TO33_0AuWa8cs62od_vVZRZ62VvI_iWm9FlQrydK_fRyI74JCMj5eRL3RC
 O_133TEFOYOlmtaFRQh.jZQzg17BnxY2xwM18HuRA_myLzfL8X2FVOBCFVBbxN7GfU91cSp0Ca6P
 B68Tah834DxvtVu7XItfTG_FQQxVfLPj8uHCUMTbQ8.F2GlZE_FaGq3g1byCm6Z52yuk0LtvVJrf
 bZ1Zls1sXF2X6PgTT_AmpDD_O3CVfedVgfm_.2OwuL1waissSP3nbKsMgUgQ9tYslyBagixm_UXG
 NCUJ.6yJLzFzKdDGA6NT5cjqNa7oI3u4W1l2bX9eGDlET3aO5JTzdJROiobThIgjJSi_vfD_q0dU
 ymZ6yjKcBAqgBOmXUVUpazsp44xCa9NiN7Gk7TPrfRoE.oZfxZEITg5l1xGcLj.0bD0fwyNy6.fB
 kJFjN0NnZTk_jnivZ3XBIvRlWuGypGL08MEIRpHw8Y6XROGaT9dA6U_a.iE6MDtb7xdVx7JlDMd5
 SCzPPfl3oZkcvcSuNQ2.Mp0EWRD2GkrDV0_yfvB0yfpVYsOaL0vpO1FnglCuPUeh9LvIvYN4cvzk
 mo7.uyrtEn9lVPBGoxDs_b69RP.EDNTeXHhU-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic303.consmr.mail.sg3.yahoo.com with HTTP; Sat, 4 May 2019 04:15:59 +0000
Date: Sat, 4 May 2019 04:15:55 +0000 (UTC)
To: Vsr Ravi via USRP-users <usrp-users@lists.ettus.com>
Message-ID: <1432742277.62002.1556943355674@mail.yahoo.com>
MIME-Version: 1.0
References: <1432742277.62002.1556943355674.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.13583 YMailNorrin Mozilla/5.0 (X11; Ubuntu;
 Linux x86_64; rv:66.0) Gecko/20100101 Firefox/66.0
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] B200 Overrun
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
From: Rensi Mathew via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rensi Mathew <rensisam@yahoo.co.in>
Content-Type: multipart/mixed; boundary="===============4463495930172009132=="
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

--===============4463495930172009132==
Content-Type: multipart/alternative; 
	boundary="----=_Part_62001_694400367.1556943355673"
Content-Length: 1156

------=_Part_62001_694400367.1556943355673
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Dear sirI am using B200 SDR to run the program usrp_spectrum_sense.py with a sampling frequency of 16e6.I think I am using a fairly low sampling rate.
Still I am getting some 'OOOO'.
Could someone tell me the possible reasons for the same? And how I can avoid the same?
Thanking youRensi Sam


------=_Part_62001_694400367.1556943355673
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div><div><div>Dear sir</div><div>I am using B200 SDR to run the program usrp_spectrum_sense.py with a sampling frequency of 16e6.</div><div>I think I am using a fairly low sampling rate.<br></div><div>Still I am getting some 'OOOO'.</div><div><br></div><div>Could someone tell me the possible reasons for the same? And how I can avoid the same?</div><div><br></div><div>Thanking you</div><div>Rensi Sam<br></div></div><br></div></div></body></html>
------=_Part_62001_694400367.1556943355673--


--===============4463495930172009132==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4463495930172009132==--

