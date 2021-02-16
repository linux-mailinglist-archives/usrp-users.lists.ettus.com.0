Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC4031CDCC
	for <lists+usrp-users@lfdr.de>; Tue, 16 Feb 2021 17:16:21 +0100 (CET)
Received: from [::1] (port=52996 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lC315-0005lR-Ag; Tue, 16 Feb 2021 11:15:59 -0500
Received: from sonic314-19.consmr.mail.gq1.yahoo.com ([98.137.69.82]:40386)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mikerd1@verizon.net>) id 1lC311-0005hC-SB
 for usrp-users@lists.ettus.com; Tue, 16 Feb 2021 11:15:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048;
 t=1613492114; bh=EflXiEFdFs1wJcCvw3cfj7uEZ6BaMkAb5g0G2/yBFDc=;
 h=To:From:Subject:Date:References:From:Subject:Reply-To;
 b=LDU+lQf3nubUp/M1J5yXNM4oGgE9QievipmXGkRuz5kYbuwkxDUTxTRsuD498TwZbcuEgSrCuQpLhOa00+UqsiEwhI7t0kdEZHOp7gYekv8z92q8RPIDH+n0oQLYSryDu5UGECDuldcAV52wCUDzm7CGeIUeS4CBtDX0qSIwNx1XzCnusjPcO0MEfHaSLqNbfb/nPTx8vnbmIpSojsx6KUnCG5Eb63UCrMDRu1uCBXo7oU5UuYVkpGQ2JCEaYN8bWhyQ+3s2Xa0p4yjSBpjufZD1aT1Vp/zQhmI36CibIsp000CQJEGTjeYKRoA4x1ITyk7Fjrw9F3bE3huJuxc46w==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1613492114; bh=cEJuNSiL0TQmUY9uqphriUyZzMEo4U0oK+MtnGjnjAi=;
 h=X-Sonic-MF:To:From:Subject:Date:From:Subject;
 b=By2DxK9E7M2NBAXKpJhQ6EKLESQy0ZRMFaY2BuD7rm1G2e2XvZt9J6BcHYjRy1dwW5iFnv77wYUYn014JFiDzzKv11aKywlvbGlEjhpA3A/fnSWWfOOkqNozDg/GAvWGcJdr7pCDZe3iI9sjWyrak9Ex0XSj/uutlFp9lFReVS4+tVOQjEDSr/ag7j5ZDR0OEnX3GbHJqSYiH78eWVMNaH+c7m4mHxiTicyPtb9Tvbv7cTJbf01CoWI6SzbO6dOjXNNwS/KvytrzxTuk4/QdQq2xpITeLqAAt0cKyHCQIJg8KQybp+IEU7gUZ5CQF8oFUkw2lljGXyPo+lKTeD0WUg==
X-YMail-OSG: VS.3YjcVM1l65ZrbNkghV1oasjUDspbsQb02XvnsmKOSPwxdJxhkHo6RjhxPihs
 .mxIVVgdSVYEHb074LIHfPP.oxz3NGvTHVvExqDecRb0TIB610Mx0Y4XhwQwxwPgWOQrCrieNFku
 RtO3_CBip0Dky2UYtqiKpFYdpcS61QoIrwsrNsx7VyDi35USN89mNMk3A7ESea2k5gYjwEvMKcKm
 MdQpcr5IVkEB1oIQVPNoB9JdbGupS8sbbnR1NBnfu1JZh.DFt50dl1r442piJKkcXd2BUUMVY8zM
 3DZXjLDxwJ7sReyp1cw6ur1YLFV_Glv0Mu.eXo5ECGJJd_L5jZZcxDcUo6SVY6fn0nvUvX2wuuP8
 6cfvOqlfT4ExEWBYvPNVq58snd.gzA2lKPFviqiWKvItnhfJ1k579EdX.zPt2eBxkaAszL29zl9C
 Gzuj0bnBrEXh7l8bVHHNv0PTDud2gSMTCq5HkCf4PcCpb6uI_.IWXeGPmr_nnXAN2yGY9fcC.O0i
 iYklb4DaaYn.VwcQqJERGR_pOymWt_LbjEJRJGqB4D48aQr4TBv4xd6pMEd2gucnIXOCi0vRrxe2
 rZfH0a2DSHz.devhaf3.aGMQNez25CnEM572stk2xy.r28jdu4nDEpzUdvBlGp4k0eJWmUDB60Rp
 oD3HQ0TwChppvfg4UAfDAxwoHk0nwyDnxNAAoFP0A_DgOS.vKmsDjKHHhV5uyEh.w4cSkr7v.EIQ
 8TBsK7CCOJypor_xEEnufDV.2Uxk.9DVYc3Fp0c18GRCDw6bv1H3Q_qR7LPHX7q9cBdH.DMYzTJ_
 3wpnj4jgv_UFk_msW.TclxB.UCb1bT9saQkZNNkYAPSs87S5o2f16SvHYbb_YtwmmLFjb.I9Akss
 3s0dJDYRsLbUPfoL2EZzGI2auO6KJYgaawO.Wn2M_imiaRReyXu8eTK1VmfHLLuKgmxvt48JjagR
 HBlO0BRvetZPY5_RuSU.48cMB0tdhret19N2E9LEcpP_skpsBsz9T9UPXEBXJXvo44lYLMKUVhMm
 yZ9FvjnlAAHlNUoUob_loh0snEW0AuS0AUbofXTn18bostqnZALsizzjbY8.4BL2ywlqPnhY205U
 ml5Qrh1YSrzS1F8WIuUf7r6SB3cHbDa3NgBgr8KRKdQsSkkROYp0wofdFuk1YWKnnLOtk4.Ujxsc
 QuhXIl5JQh2B0Wu.hcYNGTZuxA1SZb4brrIege0875QfsBSFBe0w5Xt2pez8VxAPWO4hosto7aTy
 yvMwUuRady5QD_Dyl1ftdFWzStOp4AUTDSAhxEgimbwc.x11LMtbMzVsxmnqKAUCiSAUazXIg9wB
 6VFV_HjfSjfMO35.FyviZVh9.dnyX8eTOf_Q9Y11f_XFUBGFC3cd6_e7q53Uk2GpeqrdE2klCrqH
 Y5uvK8isrUjsLkxJKsTkE5hiCJFDz3XxwQMBRzcCWNM5PUFpSBPhe19Z2iMgr8jVHzDGO2GgZgUs
 51Crw78krEviRj8zmnwkxaGS1b4EDDBvA6k.20YpT9m5baSsqfkmHEo3djDev3myBXMnmX7j_4Eg
 FssWwn3We.bXCXgMF2ZP3mWn9OdkJ3UZpSbKfyTFBJ4d1Cl2hmi8tinTTm0URgFbvSiyxisenOLr
 tMcBZDoxUa9YzGGoZMCbFrooTOaXBI4fqTBBtXlGXhqqnhzHGKmCyNT09Iyjriwr9OUujS1XIYh4
 WoANMzmi5ZwiBXV4Z5E45EumRa3zxOT_p86KbySj3elw82s6xcMySx3iRGCoqAoTllzQ7bQXb44u
 TG2N_Q91oQw7.a8nfAYxmK1Qveg2chddmJQdw1w6FkPePNqlScDARESnTFst0KW.Yi1msBm3ieSX
 N37N0FdjcVIltQEFcz2iViDKQSoRD8qPpBC1HjMJKgqQUDCrDM0y3BSoRwKmQ4g9wkOWeY_rXRAE
 ighJyNCyvNQOU1yGf4uqlk8jg7ViuzSnIStFgw7zkLr6rb4FYpu0R0STCTml0i3YxtRhaC9pDY04
 yWjcLsH_IwNwCdHXIcAvL5GxPWTRK1WEKCH5ZhzkKhuVG7kYbs_lDbyvz8p70RiYvkT04rM.f8uB
 8HIo1w7YMLw2yaBnbp1BHC6xs9AHH36iZ3VLNlV07hQTIWTrdeYS2VQ0Ky7022RqrJk0frdhW1Jc
 2TMWZsIm3
X-Sonic-MF: <mikerd1@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic314.consmr.mail.gq1.yahoo.com with HTTP; Tue, 16 Feb 2021 16:15:14 +0000
Received: by smtp401.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID 74dffca638cb23d4bc3cdcb07d62e252; 
 Tue, 16 Feb 2021 16:15:10 +0000 (UTC)
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <1addbb88-269a-0928-1fd3-415daa295a61@verizon.net>
Date: Tue, 16 Feb 2021 11:15:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-US
References: <1addbb88-269a-0928-1fd3-415daa295a61.ref@verizon.net>
X-Mailer: WebService/1.1.17712
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol
 Apache-HttpAsyncClient/4.1.4 (Java/11.0.9.1)
Subject: [USRP-users] rfnoc_image_builder error with clock domain
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
From: Mike via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mike <mikerd1@verizon.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
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

SGksCgpJJ20gYnVpbGRpbmcgYSBuZXcgRlBHQSBpbWFnZSBmb3IgRTMxMCBiYXNlZCBvbiB0aGUg
eWFtbCBmaWxlIAoiZTMxMF9yZm5vY19pbWFnZV9jb3JlLnltbCIuwqAgSSdtIGFkZGluZyBhIEZG
VCBibG9jayBwZXIgdGhlIAppbnN0cnVjdGlvbnMgaW4gIkdldHRpbmdfU3RhcnRlZF93aXRoX1JG
Tm9DX2luX1VIRF80LjAiLgoKSG93ZXZlciwgd2hlbiBJIHJ1bjoKCnJmbm9jX2ltYWdlX2J1aWxk
ZXIgLXkgLi9lMzEwX3dpdGhfZmZ0LnltbCAtdCBFMzEwCgpJIGdldCB0aGUgZXJyb3I6CgpbRVJS
XSAxIHVucmVzb2x2ZWQgY2xrIGRvbWFpbihzKQpbRVJSXcKgwqDCoMKgIGZmdDA6Y2UKW0VSUl0g
UGxlYXNlIHNwZWNpZnkgdGhlIGNsb2NrKHMpIHRvIGNvbm5lY3QKCkV2ZW4gdGhvdWdoIHRoZSBj
bGtfZG9tYWlucyBpcyBjb25maWd1cmVkIGFzOgoKY2xrX2RvbWFpbnM6CiDCoC0geyBzcmNibGs6
IF9kZXZpY2VfLCBzcmNwb3J0OiByYWRpbywgZHN0YmxrOiByYWRpbzAsIGRzdHBvcnQ6IHJhZGlv
IH0KIMKgLSB7IHNyY2JsazogX2RldmljZV8sIHNyY3BvcnQ6IGNlLMKgwqDCoCBkc3RibGs6IGZm
dDAswqDCoCBkc3Rwb3J0OmNlIH0KCklmIEkgcmVtb3ZlIHRoZSBGRlQgYmxvY2sgdGhlIGNvbXBp
bGUgcHJvY2VzcyBiZWdpbnMgcHJvcGVybHkuCgpBbnkgaWRlYXM/CgpNaWtlCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9t
YWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
