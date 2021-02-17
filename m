Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC02731DDF5
	for <lists+usrp-users@lfdr.de>; Wed, 17 Feb 2021 18:11:16 +0100 (CET)
Received: from [::1] (port=35374 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCQM7-0007us-9m; Wed, 17 Feb 2021 12:11:15 -0500
Received: from mail.hhi.fraunhofer.de ([193.174.67.45]:35888)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <ramez.askar@hhi.fraunhofer.de>)
 id 1lCQM2-0007oS-AX
 for usrp-users@lists.ettus.com; Wed, 17 Feb 2021 12:11:10 -0500
Received: from mail.hhi.fraunhofer.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 5A1207C140
 for <usrp-users@lists.ettus.com>; Wed, 17 Feb 2021 18:10:24 +0100 (CET)
X-IMSS-DKIM-Authentication-Result: mail.hhi.fraunhofer.de; sigcount=0
Received: from mail.hhi.fraunhofer.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 4DF3D7C13B
 for <usrp-users@lists.ettus.com>; Wed, 17 Feb 2021 18:10:24 +0100 (CET)
Received: from mx.fe.hhi.de (unknown [172.16.0.103])
 by mail.hhi.fraunhofer.de (Postfix) with ESMTPS
 for <usrp-users@lists.ettus.com>; Wed, 17 Feb 2021 18:10:24 +0100 (CET)
Received: from mxsrv5.fe.hhi.de (172.16.0.103) by mxsrv5.fe.hhi.de
 (172.16.0.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2; Wed, 17 Feb
 2021 18:10:28 +0100
Received: from mxsrv5.fe.hhi.de ([fe80::7d4f:49e9:b062:84d9]) by
 mxsrv5.fe.hhi.de ([fe80::7d4f:49e9:b062:84d9%15]) with mapi id
 15.01.2106.003; Wed, 17 Feb 2021 18:10:28 +0100
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Get and set CBX-120 ads62p48 gain
Thread-Index: AQHXA7pvdKU14kVki0CJNlBIvlTbC6pZbncAgAMpqAA=
Date: Wed, 17 Feb 2021 17:10:28 +0000
Message-ID: <ABE4B437-C406-4211-9C64-2A8227646FCE@hhi.fraunhofer.de>
References: <14566F56-D30D-43E0-B467-6E3541A1AB2F@hhi.fraunhofer.de>
 <7952774e-f475-f5d2-9340-5116d0ff1ba6@ettus.com>
In-Reply-To: <7952774e-f475-f5d2-9340-5116d0ff1ba6@ettus.com>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.22.100]
Content-ID: <977D030D423DCB4B9236709BDCDC3C97@hhi.fraunhofer.de>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Subject: Re: [USRP-users] Get and set CBX-120 ads62p48 gain
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
From: "Askar, Ramez via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Askar, Ramez" <ramez.askar@hhi.fraunhofer.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
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

RGVhciBNci4gTcO8bGxlciwNCg0KVGhhbmtzIGZvciB0aGUgc2NyaXB0IGFuZCBvZiBjb3Vyc2Ug
ZmFzdCByZXNwb25zZSEgDQoNCldlIGFyZSBydW5uaW5nIGluIGxvb3BiYWNrIG1vZGUgKHR4IHRv
IHJ4KSwgYW5kIHdlIGhhdmUgdHJpZWQgdG8gIGNoYW5nZSB0aGUgdHggYW5kIHJ4IGdhaW4gKGF0
dGVudWF0aW9uKSBwYWlycyB3aGlsZSBrZWVwaW5nIGEgY29uc3RhbnQgbGluayBidWRnZXQgaW4g
dGhlIGxvb3AuIFdlIGhhZCBpbmNvbnNpc3RlbnQgcmVzdWx0cyBpbiB0ZXJtcyBvZiBBREMgZHlu
YW1pYyAoYml0cykgdXRpbGl6YXRpb24uIFRoZXJlZm9yZSwgd2UgbmVlZGVkIGEgc29sdXRpb24g
dGhhdCBmaXhlcyB0aGUgQURDIGdhaW4uDQoNCkJlc3QgcmVnYXJkcyAvIE1pdCBmcmV1bmRsaWNo
ZW4gR3LDvMOfZW5yw7zDn2VuDQotLQ0KQXNrYXIsIFJhbWV6LCBNLlNjLg0KIA0KDQrvu79PbiAx
NS4wMi4yMSwgMTg6NTIsICJNYXJjdXMgTcO8bGxlciIgPG1hcmN1cy5tdWVsbGVyQGV0dHVzLmNv
bT4gd3JvdGU6DQoNCiAgICBEZWFyIE1yLiBBc2thciwNCg0KICAgIHlvdSBjYW4gZ2V0IHRoZSBk
ZXRhaWxlZCBuYW1lcyBvZiB0aGUgYXZhaWxhYmxlIGdhaW4gZWxlbWVudHMgb2YgZXZlcnkgZGV2
aWNlIGJ5IGNhbGxpbmcNCg0KICAgIGF1dG8gZ2Fpbl9uYW1lcyA9IG15X211bHRpX3VzcnAtPmdl
dF9yeF9nYWluX25hbWVzKCk7DQoNCiAgICBhbmQgdGhlbiBkbyBzb21ldGhpbmcgZnVuIGxpa2U6
DQoNCiAgICBmb3IoY29uc3QgYXV0byYgZ2Fpbl9uYW1lIDogZ2Fpbl9uYW1lcykgew0KICAgICAg
ICBhdXRvIGdhaW4gPSBteV9tdWx0aV91c3JwLT5nZXRfcnhfZ2FpbihnYWluX25hbWUpOw0KICAg
ICAgICBzdGQ6OmNvdXQgPDwgZ2Fpbl9uYW1lIDw8ICI6ICIgPDwgZ2FpbiA8PCAiIGRCKGFyYml0
cmFyeSlcbiI7DQogICAgfQ0KDQogICAgU2V0dGluZyB0aGUgZ2FpbnMgd29ya3MganVzdCB0aGUg
c2FtZSwgbXlfbXVsdGlfdXNycC0+c2V0X3J4X2dhaW4oZ2Fpbl9lbGVtZW50X25hbWUsIHZhbHVl
KS4NCg0KICAgIEhvd2V2ZXIsIDk5LjUlIG9mIHRpbWVzwrkgeW91ICpkb24ndCogd2FudCB0byBz
ZXQgdGhlIGdhaW4gdG8gYW55IGVsZW1lbnQgaW4gaXNvbGF0aW9uOyBVSEQNCiAgICB3YXMgY29k
ZWQgdG8gY2hvb3NlIHRoZSBtb3N0IHNlbnNpYmxlIGNvbWJpbmF0aW9uIG9mIGdhaW5zIGRpc3Ry
aWJ1dGVkIGFjcm9zcyB0aGUgc2V0dGFibGUNCiAgICBnYWluIGVsZW1lbnRzLg0KDQogICAgVGhl
cmUncyBhIHJlbGF0aXZlbHkgbmV3IEFQSSBmb3IgKkdhaW4gUHJvZmlsZXMqOiBXaXRoIGEgY2Fs
bCB0bw0KICAgIG15X211bHRpX3VzcnAtPmdldF9yeF9nYWluX3Byb2ZpbGVfbmFtZXMoKSB5b3Ug
Z2V0IGEgbGlzdCBvZiBhdmFpbGFibGUgZ2FpbiBwcm9maWxlcyAoSQ0KICAgIG11c3QgYWRtaXQg
SSBkb24ndCBrbm93IHdoaWNoIG9uZXMgYXJlIHN1cHBvcnRlZCBvbiBDQlgtMTIwOyB5b3UgbWln
aHQgb25seSBnZXQgYW4gZW1wdHkNCiAgICBsaXN0IG1lYW5pbmcgdGhlcmUncyBidXQgb25lIGRl
ZmF1bHQgcHJvZmlsZSk7IHlvdSBjYW4gc2V0IHRoZW0gd2l0aCB0aGUgZXBvbnltb3VzIHNldHRl
cg0KICAgIG1ldGhvZC4NCg0KICAgIE1heSBJIGFzayB3aGF0IHRoZSBpbnRlbnRpb24gYmVoaW5k
IHdhbnRpbmcgdG8gc2V0IHRoYXQgaW5kaXZpZHVhbCBnYWluIGluc3RlYWQgb2Ygc2ltcGx5DQog
ICAgc2V0dGluZyB0aGUgb3ZlcmFsbCBSWCBnYWluIGlzPyBNYXliZSB3ZSBjYW4gYWR2aXNlIHRv
IHlvdXIgYWR2YW50YWdlIGJhc2VkIG9uIHRoYXQuDQoNCiAgICBCZXN0IHJlZ2FyZHMsDQogICAg
TWFyY3VzIE3DvGxsZXINCg0KICAgIMK5IE5vdGUgdGhhdCA4Ny41NiUgb2Ygc3VjaCBudW1iZXJz
IGFyZSB0b3RhbGx5IG1hZGUgdXANCg0KICAgIERJU0NMQUlNRVI6IEFueSBhdHRhY2hlZCBDb2Rl
IGlzIHByb3ZpZGVkIEFzIElzLiBJdCBoYXMgbm90IGJlZW4gdGVzdGVkIG9yIHZhbGlkYXRlZCBh
cyBhDQogICAgcHJvZHVjdCwgZm9yIHVzZSBpbiBhIGRlcGxveWVkIGFwcGxpY2F0aW9uIG9yIHN5
c3RlbSwgb3IgZm9yIHVzZSBpbiBoYXphcmRvdXMNCiAgICBlbnZpcm9ubWVudHMuIFlvdSBhc3N1
bWUgYWxsIHJpc2tzIGZvciB1c2Ugb2YgdGhlIENvZGUuIFVzZSBvZiB0aGUgQ29kZSBpcyBzdWJq
ZWN0IHRvDQogICAgdGVybXMgb2YgdGhlIGxpY2Vuc2VzIHRvIHRoZSBVSEQgb3IgUkZOb0MgY29k
ZSB3aXRoIHdoaWNoIHRoZSBDb2RlIGlzIHVzZWQuIFN0YW5kYXJkDQogICAgbGljZW5zZXMgdG8g
VUhEIGFuZCBSRk5vQyBjYW4gYmUgZm91bmQgYXQgaHR0cHM6Ly93d3cuZXR0dXMuY29tL3Nkci1z
b2Z0d2FyZS9saWNlbnNlcy8uDQoNCiAgICBOSSB3aWxsIG9ubHkgcGVyZm9ybSBzZXJ2aWNlcyBi
YXNlZCBvbiBpdHMgdW5kZXJzdGFuZGluZyBhbmQgY29uZGl0aW9uIHRoYXQgdGhlIGdvb2RzIG9y
DQogICAgc2VydmljZXMgKGkpIGFyZSBub3QgZm9yIHRoZSB1c2UgaW4gdGhlIHByb2R1Y3Rpb24g
b3IgZGV2ZWxvcG1lbnQgb2YgYW55IGl0ZW0gcHJvZHVjZWQsDQogICAgcHVyY2hhc2VkLCBvciBv
cmRlcmVkIGJ5IGFueSBlbnRpdHkgd2l0aCBhIGZvb3Rub3RlIDEgZGVzaWduYXRpb24gaW4gdGhl
IGxpY2Vuc2UNCiAgICByZXF1aXJlbWVudCBjb2x1bW4gb2YgU3VwcGxlbWVudCBOby4gNCB0byBQ
YXJ0IDc0NCwgVS5TLiBFeHBvcnQgQWRtaW5pc3RyYXRpb24gUmVndWxhdGlvbnMNCiAgICBhbmQg
KGlpKSBzdWNoIGEgY29tcGFueSBpcyBub3QgYSBwYXJ0eSB0byB0aGUgdHJhbnNhY3Rpb24uIElm
IG91ciB1bmRlcnN0YW5kaW5nIGlzDQogICAgaW5jb3JyZWN0LCBwbGVhc2Ugbm90aWZ5IHVzIGlt
bWVkaWF0ZWx5IGJlY2F1c2UgYSBzcGVjaWZpYyBhdXRob3JpemF0aW9uIG1heSBiZSByZXF1aXJl
ZA0KICAgIGZyb20gdGhlIFUuUy4gQ29tbWVyY2UgRGVwYXJ0bWVudCBiZWZvcmUgdGhlIHRyYW5z
YWN0aW9uIG1heSBwcm9jZWVkIGZ1cnRoZXIuDQoNCiAgICBPbiAxNS4wMi4yMSAxNzo0OCwgQXNr
YXIsIFJhbWV6IHZpYSBVU1JQLXVzZXJzIHdyb3RlOg0KICAgID4gRGVhciBTaXIgb3IgTWFkYW0s
DQogICAgPg0KICAgID4gIA0KICAgID4NCiAgICA+IFdlIGFyZSB1c2luZyB0aGUgIFgzMTAgd2l0
aCBDQlgtMTIwIGRhdWdodGVyIGNhcmRzLiBIb3cgY2FuIHdlIGdldCBhbmQgc2V0IHRoZSBkaWdp
dGFsDQogICAgPiBSWCBnYWluIChhZHM2MnA0OCBnYWluKSBmcm9tIEMrKyBhcHBsaWNhdGlvbj8N
CiAgICA+DQogICAgPiAgDQogICAgPg0KICAgID4gIA0KICAgID4NCiAgICA+IEJlc3QgcmVnYXJk
cyAvIE1pdCBmcmV1bmRsaWNoZW4gR3LDvMOfZW4NCiAgICA+DQogICAgPiAtLQ0KICAgID4gQXNr
YXIsIFJhbWV6LCBNLlNjLg0KICAgID4gUmVzZWFyY2ggQXNzb2NpYXRlIC8gUHJvamVjdCBNYW5h
Z2VyIC8gRGVsZWdhdGUNCiAgICA+DQogICAgPiBXaXJlbGVzcyBDb21tdW5pY2F0aW9ucyBhbmQg
TmV0d29ya3MNCiAgICA+IEZyYXVuaG9mZXIgSW5zdGl0dXRlIGZvciBUZWxlY29tbXVuaWNhdGlv
bnMsIEhlaW5yaWNoIEhlcnR6IEluc3RpdHV0ZSwgSEhJDQogICAgPiBFaW5zdGVpbnVmZXIgMzcs
IDEwNTg3IEJlcmxpbiwgR2VybWFueQ0KICAgID4gKzQ5ICgwKTMwIDMxMDAyLTYyOA0KICAgID4g
cmFtZXouYXNrYXJAaGhpLmZyYXVuaG9mZXIuZGUgPG1haWx0bzpyYW1lei5hc2thckBoaGkuZnJh
dW5ob2Zlci5kZT4NCiAgICA+IHd3dy5oaGkuZnJhdW5ob2Zlci5kZSA8aHR0cDovL3d3dy5oaGku
ZnJhdW5ob2Zlci5kZS8+DQogICAgPg0KICAgID4gIA0KICAgID4NCiAgICA+DQogICAgPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KICAgID4gVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QNCiAgICA+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQogICAg
PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0
cy5ldHR1cy5jb20NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20K
aHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMu
ZXR0dXMuY29tCg==
