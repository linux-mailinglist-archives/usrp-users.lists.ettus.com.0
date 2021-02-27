Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C264C326F94
	for <lists+usrp-users@lfdr.de>; Sun, 28 Feb 2021 00:21:54 +0100 (CET)
Received: from [::1] (port=58502 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lG8uC-0004d3-2S; Sat, 27 Feb 2021 18:21:48 -0500
Received: from sonic313-9.consmr.mail.ne1.yahoo.com ([66.163.185.32]:38539)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mikerd1@verizon.net>) id 1lG8u8-0004X8-N0
 for usrp-users@lists.ettus.com; Sat, 27 Feb 2021 18:21:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048;
 t=1614468063; bh=PXxsP8T4iK1/MqwMB0OEiXmVqHVNLlBOvTEHhEq9d8g=;
 h=To:From:Subject:Date:References:From:Subject:Reply-To;
 b=ehpqZC3y5nk3pDeDV7mg0vT+yooRa1lbI9qfFCrZH7sRtWMCcxe9fOylyPEZ8DQCMjHO78lGmtDv/hr9eQk39OCia+tP46qxL5yvUSTI8EQ1RwwVFNAC0+EcDLQFfKY7IxTw4EVI6XX4WUNMgb0xOGxf0Dfo97JYP3hF5G3O7NghyaNcDRHMO0+b1uQxOTIdkFK6d1EtgPHY+UNfr6vJt1VV/Ztu7z9JK4rg7z+g9B6TZAMQmK6VFH1VlNWAS62aZjOrWcGdQnaaNUkYToS3GD2fp7b9wS1eIFrxX+xZUN0N8AhtKe4TjUe6RFevQ3GlCKbibc30Za0vzUKfqRhPeQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1614468063; bh=gqWWnZJRy4hepfPpkDx7QD8KCpgw4BVdjos5wchlQ3+=;
 h=X-Sonic-MF:To:From:Subject:Date:From:Subject;
 b=BwBsIQ3GussWu5OwcZ+IbH1pIc9IlYJ2FXrcw722MQsZfCtWNkgl9rPvFP49T+0lLgnUIQ6FGKVyI3EdOAq5X4dgabGpUFfvKJFeEVYMb5cqXMmO26MAYSASVRNhASCtuUyAqSrRxYbdQDMy6Tr0z/tl/kS0v+41g9lDpJSBD50QrcL6UazY8mrGfEgaERAeGdAg4xJTX1Kb+aasIMRxsH1wrL9BcjKZZpNV/ZkKcF4N+yVtuEvvpXlxJ1gyVBqCYZw281+EncAHUmRlM22wyn7LTRTPjaTLKifQLqNVaxtG7HQ20bYMWrYO2FZfe/CS5Fq6DPOMPgV0DwyhMYm/xA==
X-YMail-OSG: WV4b8AQVM1n8zI3hp135gweGTc5iZp2WerkpOXkyDDJoSCB7EAVOQcZ4kUANvp_
 0iGdBDeHwjZmr3uM_xYwWIWIe1Z0hiVOToSDJ7.YCO9eo6FvJ9nrfReB2EtaPmQ9Sjb9b8xn7Zvu
 aP7.a5frMG2oJr_G8JrPKSVyKjpSRrHy00NTzmkkT7pJJp4r9lhteXQ3UI0OfaGGQVsAqtoErt_c
 ddvRrG3_m9DGE1m4g.mN3rbziu.rc_ZWs5qBMjOhqL2fvfqraGsIvoOhqKfPiQPqXh9Y5RoKIRqo
 09TqAXiE_.84t7tStfxX3JcLbsDy2sjmP2goSBvr4ZdS7ng6cz7QoVjS7xtKXLdME6AI0mbXgsFY
 aL7gKHgFyflZ.4ipRGadSBemPSANWoaOpSOEbdkV3Y_TAsWLHqWjDQNeQ5U4_RWw0lTv.ciAWXvY
 .yqUcSYiv_tSzu8rzW5PeYDjjOYFaQYdAIwe85DK4jw8eeMbvRlnkrtnnTNgOdb64Faq4IvjsGfO
 sjEjCI7PlH3s2136P6tyKzq34uACu4mdvctAWUWuQ1.yxkASadgavY5D52J0OHGbVWemYmJD5_Wz
 3NmCx0q3edpNYykLCKpOehLGDc0NSAx7o1cwFu7uz7EkjJxiz9JuDde5RvCMsYj9iJKhzq_eP5TO
 WyT53QNGaZ2wHvxQQDCX0E0MY5x4k4nUP.jIHafPVW7O1DZ9roRK4nDih1pSyGOaIfd1jAC.O7R_
 xkPm66YZbOckSLMdO6jDSXbqZQ5WCZOlZ68SBBptj3oiCkP6wRsfbwEPa6XTOfRFSpxdvmZG9714
 lQdRH2KAai7AitFPn0mUsr_20FECEMesVLdQqImjlCYc9yAdpCcjxkOYsI_Cef.TCL0CdBZ5UW8G
 mTJSCGJUHr0MLuGj2Qw7jj6TawoyGujlr.QgCXIDoLw5Tmz_9Il8fWMvs29C87l3IX70QuCdxVSk
 HRejEhbpeILaUH0YpIG79GLk3hOIN7A_A_2ieI0AxcdX68qWNxEaZNF_.t__zjiXYbQDL2jGj8T5
 8eN9i5Zjm4Qb4.WhP2gaLy_nADPz3Crf.C1hrJi4i5JL0c5qfSCWgJbxp3vIGT2r_wSgMbS2BuaH
 Nu4OfMPqq1GClfPhkiuyaR.FzPkw64yt7ABjtIFN8psIeUtCwUHX2nFIJAi6tSR43lBNPY_WMFu0
 PZMRayogUG0jh7IgUhYbGsqQsH5PrekgZD16bLG9l4dQxk88LZ_9SsZHqtEDHWR9Ifm6ef03q06r
 HW6rp5Nzj0W3uM5kbmYzZX4l.pGf2yHSUUP5WMUpqdhRz7Ms.JPviC.7u0MUywh01L6U8GeKrC.z
 NiN8HB49xGuatmAa6bYQbkjuTPZe4veH57VL4aVij0WsGZK._ceJSYv3HmDNed1kh70oABjnTB59
 ym5zTxYM_5GpT7fuLEftZZRx8UFheoVBIX7.iTAjbTZO2niC0YZ1h1uxSIkpeF4HhJH46lMM14EN
 yitDPxqazZBwrfmubNLwmuQr6KI4qbEegxNYGNjaIRMa.AtmjjKaT.FWIOMmvZNchEdx55Wi.k1_
 TEYnmL3c7x_VdUnSd9HI8rkGPIa5qbQDpvp9nnyg_wQUUXTJCt_9x08sfDMpNQRUcShtu_DVIt_h
 n3tzXfNcM0CZi.P5DpoIAAx8UGgmbLjb5002TDRS1JEzLawgCBwH4TjTZr.gD5yfvj3HuUC9teZT
 EpdHOi5xkRAQaj0CU3.XK3PEZQIh3ZABdPtYYdTO7vC2sQ2eVmy4VZwa2DSCrK9a03IdA1LfVyBN
 lWF7gIOT_dYQZkyshPl8lZ88a_3ujqeO.G4ARHCdjZBcO5cYv5HuQBEHcTgi25Q7rBUFu3KZwfbk
 4ySakRFJKjmVmtxUQCPe2t._2PFpo2djE2ROmKBq07ckaAIrS1sGVFRH1pDJC98ubrT7JH9KuXHd
 BdT63k0gGSHCUi7Lv02rCy61x0zqGSkfrQ2Bvqib5PcG63C2XONgJzyWX.NsyTU27YDU8O1LNdBW
 sbsmFXs4SMz936dIpIMN1mNyM4zDwAPCA0wM2Pkd_e5ZsP_UOdAuUOGmLX8udkZxqaPg5qsbu1Ok
 DBJ9_jSo2MGYhUkEojlwo4iUqCykaL2QIguRRdqTrv6bfjBVCwLDVScFQszhLbfM5ObcsWp16I5a
 gQOMowOuRO1sl6xUyPlWsUs9j.uovhh9ZUnqmhWL2ELgGkTPiE5tU4kc4OiybSo3iv9PKoVpqtfx
 53CtdOu.eE63BIUkr4PgtAwOC0HQfIvZ.q3imV0pCJlsvqKRi0I0mr9hrxl7aGJtAx9I41NIZjyO
 rB6.4sEAtklbkLc0y1ns8_AE04d6vfLh9xlhVGcD5Uu6f77yzr6fZNawOeLhL8E7sWOA-
X-Sonic-MF: <mikerd1@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic313.consmr.mail.ne1.yahoo.com with HTTP; Sat, 27 Feb 2021 23:21:03 +0000
Received: by smtp423.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID cae2aadfb02b045dc83d25eddbfd96ec; 
 Sat, 27 Feb 2021 23:21:01 +0000 (UTC)
To: usrp-users@lists.ettus.com
Message-ID: <2bcfbfb1-c852-83a3-dba7-6595a5d4504d@verizon.net>
Date: Sat, 27 Feb 2021 18:21:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-US
References: <2bcfbfb1-c852-83a3-dba7-6595a5d4504d.ref@verizon.net>
X-Mailer: WebService/1.1.17828
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol
 Apache-HttpAsyncClient/4.1.4 (Java/11.0.9.1)
Subject: [USRP-users] FPGA Simulations with waveforms
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

SGksCgpJJ2QgbGlrZSB0byB2aWV3IHRoZSBzaWduYWxzIGluIG15IHRlc3RiZW5jaCB3aXRoIGEg
d2F2ZWZvcm0gdmlld2VyIHRvIApzZWUgdGhpbmdzIGxpa2UgbGF0ZW5jeSBvZiBjb250cm9sIHNp
Z25hbHMgdnMuIGRhdGEgdGhyb3VnaCB2YXJpb3VzIApjb21wb25lbnRzLsKgIEZvciBpbnN0YW5j
ZSwgaWYgSSB1c2UgYSBoYXJkd2FyZSBtdWx0aXBsaWVyIChEU1A0OCkgd2l0aCAKcmVnaXN0ZXJz
IEkgbmVlZCB0byBhbHNvIGRlbGF5IHRoZSBjb250cm9sIHNpZ25hbHMgdG8gbWF0Y2ggdGhlIGRl
bGF5IGluIAp0aGUgcHJvY2Vzc2luZy7CoCBGb3Igc2ltcGxlIHRoaW5ncyBJIGNhbiBwcmVkaWN0
IHRoZSBsYXRlbmN5IGFuZMKgIHVzZSAKdGhlIHRvcCBsZXZlbCB0ZXN0IHJlc3VsdHMgdG8gc2Vl
IGlmIHRoaW5ncyBjYWxjdWxhdGVkIGNvcnJlY3RseS7CoCBCdXQsIAppdCBxdWlja2x5IGdldHMg
dG8gdGhlIHBvaW50IHdoZXJlIHlvdSBuZWVkIHRvIHNlZSB3aGF0IHlvdXIgc2lnbmFscyBhcmUg
CmRvaW5nLgoKSSBzZWUgdGhhdCB0aGUgc2ltdWxhdGlvbiByZXN1bHRzIHByb2R1Y2VzIGEgKi53
ZGIgZmlsZSBhbmQgbWF5YmUgSSBjYW4gCnVzZSB0aGF0IHRvIHJldmlldyB0aGUgcmVzdWx0cyBv
ZiB0aGUgc2ltdWxhdGlvbi7CoCBCdXQgSSBkaWRuJ3Qga25vdyBpZiAKdGhlcmUgd2FzIGFub3Ro
ZXIgd2F5IHRvIGdlbmVyYXRlIHRoZSB3YXZlZm9ybXMgYW5kIHJ1biB0aGUgc2ltdWxhdGlvbiAK
aW4gR1VJIG1vZGUgd2hlcmUgeW91IGNhbiBhZGQgc2lnbmFscywgcmVzdGFydCwgZXRjLgoKVGhl
cmUgaXMgYSB3YXJuaW5nIHRoYXQgaXMgcHJpbnRlZCBpbiB0aGUgc2ltdWxhdGlvbiBydW4gdGhh
dCBzdGF0ZXM6CgpXQVJOSU5HOiBTaW11bGF0aW9uIG9iamVjdCAvcmZub2NfYmxvY2tfZ2Fpbl90
Yi9ibGtfY3RybCB3YXMgbm90IAp0cmFjZWFibGUgaW4gdGhlIGRlc2lnbiBmb3IgdGhlIGZvbGxv
d2luZyByZWFzb246ClZpdmFkbyBTaW11bGF0b3IgZG9lcyBub3Qgc3VwcG9ydCB0cmFjaW5nIG9m
IFN5c3RlbSBWZXJpbG9nIER5bmFtaWMgVHlwZSAKb2JqZWN0LgoKQW55d2F5LCBhbnkgaGVscCBp
cyBtdWNoIGFwcHJlY2lhdGVkLgoKTWlrZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3Jw
LXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
