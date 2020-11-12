Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E7D2B0CD7
	for <lists+usrp-users@lfdr.de>; Thu, 12 Nov 2020 19:40:17 +0100 (CET)
Received: from [::1] (port=59974 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kdHW4-0000Kw-4y; Thu, 12 Nov 2020 13:40:16 -0500
Received: from sonic315-20.consmr.mail.ne1.yahoo.com ([66.163.190.146]:40913)
 by mm2.emwd.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <mikerd1@verizon.net>) id 1kdHVz-0000Da-Pn
 for usrp-users@lists.ettus.com; Thu, 12 Nov 2020 13:40:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048;
 t=1605206367; bh=fbETs3Blu914jkni+/MFs5RMspfu2GMhh4pGZiovq4M=;
 h=To:From:Subject:Date:References:From:Subject;
 b=N0rHkDQ94qJpno0Xz0X0JCL6YoMziD+CwkURzNMFRPLhQpFZ2gM8VdLgSLqte8rgWzn0fwt0a9Xegboi6+WNGnfAwxkHXOvcZIRZIiXzLw8YIbGPLUyrzIWtgVkunEUvdyQkf7RKBXylRMWnBvTf6RhcomvENjTTlS3esggqo9ARSQtb6gwGt5Dw++s4wUBYEExX2f5KbBtOEfwvLwjt/+64vLGd+XQjbWB9fJPbJJJ8Hr/y+sAbRsBG6u/2f33/sxiGlgfpAlshzPPIuJCm1bdTFt5vtoaTYwutbZRyg2B4pebGRqDFEopQfaEUCtmoVMQMHRJ9F/0bK/6j/3xQfw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1605206367; bh=1Ht9oEezXkeb/gTO/saH+0Jojt792iw9Vx6s5+rxOmD=;
 h=To:From:Subject:Date:From:Subject;
 b=Cj+tGAWMI+V7OwQH68yLCKfyR5supDb252mn8ySL/qdJY7SBmBSFD+4DMLPhpGJiWN28WyiwnGETgLr6R8HvtHDtsG7Dmxw5LYFq2cSbnjlxXWJuwcq9ybKRi3X/8tw12LIjjJmNbyeMpYkycR2Ut95ufrFCGqTiy3BNldRGlVfNBTcPwDRTIF+SxVmlEORz7Oh4k4+tNNZ/dvGAYBPLjlYnuoM47nscM01NAeU5dRZtQsW1QTUL6Fhe/K0Iykn38RYXHpxIaTeKNMEuleJajOH/qUUDEXgEDY0C35x1qPTorsSeCwPypsxBItikh8DGE+/X6UwkgrwaG1LuJq5A2g==
X-YMail-OSG: hKqzjpwVM1lFPZdMkOAEDiwSr9Om50JVKdwoHexYABVGa1d6G_Ncw9eU3F.DdDG
 9OJ.M475ri9qgOXxlcpsrUKhN2PzxTAVF1NrMRhCrknzGDZtRBw9XclByLa9lnSDUoLcW70CM7e6
 KJbLHggD4WTl2HlTeplXDNKQ.tAWGS55heKSZ62NqrGt4MW3Syf_do1I2ti5ugSyhut5uWL7QePp
 QnWrRxOFwSSb3JN_XnZmKsCvnra6YMGJwCN36Qp6yi7WtT479r9E0Fi75rAp0T641Jl6KKoUrPRm
 cN7W_a5rtg2zHPKrnCB2ks..lqq.KH6GXWMQPoJvfQ5qXtezZnNFBQR63PtaGf3AzO5aS8thaV6O
 gvHSnpWSIEgmWsvOtHAA7lsP2e8hnj3mkWL.3u7CcO6cqxoFKVNOyeKTrlu8qXGFduHEAifgXRbU
 6TVoM9XTkLewSWAqpUjQS.e.7kGgwa0bg2WoSw1mjjg.HNkav73lD8rtDbjYfGbgkpq8BIkOcfKC
 .owebsgHStAkWaDRT.KJ8ZGy.kI_Ocx_Y8QA5oHTikfLaEztFgFWoaMXT3OnjOLF4C0Kwte9Ptwk
 Iy8wBDENRtIDooi_Ji9Uz81AArwu0mpKMtTO2IprwU1o8Zvc26t9drWFp9yT.Yf8qm3.wmlSNQyf
 r1xuaKO07yGyO45klY2.o0ZeXWiGPHV6POISsNrDP0iUzDM1cLKHGiShJnFpMcsEIxcZ9JIXYAfD
 sYZ8xhKD3DKuM5s4v7RO1RgJcZRG6lmE8vNfIg29XP5c.JVYee13Pa2wfrFcXukaQwMpU02qlA3u
 ynoqsG8MDJCPyMY_3agwbClzEGoG114bQgNMlAYhgpfscGwvuAVkHYIy4hnsiC6fsU_A0ayM_xQ1
 qce8BKyjfjUBBhU2AwjyeEZoXE2OpWmfewo99cS29aMDdRc7.Ow5qzt3sttfFOvXLbohVrUAtwgW
 LkESLpLNsO3hepwjpFiTngJlnsWqEVR6Yvc7ahw8hdCBMvJ2k4x2fTmsN4l0UHBepSYn6ZsWurSw
 FfzYxXWL0uIzf5IPT6lQ3vqtInnDPrMHrbzTGJAuArQV9B.AhG1Xbenl_A4XnxEVgngSgfna5z0o
 xOXBKhafpPG.bWuWdBmpYyaIZswKriWfN8KFdev26ybp3umvlMEEsNDE9Yeq4E1_iJ_Wa2BTmhkb
 InM.itCNyGZRml.NGkG7m1owsfx5T_YvKGLFlMAEpzBHvA4LCjAuqSWx_UniBEWJnQorfTqlOEf4
 YoRyTDsn5gswRC_H_xisIZ7zTunoAQuN8Y11hPZ6nOYgfKFUbkpyx0WuVpgC3LF74TZJAKU.g.Tg
 PSbKxxM2E1uIMyCekIUqRW4O0cmHoe6f1YcX8k.4YxixDat7VGyjd5ri1jO_eUM3A2DPEVSax.qu
 0xh8ILPl0C9ZzcixL_j0C7OEw4eqNy1aeWlNTW.8xaNvE4fPSaWrT1IegTzC73GpqDzjnJIerwSB
 AJhe4tVqEhSkuLb0cTbvxlwDdqF.L3XgOlWVwDbb3_QrPhAiJNBC_4fF86EsC.Il74eV6jhP4Amh
 xy2_zSVKDUNDFYL7tRDx0RAFp5OomojBGX0BZKb_LSftWQ36v3PQLsUm5.M.yZpbrYj3B91K1VU0
 FvZ365cPam.E76upBplXi.x.xnxL.KnCoaw3UR5LGs5Cqt_gwnfYbCNL7ixzh0vb.bFtIUKrxGXn
 BIyxXiFHde1jrtUTcpHXt8keR2t0SAfVQtMOr_UGdQjcAezVb6ITUMTSljLH1bVd06s1g7ILaNSc
 6otsukIoFVo2hrOfQPJtr68PUw7ZM577oBDNDP7W_PInVMB9i.xNJTiEEQppbdy4DRXxd9C.OPqz
 QQ2pA5TbFubdjttMibW9V.ITLJV1SiO7v2fGGyS4EFLGZ61KeNt6dZmqXffl7liDbotwlLrs5pat
 ApKsxOHK45C2phr4eJvQE07CnTV0LYpx9.3u2AKSURQNc_wUeCqT.YOW8i7KnB2Y6eTzVVMm2Glm
 6Ai4147ucEhr33KJ28Au_3d6ajCdQ5JBGRIi.kEXPRnRlTYGKhbDI_NTEGPLdfdZgtCT3I8dYwYj
 gzXDm7z0xSI9J7_qH6CWUDZ_30u3UkgncbOq7nBR.Yxu0IAP.bSTQUwKH7p9ee0DV160mna8RnAw
 m7qYjZdiw9gS9cFJ_FPSh74AQRHgvHIBcr7f8SHyu4ghDtkwx0NpQ1AWH90IHt9SaHsUfVM_HJdH
 Z45diq9EsZ0rsM263oilh3alwUxdRQNH5apt2CZOUVqSgADRl7Du.JvIjlB8wi.kFm.9Q7qEBv4B
 dbfzYZVSyNaPd6GQy1GmG5AINQjXiIrz6Y5sDmdwAD5f67hpLynCaLjN75NPHmm2JiAYnEz0jFPy
 ZFnCEFKS3IlpeXs8ZIXuC2NHT7eWOpaEHnpOQS54lc9dn4fInKQ.pyRRqumvpwM5cw_Mv1zISlh8
 CcFmj_G4mW7wscOE3jSkjtaVWl5UtJQNA8RUgQLFbgq2Onmfg0Al45rG7DEIJk.xlRMPYc2D2Cgh
 8KVuvokPLw94UWuPM.iITZ6GRFkv9RiYJzQbPmPrcRYskiWxT8QpgUU.2mddcc6mISXuCTbqqgvi
 PLQ--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic315.consmr.mail.ne1.yahoo.com with HTTP; Thu, 12 Nov 2020 18:39:27 +0000
Received: by smtp422.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID fb6a1b8037c55ac1b8f816929df6b840; 
 Thu, 12 Nov 2020 18:39:21 +0000 (UTC)
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <9a4fc5b8-5c25-3a25-acf6-de2dbd816b55@verizon.net>
Date: Thu, 12 Nov 2020 13:39:20 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-US
References: <9a4fc5b8-5c25-3a25-acf6-de2dbd816b55.ref@verizon.net>
X-Mailer: WebService/1.1.16944
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol
 Apache-HttpAsyncClient/4.1.4 (Java/11.0.8)
Subject: [USRP-users] E310 RFNOC OOT modules
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

SSBnb3QgYW4gZXJyb3Igd2hlbiBydW5uaW5nIGEgZ251cmFkaW8gcHl0aG9uIHNjcmlwdCBvbiB0
aGUgRTMxMC7CoCBUaGUgCnB5dGhvbiBzY3JpcHQgd2FzIGNyZWF0ZWQgb24gdGhlIGhvc3QgbWFj
aGluZSBpbiBHUkMgYW5kIHRoZW4gY29waWVkIAooc2NwKSBvdmVyIHRvIEUzMTAuIMKgIEkndmUg
ZG9uZSB0aGlzIHN1Y2Nlc3NmdWxseSB3aXRoIGJ1aWx0LWluIAptb2R1bGVzL2Jsb2Nrcy7CoCBO
b3cgdGhhdCBJJ3ZlIGNyZWF0ZWQgYSBjdXN0b20gRlBHQSwgSSd2ZSBzdWNjZXNzZnVsbHkgCnVw
ZGF0ZWQgdGhlIFhNTCBmaWxlcyBpbiB0aGUgT09UIFJGTm9DIG1vZHVsZSBzbyB0aGF0IHRoZSBu
ZXcgYmxvY2sgCnNob3dzIHVwIG5hbWVkIGNvcnJlY3RseSB3aGVuIEkgcnVuICJ1aGRfdXNycF9w
cm9iZSIuCgpUaGUgZ251cmFkaW8gZXJyb3IgaGFwcGVucyB3aGVuIEkgdHJ5IHRvIGltcG9ydCB0
aGUgbmV3IG1vZHVsZSAoaW4gdGhpcyAKY2FzZSAiaW1wb3J0IHR1dG9yaWFsIikuCgpyb290QG5p
LWUzMXg6fiMgcHl0aG9uIGUzMTBfcnhfc3BlY3RydW0ucHkKVHJhY2ViYWNrIChtb3N0IHJlY2Vu
dCBjYWxsIGxhc3QpOgogwqAgRmlsZSAiZTMxMF9yeF9zcGVjdHJ1bS5weSIsIGxpbmUgMTksIGlu
IDxtb2R1bGU+CiDCoMKgwqAgaW1wb3J0IHR1dG9yaWFsCkltcG9ydEVycm9yOiBObyBtb2R1bGUg
bmFtZWQgdHV0b3JpYWwKcm9vdEBuaS1lMzF4On4jCgpPbiB0aGUgaG9zdCBzaWRlIEkgYW0gYWJs
ZSB0byBzZWUgdGhlIG5ldyBPT1QgbW9kdWxlIGFuZCBjaG9vc2UgdGhlIG5ldyAKYmxvY2sgKGlu
IHRoaXMgY2FzZSwgImdhaW4iKSBhbmQgY3JlYXRlIHRoZSBuZXcgZ3JjIGJsb2NrIGRpYWdyYW0u
wqAgSSAKY29tcGlsZSB0aGUgR1JDIGRpYWdyYW0gYW5kIHRoZW4gY29weSB0aGUgcHl0aG9uIHNj
cmlwdCBvdmVyIHRvIHRoZSBFMzEwLgoKSSBjcmVhdGVkIGEgbmV3ICJidWlsZC1hcm0iIGRpcmVj
dG9yeSBpbiB0aGUgcmZub2MgT09UIGRpcmVjdG9yeSAoaW4gCnRoaXMgY2FzZSwgInJmbm9jLXR1
dG9yaWFsIikuwqAgSSBwZXJmb3JtZWQgYSBjbWFrZSwgbWFrZSwgYW5kIGluc3RhbGwgCnNpbWls
YXIgdG8gdGhlIG90aGVyIGNyb3NzLWNvbXBpbGUgc3RlcHMgd2l0aCB0aGUgcmVzdWx0IHRoYXQg
SSBzZWUgdGhlIApmaWxlcyBiZWluZyBpbnN0YWxsZWQgaW50byB0aGUgL2UzMDAgZGlyZWN0b3J5
IChpLmUuIHRoZSBkaXJlY3RvcnkgdGhhdCAKaXMgc3NoZnMgc2hhcmVkIHdpdGggdGhlIEUzMTAp
LsKgIEJ1dCwgSSBzdGlsbCBmZWVsIHRoYXQgc29tZXRoaW5nIGlzIAptaXNzaW5nIHNpbmNlIHRo
ZSBlbWJlZGRlZCB2ZXJzaW9uIG9mIGdudXJhZGlvIGlzIHVuYWJsZSB0byBsb2NhdGUgdGhlIApu
ZXcgdHV0b3JpYWwgbW9kdWxlLgoKQW55IHN1Z2dlc3Rpb25zP8KgIEkgZmVlbCBsaWtlIEknbSBy
ZWFsIGNsb3NlLi4uCgpUaGFua3MsCgpNaWtlCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3Vz
cnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
