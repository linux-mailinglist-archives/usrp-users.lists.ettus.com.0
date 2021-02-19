Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 614F332006A
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 22:53:10 +0100 (CET)
Received: from [::1] (port=57584 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lDDhz-0000O7-6k; Fri, 19 Feb 2021 16:53:07 -0500
Received: from sonic317-33.consmr.mail.ne1.yahoo.com ([66.163.184.44]:37470)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mikerd1@verizon.net>) id 1lDDhv-0000IW-T9
 for usrp-users@lists.ettus.com; Fri, 19 Feb 2021 16:53:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048;
 t=1613771542; bh=GAKuauJZ98EVCgUPOZ2rSfmQRU5d6bV2mnFS6gmvE3M=;
 h=Subject:To:References:From:Date:In-Reply-To:From:Subject:Reply-To;
 b=Y6WIitLA9KBK12oN+JzbGSjAsvFZ5WzL/f33LHp88+N0cGxfyq9v83cMdDwzpbY1k17WPaznb9XXoJzC5l7I0mn5qUplK3H/R5QM+Z3GMYutdqzQ9GA4S2Ui9LRH7IWBv8rsk9+4TfgK4m6/6rSj0ILnddfIbcNYNTam+MuYyiJIFQWcoUkG/5+5YrXCKBfvKDRc2kdBQ2xUN5hcLLo6crrO8MkmArbYKpB7TRfzwaBzh59Xyg7gVSuON2KOpPNciO2GWjGaVIte0zw3GBi157Af8Dk1x5+7gBum912DoIwf7vKXEW5I/W9pOIscEhzXyhzQ1Q0u4DGCeJlUOkUy8A==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1613771542; bh=DAL3vNhajjS2+UF1oH2cB6rzaCDcyix7flN3uILj4Eg=;
 h=X-Sonic-MF:Subject:To:From:Date:From:Subject;
 b=G0K8w4XbFai/5sNkLTxHcEVrOHJsSIkNlZKvKi1BDtgg2WFH+n67FLbAwyWVBCGChXh0gPVqT5iN8tnTdQpw6riXfqug5ZxYLwLZZ8ij2qOIBFbTQqQl5oRKuIvot60mssVboX/zatEWTwZJMdU7hF8VwdBLsJICx3BnCR7dUZElLFQnRrUUs2aLgPC9b8C5PzP0PcDVn51ti98Z4+GSZFB8KhX3F7jXTjWupeC6NoLFe45HuZ/U0nkcI1OigO8MHrMJWMzStN39Ipdyg81YRv0/QNKizBlOyrbMHs4j6AoI61iJau6iWNSVT6N3HMY5q50z/YlLEENfyYv+xYQuBw==
X-YMail-OSG: 4kwqlkcVM1ky9aLY6MzlqghryJLOwa0Fs2G0AovXgzH_VFcRNzeDR6wjCrByZCD
 6EV3pplczt220pTX.JoogZ2f0Ru0wVGFWoYKjmKPZRc7v473eJ6zkzar7UiNTiSD1XzqQg1adNIb
 JDzLgF_8Zur51engP_REmNh8Tf8Q9u1wE16Fw_0kJ8c8DED882a7gZ3ztKaPdAQVUSAqWntBKljB
 svcRAOlS.PRgfUzgPEDWiLB0Paj0N_3jGGuqD92M6J6qJA_79DpPNJsSr7TN1C8C6jGK613KHyJ3
 q4mZ3_MXOfsWdZ7SpHU8WXLxQ6P1j45F.IIjK4MFGS9XEyuGCimEKq2qH_GaBhznxPgFeQsTdxF9
 v3n8rLRS.ROdK9Q8fBiTgIdY6YpxJ5EUcoccPB_.Xs8t.NdWGBb3IMCq5LdIe28xQRmrzdsP2dqY
 uh7lsdum3IpA5Usw3MCRagAEzm6RV_MAtuQuDS5nbIiCsFl5rY80jHz6h7GtA0X4fW57WKAqmoGk
 0Kt7B4Q209_OrcT7GH.v8x4pz3S.mRaUIIPmmtFH8rzqjf9QErATB2smc_H2cfnQb8EJeQYClqA.
 UmzI3rj8J3f80tWwN.VOVk5qYcvKZY9fKlQtqkB7onxmSUuB4a8QiWotDjna4n_Mo4F.djdmo9Te
 PGsI8BElUUDyQfoiTt8aubocxqQglEhKAfmUOwUUuayea1j4mcmeO1qWJzGv_a41qieYhQVpKjJF
 wmt0WgBzFeTeFpz0yL8wM4UCURqLXrACitbPQEPUrTSLCFSOZSXBoCo6jC0BDU59Wc4ukLHDsPRj
 je1HM.RfH228HVXE3h8GJMhMO.j7wcIX8HvJm1.lYIVFOisUtQkbdBLQNdBhmZ0XA38ZYXos1tfu
 ACyeGwbQPctjSqxbj5xOAwq079UzvbQcjHT3cGDyaS2S3dvfHvzeXMgd3XeY_RArun5Pw6rFb1CH
 cqnP6j759YD7GOm0pwLQAVlizvnSHo3G2YLU1v9iuZBtVFg4y5TqReQDlrgxPwxqXbqmSl_xs66U
 1C90xYajfQniojVFfEXhq73lZkhJoUU5gOfpZE20jic0TX7F1cY9Bk1YdPdhznZJOUQuJUNA61O0
 o9GjdV7DN8JjEPLTteHRL_gdnGfIdNS2Xf3t2ZZMsPVDchlvWirb6KTs._AyufOj45Gjatzl_7dZ
 KqhHcbxNbLHqVeM9zUZ53pz5OsvFxxRzKam7rwJX.AzjbIo6Cwj_elhhUgAylGro6Ev6OVGhltHE
 KGSuLGKHZx4K4FnUzhg54VRBJqJpsY_eIbz7zXOA8wiP6hctttRxpttkYzO9dcF_qvTOo.y7NOdq
 PxraYQJaQ32dZfdCYfuLb8wdx2tYy6lDouDEO5NYg4s4UjuP2yiVsibSpEepFZQ.fBW8pGJ93Ne4
 8rO107y96o3vsM5v68lf8J87W1maXnJGouXHrx.acuBF2UiJDVHk0EJQt204ZX5w0mWxcCs..8iC
 0WhH3fyI841y6TyyMbgVRZbxR22dSsYm8NX_KDlciPTZVdwCnYVsvlo4XkYnu8PfUtFqK13IPGed
 SNAEChHWjoS.AvcdmrJJPKc43rsLZOR_5Jw9BCO91o9AKvJ_H59iOoDrVKUiJ0qxkyjuA5jfHb05
 H9Dk0y6sK70yskDtKdqryu8nfBZU_PF2TBGciZIAyrSKGIvK6.fJSXGxw4a1CYx5dQBLw_UzWd.u
 P0fm_avztRWmaxljCvgqaulKJgK.mbjnphM.J6C03MrXPVtYUmd1PhNqeO.U_jJQuQVVQyYgwvxy
 fp_fLDvNFNDCAW6YZ5g7.1T9D2_x_pBbCGLVJzydZG2YN13TX3FVSWu9SauWM8uAUq9J5jlfChoL
 AoOVoPIQ5oyqDlobRKcA9jHKpVVxvTD3etcsvfwCIAYk_8hcNBdN9QStqVHBcQiBUqTY80A5pvT1
 9gWZnEQ17hZkyJl3GhbMrs1Yms6CGmxBufXLo986s30Qc6E9iiknOYU8Io5fJMV1RmLj05Qk51NW
 KDjzDEiPa6lwIvUIqf6Pn6lZbN4CjktWJTXJO75e3OKKoPqkhPAhA5UGfF8N8jtKSMktZkXcmpZP
 R274jgS7kJNZwJhz5Y6qX4XidpFWu76DY.GDBZwq_oFC1fjMOZ0PZhaSwl4.AD6eL8fNtbh75ZRl
 1cD6dHIMv4wmavpkh6WNlQOmXYFip6jGNRZEg03c9fFT_hwTYmUsgnKHwxj0q8SvpaocQZnuu4j6
 LSEn.9pE.uISoXraAOhklekAcheJ2ZRvE0xERcdCzZe1kVhWcCbTyh8uKVFqwv8UvvLGOxqx2Csf
 G_s_Dwvxw4wrlj5U7Y6ggB1TE0omxA8dfKBC8iLq4pYydeoGE47BH5zUCs5eAykll5ddEegU3E6f
 TSbUpndNxpyB9TMg97oX6SlaRyY.6TQJ7ScNYUKMzBL49swpxkw--
X-Sonic-MF: <mikerd1@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic317.consmr.mail.ne1.yahoo.com with HTTP; Fri, 19 Feb 2021 21:52:22 +0000
Received: by smtp411.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID b9c4ce5a6dc08dabbdcff7bfe4dfb937; 
 Fri, 19 Feb 2021 21:52:17 +0000 (UTC)
To: usrp-users@lists.ettus.com
References: <f953f930207d2f490b062ec1f2b16ea00a3694fe@webmail>
 <5ED8C2FD-260E-40C5-B6DE-47CC2D2ED671@gmail.com>
 <1d923534-01dd-120d-ce14-cce461f8e5d7@balister.org>
Message-ID: <d12a4f1a-af8f-c66b-37b0-e08cede5c7d4@verizon.net>
Date: Fri, 19 Feb 2021 16:52:16 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1d923534-01dd-120d-ce14-cce461f8e5d7@balister.org>
Content-Language: en-US
X-Mailer: WebService/1.1.17712
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol
 Apache-HttpAsyncClient/4.1.4 (Java/11.0.9.1)
Subject: Re: [USRP-users] microSD Size Limit
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

SSd2ZSB1c2VkIDY0RyBhbmQgMzJHLgoKSSBlbnN1cmUgdGhhdCB0aGUgU0QgY2FyZCBpcyByZS1m
b3JtYXR0ZWQgc28gYWxsIHRoZSBwYXJ0aXRpb25zIGFyZSAKcmVtb3ZlZC7CoCBUaGVuIEkgdXNl
OgoKc3VkbyBkZCBpZj1+L3ByZWZpeC9ncjM4L3NoYXJlL3VoZC9zZGltZy91c3JwX2UzMTBfZnMu
c2RpbWcgCm9mPS9kZXYvbW1jYmxrMCBicz0xTQoKVGhlbiBJIHVzZSAiZ3BhcnRlZCIgdG8gaW5j
cmVhc2UgdGhlIHNpemUgb2YgdGhlIGxhc3QgcGFydGl0aW9uICgvZGF0YSkgCnRvIHV0aWxpemUg
dGhlIHJlc3Qgb2YgdGhlIFNEIGNhcmQuwqAgSSB3aWxsIGluc3RhbGwgbXkgImNyb3NzLWNvbXBp
bGVkIiAKZ251cmFkaW8gaW5zdGFsbGF0aW9uIGludG8gdGhpcyAvZGF0YSBwYXJ0aXRpb24gYW5k
IHRoZW4gc291cmNlIHRoZSAKZW52aXJvbm1lbnQgdmFyaWFibGVzIHRvIHBvaW50IHRvIHRoaXMg
bG9jYXRpb24uwqAgSSB3YXMgZmluZGluZyBvdXQgdGhhdCAKSSBjb3VsZG4ndCBmaXQgbXkgZ251
cmFkaW8gYnVpbGQgaW50byB0aGUgZXhpc3RpbmcgcGFydGl0aW9uIHNwYWNlLgoKSG9wZSB0aGlz
IGhlbHBzLAoKTWlrZQoKT24gMi8xOS8yMSAxMTo0NCBBTSwgUGhpbGlwIEJhbGlzdGVyIHZpYSBV
U1JQLXVzZXJzIHdyb3RlOgo+IEknbSBwcmV0dHkgc3VyZSBJJ3ZlIHVzZWQgYmlnZ2VyIHRoYW4g
dGhhdCwgcGxlYXNlIGFueW9uZSB0aGF0IGZpbmRzIG91dAo+IHdoYXQgaXMgdG9vIGJpZywgbGV0
IHRoZSBsaXN0IGtub3chCj4KPiBQaGlsaXAKPgo+IE9uIDIvMTkvMjEgMTE6MzkgQU0sIE1hcmN1
cyBEIExlZWNoIHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+PiBJ4oCZdmUgdXNlZCAzMkcgd2l0aG91
dCBhbnkgaXNzdWVzLgo+Pgo+PiBTZW50IGZyb20gbXkgaVBob25lCj4+Cj4+PiBPbiBGZWIgMTks
IDIwMjEsIGF0IDExOjI3IEFNLCBEZW5uaXMgVHJhc2sgdmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToKPj4+Cj4+PiDvu79XaGF0IGlzIHRoZSBsYXJnZXN0
IG1pY3JvU0QgY2FyZCBzdXBwb3J0ZWQgYnkgdGhlIEUzMTA/IEkgd2FudCB0byBnZXQgbGFyZ2Vy
IGNhcmRzIGZvciBkZXZlbG9wbWVudCBwdXJwb3NlcywgYnV0IGRvbid0IHdhbnQgdG8gYnV5IGEg
c2l6ZSB0aGF0IGlzbid0IHN1cHBvcnRlZC4KPj4+Cj4+PiBUaGFua3MsCj4+PiBEZW5uaXMKPj4+
Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4g
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPj4+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4+
PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0
cy5ldHR1cy5jb20KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20KPj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNl
cnNfbGlzdHMuZXR0dXMuY29tCj4+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+IFVTUlAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tCj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3Vz
cnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11
c2Vyc19saXN0cy5ldHR1cy5jb20K
