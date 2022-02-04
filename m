Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 909C94A9EE8
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 19:24:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A0A4F385AEA
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 13:24:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=virginia.edu header.i=@virginia.edu header.b="Bai3UeTP";
	dkim-atps=neutral
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 406A9385670
	for <usrp-users@lists.ettus.com>; Fri,  4 Feb 2022 13:23:07 -0500 (EST)
Received: by mail-qt1-f176.google.com with SMTP id p14so6471494qtx.0
        for <usrp-users@lists.ettus.com>; Fri, 04 Feb 2022 10:23:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=virginia.edu; s=google;
        h=message-id:date:mime-version:user-agent:content-language:to
         :references:from:organization:subject:in-reply-to;
        bh=S3PyN+BZKKBBUBk/9+szNPnd1SKsdPCrhGrWki1z+sk=;
        b=Bai3UeTPqpyU3MhPLG6PuzJ+z7IARugZ7EsXJGpHnbGr1lpZZPAbXWuD/wgyyTB89C
         rBK9fTT+Vyt46mRgjhzEgOnza9kYZ+lpDh/LCb4eMRpQNkJjTikCRYD1rO8sMwF+UxdE
         csRj8QkE0LKz0gL/YdatwxgPodl18WwNVjdlS5GZoPhbzf/3olISF3d0o13sZ9tyIUNE
         z4AN3Qo16RI/BGhkCd5QB2x7h3w39IiMJxAeIRXTUdJr/0GdjQL3ORs+DxIS+DF75dLT
         XejQa6qfIq2FSzQjPs8SFIJgOuXk1IR9iSoKGWaHlgRXWaXm6LNcmkakyiwKLieX7N/V
         goeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:references:from:organization:subject
         :in-reply-to;
        bh=S3PyN+BZKKBBUBk/9+szNPnd1SKsdPCrhGrWki1z+sk=;
        b=0Rp1z95SGdh+ceqbBlMa3V8ymFPJBwZkiKqk9Nd0Khv6r4QDHDs2hKhvC8LNG0r59k
         w1I6BAOwy8k89ORIJ1BtKeqaLUaj52iIWrmha/Qeqksc9PFlG1fE8XHUowdsJETZzMfW
         dCQvcgCKDQftTGoC/IYeph8Ucwy/qAwgFvRj7rhbIcQ3s8hcNSFO+/ZKMZ6yG7f5qCIn
         dR5b0PPz9481qtQCBcJw9HwnVhhCoUZSqQ1O1tVaolrlvIexo4y90uGIH5o0B0tS2KIb
         PtdGhnAtIJcl2/3uIySnrPq3lnGHId+q+i3E0P3oKcgOuNLKakLcFQhx8zAr2ae6zREu
         vfIg==
X-Gm-Message-State: AOAM531ySftvT4LMlnFZv8vizSJaz46BGYDn+Wab3uVvdrD0xvnfJqDf
	PC1u//BB/Iv2McAQubRv1BJyOq808Wqmcg==
X-Google-Smtp-Source: ABdhPJxvEwHRThSMn7XHInqkV5zDkpAaSzJRtMiq6b2c5oBTFZ8HE22XzBEnG6ezodpPJiVEZy1FzA==
X-Received: by 2002:ac8:7f82:: with SMTP id z2mr193302qtj.295.1643998986539;
        Fri, 04 Feb 2022 10:23:06 -0800 (PST)
Received: from [10.3.226.59] ([154.3.44.37])
        by smtp.gmail.com with ESMTPSA id z22sm1344625qko.2.2022.02.04.10.23.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Feb 2022 10:23:05 -0800 (PST)
Message-ID: <7fdd4da5-271b-a418-9f22-9dd9610ff39f@virginia.edu>
Date: Fri, 4 Feb 2022 13:23:03 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Content-Language: en-US
To: Jim Palladino <jim@gardettoengineering.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <MN2PR12MB3312C4A465FF575C85EF59DEB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <fe43546f-cde5-f442-0d76-1967bc5dfebc@gmail.com>
 <MN2PR12MB33129A29C695F7A0ABC8BB6EB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <4acbc3b9-354e-1a85-5758-fccf65b17835@gmail.com>
 <MN2PR12MB331282717C011B8FA78D241EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <8032a31f-48f3-af30-5a79-3d7c8dde12e2@gmail.com>
 <MN2PR12MB33129135EE23091DC520E48EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <a5b4ebc9-36db-b2d9-abbb-e7309562f33a@gmail.com>
 <MN2PR12MB33125E03CE4418143EC2F8AFB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <MN2PR12MB3312D53CEDAF9C0B074C6A8FB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <CAB__hTT+rMDuE_Z2G-WPfmL5pa4Gp8WuaxNM8hU2hxK77rwQZQ@mail.gmail.com>
 <MN2PR12MB33127C45BA4FCB2206501932B8289@MN2PR12MB3312.namprd12.prod.outlook.com>
 <425a8e78-fc35-7c7e-a036-87cc6e97408c@virginia.edu>
 <MN2PR12MB33126BF9E653537F4BFE42CFB8299@MN2PR12MB3312.namprd12.prod.outlook.com>
From: Dustin Widmann <dw2zq@virginia.edu>
Organization: University of Virginia
In-Reply-To: <MN2PR12MB33126BF9E653537F4BFE42CFB8299@MN2PR12MB3312.namprd12.prod.outlook.com>
Message-ID-Hash: NY776URQEUJA5BG4SPOXOLX3D7RFD5TY
X-Message-ID-Hash: NY776URQEUJA5BG4SPOXOLX3D7RFD5TY
X-MailFrom: dw2zq@virginia.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands Not Working
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NY776URQEUJA5BG4SPOXOLX3D7RFD5TY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5327386809005118477=="

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5327386809005118477==
Content-Language: en-US
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------boBeSihuineW6hLLbxTXmSvG"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------boBeSihuineW6hLLbxTXmSvG
Content-Type: multipart/mixed; boundary="------------K0cQUitWvdQiuzQyT3uATtvC";
 protected-headers="v1"
From: Dustin Widmann <dw2zq@virginia.edu>
To: Jim Palladino <jim@gardettoengineering.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <7fdd4da5-271b-a418-9f22-9dd9610ff39f@virginia.edu>
Subject: Re: [USRP-users] Re: Timed Commands Not Working
References: <MN2PR12MB3312C4A465FF575C85EF59DEB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <fe43546f-cde5-f442-0d76-1967bc5dfebc@gmail.com>
 <MN2PR12MB33129A29C695F7A0ABC8BB6EB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <4acbc3b9-354e-1a85-5758-fccf65b17835@gmail.com>
 <MN2PR12MB331282717C011B8FA78D241EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <8032a31f-48f3-af30-5a79-3d7c8dde12e2@gmail.com>
 <MN2PR12MB33129135EE23091DC520E48EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <a5b4ebc9-36db-b2d9-abbb-e7309562f33a@gmail.com>
 <MN2PR12MB33125E03CE4418143EC2F8AFB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <MN2PR12MB3312D53CEDAF9C0B074C6A8FB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <CAB__hTT+rMDuE_Z2G-WPfmL5pa4Gp8WuaxNM8hU2hxK77rwQZQ@mail.gmail.com>
 <MN2PR12MB33127C45BA4FCB2206501932B8289@MN2PR12MB3312.namprd12.prod.outlook.com>
 <425a8e78-fc35-7c7e-a036-87cc6e97408c@virginia.edu>
 <MN2PR12MB33126BF9E653537F4BFE42CFB8299@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB33126BF9E653537F4BFE42CFB8299@MN2PR12MB3312.namprd12.prod.outlook.com>

--------------K0cQUitWvdQiuzQyT3uATtvC
Content-Type: multipart/mixed; boundary="------------8nTIzjXoDRv090MWuTowHaeJ"

--------------8nTIzjXoDRv090MWuTowHaeJ
Content-Type: multipart/alternative;
 boundary="------------L06Pv2MfWlcxnMKoBoFleWOa"

--------------L06Pv2MfWlcxnMKoBoFleWOa
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

Rm9yIHJlZmVyZW5jZSwgSSd2ZSBkb25lIGl0IG92ZXIgYWdhaW4gd2l0aCB0aGUgbGF0ZXN0
IGNvbW1pdHMgZnJvbSB0aGUgDQpVSEQtNC4wwqAgYW5kIFVIRC0zLjE1LkxUUyBicmFuY2hl
cy4NCg0KDQpDcmVhdGluZyB0aGUgdXNycCBkZXZpY2Ugd2l0aDogLi4uDQpbSU5GT10gW1VI
RF0gbGludXg7IENsYW5nIHZlcnNpb24gMTMuMC4wIDsgQm9vc3RfMTA3NDAwOyANClVIRF80
LjAuMC4wLTI0MC1nYjM4YzlkODMNCltJTkZPXSBbWDMwMF0gWDMwMCBpbml0aWFsaXphdGlv
biBzZXF1ZW5jZS4uLg0KW0lORk9dIFtYMzAwXSBNYXhpbXVtIGZyYW1lIHNpemU6IDgwMDAg
Ynl0ZXMuDQpbSU5GT10gW1gzMDBdIFJhZGlvIDF4IGNsb2NrOiAyMDAgTUh6DQpVc2luZyBE
ZXZpY2U6IFNpbmdsZSBVU1JQOg0KIMKgIERldmljZTogWC1TZXJpZXMgRGV2aWNlDQogwqAg
TWJvYXJkIDA6IFgzMTANCiDCoCBSWCBDaGFubmVsOiAwDQogwqDCoMKgIFJYIERTUDogMA0K
IMKgwqDCoCBSWCBEYm9hcmQ6IEENCiDCoMKgwqAgUlggU3ViZGV2OiBVQlggUlgNCiDCoCBS
WCBDaGFubmVsOiAxDQogwqDCoMKgIFJYIERTUDogMQ0KIMKgwqDCoCBSWCBEYm9hcmQ6IEIN
CiDCoMKgwqAgUlggU3ViZGV2OiBVQlggUlgNCiDCoCBUWCBDaGFubmVsOiAwDQogwqDCoMKg
IFRYIERTUDogMA0KIMKgwqDCoCBUWCBEYm9hcmQ6IEENCiDCoMKgwqAgVFggU3ViZGV2OiBV
QlggVFgNCiDCoCBUWCBDaGFubmVsOiAxDQogwqDCoMKgIFRYIERTUDogMQ0KIMKgwqDCoCBU
WCBEYm9hcmQ6IEINCiDCoMKgwqAgVFggU3ViZGV2OiBVQlggVFgNCg0KDQpUZXN0aW5nIHN1
cHBvcnQgZm9yIHRpbWVkIGNvbW1hbmRzIG9uIHRoaXMgaGFyZHdhcmUuLi4gcGFzcw0KDQpQ
ZXJmb3JtIGZhc3QgcmVhZGJhY2sgb2YgcmVnaXN0ZXJzOg0KIMKgRGlmZmVyZW5jZSBiZXR3
ZWVuIHBhaXJlZCByZWFkczogMTA2MC42NTkxMDAgdXMNCg0KVGVzdGluZyBjb250cm9sIHRp
bWVkIGNvbW1hbmQ6DQogwqBTcGFuwqDCoMKgwqDCoCA6IDEwMDAwMC4wMDAwMDAgdXMNCiDC
oE5vd8KgwqDCoMKgwqDCoCA6IDI0OTQzMS43NTAwMDAgdXMNCiDCoFJlc3BvbnNlIDE6IDI1
MDUxNS45NTAwMDAgdXMNCiDCoFJlc3BvbnNlIDI6IDI1MTUyMS44NTAwMDAgdXMNCiDCoERp
ZmZlcmVuY2Ugb2YgcmVzcG9uc2UgdGltZSAxOiAtOTg5MTUuODAwMDAwIHVzDQogwqBEaWZm
ZXJlbmNlIG9mIHJlc3BvbnNlIHRpbWUgMjogLTE5NzkwOS45MDAwMDAgdXMNCiDCoERpZmZl
cmVuY2UgYmV0d2VlbiBhY3R1YWwgYW5kIGV4cGVjdGVkIHRpbWUgZGVsdGE6IC05ODk5NC4x
MDAwMDAgdXMNCg0KQWJvdXQgdG8gc3RhcnQgc3RyZWFtaW5nIHVzaW5nIHRpbWVkIGNvbW1h
bmQ6DQogwqBSZWNlaXZlZCBwYWNrZXQ6IDEwMCBzYW1wbGVzLCAwIGZ1bGwgc2VjcywgMC4z
NTk0NTIgZnJhYyBzZWNzDQogwqBTdHJlYW0gdGltZSB3YXM6IDAgZnVsbCBzZWNzLCAwLjM1
OTQ1MiBmcmFjIHNlY3MNCiDCoERpZmZlcmVuY2UgYmV0d2VlbiBzdHJlYW0gdGltZSBhbmQg
Zmlyc3QgcGFja2V0OiAwLjAwMDAwMCB1cw0KDQpEb25lIQ0KDQoNCkNyZWF0aW5nIHRoZSB1
c3JwIGRldmljZSB3aXRoOiAuLi4NCltJTkZPXSBbVUhEXSBsaW51eDsgQ2xhbmcgdmVyc2lv
biAxMy4wLjAgOyBCb29zdF8xMDc0MDA7IA0KVUhEXzMuMTUuMC4wLTc0LWdlMzVmNjZlOA0K
W0lORk9dIFtYMzAwXSBYMzAwIGluaXRpYWxpemF0aW9uIHNlcXVlbmNlLi4uDQpbSU5GT10g
W1gzMDBdIE1heGltdW0gZnJhbWUgc2l6ZTogODAwMCBieXRlcy4NCltJTkZPXSBbWDMwMF0g
UmFkaW8gMXggY2xvY2s6IDIwMCBNSHoNCltJTkZPXSBbR1BTXSBObyBHUFNETyBmb3VuZA0K
W0lORk9dIFswL0RtYUZJRk9fMF0gSW5pdGlhbGl6aW5nIGJsb2NrIGNvbnRyb2wgKE5PQyBJ
RDogMHhGMUYwRDAwMDAwMDAwMDAwKQ0KW0lORk9dIFswL0RtYUZJRk9fMF0gQklTVCBwYXNz
ZWQgKFRocm91Z2hwdXQ6IDEzMDkgTUIvcykNCltJTkZPXSBbMC9EbWFGSUZPXzBdIEJJU1Qg
cGFzc2VkIChUaHJvdWdocHV0OiAxMzE1IE1CL3MpDQpbSU5GT10gWzAvUmFkaW9fMF0gSW5p
dGlhbGl6aW5nIGJsb2NrIGNvbnRyb2wgKE5PQyBJRDogMHgxMkFEMTAwMDAwMDAwMDAxKQ0K
W0lORk9dIFswL1JhZGlvXzFdIEluaXRpYWxpemluZyBibG9jayBjb250cm9sIChOT0MgSUQ6
IDB4MTJBRDEwMDAwMDAwMDAwMSkNCltJTkZPXSBbMC9ERENfMF0gSW5pdGlhbGl6aW5nIGJs
b2NrIGNvbnRyb2wgKE5PQyBJRDogMHhEREMwMDAwMDAwMDAwMDAwKQ0KW0lORk9dIFswL0RE
Q18xXSBJbml0aWFsaXppbmcgYmxvY2sgY29udHJvbCAoTk9DIElEOiAweEREQzAwMDAwMDAw
MDAwMDApDQpbSU5GT10gWzAvRFVDXzBdIEluaXRpYWxpemluZyBibG9jayBjb250cm9sIChO
T0MgSUQ6IDB4RDBDMDAwMDAwMDAwMDAwMCkNCltJTkZPXSBbMC9EVUNfMV0gSW5pdGlhbGl6
aW5nIGJsb2NrIGNvbnRyb2wgKE5PQyBJRDogMHhEMEMwMDAwMDAwMDAwMDAwKQ0KVXNpbmcg
RGV2aWNlOiBTaW5nbGUgVVNSUDoNCiDCoCBEZXZpY2U6IFgtU2VyaWVzIERldmljZQ0KIMKg
IE1ib2FyZCAwOiBYMzEwDQogwqAgUlggQ2hhbm5lbDogMA0KIMKgwqDCoCBSWCBEU1A6IDAN
CiDCoMKgwqAgUlggRGJvYXJkOiBBDQogwqDCoMKgIFJYIFN1YmRldjogVUJYIFJYDQogwqAg
UlggQ2hhbm5lbDogMQ0KIMKgwqDCoCBSWCBEU1A6IDANCiDCoMKgwqAgUlggRGJvYXJkOiBC
DQogwqDCoMKgIFJYIFN1YmRldjogVUJYIFJYDQogwqAgVFggQ2hhbm5lbDogMA0KIMKgwqDC
oCBUWCBEU1A6IDANCiDCoMKgwqAgVFggRGJvYXJkOiBBDQogwqDCoMKgIFRYIFN1YmRldjog
VUJYIFRYDQogwqAgVFggQ2hhbm5lbDogMQ0KIMKgwqDCoCBUWCBEU1A6IDANCiDCoMKgwqAg
VFggRGJvYXJkOiBCDQogwqDCoMKgIFRYIFN1YmRldjogVUJYIFRYDQoNCg0KVGVzdGluZyBz
dXBwb3J0IGZvciB0aW1lZCBjb21tYW5kcyBvbiB0aGlzIGhhcmR3YXJlLi4uIHBhc3MNCg0K
UGVyZm9ybSBmYXN0IHJlYWRiYWNrIG9mIHJlZ2lzdGVyczoNCiDCoERpZmZlcmVuY2UgYmV0
d2VlbiBwYWlyZWQgcmVhZHM6IDYwLjQzNDM1MCB1cw0KDQpUZXN0aW5nIGNvbnRyb2wgdGlt
ZWQgY29tbWFuZDoNCiDCoFNwYW7CoMKgwqDCoMKgIDogMTAwMDAwLjAwMDAwMCB1cw0KIMKg
Tm93wqDCoMKgwqDCoMKgIDogMTg0ODk2NC42MDAwMDAgdXMNCiDCoFJlc3BvbnNlIDE6IDE5
NDg5NjQuNjU1MDAwIHVzDQogwqBSZXNwb25zZSAyOiAyMDQ4OTY0LjY1NTAwMCB1cw0KIMKg
RGlmZmVyZW5jZSBvZiByZXNwb25zZSB0aW1lIDE6IDAuMDU1MDAwIHVzDQogwqBEaWZmZXJl
bmNlIG9mIHJlc3BvbnNlIHRpbWUgMjogMC4wNTUwMDAgdXMNCiDCoERpZmZlcmVuY2UgYmV0
d2VlbiBhY3R1YWwgYW5kIGV4cGVjdGVkIHRpbWUgZGVsdGE6IDAuMDAwMDAwIHVzDQoNCkFi
b3V0IHRvIHN0YXJ0IHN0cmVhbWluZyB1c2luZyB0aW1lZCBjb21tYW5kOg0KIMKgUmVjZWl2
ZWQgcGFja2V0OiAxMDAgc2FtcGxlcywgMiBmdWxsIHNlY3MsIDAuMTU1NzcwIGZyYWMgc2Vj
cw0KIMKgU3RyZWFtIHRpbWUgd2FzOiAyIGZ1bGwgc2VjcywgMC4xNTU3NzAgZnJhYyBzZWNz
DQogwqBEaWZmZXJlbmNlIGJldHdlZW4gc3RyZWFtIHRpbWUgYW5kIGZpcnN0IHBhY2tldDog
MC4wMDUwMDAgdXMNCg0KRG9uZSENCg0KDQoNCi0tIA0KDQoNClRoaXMgaXMgcHJldHR5IGNv
bmNlcm5pbmcsIGxvb2tzIGxpa2UgdGhlIGxhdGVzdCBjb21taXQgb2YgdGhlIFVIRC00LjAg
DQpicmFuY2ggaGFzIHRoaXMgYnJva2VuIGFzIHdlbGw/IFRpbWVkIGNvbW1hbmRzIGF0IGxl
YXN0IHVzZWQgdG8gd29yayBpbiANClVIRCA0LjAsIGJ1dCBJIGhhZG4ndCB0cmllZCBpbiBh
IHdoaWxlLCBhbmQgbmV2ZXIgd2l0aCB0aGlzIG5pZnR5IHRlc3QgDQpwcm9ncmFtLiBJJ20g
Z29pbmcgdG8gaGF2ZSB0byBzZWUgaWYgSSBjYW4gZmluZCB3aGVyZSB0aGUgYnJlYWthZ2Ug
DQpvY2N1cnJlZCwgc28gSSBjYW4gcm9sbCBiYWNrIGZvciB0aGUgdGltZSBiZWluZy4NCg0K
DQotRHVzdGluDQoNCg0KT24gMi80LzIyIDExOjIzLCBKaW0gUGFsbGFkaW5vIHdyb3RlOg0K
PiBEdXN0aW4sDQo+DQo+IFRoYW5rIHlvdSBmb3IgcnVubmluZyB0aGF0LiBTbyBhcHBhcmVu
dGx5LCBpdCBpc24ndCBqdXN0IGFuIGlzc3VlIG9uIA0KPiBteSBlbmQuDQo+DQo+IFRoYW5r
cywNCj4gSmltDQo+DQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAqRnJvbToqIER1c3RpbiBX
aWRtYW5uIDxkdzJ6cUB2aXJnaW5pYS5lZHU+DQo+ICpTZW50OiogRnJpZGF5LCBGZWJydWFy
eSA0LCAyMDIyIDExOjE2IEFNDQo+ICpUbzoqIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
IDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4NCj4gKlN1YmplY3Q6KiBbVVNSUC11c2Vy
c10gUmU6IFRpbWVkIENvbW1hbmRzIE5vdCBXb3JraW5nDQo+DQo+ICJIb3BlZnVsbHksIHNv
bWVvbmUgY2FuIHRyeSB0aGUgdWhkICJ0ZXN0X3RpbWVkX2NvbW1hbmRzIiBleGFtcGxlIGlu
IA0KPiA0LjEgdG8uLi4iDQo+DQo+DQo+IEZpZ3VyZSBJIG91Z2h0IHRvIGJlIGFib3V0IGFz
IGdvb2QgYXMgdGhlIG5leHQgc29tZWJvZHkuDQo+DQo+IHRlc3RfdGltZWRfY29tbWFuZHMg
b3V0cHV0IHdpdGggVUhEIDQuMS4wIGFuZCBhbiBYMzEwDQo+DQo+DQo+IENyZWF0aW5nIHRo
ZSB1c3JwIGRldmljZSB3aXRoOiAuLi4NCj4gW0lORk9dIFtVSERdIGxpbnV4OyBHTlUgQysr
IHZlcnNpb24gMTEuMi4wOyBCb29zdF8xMDc4MDA7IA0KPiBVSERfNC4xLjAuSEVBRC0wLWc2
YmQwYmU5Yw0KPiBbSU5GT10gW1gzMDBdIFgzMDAgaW5pdGlhbGl6YXRpb24gc2VxdWVuY2Uu
Li4NCj4gW0lORk9dIFtYMzAwXSBNYXhpbXVtIGZyYW1lIHNpemU6IDgwMDAgYnl0ZXMuDQo+
IFtJTkZPXSBbWDMwMF0gUmFkaW8gMXggY2xvY2s6IDIwMCBNSHoNCj4gVXNpbmcgRGV2aWNl
OiBTaW5nbGUgVVNSUDoNCj4gwqAgRGV2aWNlOiBYLVNlcmllcyBEZXZpY2UNCj4gwqAgTWJv
YXJkIDA6IFgzMTANCj4gwqAgUlggQ2hhbm5lbDogMA0KPiDCoMKgwqAgUlggRFNQOiAwDQo+
IMKgwqDCoCBSWCBEYm9hcmQ6IEENCj4gwqDCoMKgIFJYIFN1YmRldjogVUJYIFJYDQo+IMKg
IFJYIENoYW5uZWw6IDENCj4gwqDCoMKgIFJYIERTUDogMQ0KPiDCoMKgwqAgUlggRGJvYXJk
OiBCDQo+IMKgwqDCoCBSWCBTdWJkZXY6IFVCWCBSWA0KPiDCoCBUWCBDaGFubmVsOiAwDQo+
IMKgwqDCoCBUWCBEU1A6IDANCj4gwqDCoMKgIFRYIERib2FyZDogQQ0KPiDCoMKgwqAgVFgg
U3ViZGV2OiBVQlggVFgNCj4gwqAgVFggQ2hhbm5lbDogMQ0KPiDCoMKgwqAgVFggRFNQOiAx
DQo+IMKgwqDCoCBUWCBEYm9hcmQ6IEINCj4gwqDCoMKgIFRYIFN1YmRldjogVUJYIFRYDQo+
DQo+DQo+IFRlc3Rpbmcgc3VwcG9ydCBmb3IgdGltZWQgY29tbWFuZHMgb24gdGhpcyBoYXJk
d2FyZS4uLiBwYXNzDQo+DQo+IFBlcmZvcm0gZmFzdCByZWFkYmFjayBvZiByZWdpc3RlcnM6
DQo+IMKgRGlmZmVyZW5jZSBiZXR3ZWVuIHBhaXJlZCByZWFkczogMTA3OS4wMTUzMDAgdXMN
Cj4NCj4gVGVzdGluZyBjb250cm9sIHRpbWVkIGNvbW1hbmQ6DQo+IMKgU3BhbsKgwqDCoMKg
wqAgOiAxMDAwMDAuMDAwMDAwIHVzDQo+IMKgTm93wqDCoMKgwqDCoMKgIDogMjUzMjU2LjM0
MDAwMCB1cw0KPiDCoFJlc3BvbnNlIDE6IDI1NDQzNy4yMzAwMDAgdXMNCj4gwqBSZXNwb25z
ZSAyOiAyNTU2NzYuODQwMDAwIHVzDQo+IMKgRGlmZmVyZW5jZSBvZiByZXNwb25zZSB0aW1l
IDE6IC05ODgxOS4xMTAwMDAgdXMNCj4gwqBEaWZmZXJlbmNlIG9mIHJlc3BvbnNlIHRpbWUg
MjogLTE5NzU3OS41MDAwMDAgdXMNCj4gwqBEaWZmZXJlbmNlIGJldHdlZW4gYWN0dWFsIGFu
ZCBleHBlY3RlZCB0aW1lIGRlbHRhOiAtOTg3NjAuMzkwMDAwIHVzDQo+DQo+IEFib3V0IHRv
IHN0YXJ0IHN0cmVhbWluZyB1c2luZyB0aW1lZCBjb21tYW5kOg0KPiDCoFJlY2VpdmVkIHBh
Y2tldDogMTAwIHNhbXBsZXMsIDAgZnVsbCBzZWNzLCAwLjM2NTkzNSBmcmFjIHNlY3MNCj4g
wqBTdHJlYW0gdGltZSB3YXM6IDAgZnVsbCBzZWNzLCAwLjM2NTkzNSBmcmFjIHNlY3MNCj4g
wqBEaWZmZXJlbmNlIGJldHdlZW4gc3RyZWFtIHRpbWUgYW5kIGZpcnN0IHBhY2tldDogMC4w
MDAwMDAgdXMNCj4NCj4gRG9uZSENCj4NCj4gLUR1c3Rpbg0KPg0KPiBPbiAyLzMvMjIgMDg6
MDIsIEppbSBQYWxsYWRpbm8gd3JvdGU6DQo+PiBUaGFua3MsIFJvYi4gSSBhbHdheXMgYXBw
cmVjaWF0ZSB3aGVuIHlvdSAiY2hpbWUgaW4iLiBIb3BlZnVsbHksIA0KPj4gc29tZW9uZSBj
YW4gdHJ5IHRoZSB1aGQgInRlc3RfdGltZWRfY29tbWFuZHMiIGV4YW1wbGUgaW4gNC4xIHRv
IGhlbHAgDQo+PiBjb25maXJtIHdoZXRoZXIgb3Igbm90IGl0J3MgYSBwcm9ibGVtIHdpdGgg
c29tZXRoaW5nIG9uIG15IGVuZCBvciANCj4+IHdpdGggVUhELiBNYXJjdXMgYWxyZWFkeSBj
b25maXJtZWQgaXRzIHdvcmtpbmcgZm9yIGhpbSB3aXRoIGFuIE4zMTAgDQo+PiBhbmQgVUhE
IDMuMTUuDQo+Pg0KPj4gVGhhbmtzLA0KPj4gSmltDQo+Pg0KPj4gLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tDQo+PiAqRnJvbToqIFJvYiBLb3NzbGVyIDxya29zc2xlckBuZC5lZHU+IDxtYWlsdG86
cmtvc3NsZXJAbmQuZWR1Pg0KPj4gKlNlbnQ6KiBXZWRuZXNkYXksIEZlYnJ1YXJ5IDIsIDIw
MjIgMzoyNiBQTQ0KPj4gKlRvOiogSmltIFBhbGxhZGlubyA8amltQGdhcmRldHRvZW5naW5l
ZXJpbmcuY29tPiANCj4+IDxtYWlsdG86amltQGdhcmRldHRvZW5naW5lZXJpbmcuY29tPg0K
Pj4gKkNjOiogTWFyY3VzIEQuIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4gDQo+
PiA8bWFpbHRvOnBhdGNodm9uYnJhdW5AZ21haWwuY29tPjsgdXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20gDQo+PiA8bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiA8dXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IA0KPj4gPG1haWx0bzp1c3JwLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbT4NCj4+ICpTdWJqZWN0OiogUmU6IFtVU1JQLXVzZXJzXSBSZTogVGltZWQg
Q29tbWFuZHMgTm90IFdvcmtpbmcNCj4+IEhpIEppbSwNCj4+IFRoaXMgc291bmRzIGxpa2Ug
YSBwcmV0dHkgYmlnIGlzc3VlLiBJIGhhdmVuJ3QgY2hpbWVkIGluIGJlY2F1c2UgSSANCj4+
IGNvdWxkbid0IHNheSBmb3Igc3VyZSBpZiB0aW1lZCBjb21tYW5kcyB3ZXJlIHdvcmtpbmcg
Zm9yIG1lIG9yIG5vdCBpbiANCj4+IFVIRCA0LjEuIEkgYW0gdXNpbmcgTjMyMXMgd2l0aCBz
aGFyZWQgTE8sIHNvIHRoZSBub3JtYWwgY29tbWFuZHMgSSANCj4+IHVzZSBmb3Igc2V0dGlu
ZyBmcmVxdWVuY3kgYXJlbid0IGNyaXRpY2FsIChmcm9tIGEgdGltZWQgY29tbWFuZCANCj4+
IHBlcnNwZWN0aXZlKSBleGNlcHQgZm9yIGhvdyB0aGUgRERDL0RVQyBtaWdodCBiZSBoYW5k
bGluZyB0aGVtLiBJbiANCj4+IGFueSBjYXNlLCBvbmNlIHlvdSBmaW5kIG91dCB0aGUgaXNz
dWUsIGNvdWxkIHlvdSBwbGVhc2Ugc2hhcmUgdGhlIA0KPj4gc29sdXRpb24gaGVyZS4gSWYg
SSBnZXQgYSBjaGFuY2UsIEkgd2lsbCB0cnkgdGhpcyBvbiBzb21lIG9mIG15IGRldmljZXMu
DQo+PiBSb2INCj4+DQo+PiBPbiBXZWQsIEZlYiAyLCAyMDIyIGF0IDEyOjIyIFBNIEppbSBQ
YWxsYWRpbm8gDQo+PiA8amltQGdhcmRldHRvZW5naW5lZXJpbmcuY29tIDxtYWlsdG86amlt
QGdhcmRldHRvZW5naW5lZXJpbmcuY29tPj4gd3JvdGU6DQo+Pg0KPj4gICAgIEp1c3QgdG8g
YWRkIG9uZSBtb3JlIGRhdGEgcG9pbnQsIEkganVzdCByYW4gdGVzdF90aW1lZF9jb21tYW5k
cw0KPj4gICAgIG9uIGEgZGlmZmVyZW50IGNvbXB1dGVyIGNvbm5lY3RlZCB0byBhbiBYMzEw
IC0tIHN0aWxsIFVIRCA0LjEuIEkNCj4+ICAgICBoYXZlIHRoZSBzYW1lIHByb2JsZW0gd2l0
aCB0aGF0IGRldmljZSB3aGVyZSBpdCBsb29rcyBsaWtlIHRpbWVkDQo+PiAgICAgY29tbWFu
ZHMgYXJlIG5vdCB3b3JraW5nIHJpZ2h0Lg0KPj4NCj4+ICAgICBUaGFua3MsDQo+PiAgICAg
SmltDQo+Pg0KPj4gICAgIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPj4gICAgICpGcm9tOiogSmlt
IFBhbGxhZGlubyA8amltQGdhcmRldHRvZW5naW5lZXJpbmcuY29tDQo+PiAgICAgPG1haWx0
bzpqaW1AZ2FyZGV0dG9lbmdpbmVlcmluZy5jb20+Pg0KPj4gICAgICpTZW50OiogV2VkbmVz
ZGF5LCBGZWJydWFyeSAyLCAyMDIyIDEwOjQ0IEFNDQo+PiAgICAgKlRvOiogTWFyY3VzIEQu
IExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbQ0KPj4gICAgIDxtYWlsdG86cGF0Y2h2
b25icmF1bkBnbWFpbC5jb20+PjsgdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4+ICAg
ICA8bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiA8dXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20NCj4+ICAgICA8bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
Pj4NCj4+ICAgICAqU3ViamVjdDoqIFJlOiBbVVNSUC11c2Vyc10gUmU6IFRpbWVkIENvbW1h
bmRzIE5vdCBXb3JraW5nDQo+PiAgICAgQ29ycmVjdCAtLSBJIGFtIHVzaW5nIHRoZSBzdG9j
ayBGUEdBIGltYWdlIGZvciB0aGUgRTMyMCBhbmQgdGhlIE4zMjAuDQo+Pg0KPj4gICAgIFRo
YW5rcywNCj4+ICAgICBKaW0NCj4+DQo+PiAgICAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+PiAg
ICAgKkZyb206KiBNYXJjdXMgRC4gTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29tDQo+
PiAgICAgPG1haWx0bzpwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4+DQo+PiAgICAgKlNlbnQ6
KiBXZWRuZXNkYXksIEZlYnJ1YXJ5IDIsIDIwMjIgMTA6MzkgQU0NCj4+ICAgICAqVG86KiBK
aW0gUGFsbGFkaW5vIDxqaW1AZ2FyZGV0dG9lbmdpbmVlcmluZy5jb20NCj4+ICAgICA8bWFp
bHRvOmppbUBnYXJkZXR0b2VuZ2luZWVyaW5nLmNvbT4+OyB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQ0KPj4gICAgIDxtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IDx1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPj4gICAgIDxtYWlsdG86dXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20+Pg0KPj4gICAgICpTdWJqZWN0OiogUmU6IFtVU1JQLXVzZXJzXSBS
ZTogVGltZWQgQ29tbWFuZHMgTm90IFdvcmtpbmcNCj4+ICAgICBPbiAyMDIyLTAyLTAyIDEw
OjIxLCBKaW0gUGFsbGFkaW5vIHdyb3RlOg0KPj4+ICAgICBUaGFua3MgTWFyY3VzLiBQbGVh
c2UgbGV0IG1lIGtub3cgaWYgUiZEIGNvbWVzIGJhY2sgd2l0aA0KPj4+ICAgICBhbnl0aGlu
Zy4gSSdtIGF0IGEgYml0IG9mIGEgbG9zcyAuIC4gLg0KPj4+DQo+Pj4gICAgIFRoYW5rcywN
Cj4+PiAgICAgSmltDQo+Pj4NCj4+PiAgICAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+Pj4NCj4+
ICAgICBKdXN0IHRvIGNsYXJpZnktLXRoaXMgaXMgd2l0aCB0aGUgc3RvY2sgRlBHQSBpbWFn
ZSwgY29ycmVjdD8NCj4+DQo+Pg0KPj4gICAgIF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQo+PiAgICAgVVNSUC11c2VycyBtYWlsaW5nIGxpc3Qg
LS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4+ICAgICA8bWFpbHRvOnVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tPg0KPj4gICAgIFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4+ICAgICA8bWFpbHRv
OnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tPg0KPj4NCj4+DQo+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4gVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QgLS11c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSAgPG1haWx0bzp1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4NCj4+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG91c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbSAgPG1haWx0bzp1c3Jw
LXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbT4NCg==
--------------L06Pv2MfWlcxnMKoBoFleWOa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html data-lt-installed=3D"true">
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body spellcheck=3D"false" data-gramm=3D"false">
    <p>For reference, I've done it over again with the latest commits
      from the UHD-4.0=C2=A0 and UHD-3.15.LTS branches.</p>
    <p><br>
    </p>
    <p>Creating the usrp device with: ...<br>
      [INFO] [UHD] linux; Clang version 13.0.0 ; Boost_107400;
      UHD_4.0.0.0-240-gb38c9d83<br>
      [INFO] [X300] X300 initialization sequence...<br>
      [INFO] [X300] Maximum frame size: 8000 bytes.<br>
      [INFO] [X300] Radio 1x clock: 200 MHz<br>
      Using Device: Single USRP:<br>
      =C2=A0 Device: X-Series Device<br>
      =C2=A0 Mboard 0: X310<br>
      =C2=A0 RX Channel: 0<br>
      =C2=A0=C2=A0=C2=A0 RX DSP: 0<br>
      =C2=A0=C2=A0=C2=A0 RX Dboard: A<br>
      =C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX<br>
      =C2=A0 RX Channel: 1<br>
      =C2=A0=C2=A0=C2=A0 RX DSP: 1<br>
      =C2=A0=C2=A0=C2=A0 RX Dboard: B<br>
      =C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX<br>
      =C2=A0 TX Channel: 0<br>
      =C2=A0=C2=A0=C2=A0 TX DSP: 0<br>
      =C2=A0=C2=A0=C2=A0 TX Dboard: A<br>
      =C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX<br>
      =C2=A0 TX Channel: 1<br>
      =C2=A0=C2=A0=C2=A0 TX DSP: 1<br>
      =C2=A0=C2=A0=C2=A0 TX Dboard: B<br>
      =C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX<br>
      <br>
      <br>
      Testing support for timed commands on this hardware... pass<br>
      <br>
      Perform fast readback of registers:<br>
      =C2=A0Difference between paired reads: 1060.659100 us<br>
      <br>
      Testing control timed command:<br>
      =C2=A0Span=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 100000.000000 us<br>
      =C2=A0Now=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 249431.750000 us<br=
>
      =C2=A0Response 1: 250515.950000 us<br>
      =C2=A0Response 2: 251521.850000 us<br>
      =C2=A0Difference of response time 1: -98915.800000 us<br>
      =C2=A0Difference of response time 2: -197909.900000 us<br>
      =C2=A0Difference between actual and expected time delta: -98994.100=
000
      us<br>
      <br>
      About to start streaming using timed command:<br>
      =C2=A0Received packet: 100 samples, 0 full secs, 0.359452 frac secs=
<br>
      =C2=A0Stream time was: 0 full secs, 0.359452 frac secs<br>
      =C2=A0Difference between stream time and first packet: 0.000000 us<=
br>
      <br>
      Done!<br>
      <br>
      <br>
      Creating the usrp device with: ...<br>
      [INFO] [UHD] linux; Clang version 13.0.0 ; Boost_107400;
      UHD_3.15.0.0-74-ge35f66e8<br>
      [INFO] [X300] X300 initialization sequence...<br>
      [INFO] [X300] Maximum frame size: 8000 bytes.<br>
      [INFO] [X300] Radio 1x clock: 200 MHz<br>
      [INFO] [GPS] No GPSDO found<br>
      [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
      0xF1F0D00000000000)<br>
      [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1309 MB/s)<br>
      [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1315 MB/s)<br>
      [INFO] [0/Radio_0] Initializing block control (NOC ID:
      0x12AD100000000001)<br>
      [INFO] [0/Radio_1] Initializing block control (NOC ID:
      0x12AD100000000001)<br>
      [INFO] [0/DDC_0] Initializing block control (NOC ID:
      0xDDC0000000000000)<br>
      [INFO] [0/DDC_1] Initializing block control (NOC ID:
      0xDDC0000000000000)<br>
      [INFO] [0/DUC_0] Initializing block control (NOC ID:
      0xD0C0000000000000)<br>
      [INFO] [0/DUC_1] Initializing block control (NOC ID:
      0xD0C0000000000000)<br>
      Using Device: Single USRP:<br>
      =C2=A0 Device: X-Series Device<br>
      =C2=A0 Mboard 0: X310<br>
      =C2=A0 RX Channel: 0<br>
      =C2=A0=C2=A0=C2=A0 RX DSP: 0<br>
      =C2=A0=C2=A0=C2=A0 RX Dboard: A<br>
      =C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX<br>
      =C2=A0 RX Channel: 1<br>
      =C2=A0=C2=A0=C2=A0 RX DSP: 0<br>
      =C2=A0=C2=A0=C2=A0 RX Dboard: B<br>
      =C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX<br>
      =C2=A0 TX Channel: 0<br>
      =C2=A0=C2=A0=C2=A0 TX DSP: 0<br>
      =C2=A0=C2=A0=C2=A0 TX Dboard: A<br>
      =C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX<br>
      =C2=A0 TX Channel: 1<br>
      =C2=A0=C2=A0=C2=A0 TX DSP: 0<br>
      =C2=A0=C2=A0=C2=A0 TX Dboard: B<br>
      =C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX<br>
      <br>
      <br>
      Testing support for timed commands on this hardware... pass<br>
      <br>
      Perform fast readback of registers:<br>
      =C2=A0Difference between paired reads: 60.434350 us<br>
      <br>
      Testing control timed command:<br>
      =C2=A0Span=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 100000.000000 us<br>
      =C2=A0Now=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 1848964.600000 us<b=
r>
      =C2=A0Response 1: 1948964.655000 us<br>
      =C2=A0Response 2: 2048964.655000 us<br>
      =C2=A0Difference of response time 1: 0.055000 us<br>
      =C2=A0Difference of response time 2: 0.055000 us<br>
      =C2=A0Difference between actual and expected time delta: 0.000000 u=
s<br>
      <br>
      About to start streaming using timed command:<br>
      =C2=A0Received packet: 100 samples, 2 full secs, 0.155770 frac secs=
<br>
      =C2=A0Stream time was: 2 full secs, 0.155770 frac secs<br>
      =C2=A0Difference between stream time and first packet: 0.005000 us<=
br>
      <br>
      Done!<br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <p>-- <br>
    </p>
    <p><br>
    </p>
    <p>This is pretty concerning, looks like the latest commit of the
      UHD-4.0 branch has this broken as well? Timed commands at least
      used to work in UHD 4.0, but I hadn't tried in a while, and never
      with this nifty test program. I'm going to have to see if I can
      find where the breakage occurred, so I can roll back for the time
      being. <br>
    </p>
    <p><br>
    </p>
    <p>-Dustin<br>
    </p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 2/4/22 11:23, Jim Palladino wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR12MB33126BF9E653537F4BFE42CFB8299@MN2PR12MB3312.namprd12=
=2Eprod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Dustin,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Thank you for running that. So apparently, it isn't just an
        issue on my end.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Thanks,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Jim</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Dus=
tin
          Widmann <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:dw2zq=
@virginia.edu">&lt;dw2zq@virginia.edu&gt;</a><br>
          <b>Sent:</b> Friday, February 4, 2022 11:16 AM<br>
          <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@li=
sts.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> [USRP-users] Re: Timed Commands Not Working</fo=
nt>
        <div>=C2=A0</div>
      </div>
      <div>
        <p>"Hopefully, someone can try the uhd "test_timed_commands"
          example in 4.1 to..."</p>
        <p><br>
        </p>
        <p>Figure I ought to be about as good as the next somebody. <br>
        </p>
        <p>test_timed_commands output with UHD 4.1.0 and an X310</p>
        <p><br>
          Creating the usrp device with: ...<br>
          [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107800;
          UHD_4.1.0.HEAD-0-g6bd0be9c<br>
          [INFO] [X300] X300 initialization sequence...<br>
          [INFO] [X300] Maximum frame size: 8000 bytes.<br>
          [INFO] [X300] Radio 1x clock: 200 MHz<br>
          Using Device: Single USRP:<br>
          =C2=A0 Device: X-Series Device<br>
          =C2=A0 Mboard 0: X310<br>
          =C2=A0 RX Channel: 0<br>
          =C2=A0=C2=A0=C2=A0 RX DSP: 0<br>
          =C2=A0=C2=A0=C2=A0 RX Dboard: A<br>
          =C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX<br>
          =C2=A0 RX Channel: 1<br>
          =C2=A0=C2=A0=C2=A0 RX DSP: 1<br>
          =C2=A0=C2=A0=C2=A0 RX Dboard: B<br>
          =C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX<br>
          =C2=A0 TX Channel: 0<br>
          =C2=A0=C2=A0=C2=A0 TX DSP: 0<br>
          =C2=A0=C2=A0=C2=A0 TX Dboard: A<br>
          =C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX<br>
          =C2=A0 TX Channel: 1<br>
          =C2=A0=C2=A0=C2=A0 TX DSP: 1<br>
          =C2=A0=C2=A0=C2=A0 TX Dboard: B<br>
          =C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX<br>
          <br>
          <br>
          Testing support for timed commands on this hardware... pass<br>=

          <br>
          Perform fast readback of registers:<br>
          =C2=A0Difference between paired reads: 1079.015300 us<br>
          <br>
          Testing control timed command:<br>
          =C2=A0Span=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 100000.000000 us<br>=

          =C2=A0Now=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 253256.340000 u=
s<br>
          =C2=A0Response 1: 254437.230000 us<br>
          =C2=A0Response 2: 255676.840000 us<br>
          =C2=A0Difference of response time 1: -98819.110000 us<br>
          =C2=A0Difference of response time 2: -197579.500000 us<br>
          =C2=A0Difference between actual and expected time delta:
          -98760.390000 us<br>
          <br>
          About to start streaming using timed command:<br>
          =C2=A0Received packet: 100 samples, 0 full secs, 0.365935 frac =
secs<br>
          =C2=A0Stream time was: 0 full secs, 0.365935 frac secs<br>
          =C2=A0Difference between stream time and first packet: 0.000000=
 us<br>
          <br>
          Done!<br>
          <br>
          -Dustin<br>
          <br>
        </p>
        <div class=3D"x_moz-cite-prefix">On 2/3/22 08:02, Jim Palladino
          wrote:<br>
        </div>
        <blockquote type=3D"cite">
          <style type=3D"text/css" style=3D"display:none">p
	{margin-top:0;
	margin-bottom:0}</style>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Thanks, Rob. I always appreciate when you "chime in".
            Hopefully, someone can try the uhd "test_timed_commands"
            example in 4.1 to help confirm whether or not it's a problem
            with something on my end or with UHD. Marcus already
            confirmed its working for him with an N310 and UHD 3.15.</div=
>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Thanks,</div>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Jim</div>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
          <div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font
              style=3D"font-size:11pt" face=3D"Calibri, sans-serif"
              color=3D"#000000"><b>From:</b> Rob Kossler
              <a class=3D"x_moz-txt-link-rfc2396E"
                href=3D"mailto:rkossler@nd.edu" moz-do-not-send=3D"true">=
&lt;rkossler@nd.edu&gt;</a><br>
              <b>Sent:</b> Wednesday, February 2, 2022 3:26 PM<br>
              <b>To:</b> Jim Palladino <a
                class=3D"x_moz-txt-link-rfc2396E"
                href=3D"mailto:jim@gardettoengineering.com"
                moz-do-not-send=3D"true">
                &lt;jim@gardettoengineering.com&gt;</a><br>
              <b>Cc:</b> Marcus D. Leech <a
                class=3D"x_moz-txt-link-rfc2396E"
                href=3D"mailto:patchvonbraun@gmail.com"
                moz-do-not-send=3D"true">
                &lt;patchvonbraun@gmail.com&gt;</a>; <a
                class=3D"x_moz-txt-link-abbreviated moz-txt-link-freetext=
"
                href=3D"mailto:usrp-users@lists.ettus.com"
                moz-do-not-send=3D"true">
                usrp-users@lists.ettus.com</a> <a
                class=3D"x_moz-txt-link-rfc2396E"
                href=3D"mailto:usrp-users@lists.ettus.com"
                moz-do-not-send=3D"true">
                &lt;usrp-users@lists.ettus.com&gt;</a><br>
              <b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not
              Working</font>
            <div>=C2=A0</div>
          </div>
          <div>
            <div dir=3D"ltr">Hi Jim,
              <div>This sounds like a pretty big issue. I haven't chimed
                in because I couldn't say for sure if timed commands
                were working for me or not in UHD 4.1. I am using N321s
                with shared LO, so the normal commands I use for setting
                frequency aren't critical (from a timed command
                perspective) except for how the DDC/DUC might be
                handling them. In any case, once you find out the issue,
                could you please share the solution here. If I get a
                chance, I will try this on some of my devices.</div>
              <div>Rob</div>
            </div>
            <br>
            <div class=3D"x_x_gmail_quote">
              <div dir=3D"ltr" class=3D"x_x_gmail_attr">On Wed, Feb 2, 20=
22
                at 12:22 PM Jim Palladino &lt;<a
                  href=3D"mailto:jim@gardettoengineering.com"
                  class=3D"x_moz-txt-link-freetext moz-txt-link-freetext"=

                  moz-do-not-send=3D"true">jim@gardettoengineering.com</a=
>&gt;
                wrote:<br>
              </div>
              <blockquote class=3D"x_x_gmail_quote" style=3D"margin:0px 0=
px
                0px 0.8ex; border-left:1px solid rgb(204,204,204);
                padding-left:1ex">
                <div dir=3D"ltr">
                  <div
                    style=3D"font-family:Calibri,Arial,Helvetica,sans-ser=
if;
                    font-size:12pt; color:rgb(0,0,0)">
                    Just to add one more data point, I just ran
                    test_timed_commands on a different computer
                    connected to an X310 -- still UHD 4.1. I have the
                    same problem with that device where it looks like
                    timed commands are not working right.</div>
                  <div
                    style=3D"font-family:Calibri,Arial,Helvetica,sans-ser=
if;
                    font-size:12pt; color:rgb(0,0,0)">
                    <br>
                  </div>
                  <div
                    style=3D"font-family:Calibri,Arial,Helvetica,sans-ser=
if;
                    font-size:12pt; color:rgb(0,0,0)">
                    Thanks,</div>
                  <div
                    style=3D"font-family:Calibri,Arial,Helvetica,sans-ser=
if;
                    font-size:12pt; color:rgb(0,0,0)">
                    Jim</div>
                  <div
                    style=3D"font-family:Calibri,Arial,Helvetica,sans-ser=
if;
                    font-size:12pt; color:rgb(0,0,0)">
                    <br>
                  </div>
                  <hr style=3D"display:inline-block; width:98%">
                  <div id=3D"x_x_gmail-m_7375824889804353296divRplyFwdMsg=
"
                    dir=3D"ltr"><font style=3D"font-size:11pt"
                      face=3D"Calibri, sans-serif" color=3D"#000000"><b>F=
rom:</b>
                      Jim Palladino &lt;<a
                        href=3D"mailto:jim@gardettoengineering.com"
                        target=3D"_blank" class=3D"x_moz-txt-link-freetex=
t
                        moz-txt-link-freetext" moz-do-not-send=3D"true">j=
im@gardettoengineering.com</a>&gt;<br>
                      <b>Sent:</b> Wednesday, February 2, 2022 10:44 AM<b=
r>
                      <b>To:</b> Marcus D. Leech &lt;<a
                        href=3D"mailto:patchvonbraun@gmail.com"
                        target=3D"_blank" class=3D"x_moz-txt-link-freetex=
t
                        moz-txt-link-freetext" moz-do-not-send=3D"true">p=
atchvonbraun@gmail.com</a>&gt;;
                      <a href=3D"mailto:usrp-users@lists.ettus.com"
                        target=3D"_blank" class=3D"x_moz-txt-link-freetex=
t
                        moz-txt-link-freetext" moz-do-not-send=3D"true">
                        usrp-users@lists.ettus.com</a> &lt;<a
                        href=3D"mailto:usrp-users@lists.ettus.com"
                        target=3D"_blank" class=3D"x_moz-txt-link-freetex=
t
                        moz-txt-link-freetext" moz-do-not-send=3D"true">u=
srp-users@lists.ettus.com</a>&gt;<br>
                      <b>Subject:</b> Re: [USRP-users] Re: Timed
                      Commands Not Working</font>
                    <div>=C2=A0</div>
                  </div>
                  <div dir=3D"ltr">
                    <div
                      style=3D"font-family:Calibri,Arial,Helvetica,sans-s=
erif;
                      font-size:12pt; color:rgb(0,0,0)">
                      Correct -- I am using the stock FPGA image for the
                      E320 and the N320.</div>
                    <div
                      style=3D"font-family:Calibri,Arial,Helvetica,sans-s=
erif;
                      font-size:12pt; color:rgb(0,0,0)">
                      <br>
                    </div>
                    <div
                      style=3D"font-family:Calibri,Arial,Helvetica,sans-s=
erif;
                      font-size:12pt; color:rgb(0,0,0)">
                      Thanks,
                      <div>Jim</div>
                      <div><br>
                      </div>
                    </div>
                    <hr style=3D"display:inline-block; width:98%">
                    <div
                      id=3D"x_x_gmail-m_7375824889804353296x_divRplyFwdMs=
g"
                      dir=3D"ltr"><font style=3D"font-size:11pt"
                        face=3D"Calibri, sans-serif" color=3D"#000000"><b=
>From:</b>
                        Marcus D. Leech &lt;<a
                          href=3D"mailto:patchvonbraun@gmail.com"
                          target=3D"_blank" class=3D"x_moz-txt-link-freet=
ext
                          moz-txt-link-freetext" moz-do-not-send=3D"true"=
>patchvonbraun@gmail.com</a>&gt;<br>
                        <b>Sent:</b> Wednesday, February 2, 2022 10:39
                        AM<br>
                        <b>To:</b> Jim Palladino &lt;<a
                          href=3D"mailto:jim@gardettoengineering.com"
                          target=3D"_blank" class=3D"x_moz-txt-link-freet=
ext
                          moz-txt-link-freetext" moz-do-not-send=3D"true"=
>jim@gardettoengineering.com</a>&gt;;
                        <a href=3D"mailto:usrp-users@lists.ettus.com"
                          target=3D"_blank" class=3D"x_moz-txt-link-freet=
ext
                          moz-txt-link-freetext" moz-do-not-send=3D"true"=
>
                          usrp-users@lists.ettus.com</a> &lt;<a
                          href=3D"mailto:usrp-users@lists.ettus.com"
                          target=3D"_blank" class=3D"x_moz-txt-link-freet=
ext
                          moz-txt-link-freetext" moz-do-not-send=3D"true"=
>usrp-users@lists.ettus.com</a>&gt;<br>
                        <b>Subject:</b> Re: [USRP-users] Re: Timed
                        Commands Not Working</font>
                      <div>=C2=A0</div>
                    </div>
                    <div>
                      <div>On 2022-02-02 10:21, Jim Palladino wrote:<br>
                      </div>
                      <blockquote type=3D"cite">
                        <div
                          style=3D"font-family:Calibri,Arial,Helvetica,sa=
ns-serif;
                          font-size:12pt; color:rgb(0,0,0)">
                          Thanks Marcus. Please let me know if R&amp;D
                          comes back with anything. I'm at a bit of a
                          loss . . .=C2=A0</div>
                        <div
                          style=3D"font-family:Calibri,Arial,Helvetica,sa=
ns-serif;
                          font-size:12pt; color:rgb(0,0,0)">
                          <br>
                        </div>
                        <div
                          style=3D"font-family:Calibri,Arial,Helvetica,sa=
ns-serif;
                          font-size:12pt; color:rgb(0,0,0)">
                          Thanks,</div>
                        <div
                          style=3D"font-family:Calibri,Arial,Helvetica,sa=
ns-serif;
                          font-size:12pt; color:rgb(0,0,0)">
                          Jim</div>
                        <div
                          style=3D"font-family:Calibri,Arial,Helvetica,sa=
ns-serif;
                          font-size:12pt; color:rgb(0,0,0)">
                          <br>
                        </div>
                        <hr style=3D"display:inline-block; width:98%">
                        <br>
                      </blockquote>
                      Just to clarify--this is with the stock FPGA
                      image, correct?<br>
                      <br>
                      <br>
                    </div>
                  </div>
                </div>
                _______________________________________________<br>
                USRP-users mailing list -- <a
                  href=3D"mailto:usrp-users@lists.ettus.com"
                  target=3D"_blank" class=3D"x_moz-txt-link-freetext
                  moz-txt-link-freetext" moz-do-not-send=3D"true">
                  usrp-users@lists.ettus.com</a><br>
                To unsubscribe send an email to <a
                  href=3D"mailto:usrp-users-leave@lists.ettus.com"
                  target=3D"_blank" class=3D"x_moz-txt-link-freetext
                  moz-txt-link-freetext" moz-do-not-send=3D"true">
                  usrp-users-leave@lists.ettus.com</a><br>
              </blockquote>
            </div>
          </div>
          <br>
          <fieldset class=3D"x_moz-mime-attachment-header"></fieldset>
          <pre class=3D"x_moz-quote-pre">________________________________=
_______________
USRP-users mailing list -- <a class=3D"x_moz-txt-link-abbreviated moz-txt=
-link-freetext" href=3D"mailto:usrp-users@lists.ettus.com" moz-do-not-sen=
d=3D"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"x_moz-txt-link-abbreviated mo=
z-txt-link-freetext" href=3D"mailto:usrp-users-leave@lists.ettus.com" moz=
-do-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------L06Pv2MfWlcxnMKoBoFleWOa--

--------------8nTIzjXoDRv090MWuTowHaeJ
Content-Type: application/pgp-keys; name="OpenPGP_0xCD731811BAE2BAF5.asc"
Content-Disposition: attachment; filename="OpenPGP_0xCD731811BAE2BAF5.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
sFzBQeU7
=3DcOkO
-----END PGP PUBLIC KEY BLOCK-----

--------------8nTIzjXoDRv090MWuTowHaeJ--

--------------K0cQUitWvdQiuzQyT3uATtvC--

--------------boBeSihuineW6hLLbxTXmSvG
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEZTqEZfH+oyM3hkmvzXMYEbriuvUFAmH9bwcFAwAAAAAACgkQzXMYEbriuvXs
PhAAiBAp3Guy/CAqeXnx/zeez0Ld0nucDALUnXy7MLUH3rEUpY/VX2emFRAt18PhLXq4HktU9419
fwgfu7RaiWqnR1knE8Cyq8ACrfgdLLADVYHuU3Oa/lbFhMl9eACKLZk9rDRhPPKp9Q/T//2LvrxA
c3OH0qGnvZI2i5drM4OyfUzmq2J2vhXOB0Q4yEjlpTqPypbuJgf8/P347AkK4MtGgM33I3faGumA
JxGKsmWc6Yyj4AD8mrMUMsHGyjFOr8uJGgZhvt2yt+TQzxRpnIysmeOKC6DJirxwzq0W/4jhW3qC
1EVd8rtEYmy6JRH14jXloX+SEf/AzXWLNa0bRWw9jlmqnQA0d+c/tOscGp/XLWqyYEaLgmhFT+jz
XqgUiMhcsUjb4qxcGuzPRTPyukCTxqNHF/L+sLUgZmbDhVP5jmA1UV75JHfcgunyk/qr2waB9Ewd
befXgATIt2CW+LpPVWOHyAxfs25k6T7IZMqSBPoq8ASChisITl4bc0icFoXpTx/cwkuAGm6urX52
EzQquRTa4O29AAVkfydXHMFcW+xhqWEmTuEFby19llwHJJOBEdsZRqz50mFu7xvRbXlC0XfAZ+mN
UM2FSrNqXqkN2oM+s1wCivIVxe3uDL+l6IM0C++w0K5u4Y8B1QOF1S6Px4CzAYxIbFtVSkrANdhU
TKQ=
=YeZG
-----END PGP SIGNATURE-----

--------------boBeSihuineW6hLLbxTXmSvG--

--===============5327386809005118477==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5327386809005118477==--
