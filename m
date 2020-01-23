Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC8D1468A1
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jan 2020 14:02:40 +0100 (CET)
Received: from [::1] (port=45938 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iuc7y-0001uO-Kl; Thu, 23 Jan 2020 08:02:30 -0500
Received: from smtpout02-ext2.partage.renater.fr ([194.254.241.33]:34386
 helo=smtpout02-ext1.partage.renater.fr)
 by mm2.emwd.com with esmtp (Exim 4.92)
 (envelope-from <Thomas.Harder@oca.eu>) id 1iuc7u-0001qx-Dy
 for usrp-users@lists.ettus.com; Thu, 23 Jan 2020 08:02:26 -0500
Received: from zmtaauth02.partage.renater.fr (zmtaauth02.partage.renater.fr
 [194.254.241.25])
 by smtpout20.partage.renater.fr (Postfix) with ESMTP id 05D49BFD24;
 Thu, 23 Jan 2020 14:01:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zmtaauth02.partage.renater.fr (Postfix) with ESMTP id F0671A00DD;
 Thu, 23 Jan 2020 14:01:42 +0100 (CET)
X-Virus-Scanned: amavisd-new at zmtaauth02.partage.renater.fr
Received: from zmtaauth02.partage.renater.fr ([127.0.0.1])
 by localhost (zmtaauth02.partage.renater.fr [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id 04Dnc_YICrM7; Thu, 23 Jan 2020 14:01:42 +0100 (CET)
Received: from [IPv6:::ffff:10.252.11.151] (unknown [194.254.241.250])
 by zmtaauth02.partage.renater.fr (Postfix) with ESMTPA id ADCA8A00B2;
 Thu, 23 Jan 2020 14:01:42 +0100 (CET)
MIME-Version: 1.0
To: Sam Reiter <sam.reiter@ettus.com>
Date: Thu, 23 Jan 2020 14:01:44 +0100
Importance: normal
X-Priority: 3
In-Reply-To: <CANf970asQNV2frUbYM9dRgPFX880oMeXajOVehPb+EktXzYw+A@mail.gmail.com>
References: <20200114110743.34AAD1400E0@zmtaauth01.partage.renater.fr>
 <BN6PR19MB1635C290AC93638924D3755AA4340@BN6PR19MB1635.namprd19.prod.outlook.com>
 <CANf970ZmJ0PNwN2KdiXHifn3Nfn0Mr7SRTkfM6UuOKoQgcrhjw@mail.gmail.com>
 <20200121145408.E842E1400B6@zmtaauth01.partage.renater.fr>
 <CANf970asQNV2frUbYM9dRgPFX880oMeXajOVehPb+EktXzYw+A@mail.gmail.com>
Content-Type: multipart/mixed;
 boundary="_44FB597F-7F27-4DD0-8773-1773EF551A6B_"
Message-Id: <20200123130142.ADCA8A00B2@zmtaauth02.partage.renater.fr>
Subject: Re: [USRP-users] using GPIO output to trigger external RF switches
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Thomas Harder via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Thomas Harder <Thomas.Harder@oca.eu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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

--_44FB597F-7F27-4DD0-8773-1773EF551A6B_
Content-Type: multipart/alternative;
	boundary="_14050A5B-CE26-4F92-AB26-E0E2A45594F1_"

--_14050A5B-CE26-4F92-AB26-E0E2A45594F1_
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"

U2FtLA0KSSBzZWUgd2FudCB5b3UgbWVhbiBidXQgaW4gbXkgY29kZSBJIHNldCB0aGUgY2Fycmll
ciBmcmVxIG9uY2Ugd2l0aCBzZXRfdHhfZnJlcSAoPGNhcnJpZXJfZml4PikuIFRoZW4gSSByZWFk
IHRoZSBJIFEgZGF0YSBmcm9tIGEgLmRhdCBmaWxlIGludG8gdGhlIGJ1ZmZlciBhbmQgc3RyZWFt
IHRoaXMgYnVmZmVyIGNvbnRpbnVvdXNseSBpbiBhIHdoaWxlIGxvb3AuDQpUaGUgZnJlcXVlbmN5
IGhvcHBpbmcgaXMgZG9uZSB0aG91Z2ggbXkgSVEgbW9kdWxhdGlvbjoNCkkgPSBjb3Mob21lZ2Fu
ICogdCkNClE9IHNpbihvbWVnYW4qdCkNCndpdGggZml4ZWQgb21lZ2EgZm9yICBjZXJ0YWluIHBl
cmlvZHMgbGlrZSBvbWVnYW4gZm9yIDA8dDx0MSAgYW5kIG9tZWdhbisxIGZvciB0MTx0PHQyDQpJ
biB0aGlzIHdheSBJIGFtIG1hbmFnaW5nIHRvIGhvcCBiZXR3ZWVuIGZyZXF1ZW5jaWVzIGluIHRo
ZSBiYW5kd2lkdGggb2YgMTYwTUh6IGFyb3VuZCBteSBjYXJyaWVyIGZyZXF1ZW5jeSAoY29zIChv
bWVnYWNhcnJpZXIqdCAtb21lZ2FuKnQpKXdpdGggYSB0cmFuc2l0aW9uIHRpbWUgb2YgYXJvdW5k
IDIwbnMgYmV0d2VlbiBkaWZmZXJlbnQgZnJlcXVlbmNpZXMuDQpCdXQgSSB3b3VsZCBsaWtlIHRv
IGhhdmUgYSB0cmlnZ2VyIHNpZ25hbCwgd2hlbiB0aGUgVVNSUCBpcyBob3BwaW5nIGJldHdlZW4g
dGhlc2UgZnJlcXVlbmNpZXMgdG8gZHJpdmUgZnV0aGVyIGV4dGVybmFsIGluc3RydW1lbnRzIHdp
dGggdGhpcyB0cmlnZ2VyIG91dHB1dC4NCg0KRG8geW91IGhhdmUgYW4gaWRlYSBob3cgSSBjb3Vs
ZCBjcmVhdGUgc3VjaCBhIHRyaWdnZXIgc2lnbmFsPw0KDQpUaG9tYXMgSGFyZGVyDQoNCkZyb206
IFNhbSBSZWl0ZXINClNlbnQ6IFR1ZXNkYXksIEphbnVhcnkgMjEsIDIwMjAgNTozNCBQTQ0KVG86
IFRob21hcyBIYXJkZXINCkNjOiBKZWZmIFM7IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQpT
dWJqZWN0OiBSZTogW1VTUlAtdXNlcnNdIHVzaW5nIEdQSU8gb3V0cHV0IHRvIHRyaWdnZXIgZXh0
ZXJuYWwgUkYgc3dpdGNoZXMNCg0KVGhvbWFzLA0KDQpJIGJlbGlldmUgSSBtaXN0eXBlZCBpbiBt
eSBpbml0aWFsIHJlc3BvbnNlIHRvIHNwZWNpZnkgYSBUWCByYXRlIGNoYW5nZSByYXRoZXIgdGhh
biBmcmVxdWVuY3kgY2hhbmdlLiBJdCBtaWdodCBiZSBtb3JlIGNsZWFyIGlmIEkgaW5jbHVkZSBz
b21lIHF1aWNrIHBzZXVkb2NvZGUgZGVzY3JpYmluZyB3aGF0IEknbSB0YWxraW5nIGFib3V0Og0K
DQp0dW5lX3RpbWUgPSB1c3JwLT5nZXRfdGltZV9ub3coKSArIHVoZDo6dGltZV9zcGVjdF90KDAu
MSnCoMKgwqDCoCAvL1NldCBhIGZ1dHVyZSB0aW1lIHRvIGV4ZWN1dGUgY29tbWFuZHMgYmFzZWQg
b24gdGhlIFVTUlAncyBjdXJyZW50IHNlbnNlIG9mIHRpbWUNCnNldF9jb21tYW5kX3RpbWUodHVu
ZV90aW1lKcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8vQ29tbWFu
ZHMgYWZ0ZXIgdGhpcyBwb2ludCB3aWxsIHdhaXQgdG8gZXhlY3V0ZSB1bnRpbCB0dW5lX3RpbWUN
CnNldF90eF9mcmVxKDxIT1BfRlJFUT4pwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIC8vVGhpcyB3aWxsIGJlIGV4ZWN1dGVkIGF0IHRoZSBjb21tYW5k
IHRpbWUNCnNldF9ncGlvX2F0dHIoPEhJR0g+KcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCDCoCAvL1RoaXMgd2lsbCBiZSBleGVj
dXRlZCBhdCB0aGUgY29tbWFuZCB0aW1lDQpjbGVhcl9jb21tYW5kX3RpbWUoKcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgwqAgwqAgwqDCoCDCoCDCoCAvL0NsZWFy
IHRoZSBjb21tYW5kIHRpbWUsIHN1YnNlcXVlbnQgY29tbWFuZHMgd2lsbCBleGVjdXRlIEFTQVAg
d2hlbiB0aGV5IG1ha2UgaXQgdG8gdGhlIHJhZGlvDQpzbGVlcCguMDEpIMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoMKgIMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgwqDCoCAvL1NsZWVwIGZvciBzb21lIGFyYml0cmFyeSB0aW1lLiBUaGlz
IHdpbGwgcm91Z2hseSBkZXRlcm1pbmUgR1BJTyBwdWxzZSB3aWR0aA0Kc2V0X2dwaW9fYXR0cig8
TE9XPinCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgwqAgwqAg
wqAgwqAgwqAgLy9SZXR1cm4gR1BJTyBzdGF0ZSB0byBsb3cuIFRoaXMgd2lsbCBoYXBwZW4gYXMg
c29vbiBhcyB0aGUgcmFkaW8gZ2V0cyBpdCwgYnV0IHlvdSBjb3VsZCBhbHNvIHNldCBpdCB1cCBh
cyBhIHRpbWVkIGNvbW1hbmQNCg0KVGhpcyBhcHByb2FjaCB3b3VsZCBub3QgdXNlIEFUUi4gSXQg
dXNlcyB0aW1lZCBjb21tYW5kcyB0byBzeW5jaHJvbml6ZSB5b3VyIFRYIGZyZXEgY2hhbmdlIHdp
dGggdGhlIEdQSU8gc3RhdGUgY2hhbmdlLiBUaGVyZSBhcmUgYWxtb3N0IGNlcnRhaW5seSBtb3Jl
IGVmZmljaWVudCB3YXlzIHRvIHBsYXkgd2l0aCB0aGUgdGltZSBzZXR0aW5nIGFzIHRvIG1pbmlt
aXplIHRoZSB0aW1lIGJldHdlZW4gaG9wcywgYnV0IHlvdSBnZXQgdGhlIGlkZWEuIEJhc2VkIG9u
IGhvdyB5b3UncmUgaG9wcGluZywgeW91IG1pZ2h0IGJlbmVmaXQgZnJvbSBjaGFuZ2luZyB0aGUg
dHVuaW5nIHBvbGljeSBzbyB0aGF0IHlvdSBvbmx5IGNoYW5nZSBmcmVxdWVuY3kgaW4gRFNQLCBy
YXRoZXIgdGhhbiByZXR1bmluZyB0aGUgTE86DQoNCmh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21h
bnVhbC9zdHJ1Y3R1aGRfMV8xdHVuZV9fcmVxdWVzdF9fdC5odG1sDQoNClNhbSBSZWl0ZXINCg0K
DQpPbiBUdWUsIEphbiAyMSwgMjAyMCBhdCA4OjU0IEFNIFRob21hcyBIYXJkZXIgPFRob21hcy5I
YXJkZXJAb2NhLmV1PiB3cm90ZToNClRoYW5rIHlvdSBKZWZmIGFuZCBTYW0sDQpJIGZvdW5kIG5v
dyBhbHNvIHRoZSBncGlvLmNwcCBleGFtcGxlLiBSZWFsbHkgaGVscGZ1bCB0byBnZXQgZmFtaWxp
YXIgd2l0aCBHUElPLg0KwqANCj4+IFRvIGFjY29tcGxpc2ggd2hhdCB5b3UncmUgdGFsa2luZyBh
Ym91dCwgSSB0aGluayB5b3UnZCBqdXN0IG5lZWQgdG8gdXNlIHRpbWVkIGNvbW1hbmRzID4+b24g
Ym90aCBzZXRfdHhfcmF0ZSgpIGFuZCBzZXRfZ3Bpb19hdHRyKCkuIElmIHRoZXNlIGFyZSBzZXQg
dG8gZXhlY3V0ZSBzaW11bHRhbmVvdXNseSwgdGhlID4+R1BJTyBsaW5lIHlvdSBzZXQgd2lsbCBn
byBoaWdoIG9uIHRoZSBzYW1lIGNsb2NrIGN5Y2xlIGFzIHRoZSBMTyByZXR1bmUuDQrCoA0KSW4g
ZmFjdCBpbiBteSBjb2RlIHdoaWNoIGlzIGJhc2VkIG9uIHRoZSDigJx0eF9zYW1wbGVzX2Zyb21f
ZmlsZeKAnSBleGFtcGxlIEkgc3RhcnQgdHJhbnNtaXR0aW5nIG15IGRhdGEgaW4gdGhlIGZpbGUg
aW4gdGhlIGZ1dHVyZSB3aXRoIHR4X21ldGFkYXRhX3TCoCB0aW1lIHNwZWNpZmljYXRpb24gYW5k
IHdpdGggdGltZWQgY29tbWFuZHMgSSBzZXQgc2V0X2dwaW9fYXR0cigpIHRvIHRoZSBzYW1lIHBv
aW50IGluIGZ1dHVyZS4NCkJ1dCB0aGlzIGdpdmVzIG1lIGp1c3QgMSBvdXRwdXQgcHVsc2UgaW4g
R1BJTyB3aGF0IGlzIG5vdCBzdWZmaWNpZW50IGZvciBteSBhcHBsaWNhdGlvbi4NCsKgDQpJIGFt
IHRyYW5zbWl0dGluZ8KgIGluIGNvbnRpbnVvdXMgbW9kZSAoYSBmaXhlZCBtb2R1bGF0aW9uIGlu
IGEgd2hpbGUgbG9vcCkgYW5kIG15IGNlbnRlciBmcmVxdWVuY3kgc3RheXMgZml4IGR1cmluZyB0
aGUgd2hvbGUgdHJhbnNtaXNzaW9uIHdoZXJlYXMgd2l0aCBteSBkYXRhIGluIHRoZSBmaWxlIEkg
YW0gbW9kdWxhdGluZyB0aGUgY2VudGVyIGZyZXF1ZW5jeSB0byBkaXNjcmV0ZSBmcmVxdWVuY2ll
cyBpbiB0aGUgd2hvbGUgYmFuZHdpZHRoIG9mIDE2ME1Iei4gSSBtZWFzdXJlZCBhIHRyYW5zaXRp
b24gdGltZSBvZiB0aGUgdXNycCDCoG9mIGFyb3VuZCAyMG5zIGJldHdlZW4gZGlmZmVyZW50IGZy
ZXF1ZW5jaWVzIGluIG15IG1vZHVsYXRpb24uDQpUbyBiZSBhYmxlIHRvIHBvc3Rwcm9jZXNzIG15
IFJGIHNpZ25hbCBJIHdvdWxkIGxpa2UgdG8gaGF2ZSBhIHB1bHNlIGVhY2ggdGltZSB0aGUgdHgt
ZnJlcXVlbmN5IGlzIGNoYW5naW5nLg0KwqANCkFzIHRoZSBBVFIgaXMganVzdCBzaG93aW5nIGlm
IHRoZSB1c3JwIGlzIHRyYW5zbWl0dGluZywgcmVjZWl2aW5nIG9yIGlkbGUgaXQgaXMgbm90IHJl
YWxseSBoZWxwZnVsDQpBbmQgcHV0dGluZyBzZXRfZ3Bpb19hdHRyKCkgaW4gdGhlIHdoaWxlIGxv
b3AgZm9yIG15IGNvbnRpbnVvdXMgdHJhbnNtaXNzaW9uIGlzIHNsb3dpbmcgZG93biB0aGUgc3Ry
ZWFtaW5nIGFuZCBjYXVzZXMgdW5kZXJydW5zLg0KwqANCkRvIHlvdSB0aGluayBvZiBhbnkgb3Ro
ZXIgc29sdXRpb24gdG8gZ2V0IGEgcHVsc2UgZWFjaCB0aW1lIHRoZSB0cmFuc21pc3Npb24gZnJl
cXVlbmN5IG9mIHRoZSBVU1JQIGlzIGNoYW5naW5nPw0KwqANClRob21hcw0KwqANCkZyb206IFNh
bSBSZWl0ZXINClNlbnQ6IFR1ZXNkYXksIEphbnVhcnkgMTQsIDIwMjAgNjo0NCBQTQ0KVG86IEpl
ZmYgUw0KQ2M6IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tOyBUaG9tYXMgSGFyZGVyDQpTdWJq
ZWN0OiBSZTogW1VTUlAtdXNlcnNdIHVzaW5nIEdQSU8gb3V0cHV0IHRvIHRyaWdnZXIgZXh0ZXJu
YWwgUkYgc3dpdGNoZXMNCsKgDQpUaG9tYXMsDQrCoA0KVG8gYWNjb21wbGlzaCB3aGF0IHlvdSdy
ZSB0YWxraW5nIGFib3V0LCBJIHRoaW5rIHlvdSdkIGp1c3QgbmVlZCB0byB1c2UgdGltZWQgY29t
bWFuZHMgb24gYm90aCBzZXRfdHhfcmF0ZSgpIGFuZCBzZXRfZ3Bpb19hdHRyKCkuIElmIHRoZXNl
IGFyZSBzZXQgdG8gZXhlY3V0ZSBzaW11bHRhbmVvdXNseSwgdGhlIEdQSU8gbGluZSB5b3Ugc2V0
IHdpbGwgZ28gaGlnaCBvbiB0aGUgc2FtZSBjbG9jayBjeWNsZSBhcyB0aGUgTE8gcmV0dW5lLg0K
wqANClNhbQ0KwqANCsKgDQpPbiBUdWUsIEphbiAxNCwgMjAyMCBhdCA1OjU5IEFNIEplZmYgUyB2
aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOg0KVGhvbWFz
LA0KwqANCkkgYW0gbG9va2luZyBhdCBHUElPIHJpZ2h0IG5vdyBhcyB3ZWxsLsKgIEFzIHRvIHlv
dXIgcXVlc3Rpb24gIzIgb24gZXhhbXBsZXMsIEkgY29tcGlsZWQgYW5kIGFtIGFibGUgdG8gcnVu
IHRoZSBleGFtcGxlIEkgZm91bmQgaW4gdGhlIFVIRCBzb2Z0d2FyZToNCsKgDQp1aGQvaG9zdC9l
eGFtcGxlcy9ncGlvLmNwcA0KwqANCkkgYW0gYWJsZSB0byBzZXQgaW5kaXZpZHVhbCBkYXRhIGxp
bmVzIHRvIGV4cGVyaW1lbnQgd2l0aCAoYW5kIGV2ZW50dWFsbHkgdXNlIGFzIGEgcm9hZG1hcCBm
b3IgbXkgZGV2ZWxvcG1lbnQpIHVzaW5nIGNvbW1hbmRzIGxpa2U6DQrCoA0KLi9ncGlvIC0tZHdl
bGwgMCAtLWJpdGJhbmcgLS1kZHIgMHgwMGZmIC0tb3V0IDB4MDA1NQ0KwqANCndoaWNoIEkgdmVy
aWZpZWQgd29ya3MgdXNpbmcgYSBsb2dpYyBhbmFseXplci7CoCBJIGV2ZW50dWFsbHkgd2FudCB0
byB0cnkgdG8gY3JlYXRlIGEga2V5aW5nIGxvb3AsIGJ1dCB0aGF0IG1heSB0YWtlIHNvbWUgRlBH
QSBjb250cm9sICg/KS4NCsKgDQpKZWZmDQrCoA0KwqANCg0KRnJvbTogVVNSUC11c2VycyA8dXNy
cC11c2Vycy1ib3VuY2VzQGxpc3RzLmV0dHVzLmNvbT4gb24gYmVoYWxmIG9mIFRob21hcyBIYXJk
ZXIgdmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0KU2VudDogVHVl
c2RheSwgSmFudWFyeSAxNCwgMjAyMCA1OjA3IEFNDQpUbzogdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20gPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0KU3ViamVjdDogW1VTUlAtdXNlcnNd
IHVzaW5nIEdQSU8gb3V0cHV0IHRvIHRyaWdnZXIgZXh0ZXJuYWwgUkYgc3dpdGNoZXMgDQrCoA0K
SGksDQpJIGFtIGNvbnRpbnVvdXNseSB0cmFuc21pdHRpbmcgYSB3YXZlZm9ybSB3aXRoIHNldmVy
YWwgUkYgd2l0aCAyMDBNU1BTIHdpdGggbXkgVVNSUCBYMzEwIChtb2RpZmllZCBjb2RlIG9uIHRo
ZSBiYXNpcyBvZiDigJx0eF9zYW1wbGVzX2Zyb21fZmlsZS5jcHDigJ0gd2l0aCBhIHdhdmVmb3Jt
IGluIGEgLmRhdCBmaWxlKS4gSSB3b3VsZCBsaWtlIHRvIGdldCBhIHRyaWdnZXIgc2lnbmFsIGZy
b20gdGhlIFVTUlAgd2hlbiBpdCBpcyBjaGFuZ2luZyB0aGUgdHgtIGZyZXF1ZW5jeSB3aGljaCBJ
IHNldCBpbiBteSAuZGF0IGZpbGUuIA0KQ291bGQgdGhlIEdQSU8gZGVsaXZlciB0aGlzIHRyaWdn
ZXIgd2l0aG91dCBjaGFuZ2luZyB0aGUgaW1hZ2U/IA0KSSBhbSB1c2luZyB0aGUgU1JBTSBpbWFn
ZSB3aXRoIFVIRCAzLjE0LjENCsKgDQpBIHNlY29uZCBxdWVzdGlvbiBpcyBjb25jZXJuaW5nIHRo
ZSBHUElPIGV4YW1wbGUgb24gaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vbWFudWFsL3BhZ2VfZ3Bp
b19hcGkuaHRtbC4NCkkgY29waWVkIGFuZCBwYWNlZCBpdCBpbiB0aGUg4oCcdHhfd2F2ZWZvcm1z
4oCdIGV4YW1wbGUganVzdCBjaGFuZ2luZyB0aGUgdXNycCBkZXZpY2UgaGFuZGxlIHRvIOKAnHVz
cnDigJ0gYnV0IHdoZW4gSSBjb21waWxlZCBpdCBhbmQgc3RhcnRlZCB0eCwgSSBjb3VsZG7igJl0
IG1lYXN1cmUgYW55IHRlbnNpb24gb24gUElOIDQgYW5kIDYgYXMgZGVmaW5lZCBpbiB0aGUgZXhh
bXBsZS4gQXJlIHRoZXJlIG1vcmUgZXhhbXBsZXMgaG93IHRvIHByb2dyYW0gdGhlIEdQSU8/DQpU
aGFuayB5b3UsDQpUaG9tYXMNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdA0KVVNSUC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20NCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJz
X2xpc3RzLmV0dHVzLmNvbQ0KwqANCg0K

--_14050A5B-CE26-4F92-AB26-E0E2A45594F1_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dutf-8"><meta name=3DGenerator content=3D"Microsoft=
 Word 15 (filtered medium)"><!--[if !mso]><style>v\:* {behavior:url(#defaul=
t#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3DEN-US link=3Dblue vlink=3D"#954F72"><div cla=
ss=3DWordSection1><p class=3DMsoNormal>Sam,</p><p class=3DMsoNormal>I see w=
ant you mean but in my code I set the carrier freq once with set_tx_freq (&=
lt;carrier_fix&gt;). Then I read the I Q data from a .dat file into the buf=
fer and stream this buffer continuously in a while loop.</p><p class=3DMsoN=
ormal>The frequency hopping is done though my IQ modulation:</p><p class=3D=
MsoNormal>I =3D cos(omega<sub>n</sub> * t)</p><p class=3DMsoNormal>Q=3D sin=
(omega<sub>n</sub>*t)</p><p class=3DMsoNormal>with fixed omega for =C2=A0ce=
rtain periods like omega<sub>n </sub>for 0&lt;t&lt;t<sub>1 </sub>=C2=A0and =
omega<sub>n+1</sub> for t<sub>1</sub>&lt;t&lt;t<sub>2<o:p></o:p></sub></p><=
p class=3DMsoNormal>In this way I am managing to hop between frequencies in=
 the bandwidth of 160MHz around my carrier frequency (cos (omega<sub>carrie=
r</sub>*t -omega<sub>n</sub>*t))with a transition time of around 20ns betwe=
en different frequencies.</p><p class=3DMsoNormal>But I would like to have =
a trigger signal, when the USRP is hopping between these frequencies to dri=
ve futher external instruments with this trigger output.</p><p class=3DMsoN=
ormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Do you have an idea how I c=
ould create such a trigger signal?</p><p class=3DMsoNormal><o:p>&nbsp;</o:p=
></p><p class=3DMsoNormal>Thomas Harder</p><p class=3DMsoNormal><o:p>&nbsp;=
</o:p></p><div style=3D'mso-element:para-border-div;border:none;border-top:=
solid #E1E1E1 1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNormal style=
=3D'border:none;padding:0in'><b>From: </b><a href=3D"mailto:sam.reiter@ettu=
s.com">Sam Reiter</a><br><b>Sent: </b>Tuesday, January 21, 2020 5:34 PM<br>=
<b>To: </b><a href=3D"mailto:Thomas.Harder@oca.eu">Thomas Harder</a><br><b>=
Cc: </b><a href=3D"mailto:e070832@hotmail.com">Jeff S</a>; <a href=3D"mailt=
o:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br><b>Subject:=
 </b>Re: [USRP-users] using GPIO output to trigger external RF switches</p>=
</div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNor=
mal>Thomas,</p></div><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><=
div><p class=3DMsoNormal>I believe I mistyped in my initial response to spe=
cify a TX rate change rather than frequency change. It might be more clear =
if I include some quick pseudocode describing what I'm talking about:</p></=
div><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><blockquote style=
=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0in 0in 0in 6.0pt;m=
argin-left:4.8pt;margin-right:0in'><div><p class=3DMsoNormal>tune_time =3D =
usrp-&gt;get_time_now() + uhd::time_spect_t(0.1)&nbsp;&nbsp;&nbsp;&nbsp; //=
Set a future time to execute commands based on the USRP's current sense of =
time</p></div><div><p class=3DMsoNormal>set_command_time(tune_time)&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //Commands af=
ter this point will wait to execute until tune_time<br>set_tx_freq(&lt;HOP_=
FREQ&gt;)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //This will be executed at the command ti=
me</p></div><div><p class=3DMsoNormal>set_gpio_attr(&lt;HIGH&gt;)&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; //This will be ex=
ecuted at the command time</p></div><div><p class=3DMsoNormal>clear_command=
_time()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; //Clear the command time, =
subsequent commands will execute ASAP when they make it to the radio</p></d=
iv><div><p class=3DMsoNormal>sleep(.01) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp=
; //Sleep for some arbitrary time. This will roughly determine GPIO pulse w=
idth</p></div><div><p class=3DMsoNormal>set_gpio_attr(&lt;LOW&gt;)&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; //Return GPIO state to low. This will happ=
en as soon as the radio gets it, but you could also set it up as a timed co=
mmand</p></div></blockquote><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p>=
</div><div><p class=3DMsoNormal>This approach would not use ATR. It uses ti=
med commands to synchronize your TX freq change with the GPIO state change.=
 There are almost certainly more efficient ways to play with the time setti=
ng as to minimize the time between hops, but you get the idea. Based on how=
 you're hopping, you might benefit from changing the tuning policy so that =
you only change frequency in DSP, rather than retuning the LO:</p></div><di=
v><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal=
><a href=3D"https://files.ettus.com/manual/structuhd_1_1tune__request__t.ht=
ml">https://files.ettus.com/manual/structuhd_1_1tune__request__t.html</a></=
p></div><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><div><div=
><div><div><div><p class=3DMsoNormal>Sam Reiter</p></div></div></div></div>=
</div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></div><p class=3DMsoN=
ormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On Tue, Jan 21, 2=
020 at 8:54 AM Thomas Harder &lt;<a href=3D"mailto:Thomas.Harder@oca.eu">Th=
omas.Harder@oca.eu</a>&gt; wrote:</p></div><blockquote style=3D'border:none=
;border-left:solid #CCCCCC 1.0pt;padding:0in 0in 0in 6.0pt;margin-left:4.8p=
t;margin-right:0in'><div><div><p class=3DMsoNormal style=3D'mso-margin-top-=
alt:auto;mso-margin-bottom-alt:auto'>Thank you Jeff and Sam,</p><p class=3D=
MsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>I fo=
und now also the gpio.cpp example. Really helpful to get familiar with GPIO=
.</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto'>&nbsp;</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto=
;mso-margin-bottom-alt:auto'>&gt;&gt; To accomplish what you're talking abo=
ut, I think you'd just need to use timed commands &gt;&gt;on both set_tx_ra=
te() and set_gpio_attr(). If these are set to execute simultaneously, the &=
gt;&gt;GPIO line you set will go high on the same clock cycle as the LO ret=
une.</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bo=
ttom-alt:auto'>&nbsp;</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:a=
uto;mso-margin-bottom-alt:auto'>In fact in my code which is based on the =
=E2=80=9Ctx_samples_from_file=E2=80=9D example I start transmitting my data=
 in the file in the future with tx_metadata_t&nbsp; time specification and =
with timed commands I set set_gpio_attr() to the same point in future.</p><=
p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:=
auto'>But this gives me just 1 output pulse in GPIO what is not sufficient =
for my application.</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:aut=
o;mso-margin-bottom-alt:auto'>&nbsp;</p><p class=3DMsoNormal style=3D'mso-m=
argin-top-alt:auto;mso-margin-bottom-alt:auto'>I am transmitting&nbsp; in c=
ontinuous mode (a fixed modulation in a while loop) and my center frequency=
 stays fix during the whole transmission whereas with my data in the file I=
 am modulating the center frequency to discrete frequencies in the whole ba=
ndwidth of 160MHz. I measured a transition time of the usrp &nbsp;of around=
 20ns between different frequencies in my modulation.</p><p class=3DMsoNorm=
al style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b>To be ab=
le to postprocess my RF signal I would like to have a pulse each time the t=
x-frequency is changing.</b></p><p class=3DMsoNormal style=3D'mso-margin-to=
p-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</p><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>As the ATR is just =
showing if the usrp is transmitting, receiving or idle it is not really hel=
pful</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bo=
ttom-alt:auto'>And putting set_gpio_attr() in the while loop for my continu=
ous transmission is slowing down the streaming and causes underruns.</p><p =
class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:au=
to'>&nbsp;</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-mar=
gin-bottom-alt:auto'>Do you think of any other solution to get a pulse each=
 time the transmission frequency of the USRP is changing?</p><p class=3DMso=
Normal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<=
/p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto'>Thomas</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;m=
so-margin-bottom-alt:auto'>&nbsp;</p><div style=3D'border:none;border-top:s=
olid windowtext 1.0pt;padding:3.0pt 0in 0in 0in;border-color:currentcolor c=
urrentcolor'><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-marg=
in-bottom-alt:auto'><b>From: </b><a href=3D"mailto:sam.reiter@ettus.com" ta=
rget=3D"_blank">Sam Reiter</a><br><b>Sent: </b>Tuesday, January 14, 2020 6:=
44 PM<br><b>To: </b><a href=3D"mailto:e070832@hotmail.com" target=3D"_blank=
">Jeff S</a><br><b>Cc: </b><a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>; <a href=3D"mailto:Thomas.Ha=
rder@oca.eu" target=3D"_blank">Thomas Harder</a><br><b>Subject: </b>Re: [US=
RP-users] using GPIO output to trigger external RF switches</p></div><p cla=
ss=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'=
>&nbsp;</p><div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;=
mso-margin-bottom-alt:auto'>Thomas,</p></div><div><p class=3DMsoNormal styl=
e=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</p></div><d=
iv><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto'>To accomplish what you're talking about, I think you'd just need =
to use timed commands on both set_tx_rate() and set_gpio_attr(). If these a=
re set to execute simultaneously, the GPIO line you set will go high on the=
 same clock cycle as the LO retune.</p></div><div><p class=3DMsoNormal styl=
e=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;</p></div><d=
iv><div><div><div><div><div><p class=3DMsoNormal style=3D'mso-margin-top-al=
t:auto;mso-margin-bottom-alt:auto'>Sam</p></div></div></div></div></div><p =
class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:au=
to'>&nbsp;</p></div></div><p class=3DMsoNormal style=3D'mso-margin-top-alt:=
auto;mso-margin-bottom-alt:auto'>&nbsp;</p><div><div><p class=3DMsoNormal s=
tyle=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>On Tue, Jan 14,=
 2020 at 5:59 AM Jeff S via USRP-users &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<o=
:p></o:p></p></div><blockquote style=3D'border:none;border-left:solid windo=
wtext 1.0pt;padding:0in 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;ma=
rgin-right:0in;margin-bottom:5.0pt;border-color:currentcolor currentcolor c=
urrentcolor rgb(204,204,204)'><div><div><p class=3DMsoNormal style=3D'mso-m=
argin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4.8pt'><span styl=
e=3D'font-size:12.0pt;color:black'>Thomas,</span></p></div><div><p class=3D=
MsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margi=
n-left:4.8pt'><span style=3D'font-size:12.0pt;color:black'>&nbsp;</span></p=
></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margi=
n-bottom-alt:auto;margin-left:4.8pt'><span style=3D'font-size:12.0pt;color:=
black'>I am looking at GPIO right now as well.&nbsp; As to your question #2=
 on examples, I compiled and am able to run the example I found in the UHD =
software:</span></p></div><div><p class=3DMsoNormal style=3D'mso-margin-top=
-alt:auto;mso-margin-bottom-alt:auto;margin-left:4.8pt'><span style=3D'font=
-size:12.0pt;color:black'>&nbsp;</span></p></div><blockquote style=3D'margi=
n-top:5.0pt;margin-bottom:5.0pt'><div><p class=3DMsoNormal style=3D'mso-mar=
gin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:40.8pt'><span style=
=3D'font-size:12.0pt;color:black'>uhd/host/examples/gpio.cpp</span></p></di=
v></blockquote><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;m=
so-margin-bottom-alt:auto;margin-left:4.8pt'><span style=3D'font-size:12.0p=
t;color:black'>&nbsp;</span></p></div><div><p class=3DMsoNormal style=3D'ms=
o-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4.8pt'><span s=
tyle=3D'font-size:12.0pt;color:black'>I am able to set individual data line=
s to experiment with (and eventually use as a roadmap for my development) u=
sing commands like:</span></p></div><div><p class=3DMsoNormal style=3D'mso-=
margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4.8pt'><span sty=
le=3D'font-size:12.0pt;color:black'>&nbsp;</span></p></div><blockquote styl=
e=3D'margin-top:5.0pt;margin-bottom:5.0pt'><div><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:40.8pt'>=
<span style=3D'font-size:12.0pt;color:black'>./gpio --dwell 0 --bitbang --d=
dr 0x00ff --out 0x0055</span></p></div></blockquote><div><p class=3DMsoNorm=
al style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:=
4.8pt'><span style=3D'font-size:12.0pt;color:black'>&nbsp;</span></p></div>=
<div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto;margin-left:4.8pt'><span style=3D'font-size:12.0pt;color:black'>=
which I verified works using a logic analyzer.&nbsp; I eventually want to t=
ry to create a keying loop, but that may take some FPGA control (?).</span>=
</p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto;margin-left:4.8pt'><span style=3D'font-size:12.0pt;col=
or:black'>&nbsp;</span></p></div><div><p class=3DMsoNormal style=3D'mso-mar=
gin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4.8pt'><span style=
=3D'font-size:12.0pt;color:black'>Jeff</span></p></div><div><p class=3DMsoN=
ormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-le=
ft:4.8pt'><span style=3D'font-size:12.0pt;color:black'>&nbsp;</span></p></d=
iv><div id=3D"gmail-m_5606250065371862721gmail-m_1960093859765433781Signatu=
re"><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-b=
ottom-alt:auto;margin-left:4.8pt'>&nbsp;</p><p class=3DMsoNormal style=3D'm=
so-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4.8pt'><img b=
order=3D0 width=3D469 height=3D1 style=3D'width:4.8819in;height:.0069in' id=
=3D"gmail-m_5606250065371862721Horizontal_x0020_Line_x0020_1" src=3D"cid:im=
age002.png@01D5D1F5.A4930970" alt=3D"cid:16fc8d85cfadce4206e1"></p><div id=
=3D"gmail-m_5606250065371862721gmail-m_1960093859765433781divRplyFwdMsg"><p=
 class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:a=
uto;margin-left:4.8pt'><b><span style=3D'color:black'>From:</span></b><span=
 style=3D'color:black'> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces=
@lists.ettus.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&=
gt; on behalf of Thomas Harder via USRP-users &lt;<a href=3D"mailto:usrp-us=
ers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<b=
r><b>Sent:</b> Tuesday, January 14, 2020 5:07 AM<br><b>To:</b> <a href=3D"m=
ailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.=
com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"=
>usrp-users@lists.ettus.com</a>&gt;<br><b>Subject:</b> [USRP-users] using G=
PIO output to trigger external RF switches</span> </p><div><p class=3DMsoNo=
rmal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-lef=
t:4.8pt'>&nbsp;</p></div></div><div><div><p style=3D'margin:0in;margin-bott=
om:.0001pt'>Hi,</p><p style=3D'margin:0in;margin-bottom:.0001pt'>I am conti=
nuously transmitting a waveform with several RF with 200MSPS with my USRP X=
310 (modified code on the basis of =E2=80=9Ctx_samples_from_file.cpp=E2=80=
=9D with a waveform in a .dat file). I would like to get a trigger signal f=
rom the USRP when it is changing the tx- frequency which I set in my .dat f=
ile. </p><p style=3D'margin:0in;margin-bottom:.0001pt'>Could the GPIO deliv=
er this trigger without changing the image? </p><p style=3D'margin:0in;marg=
in-bottom:.0001pt'>I am using the SRAM image with UHD 3.14.1</p><p style=3D=
'margin:0in;margin-bottom:.0001pt'>&nbsp;</p><p style=3D'margin:0in;margin-=
bottom:.0001pt'>A second question is concerning the GPIO example on <a href=
=3D"https://files.ettus.com/manual/page_gpio_api.html" target=3D"_blank">ht=
tps://files.ettus.com/manual/page_gpio_api.html</a>.</p><p style=3D'margin:=
0in;margin-bottom:.0001pt'>I copied and paced it in the =E2=80=9Ctx_wavefor=
ms=E2=80=9D example just changing the usrp device handle to =E2=80=9Cusrp=
=E2=80=9D but when I compiled it and started tx, I couldn=E2=80=99t measure=
 any tension on PIN 4 and 6 as defined in the example. Are there more examp=
les how to program the GPIO?</p><p style=3D'margin:0in;margin-bottom:.0001p=
t'>Thank you,</p><p style=3D'margin:0in;margin-bottom:.0001pt'>Thomas</p></=
div></div></div></div></div></blockquote></div><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4.8pt'>_=
______________________________________________<br>USRP-users mailing list<b=
r><a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-user=
s@lists.ettus.com</a><br><a href=3D"http://lists.ettus.com/mailman/listinfo=
/usrp-users_lists.ettus.com" target=3D"_blank">http://lists.ettus.com/mailm=
an/listinfo/usrp-users_lists.ettus.com</a></p></div></div></blockquote></di=
v><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:4.8pt'>&nbsp;</p><p class=3DMsoNormal><o:p>&nbsp;</o:p>=
</p></div></body></html>=

--_14050A5B-CE26-4F92-AB26-E0E2A45594F1_--

--_44FB597F-7F27-4DD0-8773-1773EF551A6B_
Content-Type: image/png; name="715289CC7513461AA761CCE7B743B148.png"
Content-ID: <image002.png@01D5D1F5.A4930970>
Content-Transfer-Encoding: base64
Content-Disposition: inline; filename="715289CC7513461AA761CCE7B743B148.png"

iVBORw0KGgoAAAANSUhEUgAAAr8AAAABCAYAAADXRsbCAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAcSURBVEhL7cOBCQAADAKg/n+6dcdQMFNVVf0/
PRz2vGCaKncLAAAAAElFTkSuQmCC

--_44FB597F-7F27-4DD0-8773-1773EF551A6B_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_44FB597F-7F27-4DD0-8773-1773EF551A6B_--


