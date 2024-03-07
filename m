Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E93875632
	for <lists+usrp-users@lfdr.de>; Thu,  7 Mar 2024 19:39:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A7D25385DBB
	for <lists+usrp-users@lfdr.de>; Thu,  7 Mar 2024 13:39:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709836759; bh=8RXT5jHlTUwejTWcHOfp8OZ9rZyRQP2f66eSXrLIdiQ=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Vaxk1yvx1fWVNKdmmlvsPKG3/oqjZ9v2CGZ/b9bx/WtXQ2b30wHZYcZ7QS5tcbbbr
	 g1vPK3Y6dTrhDdi8k2GHy6/UikO5c4jOjprPtyKGDw9mypQ8wjQUT5D3F8/GFFD/8l
	 dFaUfMolK3hC5uy5tSkTBHzcXndam2iuAPY43kTkb1jlodvl6L5CZpTm5GF8V8oDdd
	 4u3puOwtzpL03nWAmKcXNUU5+fxYRySPVups39QSC/hlyGmR8MCmxd512HrtayysF3
	 aEcbq4lu0WnWon+Rd1WWnqhijtR01nkGsOHnLLv9xgY/mgCJJQKPkscKBzd4QsPjWS
	 cXeSC5oFjoeOQ==
Received: from postout1.mail.lrz.de (postout1.mail.lrz.de [129.187.255.137])
	by mm2.emwd.com (Postfix) with ESMTPS id 011EC3853F6
	for <usrp-users@lists.ettus.com>; Thu,  7 Mar 2024 13:38:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=tum.de header.i=@tum.de header.b="DM1jWGsf";
	dkim-atps=neutral
Received: from lxmhs51.srv.lrz.de (localhost [127.0.0.1])
	by postout1.mail.lrz.de (Postfix) with ESMTP id 4TrJ3G27FkzyTl
	for <usrp-users@lists.ettus.com>; Thu,  7 Mar 2024 19:38:34 +0100 (CET)
Authentication-Results: postout.lrz.de (amavisd-new); dkim=pass (2048-bit key)
	reason="pass (just generated, assumed good)" header.d=tum.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tum.de; h=
	mime-version:content-type:content-type:content-language
	:accept-language:message-id:date:date:subject:subject:from:from
	:received:received:received:received; s=tu-postout21; t=
	1709836713; bh=PiId9SYzW64v3aIaVk8d9D/KGhwfBc0Xt84HlFob0PE=; b=D
	M1jWGsfw81d2YI6dvSl3Y67gtZcKmS6X6iL2/pcYMZYhstSW+xro0QmWdteB+hyX
	E2S+SI2dbB58uSEtTCmy9V0DeQWKpfGLcJ8UzkQxerEFa6mZkky2pOBzl7SLeFX6
	LZFbT0q4ADwTmXp7zmE2dXazNdWCTcL14OLWCWKIWr19hN9BnOj2NFTeKkBgEVct
	G4vfDMS3CAIckHYYiPJ6jl2E+zuOTWt1Z6w6+t8uM2XcQBB6zLBCcPvtQmzNZtiv
	+aABAeF+Uv1NDOHC7Ku51DCRx9NP5JCqctpFBorc+WMhlbmSgFtre+3Y6i6rIxrt
	qJQYeRNjw6myQclKeFVIQ==
X-Virus-Scanned: by amavisd-new at lrz.de in lxmhs51.srv.lrz.de
X-Spam-Flag: NO
X-Spam-Score: -2.871
X-Spam-Level: 
X-Spam-Status: No, score=-2.871 tagged_above=-999 required=5
	tests=[ALL_TRUSTED=-1, BAYES_00=-1.9, DMARC_ADKIM_RELAXED=0.001,
	DMARC_ASPF_RELAXED=0.001, DMARC_POLICY_NONE=0.001, HTML_MESSAGE=0.001,
	LRZ_DATE_TZ_0000=0.001, LRZ_DKIM_DESTROY_MTA=0.001,
	LRZ_DMARC_FAIL=0.001, LRZ_DMARC_OVERWRITE=0.001,
	LRZ_DMARC_POLICY=0.001, LRZ_DMARC_TUM_FAIL=0.001,
	LRZ_ENVFROM_FROM_MATCH=0.001, LRZ_ENVFROM_TUM_S=0.001,
	LRZ_FROM_ENVFROM_ALIGNED_STRICT=0.001, LRZ_FROM_HAS_A=0.001,
	LRZ_FROM_HAS_AAAA=0.001, LRZ_FROM_HAS_MDOM=0.001,
	LRZ_FROM_HAS_MX=0.001, LRZ_FROM_HOSTED_DOMAIN=0.001,
	LRZ_FROM_NAME_IN_ADDR=0.001, LRZ_FROM_PHRASE=0.001,
	LRZ_FROM_PRE_SUR=0.001, LRZ_FROM_PRE_SUR_PHRASE=0.001,
	LRZ_FROM_TUM_S=0.001, LRZ_FWD_MS_EX=0.001, LRZ_HAS_BND=0.001,
	LRZ_HAS_CLANG=0.001, LRZ_HAS_CT=0.001, LRZ_HAS_MIME_VERSION=0.001,
	LRZ_HAS_SPF=0.001, LRZ_HAS_THREAD_INDEX=0.001,
	LRZ_HAS_X_ORIG_IP=0.001, LRZ_MIME_BND_SPAM_184=0.001,
	LRZ_MSGID_ANL32=0.001, LRZ_MSGID_HL32=0.001, LRZ_NO_UA_HEADER=0.001,
	LRZ_RCVD_BADWLRZ_EXCH=0.001, LRZ_RCVD_MS_EX=0.001,
	LRZ_URL_HTML_SINGLE=0.001, LRZ_URL_PLAIN_SINGLE=0.001,
	T_SCC_BODY_TEXT_LINE=-0.01] autolearn=no autolearn_force=no
Received: from postout1.mail.lrz.de ([127.0.0.1])
	by lxmhs51.srv.lrz.de (lxmhs51.srv.lrz.de [127.0.0.1]) (amavisd-new, port 20024)
	with LMTP id cmzMhIPpJlHP for <usrp-users@lists.ettus.com>;
	Thu,  7 Mar 2024 19:38:33 +0100 (CET)
Received: from BADWLRZ-SWEX07B.ads.mwn.de (BADWLRZ-SWEX07B.ads.mwn.de [IPv6:2001:4ca0:0:108::204])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "BADWLRZ-SWEX07B", Issuer "BADWLRZ-SWEX07B" (not verified))
	by postout1.mail.lrz.de (Postfix) with ESMTPS id 4TrJ3F4l3dzyTh
	for <usrp-users@lists.ettus.com>; Thu,  7 Mar 2024 19:38:33 +0100 (CET)
Received: from BADWLRZ-SWEX05A.ads.mwn.de (2001:4ca0:0:108::199) by
 BADWLRZ-SWEX07B.ads.mwn.de (2001:4ca0:0:108::204) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.4; Thu, 7 Mar 2024 19:38:33 +0100
Received: from BADWLRZ-SWEX05A.ads.mwn.de ([fe80::c6b2:97e1:7494:2ada]) by
 BADWLRZ-SWEX05A.ads.mwn.de ([fe80::c6b2:97e1:7494:2ada%20]) with mapi id
 15.02.1544.004; Thu, 7 Mar 2024 19:38:33 +0100
From: Xianglong Wang <xianglong.wang@tum.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [RFNoC] "Could not find block with Noc-ID" even with LD_PRELOAD
Thread-Index: AQHacLwzZ4QIiDMfm0W+EZ5Clnzamg==
Date: Thu, 7 Mar 2024 18:38:33 +0000
Message-ID: <e1df8cb0f73042929d870ff7ecb05906@tum.de>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [2001:4ca0:2203:3:7bc3:f543:78bb:5e0f]
Content-Type: multipart/mixed;
	boundary="_004_e1df8cb0f73042929d870ff7ecb05906tumde_"
MIME-Version: 1.0
Message-ID-Hash: 3QI3MTEU4SXX5D4F7WHUAWWUGOPYRTFS
X-Message-ID-Hash: 3QI3MTEU4SXX5D4F7WHUAWWUGOPYRTFS
X-MailFrom: xianglong.wang@tum.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [RFNoC] "Could not find block with Noc-ID" even with LD_PRELOAD
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3QI3MTEU4SXX5D4F7WHUAWWUGOPYRTFS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--_004_e1df8cb0f73042929d870ff7ecb05906tumde_
Content-Type: multipart/alternative;
	boundary="_000_e1df8cb0f73042929d870ff7ecb05906tumde_"

--_000_e1df8cb0f73042929d870ff7ecb05906tumde_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQoNCkkgaGF2ZSBjcmVhdGVkIG15IE9PVCBtb2R1bGUgd2l0aCB0aGUgdGVtcGxl
IGxvY2F0ZWQgaW4gdWhkL2hvc3QvZXhhbXBsZXMuIEhvd2V2ZXIsIEkgY2Fubm90IGZpbmQgbXkg
T09UIG1vZHVsZSBpbiBteSB1c3JwIHdpdGgNCg0KDQpbV0FSTklOR10gW1JGTk9DOjpCTE9DS19G
QUNUT1JZXSBDb3VsZCBub3QgZmluZCBibG9jayB3aXRoIE5vYy1JRCAweDJkMDI0LCAweGZmZmYN
Cg0KZXZlbiBJIHJ1biAiTERfUFJFTE9BRD0vdXNyL2xvY2FsL2xpYi9saWJyZm5vYy1jaGVtLnNv
ICB1aGRfdXNycF9wcm9iZSIuIEkgaGF2ZSBjaGVja2VkIG15IGJsb2NrIHltbCBmaWxlIGhhcyB0
aGUgY29ycmVjdCBJRC4NCg0KV2hlcmUgc2hvdWxkIEkgY2hlY2s/IEJlY2F1c2UgSSBhbSBub3Qg
c3VyZSB3aGF0IGNvdWxkIGNhdXNlIHRoaXMgaXNzdWUsIEkgZm9sbG93ZWQgdGhlIHR1dG9yaWFs
IGZyb20gaHR0cHM6Ly9rYi5ldHR1cy5jb20vR2V0dGluZ19TdGFydGVkX3dpdGhfUkZOb0NfaW5f
VUhEXzQuMCBhbmQgZWFjaCBzdGVwIGZpbmlzaGVkIHdpdGhvdXQgZXJyb3JzLiBJIHdpbGwgY29t
cGlsZSBhIGltYWdlIHdpdGggZ2FpbiBleGFtcGxlIG9ubHkgdG8gZG8gZnVydGhlciB0ZXN0LiBJ
ZiBhbnkgb3RoZXIgaW5mb3JtYXRpb24gaXMgcmVxdWlyZWQsIEkgYW0gaGFwcHkgdG8gcHJvdmlk
ZS4NCg0Ka2luZCByZWdyYWRzLA0KWGlhbmdsb25nDQoNCg==

--_000_e1df8cb0f73042929d870ff7ecb05906tumde_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hi all,</p>
<p><br>
</p>
<p>I have created my OOT module with the temple located in uhd/host/example=
s. However, I cannot find my OOT module in my usrp with</p>
<p><br>
</p>
<p></p>
<div>[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0x2d=
024, 0xffff</div>
<div><br>
</div>
<div>even I run &quot;<span>LD_PRELOAD=3D/usr/local/lib/librfnoc-chem.so&nb=
sp; uhd_usrp_probe</span>&quot;. I have checked my block yml file has the c=
orrect ID.</div>
<div><br>
</div>
<div>Where should I check? Because I am not sure what could cause this issu=
e, I followed the tutorial from
<a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0" clas=
s=3D"OWAAutoLink" id=3D"LPlnk584373">
https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0</a> and each ste=
p finished without errors. I will compile a image with gain example only to=
 do further test. If any other information is required, I am happy to provi=
de.<br>
</div>
<div><br>
</div>
<div>kind regrads,</div>
<div>Xianglong<br>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_e1df8cb0f73042929d870ff7ecb05906tumde_--

--_004_e1df8cb0f73042929d870ff7ecb05906tumde_
Content-Type: application/x-yaml; name="blk.yml"
Content-Description: blk.yml
Content-Disposition: attachment; filename="blk.yml"; size=814;
	creation-date="Thu, 07 Mar 2024 18:28:45 GMT";
	modification-date="Thu, 07 Mar 2024 18:28:45 GMT"
Content-Transfer-Encoding: base64

c2NoZW1hOiByZm5vY19tb2R0b29sX2FyZ3MKbW9kdWxlX25hbWU6IHNoaWZ0cmlnaHQKdmVyc2lv
bjogIjEuMCIKcmZub2NfdmVyc2lvbjogIjEuMCIKY2hkcl93aWR0aDogNjQKbm9jX2lkOiAweDAy
RDAyNAoKY2xvY2tzOgogIC0gbmFtZTogcmZub2NfY2hkcgogICAgZnJlcTogIltdIgogIC0gbmFt
ZTogcmZub2NfY3RybAogICAgZnJlcTogIltdIgogIC0gbmFtZTogY2UKICAgIGZyZXE6ICJbXSIK
CmNvbnRyb2w6CiAgZnBnYV9pZmFjZTogY3RybHBvcnQKICBpbnRlcmZhY2VfZGlyZWN0aW9uOiBz
bGF2ZQogIGZpZm9fZGVwdGg6IDMyCiAgY2xrX2RvbWFpbjogY2UKICBjdHJscG9ydDoKICAgIGJ5
dGVfbW9kZTogRmFsc2UKICAgIHRpbWVkOiBGYWxzZQogICAgaGFzX3N0YXR1czogRmFsc2UKCmRh
dGE6CiAgZnBnYV9pZmFjZTogYXhpc19weWxkX2N0eHQKICBjbGtfZG9tYWluOiBjZQogIGlucHV0
czoKICAgIGluOgogICAgICBpbmRleDogMAogICAgICBpdGVtX3dpZHRoOiAzMgogICAgICBuaXBj
OiAxCiAgICAgIGNvbnRleHRfZmlmb19kZXB0aDogMzIKICAgICAgcGF5bG9hZF9maWZvX2RlcHRo
OiAzMgogICAgICBmb3JtYXQ6IHNjMTYKICAgICAgbWRhdGFfc2lnOiB+CiAgb3V0cHV0czoKICAg
IG91dDoKICAgICAgaW5kZXg6IDAKICAgICAgaXRlbV93aWR0aDogMzIKICAgICAgbmlwYzogMQog
ICAgICBjb250ZXh0X2ZpZm9fZGVwdGg6IDMyCiAgICAgIHBheWxvYWRfZmlmb19kZXB0aDogMzIK
ICAgICAgZm9ybWF0OiBzYzE2CiAgICAgIG1kYXRhX3NpZzogfgoKaW9fcG9ydDoKCnJlZ2lzdGVy
czoKCnByb3BlcnRpZXM6Cg==

--_004_e1df8cb0f73042929d870ff7ecb05906tumde_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--_004_e1df8cb0f73042929d870ff7ecb05906tumde_--
