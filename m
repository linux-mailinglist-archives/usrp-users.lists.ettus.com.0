Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC33394388
	for <lists+usrp-users@lfdr.de>; Fri, 28 May 2021 15:45:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E70A23841F5
	for <lists+usrp-users@lfdr.de>; Fri, 28 May 2021 09:45:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="bXkaJ8sp";
	dkim-atps=neutral
Received: from sonic306-2.consmr.mail.bf2.yahoo.com (sonic306-2.consmr.mail.bf2.yahoo.com [74.6.132.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 424913841F5
	for <usrp-users@lists.ettus.com>; Fri, 28 May 2021 09:44:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1622209460; bh=3l4lllZqvHfgFujutWbOAUaYKSOLkStXTQ8U4nUktCk=; h=Date:From:To:Subject:References:From:Subject:Reply-To; b=bXkaJ8spXmsF7ck6s0oGkdivGYy7rijGR3b/hroalC5mCjKaugRpy9TbWEd77VBAuxIZ6CYtf1+zDq/lXBv8+cxMWuRNalNj8cSdC5R0Ko6Vi/oW9ahto/hGBaAhLGKxd7e+5cc76SrzxHO54nG9UmDmh+7T7FXAfu42LVu0838TR3xHpYDuSsgKvCzHeFn2z9LxU16kgPCVD/GY8sp+42wxllIdxTWmJTcj0ylPJF0USXZ8mUuLchdb24CXfXfhGxN7pCWevKIy6XGSc87RtNjEYJ9+N3I5hOEzL9etwYYX0a6Z1Mdo7TvaoTpwgXgFA96CTPrArK83nnPCad9Vww==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1622209460; bh=cw7ogI6buQvj+4pW3rvcOOn60yNA3kJv/Qx7vLDwFTV=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=YUMIp/wd5/NiK4S0PfBqTNjjX4RvfzmzseR30E3hGSiwO8pOrHVvFui5YNBhlGhvOj1M59LftrDmmhD9/PeCSuzDqhTZmnRWSXMKjWFUBlLi3ufkKwKi8GN13HifGwHqLBYTPVhikUtqynicLpITZnJY3Dneb/V5YzOg0sIF5kV577BhPs8BVuIIDkAFRkHOLKHeuPL6meqtT8Ispn7X9crgFwwnACOgNsPouYn5dX/HeTMw485MOA3Rjqhky/MUBms/p0QWuQ08mTnsCJ997/fSkwZrfmku5RZgj5sjxGcrEsC7H/0PxmMbRL/7YTPnk2WSD519sybwj/+P8ZRshw==
X-YMail-OSG: CYP3dDAVM1nEdjNYfwjbYrqndmTveto6O7h7c8tKdeypPxnH9HSWRPUtbZiymSJ
 mrqfW.u5oYEGBnl8oQAx2nVBekjCs0qsVoeeh0T85rMpnernrB8p_FaFwcxQbiVdMnDRYtDl.ZbC
 WCWVNSFvGTm2QkzAVVTsIlbusYDWfqyWSQDW13VaHIOTJNvyhcX6ZuTTWJOxJY0I3CGmhTpJiZFx
 dmXFB5YBxuhSjuvvWAHirlCxIdclzX0QJlQV1kqhLAjojSI_mvUIvRsSeO3kaN9OIhewfNgb55Bu
 RS6gRDyaP2iR6anb_g3O2mp45P_WFAqvr1FXQwSCRQeCS9vZcPslSwvN7Hie.JPd1HF1enoxNUzu
 pmAaOG..WUJ0eT5NiYcp9Peeoi6kOEwCcAgjrZSULORudVKYFilIyJRSQodxyVVNJalv4JaCLFH5
 WTHr3xSJYOuHLHklM1AH8soLeEqT_I2hUy5GbAUsifga6G6gj3xlV0zdDRIRmdTiqaSaxswknw_k
 OoxhbZsV8HPo3k7x3EmojbfeB.z0aP_B_pRPSSs4tinVgENkbqcbTLycXlJgwiaAU3FfPzGrGJOt
 5D3K3cSiBTimuePku3rPNmoWlHHDD_G3L9Bq.B9SuMrFzSXe1Eq6bYEItEXA_XHT78raP4rG4XgU
 ZGK.mOZHrrL2lOoJATmJbkIiPNmNALfkNv8s6Iz2pw8TW53wJUse2Coh2OoK02wP.xldMiJWwwMW
 MCBPxpYfw1.pKUJqg2aOUM8_vIgTp0NafKEMGM582WAKPM1mBKQAabmj8kf1.jbbWaobT8LrSv1R
 WMRzbE9KGE4APKp.6LLLm91.LO7p4vH.30fUIC7ENNkDiG_rZN86FKTXFK73XszdNuWx9Uo35YOR
 R.njmiH1HuwlFdoC9InMDRi7KRmmabvTGYVI8gw4ms0kD3UGQTiGZKqPn2eXpQ1w5pHy1vcm8ZCf
 96CnPT8Kwhesp7DI4lDhvJGl9TIYPyT8KmhPOArC.366x3LRe.rT7tINjGRM1cUuAPLgzbKDXtIN
 86NuwdUIVeaNCoQPpEu9rIKI52VETZ.B_nrbl4MfNEgYnry4hhaNBbhw07QLL.fTu4y.56VwFisE
 vGLWC6Yj3EnkMVLNVI3lLRU5TV3g9eHRfIl_NSedByA5oLZ6hTluxt_P8tdeOat0WxCzKoHnn.uH
 qlEnGvmTfslt6zoWyrbMXNdSJ2o5kIsemC4x82JpqEQgRPbckUE2wKUueRFeBnDuYK_W7oR7X3Nq
 .0JkYZCnlRj9VC5nABabjOnRdgs3cRdmwRfRv9Xq8xgukxmNsc44RMaCBj6pzkAHH6m0McYsiv9E
 3JI65tdbw0hGyP5462DLJnOkMX0C1ZWOmPchAfB0KSxRRNr6o2.7z6bwCoZ.BabI_u3yynV3SG1S
 bbn3BDLFBgumMDvunFDHqfmH3KRV2PIj5eA3mJTzSsUQBWG_CH1DhzrT1djkarUDtjOYZ2b91Y7o
 25m76IpeKNISJ5mJmWv0FckNY.ktTI1dhZPwbuCeQqNBHWB1gJt.lPYSyAgvFCGLjHCvcvkh215U
 NQrhx2LCH8KTJj7vsyFPZr8dPRPrOttm1FFx4bGi2qmXeYU49b2.cbDpqWSDTLWktKF_ZL1LtD3L
 RvgLMchwjYRIdC2OGY7uN2ULlhKX_sEK64eyHWDIPlq.oULEEWGrdEQKSdhD2xXPWNL3kk4UGgVU
 kYd8IrhDKMj..Q5CEAnkg0PC2ass4lyEt4QsaIcX7R8yc2ulraVdYVrrmhf7tEksy5ecXOaEqwGt
 UriTJmn2fUUpREC6M2jK.8nF6Io5iIE5tE1flws.yaHXdPx9PIsDYrIjZi3mEWtORr9AmjVDg6o4
 alRnqN1tn0_27h2OdaXPNj.PiaRhQ3uc4smpVstwXzZ.laRGyjS8njPbLoMwfMFxPtC3gdlTXu7t
 lcOvTyO5EvktlWKNUIZ.nTL25KgZbgi6.._N0I_CwULswWGCnUzR4ebP0.lt2bTh.gs6x7aagROe
 byG5m0BKtBlH3c6VLBLxi2Z.hyQl5magKDmLqPG_QQhbsDrSsylqNk8ir0Ci6.xnbHrNUPzI_Nft
 SYD1Hkk9pDMwll.06xpgo_KhmhHcQ0HUPQqqcAd5TJiUX2Nvt4ROOalxMoxZILWXmHa.etWmYNT0
 .RR_3HMElhmKpaBCDpiYKaNqklBWeKj_bektbxzq.6iY_16a.Ts7aS5IQuyCxq.wP.f60xeNO1c7
 beeCx82MXcz19aZy9lX0jkEwBqijgTDxruRX3rxtxoS96YSW6n6mx5kZfWeM4Ms0Wa8mDZVrGG9.
 8vVeW8_0jtSrq2uyoystEdGh9hZnb9OdeXYtmE0ag5L0TCpmJUQQlRGVR5JnQUMj4EqEXQGRaV_E
 zx3kX4mQL_H8uTPcWlG6RH_7qdtqlaGWRlB0TdOMPv6WNyEM5OMB1peKa_t.nJkiRWPxXgoJERd_
 HfUrdcD6DSkUfYesGSKD8_xUUHF3UelswPBINifv0bZpJ7oEJViem1UX.ocqx3we7eccxWhs-
X-Sonic-MF: <jayl0583@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic306.consmr.mail.bf2.yahoo.com with HTTP; Fri, 28 May 2021 13:44:20 +0000
Date: Fri, 28 May 2021 13:44:15 +0000 (UTC)
To: 
	"usrp-users-request@lists.ettus.com" <usrp-users-request@lists.ettus.com>,
	"usrp-users-owner@lists.ettus.com" <usrp-users-owner@lists.ettus.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <2052843249.632322.1622209455065@mail.yahoo.com>
MIME-Version: 1.0
References: <2052843249.632322.1622209455065.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.18368 YMailNorrin
Message-ID-Hash: XJVEDQODN25GFSWJFUY7EWAGCRTJBFYT
X-Message-ID-Hash: XJVEDQODN25GFSWJFUY7EWAGCRTJBFYT
X-MailFrom: jayl0583@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Leave
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XJVEDQODN25GFSWJFUY7EWAGCRTJBFYT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Jay Labhart via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jay Labhart <jayl0583@yahoo.com>
Content-Type: multipart/mixed; boundary="===============4561646868234954751=="

--===============4561646868234954751==
Content-Type: multipart/alternative;
	boundary="----=_Part_632321_918912764.1622209455064"

------=_Part_632321_918912764.1622209455064
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Please remove me from your mailing list.ThanksJay

------=_Part_632321_918912764.1622209455064
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div dir="ltr" data-setdir="false">Please remove me from your mailing list.</div><div dir="ltr" data-setdir="false">Thanks</div><div dir="ltr" data-setdir="false">Jay<br></div></div></body></html>
------=_Part_632321_918912764.1622209455064--

--===============4561646868234954751==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4561646868234954751==--
