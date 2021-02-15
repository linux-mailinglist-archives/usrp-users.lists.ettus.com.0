Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BE50131B424
	for <lists+usrp-users@lfdr.de>; Mon, 15 Feb 2021 03:57:16 +0100 (CET)
Received: from [::1] (port=35086 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lBU4W-0004F1-OP; Sun, 14 Feb 2021 21:57:12 -0500
Received: from sonic317-33.consmr.mail.ne1.yahoo.com ([66.163.184.44]:40957)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mikerd1@verizon.net>) id 1lBU4T-0004AR-8s
 for usrp-users@lists.ettus.com; Sun, 14 Feb 2021 21:57:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048;
 t=1613357788; bh=LGF8JH98VOgTZGNHpj5C7RvZRb6tt5Z7i/3j4G3xxI8=;
 h=To:From:Subject:Date:References:From:Subject:Reply-To;
 b=eJ5N3t6jKdNmCpPx0gSECxFd4oY4GKPvfFT3yVQ8t5SHbhT1G5g9OC8FbxpRCUExm2VJ0XQbd43ZMcl37WHirBFRYtvQahUR67FSlAqM+7zQaVeZSV1+sbEoLA05+5WoeRkeoqpPCh7A/EaZ3jLuCL8/PdGbcVwYhJ29M0PZzBcIW8LSA+nUw1ec1LhMEIpRV/VLwRKssKhLWGVLpB57/P1VZJT7Yx9roRhmuuOAPAkjY2H42R9x0B8+OaIOEKgIeeaI9g5jqwi5zlREU7phSyBRygOipL0SmHoDMz0oqo6yz0sZyEIsd4Pwd5hZwL6uJw7ICE66sKVt06AA4j8iNA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1613357788; bh=TP1S1pGRP5+eSdvpd87Rq2OY8YstIqK7MXCQKvbIzGT=;
 h=X-Sonic-MF:To:From:Subject:Date:From:Subject;
 b=lQ53C2y59Zix0UKlPIXSbgN4CcpYPsjxrS4HWKoDFouDxsrL88+jfT1RYeyYBwHMB0/40VEkBMOOvgNFGtzMTEDy9F0MJ1e9sBlQDKXeFEkOKlpdArnRUjf5/TR1kRexKPM7b0uHd9rMfy3Rj5sEzFYqXMODvpxN7kf5CTFAjJYHCmTjYOg4w9GqIT8jxPSw2rgALq1bLbHUgDANn4wgB0ZJhhu9REVBl4Eo31EYoaSmuPh0CduQELZwoD3vt8a8sNN8nWxLL5FWfycZ20aPYDmzwG3WPNFexXJdQV9LF5vmhg1KDCXhJFknVpkxKWWDlS5Sdo1GXggVMPqu7AeS/g==
X-YMail-OSG: SL06NHYVM1mpkRAzQS.IDT9k2r8dViqUsCXAxAXyR_wXsn5jnnd6tpUU0XcnkjP
 WUOAvg_CuTIGAJ16X14LXOe44CC_Upr5qKFy2NLnLswYZ8V5vdRCt0XqkuLqrX53PLDE_5hyTOWT
 65bVvkVaXexPAm6VjMWwmapQ8UEjCrqlSVP24ri0HwUeg7cWhsAkeWCU_L.kojmN4XofflXt8qPw
 imPhtSGpkcSbK6PE5IMmpGc9GhvFU7ocyWquINFO7zfm3iBM.RveYZOIac8gJFPEVnus7K3Qmhvw
 IXIJ6tJiWeD5t4.pffsizb1KUipU6C7KZ_z6PBmZP3kCI9hqR8U3giPLtxsSUFm_7h4x3nAYVFcF
 T7xDvaEQPTK00eP77u4_XbpXcmQdFeHvqMdP60p9W0PcggznpyaZqmnMGAHlx8VuIcU7TgXkZDpd
 lYjEdUbZqPA875mKV2BrmTyAx_FcRNpk64A.lsHF7o_7PkD6RoEfIgeJHHoSm0t8JWwIrqNjl2El
 VbpILzcOQNGzP.pkB1mnFe.W.cHngRFUn_2NbHqVMsXUiZreqw30o4uyA0wua6BAnwfKxoNEJ5fe
 WR64n5lW3czjkK0gAoL7cgkQW0WF5XZEAhN3D2srpHptxwhzuMTfOPyupuaDYvOkXWUB_f3Kd4bb
 7W0a5hO4VwmmC_Q3aiJEiURzf_vw_npp_uJAUsna9aaNiy3LeizZSLYVu2oL5AFmgxvvZKjciXHN
 cl26D.FSC_VjW0y5jxGU09.R3lQpCXgsW94lK9HrRjdAiZr7.WlxnupCDFTgQct1rf3yU3_Hf3OF
 F12AgWRxyCajqL1k3qPcaWDy2ov8.rroL0jqxq7CiT0Zf_O7fdJGZ8m1xpFS9e4A7xZ7DpY_XlyQ
 cyyfuHnfxs6jhiQWzPmfMo9kqmWvuC8yt8BNk2LSQmwxS0h.fqMsO5iPETQhMROZX2kfm.ZSkuJW
 jxXGGPMBhs3R7YuOXgIk1948N4WQ.OwHBAmeN4L88SWRlkdWwA1_lI05imPIjhYZP5ktV_mgSObj
 OYsn2n_yXZmSVEBEduPV3GCc2Lm8c2jR0AGlVbSv404nfEf_mVuj3MAj00_sW8mynGwK827uDuva
 Ai6TxTRF9y5SunpQwl._uDXdu43anMVm_axfQTRy0hMSn_waDArUgcBjcSUu0bb21HifRwG10xkQ
 sK0W6mQQ3hYEHbCUhAf6e0SQGhGc39P3Zb4_bgZupKj34xx4XqVn1rkxTOPnumhvSm0Z0RMh92j0
 hZQOybHlCHQpbD3QVSf4tKjZNfLBNKDEK8eaDpWid1KZKYkIA9ycKvgu_k01kAHtyB3VMLrgvqea
 c9NAQltI_PkbyDczLkbiorHKVcmxQ7kUwvBKeuAAufgSCJ8DDmeCrgBtOx0bdiFftQrMci1RmT5E
 Xi6xAb7DubBVMtQFA7ohVzj8BDS2eAKRnKbZqbQs1knBemUKwgz44.Pq0AQQXOEtjnxeRDPmZyzA
 vf6t3CaaAH9BRUqNTtN8vgMOX9z82DtAAmkxwUJ2KSZc.2WgfP2vHJFzkmj1zp9Y.TqPCl13zTHb
 3cby75TPF1t85iu4_Ll7dMpdiqTUcRyMBpNBMdW5RSe3d8BI1FVv3N4WlZrv4rJbccQbn1hL8r_e
 IueK4o5uEUhajwTTZ00i.AJm863uE1nPhowxgXyUcldiwIihkIEFEHsStp_vsg0y0v_SnLiU9ALx
 paGAmIrALRbeXzmt0DPHwNtfrjztOFw2XY.eM6D9iWEH0aVbFAztrP36SZ2KhfXT9NtQoKAAQr2x
 07xvgppUTsUtC8LHGokr5LUuSD_4LlKSQrQJkUyCIN_Jo0dyHQU.9v7UshXJRt9tbhVWD1WPCkfn
 k8ukl6VDQZf60IO1PLhFWFezUOfLFD33l4b482q1MwIdkciyzgdN4MOCWgENWcqcRAwVKyXTWmkT
 LUPzjHLNxLLrt3c.NdiltAvF_5wqqq4Zj0r.tjZn8ReoRb4CjNEN0TlorvDrlQS9BkeLDhkXnr87
 q2IaBpKlVISg4KiZBtP54yf0lyqmonibIeucpBucQOd.7iZv2TvfNJVIJLjjv20pbrjC4DtXZqrk
 97BOzZGlV6CtzSXg5o6PP2D17VzQyoDHctK9vd8KQCH9WcyuhkTJWy51bmkEA5ryZHlQt1B21Kmw
 ueSdfyKH0VR4CqrPZEu6bWd3rK.ODoV5hXApmdygT9G.1FaXwSWdg1Uk0FBDqZz5dOwsgC7MoZcD
 jwKKxCO_FZDsOFMLqGMw4_HmFPZMQPkLAuK1IHznv9dufoDZ7rVaZCl5NuYQ2Er3Mao4vXoA.bhV
 TK6pGQAvwFXIQI0rk8Bk0uVRRGp__kMTrQtMtjhWJjMf5eDOyoTs4CGJ8TibIeOO_Ys04F_.x49v
 y0utjbURDmHSUWSPbBmBSx__XYZa7dA--
X-Sonic-MF: <mikerd1@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic317.consmr.mail.ne1.yahoo.com with HTTP; Mon, 15 Feb 2021 02:56:28 +0000
Received: by smtp425.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID 66299c527a53989a37d7e7834884c3c8; 
 Mon, 15 Feb 2021 02:56:22 +0000 (UTC)
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <898c6ebd-9212-2fb7-af2d-862abdf2a41e@verizon.net>
Date: Sun, 14 Feb 2021 21:56:21 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-US
References: <898c6ebd-9212-2fb7-af2d-862abdf2a41e.ref@verizon.net>
X-Mailer: WebService/1.1.17712
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol
 Apache-HttpAsyncClient/4.1.4 (Java/11.0.9.1)
Subject: [USRP-users] gr-ettus cmake fail
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

QWxsLApJIHJlY2VudGx5IHVwZ3JhZGVkIHRvIFVidW50dSAyMC4wNCBhbmQgYW0gaGF2aW5nIGEg
cHJvYmxlbSB3aXRoIGNyb3NzIApjb21waWxpbmcgZ3ItZXR0dXMuCkkgaGF2ZSBzdWNjZXNzZnVs
bHkgZG9uZSB0aGUgZm9sbG93aW5nOgoxLiBJbnN0YWxsIFVIRCBvbsKgIGhvc3QgKHVzaW5nIGJv
dGggZ2l0YnJhbmNoIG1hc3RlciBhbmQgVUhELTQuMCkKMi4gSW5zdGFsbCBHTlUgUmFkaW8gb24g
aG9zdCAoZ2l0YnJhbmNoIG1haW50LTMuOCkKMy7CoCBJbnN0YWxsIGdyLWV0dHVzIG9uIGhvc3Qg
KGdpdGJyYW5jaCBtYXN0ZXIpCjQuIERvd25sb2FkZWQgU0RLIGZvciBVSEQ0LjAuMCAoYW5kIGFz
c29jaWF0ZWQgU0QgaW1hZ2UgZm9yIEUzMTApCjUuwqAgQ3Jvc3MgY29tcGlsZWQgVUhECjYuwqAg
Q3Jvc3MgY29tcGlsZWQgR05VIFJhZGlvCkF0dGVtcHRpbmcgdG8gY3Jvc3MgY29tcGlsZSBnci1l
dHR1cyBpcyB0aGUgcG9pbnQgd2hlcmUgY21ha2Ugb2YgCmdyLWV0dHVzIGZhaWxlZC4KSSBleGVj
dXRlZCB0aGUgZm9sbG93aW5nIGNvbW1hbmQ6wqAgKHNpbWlsYXIgdG8gb3RoZXIgY3Jvc3MgY29t
cGlsZSBjb21tYW5kcykKY21ha2UgCi1EQ01BS0VfVE9PTENIQUlOX0ZJTEU9fi9wcmVmaXgvZ3Iz
OC9zcmMvZ251cmFkaW8vY21ha2UvVG9vbGNoYWlucy9vZS1zZGtfY3Jvc3MuY21ha2UgCi1EQ01B
S0VfSU5TVEFMTF9QUkVGSVg9L3VzciAuLgpUaGUgQ01ha2VFcnJvci5sb2cgZmlyc3QgbGluZSBp
cyB0aGlzOgpQZXJmb3JtaW5nIEMgU09VUkNFIEZJTEUgVGVzdCBDTUFLRV9IQVZFX0xJQkNfUFRI
UkVBRCBmYWlsZWQgd2l0aCB0aGUgCmZvbGxvd2luZyBvdXRwdXQ6CkFuZCB0aGVuIHNlZW1zIHRv
IGluZGljYXRlIHRoYXQgaXQgY2FuJ3QgY29tcGlsZSBhIHRlc3QgcHJvZ3JhbSB0aGF0IAp1c2Vz
IHB0aHJlYWRfY3JlYXRlKCkuwqAgVGhpcyBzZWVtcyBzb21ldGhpbmcgbGlrZSB0ZXN0IGZvciBw
dGhyZWFkIGFuZCAKcHRocmVhZHMuwqAgSSB0aGluayBwdGhyZWFkIHBhc3NlZCBhbmQgcHRocmVh
ZHMgZmFpbGVkLgpUaGUgbG9nIGZpbGUgc2hvd2VkIHRoYXQgdGhlIGxhc3QgdGVzdCB3YXMgZm9y
IHB0aHJlYWQgKGFzIGluZGljYXRlZCBieSAKLWxwdGhyZWFkIG9uIHRoZSBnY2MgY29tbWFuZCkK
VGhlIGVycm9yIGZpbGUgaGFkIC1scHRocmVhZHMgb24gdGhlIGdjYyBjb21tYW5kCklzIHRoaXMg
c29tZXRoaW5nIHRoYXQgbmVlZHMgdG8gYmUgZGlzYWJsZWQgb3IgaXMgdGhlcmUgc29tZXRoaW5n
IGVsc2UgCndyb25nIHdpdGggbXkgY29uZmlndXJhdGlvbi7CoCBUaGUgaG9zdCBpbnN0YWxsYXRp
b24gYXBwZWFycyB0byBiZSAKd29ya2luZyBub21pbmFsbHkuClRoYW5rIHlvdSBmb3IgeW91ciBh
c3Npc3RhbmNlIGFuZCBpZiB0aGlzIGhhcyBhbHJlYWR5IGJlZW4gZGlzY3Vzc2VkIApzb21ld2hl
cmUgcGxlYXNlIGFjY2VwdCBteSBhcG9sb2dpZXMgYW5kIHBvaW50IG1lIHRvIHRoZSBwcmlvciBk
aXNjdXNzaW9uLgoKVGhhbmtzLAoKTWlrZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAt
dXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
