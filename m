Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 070543E456B
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 14:10:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C8D1A38433B
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 08:10:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="qb71JJD2";
	dkim-atps=neutral
Received: from sonic310-13.consmr.mail.bf2.yahoo.com (sonic310-13.consmr.mail.bf2.yahoo.com [74.6.135.123])
	by mm2.emwd.com (Postfix) with ESMTPS id CCCA7384282
	for <usrp-users@lists.ettus.com>; Mon,  9 Aug 2021 08:09:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1628510954; bh=3eLe+JuXUJkRtZwrU2aU2/uIvIeOpZhw/a+yBVGNRN8=; h=Date:From:To:Subject:References:From:Subject:Reply-To; b=qb71JJD2To52NyKOkdTKnls+9krgNZqdUwQnZsTEqKqsBZVvK7j3DcWHhteOT1OoYDN0ILeZ2fE4bqHJ/aDODf7R6HJwrW10GPxYMKfDCGVy8jMghB6VNBdToq2HBsUyK1VvgFf2ZPQMw766YByx/NJcYQ6MmaJs/tMVJC2sTAWM5cXaIxUFapjcIjK+vFb1SpQJwEbYEMKKsEi3pnY/r7jQpgr7iZYVIgZD7Ze4Nr+c7WlWcYDHKWTnYcrPo6g8BOd1jwzkJ0C0LMgnER65UH7UEfTKJAfUjQzv+k9wr/S1lyD9SHoOaGxJ6uoDpjMKd1dpjmtt+rd0Y6OgApB2Dw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1628510954; bh=2Qa9kH6LiZNySmA2Huk5d0dS9n3JV3UHYx7H76lYRtd=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=bRwKiTBchc5apal5UKN2zVPBqJ7AOqazNyD4sHx/zuA3AmyB44IEIjHcINAEkwK27ogJb6Y5gf1E1I23h/m65QAS0Ka5KCYxVdncigGfPjScGY6clYOmW3giQAyVBMk+zmcRN785AyY+vmNJnI2O4FRsp7XWXDeUgjylAjPIRSTG0ySx1iDEP+unhbGDng5ghkmmHJUng3SXA+cQqRLyy1DvyKdffEdiPdowSxK4mAzl8Q5G+EEe/DZyjv0pDYUA4fTvhKWitaqLBfS416oz1k+0OL2q5RJrsJEozcstnRfEZMi59Sz1GI1OijE5vaVjfgXmJWyr/BLRZbV6CQDn2Q==
X-YMail-OSG: WILzMwcVM1nggtkEm6QO_3fKlyB.7VnuC_wKZzA1iPeWcosHGfazuwsQR5sR4NE
 mnawrm3z7hTPTcTAdK0MH64dhYlidETWyAxIVYh_rF.A83uMSv7UNr5qxQtq_1S2O_E4ZP3s6cPv
 ykpCjX0ZsROzKGQFaKwT_CT_OwakHvL45MYdDTW.Cn7PFQyvCI7fFpV2GDEzIG82dYLhTjuxNH4a
 9vOUAXvm56EcM7JJfuTn8whBcmqOiKHLN7Kn25cgSN0VawHNMRd_95S2JeN02okCF07e_1ptg0Vb
 0nIEC3WR4QyQQssG39IOtaGeuxZGHdZSgG1J5ccPIUhwXHQ7Kc6VNNjZa9KTcffBLTMj_8rw1OtM
 CYb2XNGTYea34j3gqkWjdRpGUL8olfYgBiifQujYsn2SkmRYWv5wbjNqLFD64rtyxKX75e52cRG.
 8YKEPRBABV_OMvzR5iHdKerDLNYrJVzBVprUWEzjkyTIhyfpOSGHiNRwIrzp7gtguFP6FiIujz0N
 pqDr_9XbAeAP84EetDhdzIFA5Q4L9v1cT8IGYWT47z_7GHjvyXiOWuEHjgvbvNzuEOJWY1hwpRGW
 toWmE_F30xOnHOt3zeqcLqEOZ50dJANa.e3syP.MPmkC_a_BqwBLFAQO68V5w9hn7ZgptIjvj2EA
 U44HR5YoQoGniT4_Rz6wOUUqu49Hfjd1MJI_w.erLrRX3LUeMfVzsIgF4DEwDGWPl.CyG8Y6.e0F
 5PRATbECTcRhn.HPhuXjd9Mv6FaAY.75suvmKQyq3evsJo32A3cosuN1d1ha41GPTZvC9h_RsErB
 EAipV6QzuoBlX_Y99kbiG0D2qK5ICCfqv3JDy6_K0XH.AgFNtar6aclziDGsoG7Alx1z8oKY0C.v
 5s4qNZdFByFZWf24YF.YnOHupkSHl_GU7o4XTT_tRkgOskOVaK9A74tqi_zVRbFMEwE36s3bSizC
 fV7jnOuvDLl.6XXMdZcaBfGSLc9SwjA5mJY_ChcwQXoWj_vrnDnpuK4qNGvc8IHzBZu1L50cFihr
 fxC6a1neXRI0ZxojC1Jjof_UM6m9rVbbkbavVccJEZJ5hClUeAxyNlVYN0ZmS_Cs0j.zQFgLHXK1
 hr24UiTr9GVRplNhl8of3fY5oBzPRv2QDxAv1EZPuK4.PhrWF5bZr9hIVzjxg23kzsqmV_ibG86X
 Q.7hMVlH.LAx.15VSoSUUEOPaM.QH.19RGA3GoRihQ86.c3lmvOuzEE0oCfFFSFiT5xjYTC6n1Yr
 _WeXNsUKpv4qOMDBfl_w7Ny6kFVmJxm_L4LlbyPJ0NEhA1dgl2yx.mM1FllczSb9_dCDkE3O5rfB
 0cbb80TOMJdviubTeOcnsnUMZhBrRnKBJRy_lCqfmnOzJ_sPtyzVX7lYzP.9sY_f.qCs13J1DA55
 mMM9rdpatokcLtMkpyNcYO2BQIbiiKO.D_e10mE0zeqRKNwRyLrZr_GrSf2VRye6YUqK_j.WX9Tw
 4FIcHjt9H_I2uQc0lJC9JAOaZT02nJKM_g38gyMHXaWeXN1BJqUPJo9pBCXv92TC5xSZOhv5Uw6d
 VVFjKh7XwQQVzMluHL3AvrnFKCLnKcHyE7IBE9aVCY0ivg9J616HBUlP7MluUnKlSF8BiAFFj9hb
 fRDTB2WdW8dHYjDUaCUxJ9QCJPyxNxwfVXide9hp.NPdat5OogZAU9Od4vMDV9HNv2Z3XtJKmw0f
 wXTsVpf6NqEb_7tBx5Up1rCV2EHoaT5Z6NdgMCM_6A7oBnDOny9hQ3Cy63FNIfTsPX1hlD65iloa
 POenx8zz9TbTlhwBg0QSk_EO8o_ezEb3CArA3qt.bp1HvUfRMUskBoj4ivgxVe2IbdKsx6CDWlB4
 1ANU1VWA24YXaShOrf793A5s356PqNcSjz5vqfBpYxyKgGSJBZbRYmDY05wxuXD486.JZj.VHyzd
 YUBYWNU8.KDTcKmmDJB1sY9FPchBf3uoMoMqztIiWw6JM2tm24SJsGa40KPaEgk7RHgRk.kVbXVS
 OPQUr69ldoDDc7ytrZgVG0gjWhDd.5g0e4ogpFCmD7fSL6wULdi1W6lcGs4xR1aEnKBxQl8WT5ln
 esyBfFGymldhtuHwf76HzfkamDm_khIrH8EUTiMM1XRUYAH2YHO_gbmQ2h3HukjZ.kL2MrWUhbyk
 X55xKIxnv37TGs.po.O0OERP.sGZiBAnKW4kezVI4ZaJfFUl7yhAr5owTdLLxMGDKTSaj0LMizNY
 x4Ngp0pZKW3CMjuD0tjaNdQfw1.vin2gCzlNyH6Y4ZgyFiMLhGA.Q3JYJT0oE9rDKOtPMoMTI1vj
 2Uy6og_exwBo715JFq8Qs9tTLYJoEJ_A.F43GN6M7aO2CZmrKxe.f3wUunEeifFg1OW20pppkyXl
 KBzprOqIg_oOBjKupQ1A5Adlimvz.ImSAzpaVSh1Rm2n9yfOo4WzxzLeWF4Dh2wo-
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.bf2.yahoo.com with HTTP; Mon, 9 Aug 2021 12:09:14 +0000
Date: Mon, 9 Aug 2021 12:09:10 +0000 (UTC)
To: Usrp-users <usrp-users@lists.ettus.com>
Message-ID: <1321788668.341382.1628510950627@mail.yahoo.com>
MIME-Version: 1.0
References: <1321788668.341382.1628510950627.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.18796 YMailNorrin
Message-ID-Hash: W5R3L3I44X3QEOWM6HJ25I7AOMCSPMT7
X-Message-ID-Hash: W5R3L3I44X3QEOWM6HJ25I7AOMCSPMT7
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Flashing FPGA on N310 using JTAG console interface
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W5R3L3I44X3QEOWM6HJ25I7AOMCSPMT7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============6432570753201062366=="

--===============6432570753201062366==
Content-Type: multipart/alternative;
	boundary="----=_Part_341381_578432857.1628510950626"

------=_Part_341381_578432857.1628510950626
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Out of curiosity, is it possible to flash the fpga of the N310 using the console jtag interface? I've been trying to accomplish this by flashing the default UHD 4.0 HG image and have been getting the following error 

[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentError: IOError: recv error on socket: Connection refused
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: EnvironmentError: IOError: recv error on socket: Connection refused
Error: RuntimeError: Failure to create rfnoc_graph.



------=_Part_341381_578432857.1628510950626
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div dir="ltr" data-setdir="false">Out of curiosity, is it possible to flash the fpga of the N310 using the console jtag interface? I've been trying to accomplish this by flashing the default UHD 4.0 HG image and have been getting the following error <br></div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false"><div>[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentError: IOError: recv error on socket: Connection refused<br>[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: EnvironmentError: IOError: recv error on socket: Connection refused<br>Error: RuntimeError: Failure to create rfnoc_graph.<br><br></div><div><br></div></div></div></body></html>
------=_Part_341381_578432857.1628510950626--

--===============6432570753201062366==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6432570753201062366==--
